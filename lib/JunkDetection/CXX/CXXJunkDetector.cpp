#include "JunkDetection/CXX/CXXJunkDetector.h"

#include "Config/RawConfig.h"
#include "Logger.h"
#include "MutationPoint.h"
#include "Mutators/Mutator.h"

#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/DebugInfoMetadata.h>
#include <llvm/IR/DebugLoc.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/Instruction.h>
#include <llvm/IR/Module.h>
#include <llvm/Support/FileSystem.h>
#include <llvm/Support/Path.h>

#include <clang/AST/RecursiveASTVisitor.h>
#include <clang/Frontend/CompilerInstance.h>
#include <clang/Tooling/CompilationDatabase.h>
#include <clang/Tooling/Tooling.h>

#include <sstream>
#include <sys/param.h>
#include <unistd.h>

using namespace mull;
using namespace llvm;

static std::unique_ptr<clang::tooling::CompilationDatabase>
getCompilationDatabase(const std::string &compdbDirectory) {
  if (compdbDirectory.empty()) {
    return nullptr;
  }
  std::string error;
  auto compdb = clang::tooling::CompilationDatabase::loadFromDirectory(
      compdbDirectory, error);
  if (compdb == nullptr) {
    Logger::error() << error << ": " << compdbDirectory << "\n";
  }
  return compdb;
}

static std::vector<std::string> getCompilationFlags(const std::string &flags) {
  if (flags.empty()) {
    return std::vector<std::string>();
  }

  std::istringstream iss(flags);
  std::vector<std::string> results((std::istream_iterator<std::string>(iss)),
                                   std::istream_iterator<std::string>());
  return results;
}

CXXJunkDetector::CXXJunkDetector(JunkDetectionConfig &config) {
  compdb = getCompilationDatabase(config.cxxCompDBDirectory);
  compilationFlags = getCompilationFlags(config.cxxCompilationFlags);
}

bool CXXJunkDetector::isJunk(MutationPoint *point) {
  auto sourceLocation = point->getSourceLocation();
  if (sourceLocation.isNull()) {
    return true;
  }

  switch (point->getMutator()->mutatorKind()) {
  case MutatorKind::ConditionalsBoundaryMutator:
    return isJunkBoundaryConditional(point, sourceLocation);
  case MutatorKind::MathAddMutator:
    return isJunkMathAdd(point, sourceLocation);
  case MutatorKind::MathSubMutator:
    return isJunkMathSub(point, sourceLocation);
  default:
    return false;
  }

  return false;
}

static bool locationInRange(const clang::SourceManager &sourceManager,
                            const clang::SourceRange &range,
                            const clang::SourceLocation &location) {
  if (location.isFileID()) {
    clang::FullSourceLoc mutantLocation(location, sourceManager);
    assert(mutantLocation.isValid());
    clang::FullSourceLoc begin(range.getBegin(), sourceManager);
    assert(begin.isValid());
    bool sameSourceFile = mutantLocation.getFileID() == begin.getFileID();

    auto mutantOffset = sourceManager.getFileOffset(location);
    auto beginOffset = sourceManager.getFileOffset(range.getBegin());
    auto endOffset = sourceManager.getFileOffset(range.getEnd());

    bool inRange = (mutantOffset >= beginOffset) && (mutantOffset <= endOffset);
    return sameSourceFile && inRange;
  }
  return false;
}

static clang::SourceRange
smallestSourceRange(const clang::SourceManager &sourceManager,
                    const clang::SourceRange &first,
                    const clang::SourceRange &second) {
  if (first.isInvalid()) {
    return second;
  }
  if (second.isInvalid()) {
    return first;
  }

  auto firstLength = sourceManager.getFileOffset(first.getEnd()) -
                     sourceManager.getFileOffset(first.getBegin());
  auto secondLength = sourceManager.getFileOffset(second.getEnd()) -
                      sourceManager.getFileOffset(second.getBegin());

  if (firstLength < secondLength) {
    return first;
  }
  if (secondLength < firstLength) {
    return second;
  }

  return first;
}

