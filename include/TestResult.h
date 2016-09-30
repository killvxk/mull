#pragma once

#include "MutationPoint.h"
#include "Test.h"

#include <vector>

namespace llvm {

class Function;

}

namespace Mutang {

class Test;

enum ExecutionStatus {
  Invalid = 0,
  Failed,
  Passed
};

struct ExecutionResult {
  ExecutionStatus Status;
  long long RunningTime;
};

class MutationResult {
  ExecutionResult Result;
  std::unique_ptr<MutationPoint> MutPoint;
public:
  MutationResult(ExecutionResult R, std::unique_ptr<Mutang::MutationPoint> MP);
  ExecutionResult getExecutionResult()  { return Result; }
  MutationPoint* getMutationPoint()     { return MutPoint.get(); }
};

class TestResult {
  /// Result of execution of a test without any mutations applied
  ExecutionResult OriginalTestResult;
  std::unique_ptr<Test> TestPtr;
  std::vector<std::unique_ptr<MutationResult>> MutationResults;
public:
  TestResult(ExecutionResult OriginalResult, std::unique_ptr<Test> T);

  void addMutantResult(std::unique_ptr<MutationResult> Res);

  std::string getTestName();
  std::vector<std::unique_ptr<MutationResult>> &getMutationResults();
  ExecutionResult getOriginalTestResult();
};

}