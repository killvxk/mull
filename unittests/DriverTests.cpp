#include "Driver.h"
#include "Config.h"
#include "Context.h"
#include "ModuleLoader.h"
#include "TestFinders/SimpleTestFinder.h"
#include "TestModuleFactory.h"

#include "llvm/ADT/SmallString.h"
#include "llvm/ADT/Twine.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/MemoryBuffer.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/YAMLParser.h"

#include "gtest/gtest.h"

using namespace Mutang;
using namespace llvm;

static LLVMContext GlobalCtx;

static TestModuleFactory TestModuleFactory;

class FakeModuleLoader : public ModuleLoader {
public:
  FakeModuleLoader() : ModuleLoader(GlobalCtx) {}

  std::unique_ptr<llvm::Module> loadModuleAtPath(const std::string &path) override {
    if (path == "foo") {
      return TestModuleFactory.createTesterModule();
    } else if (path == "bar") {
      return TestModuleFactory.createTesteeModule();
    }

    return nullptr;
  }
};

TEST(Driver, SimpleTest) {
  /// Create Config with fake BitcodePaths
  /// Create Fake Module Loader
  /// Initialize Driver using ModuleLoader and Config
  /// Driver should initialize (make them injectable? DI?)
  /// TestRunner and TestFinder based on the Config
  /// Then Run all the tests using driver

  std::vector<std::string> ModulePaths({ "foo", "bar" });
  Config Cfg(ModulePaths);

  FakeModuleLoader Loader;

  Driver Driver(Cfg, Loader);
  Driver.Run();
}