class SearchInstructionVisitor {
public:
  SearchInstructionVisitor(const clang::SourceManager &sourceManager,
                           const clang::SourceLocation &sourceLocation)
      : sourceManager(sourceManager), sourceLocation(sourceLocation),
        sourceRange() {}

  void visitRangeWithLocation(const clang::SourceRange &range) {
    if (locationInRange(sourceManager, range, sourceLocation)) {
      sourceRange = smallestSourceRange(sourceManager, sourceRange, range);
    }
  }

  bool foundRange() { return sourceRange.isValid(); }

private:
  const clang::SourceManager &sourceManager;
  const clang::SourceLocation &sourceLocation;
  clang::SourceRange sourceRange;
};

class ConditionalsBoundaryVisitor
    : public clang::RecursiveASTVisitor<ConditionalsBoundaryVisitor> {
public:
  ConditionalsBoundaryVisitor(const clang::SourceManager &sourceManager,
                              const clang::SourceLocation &sourceLocation)
      : visitor(sourceManager, sourceLocation) {}

  bool VisitBinaryOperator(clang::BinaryOperator *binaryOperator) {
    if (!binaryOperator->isRelationalOp()) {
      return true;
    }

    visitor.visitRangeWithLocation(binaryOperator->getSourceRange());
    return true;
  }

  bool foundMutant() { return visitor.foundRange(); }

private:
  SearchInstructionVisitor visitor;
};

bool CXXJunkDetector::isJunkBoundaryConditional(
    mull::MutationPoint *point, mull::SourceLocation &mutantLocation) {
  auto ast = findAST(point);
  auto file = findFileEntry(ast, point);

  assert(file);
  assert(file->isValid());
  auto location =
      ast->getLocation(file, mutantLocation.line, mutantLocation.column);
  assert(location.isValid());
  ConditionalsBoundaryVisitor visitor(ast->getSourceManager(), location);
  visitor.TraverseDecl(ast->getASTContext().getTranslationUnitDecl());

  return !visitor.foundMutant();
}

class MathAddVisitor : public clang::RecursiveASTVisitor<MathAddVisitor> {
public:
  MathAddVisitor(const clang::SourceManager &sourceManager,
                 const clang::SourceLocation &sourceLocation)
      : visitor(sourceManager, sourceLocation) {}

  bool VisitBinaryOperator(clang::BinaryOperator *binaryOperator) {
    auto range = binaryOperator->getSourceRange();
    if (binaryOperator->getOpcode() == clang::BinaryOperatorKind::BO_Add) {
      visitor.visitRangeWithLocation(range);
    }
    if (binaryOperator->getOpcode() ==
        clang::BinaryOperatorKind::BO_AddAssign) {
      visitor.visitRangeWithLocation(range);
    }

    return true;
  }

  bool VisitUnaryOperator(clang::UnaryOperator *unaryOperator) {
    if (unaryOperator->isIncrementOp()) {
      visitor.visitRangeWithLocation(unaryOperator->getSourceRange());
    }

    return true;
  }

  bool foundMutant() { return visitor.foundRange(); }

private:
  SearchInstructionVisitor visitor;
};

bool CXXJunkDetector::isJunkMathAdd(mull::MutationPoint *point,
                                    mull::SourceLocation &mutantLocation) {
  auto ast = findAST(point);
  auto file = findFileEntry(ast, point);

  assert(file);
  assert(file->isValid());
  auto location =
      ast->getLocation(file, mutantLocation.line, mutantLocation.column);
  assert(location.isValid());
  MathAddVisitor visitor(ast->getSourceManager(), location);
  visitor.TraverseDecl(ast->getASTContext().getTranslationUnitDecl());

  return !visitor.foundMutant();
}

class MathSubVisitor : public clang::RecursiveASTVisitor<MathSubVisitor> {
public:
  MathSubVisitor(const clang::SourceManager &sourceManager,
                 const clang::SourceLocation &sourceLocation)
      : visitor(sourceManager, sourceLocation) {}

