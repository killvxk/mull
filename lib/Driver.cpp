#include "Driver.h"
#include "Compiler.h"
#include "Config.h"
#include "Context.h"
#include "ModuleLoader.h"

#include "llvm/IR/Module.h"
#include "llvm/IR/Value.h"

/// FIXME: Should be abstract
#include "TestFinders/SimpleTestFinder.h"

/// FIXME: Should be abstract
#include "TestRunners/SimpleTestRunner.h"

/// FIXME: Should be abstract
#include "MutationOperators/AddMutationOperator.h"

//using namespace llvm;
using namespace Mutang;

/// Populate Mutang::Context with modules using
/// ModulePaths from Mutang::Config.
/// Mutang::Context should be populated using ModuleLoader
/// so that we could inject modules from string for testing purposes

/// Having Mutang::Context in place we could instantiate TestFinder and find all tests
/// Using same TestFinder we could find mutation points, apply them sequentially and
/// run tests/mutants using newly created TestRunner

/// This method should return (somehow) results of the tests/mutants execution
/// So that we could easily plug in some TestReporter

/// UPD: The method returns set of results
/// Number of results equals to a number of tests
/// Each result contains result of execution of an original test and
/// all the results of each mutant within corresponding MutationPoint

void Driver::Run() {
  Context Ctx;
  Compiler Compiler;

  /// Assumption: all modules will be used during the execution
  /// Therefore we load them into memory and compile immediately
  /// Later on modules used only for generating of mutants
  for (auto ModulePath : Cfg.GetBitcodePaths()) {
    auto OwnedModule = Loader.loadModuleAtPath(ModulePath);
    assert(OwnedModule && "Can't load module");

    auto Module = OwnedModule.get();
    auto ObjectFile = Compiler.CompilerModule(Module);
    InnerCache.insert(std::make_pair(Module, std::move(ObjectFile)));

    Ctx.addModule(std::move(OwnedModule));
  }

  /// FIXME: Should come from the outside
  AddMutationOperator MutOp;
  std::vector<MutationOperator *> MutationOperators;
  MutationOperators.push_back(&MutOp);

  SimpleTestRunner Runner;

  SimpleTestFinder TestFinder(Ctx);
  for (auto Test : TestFinder.findTests()) {
    for (auto Testee : TestFinder.findTestees(*Test)) {
      auto ObjectFiles = AllButOne(Testee->getParent());
      for (auto &MutationPoint : TestFinder.findMutationPoints(MutationOperators, *Testee)) {
        MutationPoint->applyMutation();

        auto Mutant = Compiler.CompilerModule(Testee->getParent());
        ObjectFiles.push_back(Mutant.getBinary());
        /// Rollback mutation once we have compiled the module
        MutationPoint->revertMutation();

        Runner.runTest(Test, ObjectFiles);
      }
    }
  }
}

std::vector<llvm::object::ObjectFile *> Driver::AllButOne(llvm::Module *One) {
  std::vector<llvm::object::ObjectFile *> Objects;

  for (auto &CachedEntry : InnerCache) {
    if (One != CachedEntry.first) {
      Objects.push_back(CachedEntry.second.getBinary());
    }
  }

  return Objects;
}