  bool VisitBinaryOperator(clang::BinaryOperator *binaryOperator) {
    auto range = binaryOperator->getSourceRange();
    if (binaryOperator->getOpcode() == clang::BinaryOperatorKind::BO_Sub) {
      visitor.visitRangeWithLocation(range);
    }
    if (binaryOperator->getOpcode() ==
        clang::BinaryOperatorKind::BO_SubAssign) {
      visitor.visitRangeWithLocation(range);
    }

    return true;
  }

  bool VisitUnaryOperator(clang::UnaryOperator *unaryOperator) {
    if (unaryOperator->isDecrementOp()) {
      visitor.visitRangeWithLocation(unaryOperator->getSourceRange());
    }

    return true;
  }

  bool foundMutant() { return visitor.foundRange(); }

private:
  SearchInstructionVisitor visitor;
};

bool CXXJunkDetector::isJunkMathSub(mull::MutationPoint *point,
                                    mull::SourceLocation &mutantLocation) {
  auto ast = findAST(point);
  auto file = findFileEntry(ast, point);

  assert(file);
  assert(file->isValid());
  auto location =
      ast->getLocation(file, mutantLocation.line, mutantLocation.column);
  assert(location.isValid());
  MathSubVisitor visitor(ast->getSourceManager(), location);
  visitor.TraverseDecl(ast->getASTContext().getTranslationUnitDecl());

  return !visitor.foundMutant();
}

const clang::ASTUnit *CXXJunkDetector::findAST(const MutationPoint *point) {
  assert(point);
  assert(!point->getSourceLocation().isNull());

  auto instruction = dyn_cast<Instruction>(point->getOriginalValue());
  if (instruction == nullptr) {
    return nullptr;
  }

  const std::string &sourceFile = instruction->getModule()->getSourceFileName();
  std::lock_guard<std::mutex> guard(mutex);
  if (astUnits.count(sourceFile)) {
    return astUnits.at(sourceFile).get();
  }

  std::vector<const char *> args({"mull-cxx"});
  auto argsForFile = commandLineArguments(sourceFile);
  for (auto it = argsForFile.begin(); it != argsForFile.end(); it++) {
    if (*it == "-c") {
      /// Cutting off '-c foo.cpp' part
      it++;
      if (it != argsForFile.end()) {
        it++;
      }
      continue;
    }
    args.push_back(it->c_str());
  }
  args.push_back(sourceFile.c_str());

  clang::IntrusiveRefCntPtr<clang::DiagnosticsEngine> diagnosticsEngine(
      clang::CompilerInstance::createDiagnostics(new clang::DiagnosticOptions));

  auto ast = clang::ASTUnit::LoadFromCommandLine(
      args.data(), args.data() + args.size(),
      std::make_shared<clang::PCHContainerOperations>(), diagnosticsEngine, "");
  astUnits[sourceFile] = std::move(std::unique_ptr<clang::ASTUnit>(ast));
  return ast;
}

const clang::FileEntry *
CXXJunkDetector::findFileEntry(const clang::ASTUnit *ast,
                               const MutationPoint *point) {
  assert(ast);
  assert(point);
  assert(!point->getSourceLocation().isNull());

  auto &sourceManager = ast->getSourceManager();
  auto filePath = point->getSourceLocation().filePath;
  auto begin = sourceManager.fileinfo_begin();
  auto end = sourceManager.fileinfo_end();
  const clang::FileEntry *file = nullptr;
  for (auto it = begin; it != end; it++) {
    StringRef name(it->first->getName());
    if (name.equals(filePath)) {
      file = it->first;
      break;
    }
  }

  return file;
}

std::vector<std::string>
CXXJunkDetector::commandLineArguments(const std::string &sourceFile) {
  if (compdb == nullptr) {
    return compilationFlags;
  }

  auto commands = compdb->getCompileCommands(sourceFile);
  if (commands.empty()) {
    auto filename = llvm::sys::path::filename(sourceFile);
    commands = compdb->getCompileCommands(filename);
    if (commands.empty()) {
      return compilationFlags;
    }
  }

  assert(commands.size() == 1);
  return commands.front().CommandLine;
}
