; ModuleID = 'example.cgu-0.rs'
source_filename = "example.cgu-0.rs"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

%str_slice = type { i8*, i64 }
%"core::fmt::ArgumentV1" = type { %"core::fmt::Void"*, i8 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)* }
%"core::fmt::Void" = type { {} }
%"core::fmt::Formatter" = type { i32, i32, i8, %"core::option::Option<usize>", %"core::option::Option<usize>", { i8*, void (i8*)** }, %"core::slice::Iter<core::fmt::ArgumentV1>", { %"core::fmt::ArgumentV1"*, i64 } }
%"core::option::Option<usize>" = type { i64, [0 x i64], [1 x i64] }
%"core::slice::Iter<core::fmt::ArgumentV1>" = type { %"core::fmt::ArgumentV1"*, %"core::fmt::ArgumentV1"*, %"core::marker::PhantomData<&core::fmt::ArgumentV1>" }
%"core::marker::PhantomData<&core::fmt::ArgumentV1>" = type {}
%"core::any::TypeId" = type { i64 }
%"core::fmt::Arguments" = type { { %str_slice*, i64 }, %"core::option::Option<&[core::fmt::rt::v1::Argument]>", { %"core::fmt::ArgumentV1"*, i64 } }
%"core::option::Option<&[core::fmt::rt::v1::Argument]>" = type { { %"core::fmt::rt::v1::Argument"*, i64 } }
%"core::fmt::rt::v1::Argument" = type { %"core::fmt::rt::v1::Position", %"core::fmt::rt::v1::FormatSpec" }
%"core::fmt::rt::v1::Position" = type { i64, [0 x i64], [1 x i64] }
%"core::fmt::rt::v1::FormatSpec" = type { i32, i8, i32, %"core::fmt::rt::v1::Count", %"core::fmt::rt::v1::Count" }
%"core::fmt::rt::v1::Count" = type { i64, [0 x i64], [1 x i64] }
%"test::TestDescAndFn" = type { %"test::TestDesc", %"test::TestFn" }
%"test::TestDesc" = type { %"test::TestName", i8, %"test::ShouldPanic" }
%"test::TestName" = type { i64, [0 x i64], [3 x i64] }
%"test::ShouldPanic" = type { i64, [0 x i64], [2 x i64] }
%"test::TestFn" = type { i64, [0 x i64], [2 x i64] }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [6 x i64] }
%"unwind::libunwind::_Unwind_Context" = type {}

@_ZN7example10just_print15__STATIC_FMTSTR17hfecf6bee7dfe61f1E = internal constant { %str_slice*, i64 } { %str_slice* getelementptr inbounds ([1 x %str_slice], [1 x %str_slice]* @ref.9, i32 0, i32 0), i64 1 }, align 8
@vtable.0 = internal unnamed_addr constant { void (i8*)*, i64, i64, i64 (%str_slice*)* } { void (i8*)* @_ZN4drop17h3f10143eb02d4bbbE, i64 16, i64 8, i64 (%str_slice*)* @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$11get_type_id17h231b0be68756ea7dE" }, align 8
@str.1 = internal constant [10 x i8] c"example.rs"
@str.2 = internal constant [28 x i8] c"attempt to add with overflow"
@panic_loc.3 = internal unnamed_addr constant { %str_slice, %str_slice, i32 } { %str_slice { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @str.2, i32 0, i32 0), i64 28 }, %str_slice { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.1, i32 0, i32 0), i64 10 }, i32 3 }, align 8
@ref.4 = internal unnamed_addr constant [0 x %"core::fmt::ArgumentV1"] zeroinitializer, align 8
@str.5 = internal constant [32 x i8] c"assertion failed: sum(3, 4) == 7"
@str.6 = internal constant [32 x i8] c"assertion failed: sum(4, 5) == 9"
@str.7 = internal constant [33 x i8] c"assertion failed: sum(5, 6) == 11"
@str.8 = internal constant [46 x i8] c"I am just_print() function. I just say hello!\0A"
@ref.9 = internal unnamed_addr constant [1 x %str_slice] [%str_slice { i8* getelementptr inbounds ([46 x i8], [46 x i8]* @str.8, i32 0, i32 0), i64 46 }], align 8
@_ZN7example17rusttest_foo_sum110_FILE_LINE17h5d1b4176bce6be50E = internal constant { %str_slice, i32, [4 x i8] } { %str_slice { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.1, i32 0, i32 0), i64 10 }, i32 12, [4 x i8] undef }, align 8
@_ZN7example17rusttest_foo_sum210_FILE_LINE17h1dfc9fa2411661a7E = internal constant { %str_slice, i32, [4 x i8] } { %str_slice { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.1, i32 0, i32 0), i64 10 }, i32 17, [4 x i8] undef }, align 8
@_ZN7example17rusttest_foo_sum310_FILE_LINE17h4364fc82d6a6eaa9E = internal constant { %str_slice, i32, [4 x i8] } { %str_slice { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.1, i32 0, i32 0), i64 10 }, i32 22, [4 x i8] undef }, align 8
@_ZN7example17rusttest_foo_sum410_FILE_LINE17h0d63d900c8521622E = internal constant { %str_slice, i32, [4 x i8] } { %str_slice { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.1, i32 0, i32 0), i64 10 }, i32 27, [4 x i8] undef }, align 8
@str.a = internal constant [17 x i8] c"rusttest_foo_sum1"
@str.b = internal constant [17 x i8] c"rusttest_foo_sum2"
@str.c = internal constant [17 x i8] c"rusttest_foo_sum3"
@str.d = internal constant [17 x i8] c"rusttest_foo_sum4"
@ref.e = internal unnamed_addr constant { { { { i64, %str_slice, [8 x i8] }, i1, [7 x i8], { i64, [16 x i8] } }, { i64, void ()*, [8 x i8] } }, { { { i64, %str_slice, [8 x i8] }, i1, [7 x i8], { i64, [16 x i8] } }, { i64, void ()*, [8 x i8] } }, { { { i64, %str_slice, [8 x i8] }, i1, [7 x i8], { i64, [16 x i8] } }, { i64, void ()*, [8 x i8] } }, { { { i64, %str_slice, [8 x i8] }, i1, [7 x i8], { i64, [16 x i8] } }, { i64, void ()*, [8 x i8] } } } { { { { i64, %str_slice, [8 x i8] }, i1, [7 x i8], { i64, [16 x i8] } }, { i64, void ()*, [8 x i8] } } { { { i64, %str_slice, [8 x i8] }, i1, [7 x i8], { i64, [16 x i8] } } { { i64, %str_slice, [8 x i8] } { i64 0, %str_slice { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str.a, i32 0, i32 0), i64 17 }, [8 x i8] undef }, i1 false, [7 x i8] undef, { i64, [16 x i8] } { i64 0, [16 x i8] undef } }, { i64, void ()*, [8 x i8] } { i64 0, void ()* @_ZN7example17rusttest_foo_sum117h319bd21b204fd3edE, [8 x i8] undef } }, { { { i64, %str_slice, [8 x i8] }, i1, [7 x i8], { i64, [16 x i8] } }, { i64, void ()*, [8 x i8] } } { { { i64, %str_slice, [8 x i8] }, i1, [7 x i8], { i64, [16 x i8] } } { { i64, %str_slice, [8 x i8] } { i64 0, %str_slice { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str.b, i32 0, i32 0), i64 17 }, [8 x i8] undef }, i1 false, [7 x i8] undef, { i64, [16 x i8] } { i64 0, [16 x i8] undef } }, { i64, void ()*, [8 x i8] } { i64 0, void ()* @_ZN7example17rusttest_foo_sum217h8c8aeea1b7695792E, [8 x i8] undef } }, { { { i64, %str_slice, [8 x i8] }, i1, [7 x i8], { i64, [16 x i8] } }, { i64, void ()*, [8 x i8] } } { { { i64, %str_slice, [8 x i8] }, i1, [7 x i8], { i64, [16 x i8] } } { { i64, %str_slice, [8 x i8] } { i64 0, %str_slice { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str.c, i32 0, i32 0), i64 17 }, [8 x i8] undef }, i1 false, [7 x i8] undef, { i64, [16 x i8] } { i64 0, [16 x i8] undef } }, { i64, void ()*, [8 x i8] } { i64 0, void ()* @_ZN7example17rusttest_foo_sum317h7b25023f7e01f980E, [8 x i8] undef } }, { { { i64, %str_slice, [8 x i8] }, i1, [7 x i8], { i64, [16 x i8] } }, { i64, void ()*, [8 x i8] } } { { { i64, %str_slice, [8 x i8] }, i1, [7 x i8], { i64, [16 x i8] } } { { i64, %str_slice, [8 x i8] } { i64 0, %str_slice { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str.d, i32 0, i32 0), i64 17 }, [8 x i8] undef }, i1 false, [7 x i8] undef, { i64, [16 x i8] } { i64 0, [16 x i8] undef } }, { i64, void ()*, [8 x i8] } { i64 0, void ()* @_ZN7example17rusttest_foo_sum417hba9da76c09e67d3dE, [8 x i8] undef } } }, align 8

; Function Attrs: uwtable
define internal i64 @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$11get_type_id17h231b0be68756ea7dE"(%str_slice* noalias readonly dereferenceable(16)) unnamed_addr #0 !dbg !75 {
entry-block:
  %abi_cast = alloca i64
  %self = alloca %str_slice*
  %_0 = alloca %"core::any::TypeId"
  %arg0 = alloca %str_slice*
  store %str_slice* %0, %str_slice** %arg0
  call void @llvm.dbg.declare(metadata %str_slice** %arg0, metadata !88, metadata !89), !dbg !90
  call void @llvm.dbg.declare(metadata %str_slice** %self, metadata !91, metadata !89), !dbg !93
  br label %start, !dbg !93

start:                                            ; preds = %entry-block
  %1 = load %str_slice*, %str_slice** %arg0, !dbg !94, !nonnull !87
  store %str_slice* %1, %str_slice** %self, !dbg !94
  %2 = call i64 @_ZN4core3any6TypeId2of17h2a88c185967cf0f1E(), !dbg !93
  store i64 %2, i64* %abi_cast, !dbg !93
  %3 = bitcast %"core::any::TypeId"* %_0 to i8*, !dbg !93
  %4 = bitcast i64* %abi_cast to i8*, !dbg !93
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false), !dbg !93
  br label %bb1, !dbg !93

bb1:                                              ; preds = %start
  %5 = bitcast %"core::any::TypeId"* %_0 to i64*, !dbg !93
  %6 = load i64, i64* %5, align 8, !dbg !93
  ret i64 %6, !dbg !93
}

; Function Attrs: cold noinline noreturn uwtable
define internal void @_ZN3std9panicking11begin_panic17h6c6bf73f39cdbdacE(i8* noalias nonnull readonly, i64, { %str_slice, i32 }* noalias readonly dereferenceable(24)) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !95 {
entry-block:
  %x.i = alloca %str_slice
  call void @llvm.dbg.declare(metadata %str_slice* %x.i, metadata !106, metadata !89), !dbg !117
  %arg0.i = alloca %str_slice
  call void @llvm.dbg.declare(metadata %str_slice* %arg0.i, metadata !120, metadata !89), !dbg !121
  %personalityslot = alloca { i8*, i32 }
  %file_line = alloca { %str_slice, i32 }*
  %msg = alloca %str_slice
  %arg1 = alloca { %str_slice, i32 }*
  %arg0 = alloca %str_slice
  %3 = getelementptr inbounds %str_slice, %str_slice* %arg0, i32 0, i32 0
  store i8* %0, i8** %3
  %4 = getelementptr inbounds %str_slice, %str_slice* %arg0, i32 0, i32 1
  store i64 %1, i64* %4
  call void @llvm.dbg.declare(metadata %str_slice* %arg0, metadata !122, metadata !89), !dbg !123
  store { %str_slice, i32 }* %2, { %str_slice, i32 }** %arg1
  call void @llvm.dbg.declare(metadata { %str_slice, i32 }** %arg1, metadata !124, metadata !89), !dbg !123
  call void @llvm.dbg.declare(metadata %str_slice* %msg, metadata !125, metadata !89), !dbg !126
  call void @llvm.dbg.declare(metadata { %str_slice, i32 }** %file_line, metadata !127, metadata !89), !dbg !126
  br label %start, !dbg !126

start:                                            ; preds = %entry-block
  %5 = getelementptr inbounds %str_slice, %str_slice* %arg0, i32 0, i32 0, !dbg !128
  %6 = load i8*, i8** %5, !dbg !128, !nonnull !87
  %7 = getelementptr inbounds %str_slice, %str_slice* %arg0, i32 0, i32 1, !dbg !128
  %8 = load i64, i64* %7, !dbg !128
  %9 = getelementptr inbounds %str_slice, %str_slice* %msg, i32 0, i32 0, !dbg !128
  store i8* %6, i8** %9, !dbg !128
  %10 = getelementptr inbounds %str_slice, %str_slice* %msg, i32 0, i32 1, !dbg !128
  store i64 %8, i64* %10, !dbg !128
  %11 = load { %str_slice, i32 }*, { %str_slice, i32 }** %arg1, !dbg !128, !nonnull !87
  store { %str_slice, i32 }* %11, { %str_slice, i32 }** %file_line, !dbg !128
  %12 = getelementptr inbounds %str_slice, %str_slice* %msg, i32 0, i32 0, !dbg !129
  %13 = load i8*, i8** %12, !dbg !129, !nonnull !87
  %14 = getelementptr inbounds %str_slice, %str_slice* %msg, i32 0, i32 1, !dbg !129
  %15 = load i64, i64* %14, !dbg !129
  %16 = getelementptr inbounds %str_slice, %str_slice* %arg0.i, i32 0, i32 0, !dbg !129
  store i8* %13, i8** %16, !dbg !129, !noalias !130
  %17 = getelementptr inbounds %str_slice, %str_slice* %arg0.i, i32 0, i32 1, !dbg !129
  store i64 %15, i64* %17, !dbg !129, !noalias !130
  %18 = getelementptr inbounds %str_slice, %str_slice* %arg0.i, i32 0, i32 0, !dbg !133
  %19 = load i8*, i8** %18, !dbg !133, !noalias !130, !nonnull !87
  %20 = getelementptr inbounds %str_slice, %str_slice* %arg0.i, i32 0, i32 1, !dbg !133
  %21 = load i64, i64* %20, !dbg !133, !noalias !130
  %22 = getelementptr inbounds %str_slice, %str_slice* %x.i, i32 0, i32 0, !dbg !133
  store i8* %19, i8** %22, !dbg !133, !noalias !130
  %23 = getelementptr inbounds %str_slice, %str_slice* %x.i, i32 0, i32 1, !dbg !133
  store i64 %21, i64* %23, !dbg !133, !noalias !130
  %24 = invoke i8* @_ZN5alloc4heap15exchange_malloc17h502cb7e03a3ef92eE(i64 16, i64 8)
          to label %"_ZN5alloc5boxed30_$LT$impl$u20$Box$LT$T$GT$$GT$3new17hcdad80961e4b06cfE.exit" unwind label %cleanup, !dbg !134

"_ZN5alloc5boxed30_$LT$impl$u20$Box$LT$T$GT$$GT$3new17hcdad80961e4b06cfE.exit": ; preds = %start
  %25 = bitcast i8* %24 to %str_slice*, !dbg !134
  %26 = getelementptr inbounds %str_slice, %str_slice* %x.i, i32 0, i32 0, !dbg !134
  %27 = load i8*, i8** %26, !dbg !134, !noalias !130, !nonnull !87
  %28 = getelementptr inbounds %str_slice, %str_slice* %x.i, i32 0, i32 1, !dbg !134
  %29 = load i64, i64* %28, !dbg !134, !noalias !130
  %30 = getelementptr inbounds %str_slice, %str_slice* %25, i32 0, i32 0, !dbg !134
  store i8* %27, i8** %30, !dbg !134
  %31 = getelementptr inbounds %str_slice, %str_slice* %25, i32 0, i32 1, !dbg !134
  store i64 %29, i64* %31, !dbg !134
  br label %bb2, !dbg !135

bb1:                                              ; preds = %cleanup
  %32 = load { i8*, i32 }, { i8*, i32 }* %personalityslot, !dbg !128
  resume { i8*, i32 } %32, !dbg !128

bb2:                                              ; preds = %"_ZN5alloc5boxed30_$LT$impl$u20$Box$LT$T$GT$$GT$3new17hcdad80961e4b06cfE.exit"
  %33 = bitcast %str_slice* %25 to i8*, !dbg !129
  %34 = load { %str_slice, i32 }*, { %str_slice, i32 }** %file_line, !dbg !129, !nonnull !87
  invoke void @_ZN3std9panicking20rust_panic_with_hook17h33761bada49f3713E(i8* noalias nonnull %33, void (i8*)** nonnull getelementptr inbounds ({ void (i8*)*, i64, i64, i64 (%str_slice*)* }, { void (i8*)*, i64, i64, i64 (%str_slice*)* }* @vtable.0, i32 0, i32 0), { %str_slice, i32 }* noalias readonly dereferenceable(24) %34)
          to label %unreachable unwind label %cleanup, !dbg !129

cleanup:                                          ; preds = %start, %bb2
  %35 = landingpad { i8*, i32 }
          cleanup
  store { i8*, i32 } %35, { i8*, i32 }* %personalityslot
  br label %bb1

unreachable:                                      ; preds = %bb2
  unreachable
}

; Function Attrs: uwtable
define internal i64 @_ZN4core3any6TypeId2of17h2a88c185967cf0f1E() unnamed_addr #0 !dbg !136 {
entry-block:
  %tmp_ret = alloca i64
  %_0 = alloca %"core::any::TypeId"
  br label %start

start:                                            ; preds = %entry-block
  store i64 2615731484939768676, i64* %tmp_ret, !dbg !139
  %0 = load i64, i64* %tmp_ret, !dbg !139
  br label %bb1, !dbg !139

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds %"core::any::TypeId", %"core::any::TypeId"* %_0, i32 0, i32 0, !dbg !140
  store i64 %0, i64* %1, !dbg !140
  %2 = bitcast %"core::any::TypeId"* %_0 to i64*, !dbg !141
  %3 = load i64, i64* %2, align 8, !dbg !141
  ret i64 %3, !dbg !141
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117hfb9dd4264394bb1fE(%"core::fmt::Arguments"* noalias nocapture sret dereferenceable(48), %str_slice* noalias nonnull readonly, i64, %"core::fmt::ArgumentV1"* noalias nonnull readonly, i64) unnamed_addr #2 !dbg !142 {
entry-block:
  %_6 = alloca %"core::option::Option<&[core::fmt::rt::v1::Argument]>"
  %args = alloca { %"core::fmt::ArgumentV1"*, i64 }
  %pieces = alloca { %str_slice*, i64 }
  %arg1 = alloca { %"core::fmt::ArgumentV1"*, i64 }
  %arg0 = alloca { %str_slice*, i64 }
  %5 = getelementptr inbounds { %str_slice*, i64 }, { %str_slice*, i64 }* %arg0, i32 0, i32 0
  store %str_slice* %1, %str_slice** %5
  %6 = getelementptr inbounds { %str_slice*, i64 }, { %str_slice*, i64 }* %arg0, i32 0, i32 1
  store i64 %2, i64* %6
  call void @llvm.dbg.declare(metadata { %str_slice*, i64 }* %arg0, metadata !267, metadata !89), !dbg !268
  %7 = getelementptr inbounds { %"core::fmt::ArgumentV1"*, i64 }, { %"core::fmt::ArgumentV1"*, i64 }* %arg1, i32 0, i32 0
  store %"core::fmt::ArgumentV1"* %3, %"core::fmt::ArgumentV1"** %7
  %8 = getelementptr inbounds { %"core::fmt::ArgumentV1"*, i64 }, { %"core::fmt::ArgumentV1"*, i64 }* %arg1, i32 0, i32 1
  store i64 %4, i64* %8
  call void @llvm.dbg.declare(metadata { %"core::fmt::ArgumentV1"*, i64 }* %arg1, metadata !269, metadata !89), !dbg !268
  call void @llvm.dbg.declare(metadata { %str_slice*, i64 }* %pieces, metadata !270, metadata !89), !dbg !272
  call void @llvm.dbg.declare(metadata { %"core::fmt::ArgumentV1"*, i64 }* %args, metadata !273, metadata !89), !dbg !274
  br label %start, !dbg !274

start:                                            ; preds = %entry-block
  %9 = getelementptr inbounds { %str_slice*, i64 }, { %str_slice*, i64 }* %arg0, i32 0, i32 0, !dbg !275
  %10 = load %str_slice*, %str_slice** %9, !dbg !275, !nonnull !87
  %11 = getelementptr inbounds { %str_slice*, i64 }, { %str_slice*, i64 }* %arg0, i32 0, i32 1, !dbg !275
  %12 = load i64, i64* %11, !dbg !275
  %13 = getelementptr inbounds { %str_slice*, i64 }, { %str_slice*, i64 }* %pieces, i32 0, i32 0, !dbg !275
  store %str_slice* %10, %str_slice** %13, !dbg !275
  %14 = getelementptr inbounds { %str_slice*, i64 }, { %str_slice*, i64 }* %pieces, i32 0, i32 1, !dbg !275
  store i64 %12, i64* %14, !dbg !275
  %15 = getelementptr inbounds { %"core::fmt::ArgumentV1"*, i64 }, { %"core::fmt::ArgumentV1"*, i64 }* %arg1, i32 0, i32 0, !dbg !276
  %16 = load %"core::fmt::ArgumentV1"*, %"core::fmt::ArgumentV1"** %15, !dbg !276, !nonnull !87
  %17 = getelementptr inbounds { %"core::fmt::ArgumentV1"*, i64 }, { %"core::fmt::ArgumentV1"*, i64 }* %arg1, i32 0, i32 1, !dbg !276
  %18 = load i64, i64* %17, !dbg !276
  %19 = getelementptr inbounds { %"core::fmt::ArgumentV1"*, i64 }, { %"core::fmt::ArgumentV1"*, i64 }* %args, i32 0, i32 0, !dbg !276
  store %"core::fmt::ArgumentV1"* %16, %"core::fmt::ArgumentV1"** %19, !dbg !276
  %20 = getelementptr inbounds { %"core::fmt::ArgumentV1"*, i64 }, { %"core::fmt::ArgumentV1"*, i64 }* %args, i32 0, i32 1, !dbg !276
  store i64 %18, i64* %20, !dbg !276
  %21 = getelementptr inbounds { %str_slice*, i64 }, { %str_slice*, i64 }* %pieces, i32 0, i32 0, !dbg !277
  %22 = load %str_slice*, %str_slice** %21, !dbg !277, !nonnull !87
  %23 = getelementptr inbounds { %str_slice*, i64 }, { %str_slice*, i64 }* %pieces, i32 0, i32 1, !dbg !277
  %24 = load i64, i64* %23, !dbg !277
  %25 = getelementptr inbounds %"core::option::Option<&[core::fmt::rt::v1::Argument]>", %"core::option::Option<&[core::fmt::rt::v1::Argument]>"* %_6, i32 0, i32 0, i32 0, !dbg !278
  store %"core::fmt::rt::v1::Argument"* null, %"core::fmt::rt::v1::Argument"** %25, !dbg !278
  %26 = getelementptr inbounds { %"core::fmt::ArgumentV1"*, i64 }, { %"core::fmt::ArgumentV1"*, i64 }* %args, i32 0, i32 0, !dbg !279
  %27 = load %"core::fmt::ArgumentV1"*, %"core::fmt::ArgumentV1"** %26, !dbg !279, !nonnull !87
  %28 = getelementptr inbounds { %"core::fmt::ArgumentV1"*, i64 }, { %"core::fmt::ArgumentV1"*, i64 }* %args, i32 0, i32 1, !dbg !279
  %29 = load i64, i64* %28, !dbg !279
  %30 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 0, !dbg !280
  %31 = getelementptr inbounds { %str_slice*, i64 }, { %str_slice*, i64 }* %30, i32 0, i32 0, !dbg !280
  store %str_slice* %22, %str_slice** %31, !dbg !280
  %32 = getelementptr inbounds { %str_slice*, i64 }, { %str_slice*, i64 }* %30, i32 0, i32 1, !dbg !280
  store i64 %24, i64* %32, !dbg !280
  %33 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 1, !dbg !280
  %34 = bitcast %"core::option::Option<&[core::fmt::rt::v1::Argument]>"* %_6 to i8*, !dbg !280
  %35 = bitcast %"core::option::Option<&[core::fmt::rt::v1::Argument]>"* %33 to i8*, !dbg !280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %34, i64 16, i32 8, i1 false), !dbg !280
  %36 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 2, !dbg !280
  %37 = getelementptr inbounds { %"core::fmt::ArgumentV1"*, i64 }, { %"core::fmt::ArgumentV1"*, i64 }* %36, i32 0, i32 0, !dbg !280
  store %"core::fmt::ArgumentV1"* %27, %"core::fmt::ArgumentV1"** %37, !dbg !280
  %38 = getelementptr inbounds { %"core::fmt::ArgumentV1"*, i64 }, { %"core::fmt::ArgumentV1"*, i64 }* %36, i32 0, i32 1, !dbg !280
  store i64 %29, i64* %38, !dbg !280
  ret void, !dbg !281
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h38e81f44618c9461E"(i8*) unnamed_addr #2 !dbg !282 {
entry-block:
  %self = alloca i8*
  %arg0 = alloca i8*
  store i8* %0, i8** %arg0
  call void @llvm.dbg.declare(metadata i8** %arg0, metadata !292, metadata !89), !dbg !293
  call void @llvm.dbg.declare(metadata i8** %self, metadata !294, metadata !89), !dbg !296
  br label %start, !dbg !296

start:                                            ; preds = %entry-block
  %1 = load i8*, i8** %arg0, !dbg !297
  store i8* %1, i8** %self, !dbg !297
  %2 = load i8*, i8** %self, !dbg !298
  %3 = call i8* @_ZN4core3ptr8null_mut17h0479cb4736c6e923E(), !dbg !298
  br label %bb1, !dbg !298

bb1:                                              ; preds = %start
  %4 = icmp eq i8* %2, %3, !dbg !298
  ret i1 %4, !dbg !299
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4core3ptr8null_mut17h0479cb4736c6e923E() unnamed_addr #2 !dbg !300 {
entry-block:
  br label %start

start:                                            ; preds = %entry-block
  ret i8* null, !dbg !303
}

define internal void @_ZN4drop17h3f10143eb02d4bbbE(i8*) unnamed_addr #3 {
entry-block:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc4heap15exchange_malloc17h502cb7e03a3ef92eE(i64, i64) unnamed_addr #2 !dbg !304 {
entry-block:
  %_10 = alloca {}
  %ptr = alloca i8*
  %align = alloca i64
  %size = alloca i64
  %_0 = alloca i8*
  %arg1 = alloca i64
  %arg0 = alloca i64
  store i64 %0, i64* %arg0
  call void @llvm.dbg.declare(metadata i64* %arg0, metadata !309, metadata !89), !dbg !310
  store i64 %1, i64* %arg1
  call void @llvm.dbg.declare(metadata i64* %arg1, metadata !311, metadata !89), !dbg !310
  call void @llvm.dbg.declare(metadata i64* %size, metadata !312, metadata !89), !dbg !314
  call void @llvm.dbg.declare(metadata i64* %align, metadata !315, metadata !89), !dbg !314
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !316, metadata !89), !dbg !318
  br label %start, !dbg !318

start:                                            ; preds = %entry-block
  %2 = load i64, i64* %arg0, !dbg !319
  store i64 %2, i64* %size, !dbg !319
  %3 = load i64, i64* %arg1, !dbg !319
  store i64 %3, i64* %align, !dbg !319
  %4 = load i64, i64* %size, !dbg !320
  %5 = icmp eq i64 %4, 0, !dbg !320
  br i1 %5, label %bb1, label %bb2, !dbg !320

bb1:                                              ; preds = %start
  store i8* inttoptr (i64 1 to i8*), i8** %_0, !dbg !321
  br label %bb7, !dbg !320

bb2:                                              ; preds = %start
  %6 = load i64, i64* %size, !dbg !322
  %7 = load i64, i64* %align, !dbg !322
  %8 = call i8* @_ZN5alloc4heap8allocate17he4b35139a88152f3E(i64 %6, i64 %7), !dbg !322
  store i8* %8, i8** %ptr, !dbg !322
  br label %bb3, !dbg !322

bb3:                                              ; preds = %bb2
  %9 = load i8*, i8** %ptr, !dbg !323
  %10 = call zeroext i1 @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h38e81f44618c9461E"(i8* %9), !dbg !323
  br label %bb4, !dbg !323

bb4:                                              ; preds = %bb3
  br i1 %10, label %bb5, label %bb6, !dbg !323

bb5:                                              ; preds = %bb4
  call void @_ZN5alloc3oom3oom17h42e87d3c9d8b24c2E(), !dbg !324
  unreachable, !dbg !324

bb6:                                              ; preds = %bb4
  %11 = load i8*, i8** %ptr, !dbg !325
  store i8* %11, i8** %_0, !dbg !325
  br label %bb7, !dbg !320

bb7:                                              ; preds = %bb1, %bb6
  %12 = load i8*, i8** %_0, !dbg !326
  ret i8* %12, !dbg !326
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc4heap8allocate17he4b35139a88152f3E(i64, i64) unnamed_addr #2 !dbg !327 {
entry-block:
  %align.i = alloca i64
  call void @llvm.dbg.declare(metadata i64* %align.i, metadata !328, metadata !89), !dbg !333
  %size.i = alloca i64
  call void @llvm.dbg.declare(metadata i64* %size.i, metadata !336, metadata !89), !dbg !333
  %_0.i = alloca {}
  %arg1.i = alloca i64
  call void @llvm.dbg.declare(metadata i64* %arg1.i, metadata !337, metadata !89), !dbg !338
  %arg0.i = alloca i64
  call void @llvm.dbg.declare(metadata i64* %arg0.i, metadata !339, metadata !89), !dbg !338
  %align = alloca i64
  %size = alloca i64
  %arg1 = alloca i64
  %arg0 = alloca i64
  store i64 %0, i64* %arg0
  call void @llvm.dbg.declare(metadata i64* %arg0, metadata !340, metadata !89), !dbg !341
  store i64 %1, i64* %arg1
  call void @llvm.dbg.declare(metadata i64* %arg1, metadata !342, metadata !89), !dbg !341
  call void @llvm.dbg.declare(metadata i64* %size, metadata !343, metadata !89), !dbg !344
  call void @llvm.dbg.declare(metadata i64* %align, metadata !345, metadata !89), !dbg !344
  br label %start, !dbg !344

start:                                            ; preds = %entry-block
  %2 = load i64, i64* %arg0, !dbg !346
  store i64 %2, i64* %size, !dbg !346
  %3 = load i64, i64* %arg1, !dbg !346
  store i64 %3, i64* %align, !dbg !346
  %4 = load i64, i64* %size, !dbg !347
  %5 = load i64, i64* %align, !dbg !347
  store i64 %4, i64* %arg0.i, !dbg !347
  store i64 %5, i64* %arg1.i, !dbg !347
  %6 = load i64, i64* %arg0.i, !dbg !348
  store i64 %6, i64* %size.i, !dbg !348
  %7 = load i64, i64* %arg1.i, !dbg !348
  store i64 %7, i64* %align.i, !dbg !348
  br label %bb1, !dbg !347

bb1:                                              ; preds = %start
  %8 = load i64, i64* %size, !dbg !349
  %9 = load i64, i64* %align, !dbg !349
  %10 = call i8* @__rust_allocate(i64 %8, i64 %9), !dbg !349
  br label %bb2, !dbg !349

bb2:                                              ; preds = %bb1
  ret i8* %10, !dbg !350
}

; Function Attrs: uwtable
define internal i32 @_ZN7example3sum17hefb5a864520fb38cE(i32, i32) unnamed_addr #0 !dbg !351 {
entry-block:
  %b = alloca i32
  %a = alloca i32
  %arg1 = alloca i32
  %arg0 = alloca i32
  store i32 %0, i32* %arg0
  call void @llvm.dbg.declare(metadata i32* %arg0, metadata !355, metadata !89), !dbg !356
  store i32 %1, i32* %arg1
  call void @llvm.dbg.declare(metadata i32* %arg1, metadata !357, metadata !89), !dbg !356
  call void @llvm.dbg.declare(metadata i32* %a, metadata !358, metadata !89), !dbg !360
  call void @llvm.dbg.declare(metadata i32* %b, metadata !361, metadata !89), !dbg !360
  br label %start, !dbg !360

start:                                            ; preds = %entry-block
  %2 = load i32, i32* %arg0, !dbg !362
  store i32 %2, i32* %a, !dbg !362
  %3 = load i32, i32* %arg1, !dbg !362
  store i32 %3, i32* %b, !dbg !362
  %4 = load i32, i32* %a, !dbg !363
  %5 = load i32, i32* %b, !dbg !363
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 %5), !dbg !363
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !363
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !363
  %9 = call i1 @llvm.expect.i1(i1 %8, i1 false), !dbg !363
  br i1 %9, label %panic, label %bb1, !dbg !363

bb1:                                              ; preds = %start
  ret i32 %7, !dbg !364

panic:                                            ; preds = %start
  call void @_ZN4core9panicking5panic17h723a4d81a96970caE({ %str_slice, %str_slice, i32 }* @panic_loc.3), !dbg !363
  unreachable, !dbg !363
}

; Function Attrs: uwtable
define internal void @_ZN7example10just_print17he72086bf44478243E() unnamed_addr #0 !dbg !365 {
entry-block:
  %_7 = alloca {}
  %_2 = alloca %"core::fmt::Arguments"
  %_0 = alloca {}
  br label %start

start:                                            ; preds = %entry-block
  %0 = load %str_slice*, %str_slice** getelementptr inbounds ({ %str_slice*, i64 }, { %str_slice*, i64 }* @_ZN7example10just_print15__STATIC_FMTSTR17hfecf6bee7dfe61f1E, i32 0, i32 0), !dbg !368, !nonnull !87
  %1 = load i64, i64* getelementptr inbounds ({ %str_slice*, i64 }, { %str_slice*, i64 }* @_ZN7example10just_print15__STATIC_FMTSTR17hfecf6bee7dfe61f1E, i32 0, i32 1), !dbg !368
  call void @_ZN4core3fmt9Arguments6new_v117hfb9dd4264394bb1fE(%"core::fmt::Arguments"* noalias nocapture sret dereferenceable(48) %_2, %str_slice* noalias nonnull readonly %0, i64 %1, %"core::fmt::ArgumentV1"* noalias nonnull readonly getelementptr inbounds ([0 x %"core::fmt::ArgumentV1"], [0 x %"core::fmt::ArgumentV1"]* @ref.4, i32 0, i32 0), i64 0), !dbg !368
  br label %bb1, !dbg !368

bb1:                                              ; preds = %start
  call void @_ZN3std2io5stdio6_print17he51daff8a36cc4dfE(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_2), !dbg !368
  br label %bb2, !dbg !368

bb2:                                              ; preds = %bb1
  ret void, !dbg !369
}

; Function Attrs: uwtable
define internal void @_ZN7example17rusttest_foo_sum117h319bd21b204fd3edE() unnamed_addr #0 !dbg !370 {
entry-block:
  %_1 = alloca {}
  %_0 = alloca {}
  br label %start

start:                                            ; preds = %entry-block
  %0 = call i32 @_ZN7example3sum17hefb5a864520fb38cE(i32 3, i32 4), !dbg !371
  br label %bb1, !dbg !371

bb1:                                              ; preds = %start
  %1 = icmp eq i32 %0, 7, !dbg !371
  %2 = xor i1 %1, true, !dbg !371
  br i1 %2, label %bb2, label %bb3, !dbg !371

bb2:                                              ; preds = %bb1
  call void @_ZN3std9panicking11begin_panic17h6c6bf73f39cdbdacE(i8* noalias nonnull readonly getelementptr inbounds ([32 x i8], [32 x i8]* @str.5, i32 0, i32 0), i64 32, { %str_slice, i32 }* noalias readonly dereferenceable(24) bitcast ({ %str_slice, i32, [4 x i8] }* @_ZN7example17rusttest_foo_sum110_FILE_LINE17h5d1b4176bce6be50E to { %str_slice, i32 }*)), !dbg !371
  unreachable, !dbg !371

bb3:                                              ; preds = %bb1
  ret void, !dbg !372
}

; Function Attrs: uwtable
define internal void @_ZN7example17rusttest_foo_sum217h8c8aeea1b7695792E() unnamed_addr #0 !dbg !373 {
entry-block:
  %_1 = alloca {}
  %_0 = alloca {}
  br label %start

start:                                            ; preds = %entry-block
  %0 = call i32 @_ZN7example3sum17hefb5a864520fb38cE(i32 4, i32 5), !dbg !374
  br label %bb1, !dbg !374

bb1:                                              ; preds = %start
  %1 = icmp eq i32 %0, 9, !dbg !374
  %2 = xor i1 %1, true, !dbg !374
  br i1 %2, label %bb2, label %bb3, !dbg !374

bb2:                                              ; preds = %bb1
  call void @_ZN3std9panicking11begin_panic17h6c6bf73f39cdbdacE(i8* noalias nonnull readonly getelementptr inbounds ([32 x i8], [32 x i8]* @str.6, i32 0, i32 0), i64 32, { %str_slice, i32 }* noalias readonly dereferenceable(24) bitcast ({ %str_slice, i32, [4 x i8] }* @_ZN7example17rusttest_foo_sum210_FILE_LINE17h1dfc9fa2411661a7E to { %str_slice, i32 }*)), !dbg !374
  unreachable, !dbg !374

bb3:                                              ; preds = %bb1
  ret void, !dbg !375
}

; Function Attrs: uwtable
define internal void @_ZN7example17rusttest_foo_sum317h7b25023f7e01f980E() unnamed_addr #0 !dbg !376 {
entry-block:
  %_1 = alloca {}
  %_0 = alloca {}
  br label %start

start:                                            ; preds = %entry-block
  %0 = call i32 @_ZN7example3sum17hefb5a864520fb38cE(i32 5, i32 6), !dbg !377
  br label %bb1, !dbg !377

bb1:                                              ; preds = %start
  %1 = icmp eq i32 %0, 11, !dbg !377
  %2 = xor i1 %1, true, !dbg !377
  br i1 %2, label %bb2, label %bb3, !dbg !377

bb2:                                              ; preds = %bb1
  call void @_ZN3std9panicking11begin_panic17h6c6bf73f39cdbdacE(i8* noalias nonnull readonly getelementptr inbounds ([33 x i8], [33 x i8]* @str.7, i32 0, i32 0), i64 33, { %str_slice, i32 }* noalias readonly dereferenceable(24) bitcast ({ %str_slice, i32, [4 x i8] }* @_ZN7example17rusttest_foo_sum310_FILE_LINE17h4364fc82d6a6eaa9E to { %str_slice, i32 }*)), !dbg !377
  unreachable, !dbg !377

bb3:                                              ; preds = %bb1
  ret void, !dbg !378
}

; Function Attrs: uwtable
define internal void @_ZN7example17rusttest_foo_sum417hba9da76c09e67d3dE() unnamed_addr #0 !dbg !379 {
entry-block:
  %_1 = alloca {}
  %_0 = alloca {}
  br label %start

start:                                            ; preds = %entry-block
  %0 = call i32 @_ZN7example3sum17hefb5a864520fb38cE(i32 5, i32 6), !dbg !380
  br label %bb1, !dbg !380

bb1:                                              ; preds = %start
  %1 = icmp eq i32 %0, 11, !dbg !380
  %2 = xor i1 %1, true, !dbg !380
  br i1 %2, label %bb2, label %bb3, !dbg !380

bb2:                                              ; preds = %bb1
  call void @_ZN3std9panicking11begin_panic17h6c6bf73f39cdbdacE(i8* noalias nonnull readonly getelementptr inbounds ([33 x i8], [33 x i8]* @str.7, i32 0, i32 0), i64 33, { %str_slice, i32 }* noalias readonly dereferenceable(24) bitcast ({ %str_slice, i32, [4 x i8] }* @_ZN7example17rusttest_foo_sum410_FILE_LINE17h0d63d900c8521622E to { %str_slice, i32 }*)), !dbg !380
  unreachable, !dbg !380

bb3:                                              ; preds = %bb1
  ret void, !dbg !381
}

; Function Attrs: uwtable
define internal void @_ZN7example6__test4main17h57ca69db7ca63c3dE() unnamed_addr #0 !dbg !382 {
entry-block:
  br label %start

start:                                            ; preds = %entry-block
  call void @_ZN4test16test_main_static17h8310fdcbefe718c6E(%"test::TestDescAndFn"* noalias nonnull readonly bitcast ({ { { { i64, %str_slice, [8 x i8] }, i1, [7 x i8], { i64, [16 x i8] } }, { i64, void ()*, [8 x i8] } }, { { { i64, %str_slice, [8 x i8] }, i1, [7 x i8], { i64, [16 x i8] } }, { i64, void ()*, [8 x i8] } }, { { { i64, %str_slice, [8 x i8] }, i1, [7 x i8], { i64, [16 x i8] } }, { i64, void ()*, [8 x i8] } }, { { { i64, %str_slice, [8 x i8] }, i1, [7 x i8], { i64, [16 x i8] } }, { i64, void ()*, [8 x i8] } } }* @ref.e to %"test::TestDescAndFn"*), i64 4), !dbg !384
  br label %bb1, !dbg !384

bb1:                                              ; preds = %start
  ret void, !dbg !384
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #6

; Function Attrs: cold noinline noreturn
declare void @_ZN3std9panicking20rust_panic_with_hook17h33761bada49f3713E(i8* noalias nonnull, void (i8*)** nonnull, { %str_slice, i32 }* noalias readonly dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold noinline noreturn
declare void @_ZN5alloc3oom3oom17h42e87d3c9d8b24c2E() unnamed_addr #7

; Function Attrs: nounwind
declare noalias i8* @__rust_allocate(i64, i64) unnamed_addr #6

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind readnone
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn
declare void @_ZN4core9panicking5panic17h723a4d81a96970caE({ %str_slice, %str_slice, i32 }* noalias readonly dereferenceable(40)) unnamed_addr #7

declare void @_ZN3std2io5stdio6_print17he51daff8a36cc4dfE(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48)) unnamed_addr #3

declare void @_ZN4test16test_main_static17h8310fdcbefe718c6E(%"test::TestDescAndFn"* noalias nonnull readonly, i64) unnamed_addr #3

define i64 @main(i64, i8**) unnamed_addr #3 {
top:
  %2 = call i64 @_ZN3std2rt10lang_start17h745bea112c3e5e1aE(i8* bitcast (void ()* @_ZN7example6__test4main17h57ca69db7ca63c3dE to i8*), i64 %0, i8** %1)
  ret i64 %2
}

declare i64 @_ZN3std2rt10lang_start17h745bea112c3e5e1aE(i8*, i64, i8**) unnamed_addr #3

attributes #0 = { uwtable "no-frame-pointer-elim"="true" }
attributes #1 = { cold noinline noreturn uwtable "no-frame-pointer-elim"="true" }
attributes #2 = { inlinehint uwtable "no-frame-pointer-elim"="true" }
attributes #3 = { "no-frame-pointer-elim"="true" }
attributes #4 = { nounwind readnone }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind "no-frame-pointer-elim"="true" }
attributes #7 = { cold noinline noreturn "no-frame-pointer-elim"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.dbg.cu = !{!3}

!0 = !{i32 1, !"PIE Level", i32 2}
!1 = !{i32 2, !"Dwarf Version", i32 2}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !4, producer: "rustc version 1.16.0-nightly (df8debf6d 2017-01-25)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !5, globals: !44)
!4 = !DIFile(filename: "./example.rs", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!5 = !{!6, !19, !26, !32, !38}
!6 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Position", scope: !8, file: !7, baseType: !15, size: 64, align: 64, elements: !16)
!7 = !DIFile(filename: "<unknown>", directory: "")
!8 = !DINamespace(name: "v1", scope: !10, file: !9, line: 11)
!9 = !DIFile(filename: "/Users/rustbuild/src/rust-buildbot/slave/nightly-dist-rustc-mac/build/src/libcore/fmt/rt/v1.rs", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!10 = !DINamespace(name: "rt", scope: !12, file: !11, line: 48)
!11 = !DIFile(filename: "/Users/rustbuild/src/rust-buildbot/slave/nightly-dist-rustc-mac/build/src/libcore/fmt/mod.rs", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!12 = !DINamespace(name: "fmt", scope: !13, file: !11, line: 11)
!13 = !DINamespace(name: "core", scope: null, file: !14, line: 11)
!14 = !DIFile(filename: "/Users/rustbuild/src/rust-buildbot/slave/nightly-dist-rustc-mac/build/src/libcore/lib.rs", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!15 = !DIBasicType(name: "u64", size: 64, align: 64, encoding: DW_ATE_unsigned)
!16 = !{!17, !18}
!17 = !DIEnumerator(name: "Next", value: 0)
!18 = !DIEnumerator(name: "At", value: 1)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Alignment", scope: !8, file: !7, baseType: !20, size: 8, align: 8, elements: !21)
!20 = !DIBasicType(name: "u8", size: 8, align: 8, encoding: DW_ATE_unsigned)
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "Left", value: 0)
!23 = !DIEnumerator(name: "Right", value: 1)
!24 = !DIEnumerator(name: "Center", value: 2)
!25 = !DIEnumerator(name: "Unknown", value: 3)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Count", scope: !8, file: !7, baseType: !15, size: 64, align: 64, elements: !27)
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "Is", value: 0)
!29 = !DIEnumerator(name: "Param", value: 1)
!30 = !DIEnumerator(name: "NextParam", value: 2)
!31 = !DIEnumerator(name: "Implied", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Result", scope: !33, file: !7, baseType: !20, size: 8, align: 8, elements: !35)
!33 = !DINamespace(name: "result", scope: !13, file: !34, line: 11)
!34 = !DIFile(filename: "/Users/rustbuild/src/rust-buildbot/slave/nightly-dist-rustc-mac/build/src/libcore/result.rs", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!35 = !{!36, !37}
!36 = !DIEnumerator(name: "Ok", value: 0)
!37 = !DIEnumerator(name: "Err", value: 1)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Option", scope: !39, file: !7, baseType: !15, size: 64, align: 64, elements: !41)
!39 = !DINamespace(name: "option", scope: !13, file: !40, line: 11)
!40 = !DIFile(filename: "/Users/rustbuild/src/rust-buildbot/slave/nightly-dist-rustc-mac/build/src/libcore/option.rs", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!41 = !{!42, !43}
!42 = !DIEnumerator(name: "None", value: 0)
!43 = !DIEnumerator(name: "Some", value: 1)
!44 = !{!45, !61, !69, !71, !73}
!45 = distinct !DIGlobalVariable(name: "__STATIC_FMTSTR", linkageName: "_ZN7example10just_print15__STATIC_FMTSTRE", scope: !46, file: !49, line: 2, type: !50, isLocal: true, isDefinition: true, variable: { %str_slice*, i64 }* @_ZN7example10just_print15__STATIC_FMTSTR17hfecf6bee7dfe61f1E)
!46 = !DINamespace(name: "just_print", scope: !48, file: !47, line: 6)
!47 = !DIFile(filename: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust/example.rs", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!48 = !DINamespace(name: "example", scope: null, file: !47, line: 2)
!49 = !DIFile(filename: "<println macros>", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[&str]", file: !7, size: 128, align: 64, elements: !51, identifier: "917281410ef5e94e2a46677205255f3deba10302")
!51 = !{!52, !60}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !50, file: !7, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const &str", baseType: !54, size: 64, align: 64)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !7, size: 128, align: 64, elements: !55, identifier: "84d2e8c51a6d51cb9793108c0a4ccc387b029b7c")
!55 = !{!56, !58}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !54, file: !7, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !20, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !54, file: !7, baseType: !59, size: 64, align: 64, offset: 64)
!59 = !DIBasicType(name: "usize", size: 64, align: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !50, file: !7, baseType: !59, size: 64, align: 64, offset: 64)
!61 = distinct !DIGlobalVariable(name: "_FILE_LINE", linkageName: "_ZN7example17rusttest_foo_sum110_FILE_LINEE", scope: !62, file: !63, line: 5, type: !64, isLocal: true, isDefinition: true, variable: { %str_slice, i32, [4 x i8] }* @_ZN7example17rusttest_foo_sum110_FILE_LINE17h5d1b4176bce6be50E)
!62 = !DINamespace(name: "rusttest_foo_sum1", scope: !48, file: !47, line: 11)
!63 = !DIFile(filename: "<panic macros>", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&str, u32)", file: !7, size: 192, align: 64, elements: !65, identifier: "7938d327a46fe9a622f4f79da12b5f3b304c40cf")
!65 = !{!66, !67}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !64, file: !7, baseType: !54, size: 128, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !64, file: !7, baseType: !68, size: 32, align: 32, offset: 128)
!68 = !DIBasicType(name: "u32", size: 32, align: 32, encoding: DW_ATE_unsigned)
!69 = distinct !DIGlobalVariable(name: "_FILE_LINE", linkageName: "_ZN7example17rusttest_foo_sum210_FILE_LINEE", scope: !70, file: !63, line: 5, type: !64, isLocal: true, isDefinition: true, variable: { %str_slice, i32, [4 x i8] }* @_ZN7example17rusttest_foo_sum210_FILE_LINE17h1dfc9fa2411661a7E)
!70 = !DINamespace(name: "rusttest_foo_sum2", scope: !48, file: !47, line: 16)
!71 = distinct !DIGlobalVariable(name: "_FILE_LINE", linkageName: "_ZN7example17rusttest_foo_sum310_FILE_LINEE", scope: !72, file: !63, line: 5, type: !64, isLocal: true, isDefinition: true, variable: { %str_slice, i32, [4 x i8] }* @_ZN7example17rusttest_foo_sum310_FILE_LINE17h4364fc82d6a6eaa9E)
!72 = !DINamespace(name: "rusttest_foo_sum3", scope: !48, file: !47, line: 21)
!73 = distinct !DIGlobalVariable(name: "_FILE_LINE", linkageName: "_ZN7example17rusttest_foo_sum410_FILE_LINEE", scope: !74, file: !63, line: 5, type: !64, isLocal: true, isDefinition: true, variable: { %str_slice, i32, [4 x i8] }* @_ZN7example17rusttest_foo_sum410_FILE_LINE17h0d63d900c8521622E)
!74 = !DINamespace(name: "rusttest_foo_sum4", scope: !48, file: !47, line: 26)
!75 = distinct !DISubprogram(name: "get_type_id<&str>", linkageName: "_ZN4core3any8{{impl}}17get_type_id<&str>E", scope: !77, file: !76, line: 115, type: !79, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !85, variables: !87)
!76 = !DIFile(filename: "/Users/rustbuild/src/rust-buildbot/slave/nightly-dist-rustc-mac/build/src/libcore/any.rs", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!77 = !DINamespace(name: "{{impl}}", scope: !78, file: !76, line: 114)
!78 = !DINamespace(name: "any", scope: !13, file: !76, line: 11)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !84}
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "TypeId", scope: !78, file: !7, size: 64, align: 64, elements: !82, identifier: "f80b8036614d32088aa4b1d82ec3c5b70ca5b200")
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !81, file: !7, baseType: !15, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&str", baseType: !54, size: 64, align: 64)
!85 = !{!86}
!86 = !DITemplateTypeParameter(name: "T", type: !54)
!87 = !{}
!88 = !DILocalVariable(name: "self", arg: 1, scope: !75, file: !47, line: 1, type: !84)
!89 = !DIExpression()
!90 = !DILocation(line: 1, scope: !75)
!91 = !DILocalVariable(name: "self", scope: !92, file: !76, line: 115, type: !84)
!92 = distinct !DILexicalBlock(scope: !75, file: !76, line: 115, column: 36)
!93 = !DILocation(line: 115, scope: !92)
!94 = !DILocation(line: 115, scope: !75)
!95 = distinct !DISubprogram(name: "begin_panic<&str>", linkageName: "_ZN3std9panicking17begin_panic<&str>E", scope: !97, file: !96, line: 509, type: !100, isLocal: false, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !104, variables: !87)
!96 = !DIFile(filename: "/Users/rustbuild/src/rust-buildbot/slave/nightly-dist-rustc-mac/build/src/libstd/panicking.rs", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!97 = !DINamespace(name: "panicking", scope: !98, file: !96, line: 11)
!98 = !DINamespace(name: "std", scope: null, file: !99, line: 11)
!99 = !DIFile(filename: "/Users/rustbuild/src/rust-buildbot/slave/nightly-dist-rustc-mac/build/src/libstd/lib.rs", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !54, !103}
!102 = !DIBasicType(name: "!", align: 8, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&(&str, u32)", baseType: !64, size: 64, align: 64)
!104 = !{!105}
!105 = !DITemplateTypeParameter(name: "M", type: !54)
!106 = !DILocalVariable(name: "x", scope: !107, file: !108, line: 234, type: !54)
!107 = distinct !DILexicalBlock(scope: !109, file: !108, line: 234, column: 31)
!108 = !DIFile(filename: "/Users/rustbuild/src/rust-buildbot/slave/nightly-dist-rustc-mac/build/src/liballoc/boxed.rs", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!109 = distinct !DISubprogram(name: "new<&str>", linkageName: "_ZN5alloc5boxed8{{impl}}9new<&str>E", scope: !110, file: !108, line: 234, type: !114, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !85, variables: !87)
!110 = !DINamespace(name: "{{impl}}", scope: !111, file: !108, line: 224)
!111 = !DINamespace(name: "boxed", scope: !112, file: !108, line: 11)
!112 = !DINamespace(name: "alloc", scope: null, file: !113, line: 11)
!113 = !DIFile(filename: "/Users/rustbuild/src/rust-buildbot/slave/nightly-dist-rustc-mac/build/src/liballoc/lib.rs", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!114 = !DISubroutineType(types: !115)
!115 = !{!116, !54}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Box<&str>", baseType: !54, size: 64, align: 64)
!117 = !DILocation(line: 234, scope: !107, inlinedAt: !118)
!118 = distinct !DILocation(line: 517, scope: !119)
!119 = distinct !DILexicalBlock(scope: !95, file: !96, line: 509, column: 80)
!120 = !DILocalVariable(name: "x", arg: 1, scope: !109, file: !47, line: 1, type: !54)
!121 = !DILocation(line: 1, scope: !109, inlinedAt: !118)
!122 = !DILocalVariable(name: "msg", arg: 1, scope: !95, file: !47, line: 1, type: !54)
!123 = !DILocation(line: 1, scope: !95)
!124 = !DILocalVariable(name: "file_line", arg: 2, scope: !95, file: !47, line: 1, type: !103)
!125 = !DILocalVariable(name: "msg", scope: !119, file: !96, line: 509, type: !54)
!126 = !DILocation(line: 509, scope: !119)
!127 = !DILocalVariable(name: "file_line", scope: !119, file: !96, line: 509, type: !103)
!128 = !DILocation(line: 509, scope: !95)
!129 = !DILocation(line: 517, scope: !119)
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN5alloc5boxed30_$LT$impl$u20$Box$LT$T$GT$$GT$3new17hcdad80961e4b06cfE: argument 0"}
!132 = distinct !{!132, !"_ZN5alloc5boxed30_$LT$impl$u20$Box$LT$T$GT$$GT$3new17hcdad80961e4b06cfE"}
!133 = !DILocation(line: 234, scope: !109, inlinedAt: !118)
!134 = !DILocation(line: 235, scope: !107, inlinedAt: !118)
!135 = !DILocation(line: 236, scope: !107, inlinedAt: !118)
!136 = distinct !DISubprogram(name: "of<&str>", linkageName: "_ZN4core3any8{{impl}}8of<&str>E", scope: !81, file: !76, line: 366, type: !137, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !85, variables: !87)
!137 = !DISubroutineType(types: !138)
!138 = !{!81}
!139 = !DILocation(line: 368, scope: !136)
!140 = !DILocation(line: 367, scope: !136)
!141 = !DILocation(line: 370, scope: !136)
!142 = distinct !DISubprogram(name: "new_v1", linkageName: "_ZN4core3fmt8{{impl}}6new_v1E", scope: !143, file: !11, line: 241, type: !265, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !87, variables: !87)
!143 = !DICompositeType(tag: DW_TAG_structure_type, name: "Arguments", scope: !12, file: !7, size: 384, align: 64, elements: !144, identifier: "03a2b9276c1af18673f619f0170269ab24e4b287")
!144 = !{!145, !146, !201}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "pieces", scope: !143, file: !7, baseType: !50, size: 128, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !143, file: !7, baseType: !147, size: 128, align: 64, offset: 128)
!147 = !DICompositeType(tag: DW_TAG_union_type, name: "Option<&[core::fmt::rt::v1::Argument]>", scope: !39, file: !7, size: 128, align: 64, elements: !148, identifier: "83ae897c2da7360f57b948af0e05ae299239b723")
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENCODED$ENUM$0$0$None", scope: !147, file: !7, baseType: !150, size: 128, align: 64)
!150 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !39, file: !7, size: 128, align: 64, elements: !151, identifier: "83ae897c2da7360f57b948af0e05ae299239b723::Some")
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !150, file: !7, baseType: !153, size: 128, align: 64)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[core::fmt::rt::v1::Argument]", file: !7, size: 128, align: 64, elements: !154, identifier: "1e89121dabcb7d95fed250c0f453e569d8b275f7")
!154 = !{!155, !200}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !153, file: !7, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::fmt::rt::v1::Argument", baseType: !157, size: 64, align: 64)
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "Argument", scope: !8, file: !7, size: 512, align: 64, elements: !158, identifier: "15f214ce3d278b08e5f0235ae22dbc64ded5b552")
!158 = !{!159, !171}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !157, file: !7, baseType: !160, size: 128, align: 64)
!160 = !DICompositeType(tag: DW_TAG_union_type, name: "Position", scope: !8, file: !7, size: 128, align: 64, elements: !161, identifier: "9157f22abd01255c448b8ba3c084c77149f50141")
!161 = !{!162, !166}
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !7, baseType: !163, size: 64, align: 64)
!163 = !DICompositeType(tag: DW_TAG_structure_type, name: "Next", scope: !8, file: !7, size: 64, align: 64, elements: !164, identifier: "9157f22abd01255c448b8ba3c084c77149f50141::Next")
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !163, file: !7, baseType: !6, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !7, baseType: !167, size: 128, align: 64)
!167 = !DICompositeType(tag: DW_TAG_structure_type, name: "At", scope: !8, file: !7, size: 128, align: 64, elements: !168, identifier: "9157f22abd01255c448b8ba3c084c77149f50141::At")
!168 = !{!169, !170}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !167, file: !7, baseType: !6, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !167, file: !7, baseType: !59, size: 64, align: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !157, file: !7, baseType: !172, size: 384, align: 64, offset: 128)
!172 = !DICompositeType(tag: DW_TAG_structure_type, name: "FormatSpec", scope: !8, file: !7, size: 384, align: 64, elements: !173, identifier: "e3e6aac5434e0bb258ad6e21fda200287eb0bec4")
!173 = !{!174, !176, !177, !178, !199}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !172, file: !7, baseType: !175, size: 32, align: 32)
!175 = !DIBasicType(name: "char", size: 32, align: 32, encoding: DW_ATE_unsigned_char)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !172, file: !7, baseType: !19, size: 8, align: 8, offset: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !172, file: !7, baseType: !68, size: 32, align: 32, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !172, file: !7, baseType: !179, size: 128, align: 64, offset: 128)
!179 = !DICompositeType(tag: DW_TAG_union_type, name: "Count", scope: !8, file: !7, size: 128, align: 64, elements: !180, identifier: "98a95e281b454adec81834f41627f9e78e47dd7b")
!180 = !{!181, !186, !191, !195}
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !7, baseType: !182, size: 128, align: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "Is", scope: !8, file: !7, size: 128, align: 64, elements: !183, identifier: "98a95e281b454adec81834f41627f9e78e47dd7b::Is")
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !182, file: !7, baseType: !26, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !182, file: !7, baseType: !59, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !7, baseType: !187, size: 128, align: 64)
!187 = !DICompositeType(tag: DW_TAG_structure_type, name: "Param", scope: !8, file: !7, size: 128, align: 64, elements: !188, identifier: "98a95e281b454adec81834f41627f9e78e47dd7b::Param")
!188 = !{!189, !190}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !187, file: !7, baseType: !26, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !187, file: !7, baseType: !59, size: 64, align: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !7, baseType: !192, size: 64, align: 64)
!192 = !DICompositeType(tag: DW_TAG_structure_type, name: "NextParam", scope: !8, file: !7, size: 64, align: 64, elements: !193, identifier: "98a95e281b454adec81834f41627f9e78e47dd7b::NextParam")
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !192, file: !7, baseType: !26, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !7, baseType: !196, size: 64, align: 64)
!196 = !DICompositeType(tag: DW_TAG_structure_type, name: "Implied", scope: !8, file: !7, size: 64, align: 64, elements: !197, identifier: "98a95e281b454adec81834f41627f9e78e47dd7b::Implied")
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !196, file: !7, baseType: !26, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !172, file: !7, baseType: !179, size: 128, align: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !153, file: !7, baseType: !59, size: 64, align: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !143, file: !7, baseType: !202, size: 128, align: 64, offset: 256)
!202 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[core::fmt::ArgumentV1]", file: !7, size: 128, align: 64, elements: !203, identifier: "292920607dfcb2ae088d2412e42b155d03690083")
!203 = !{!204, !264}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !202, file: !7, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::fmt::ArgumentV1", baseType: !206, size: 64, align: 64)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "ArgumentV1", scope: !12, file: !7, size: 128, align: 64, elements: !207, identifier: "fe09d81277025ddabebf426c15d1b71f796b6f47")
!207 = !{!208, !214}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !206, file: !7, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::fmt::Void", baseType: !210, size: 64, align: 64)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "Void", scope: !12, file: !7, align: 8, elements: !211, identifier: "d97a49abe0605b256a8bcf0bf18cb19faeec5ca8")
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_priv", scope: !210, file: !7, baseType: !213, align: 8)
!213 = !DIBasicType(name: "()", align: 8, encoding: DW_ATE_unsigned)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "formatter", scope: !206, file: !7, baseType: !215, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&core::fmt::Void, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>", baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !209, !231}
!218 = !DICompositeType(tag: DW_TAG_union_type, name: "Result<(), core::fmt::Error>", scope: !33, file: !7, size: 8, align: 8, elements: !219, identifier: "ac648fea8d2f19967ee6c75bdbd71182aa7ee657")
!219 = !{!220, !225}
!220 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !7, baseType: !221, size: 8, align: 8)
!221 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !33, file: !7, size: 8, align: 8, elements: !222, identifier: "ac648fea8d2f19967ee6c75bdbd71182aa7ee657::Ok")
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !221, file: !7, baseType: !32, size: 8, align: 8)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !221, file: !7, baseType: !213, align: 8, offset: 8)
!225 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !7, baseType: !226, size: 8, align: 8)
!226 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !33, file: !7, size: 8, align: 8, elements: !227, identifier: "ac648fea8d2f19967ee6c75bdbd71182aa7ee657::Err")
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !226, file: !7, baseType: !32, size: 8, align: 8)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !226, file: !7, baseType: !230, align: 8, offset: 8)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "Error", scope: !12, file: !7, align: 8, elements: !87, identifier: "3403eabdee83e648cb83f839f301345ebc2dd847")
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::fmt::Formatter", baseType: !232, size: 64, align: 64)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "Formatter", scope: !12, file: !7, size: 768, align: 64, elements: !233, identifier: "4c2f48cbe2db942349d64f8d4fde6f689a429548")
!233 = !{!234, !235, !236, !237, !249, !250, !252, !263}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !232, file: !7, baseType: !68, size: 32, align: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !232, file: !7, baseType: !175, size: 32, align: 32, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !232, file: !7, baseType: !19, size: 8, align: 8, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !232, file: !7, baseType: !238, size: 128, align: 64, offset: 128)
!238 = !DICompositeType(tag: DW_TAG_union_type, name: "Option<usize>", scope: !39, file: !7, size: 128, align: 64, elements: !239, identifier: "fd6e4e9ec5a95550b3c9dd6a3d0d3a972e43f9e8")
!239 = !{!240, !244}
!240 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !7, baseType: !241, size: 64, align: 64)
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !39, file: !7, size: 64, align: 64, elements: !242, identifier: "fd6e4e9ec5a95550b3c9dd6a3d0d3a972e43f9e8::None")
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !241, file: !7, baseType: !38, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !7, baseType: !245, size: 128, align: 64)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !39, file: !7, size: 128, align: 64, elements: !246, identifier: "fd6e4e9ec5a95550b3c9dd6a3d0d3a972e43f9e8::Some")
!246 = !{!247, !248}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !245, file: !7, baseType: !38, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !245, file: !7, baseType: !59, size: 64, align: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !232, file: !7, baseType: !238, size: 128, align: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !232, file: !7, baseType: !251, size: 128, align: 64, offset: 384)
!251 = !DICompositeType(tag: DW_TAG_structure_type, name: "&mut Write", scope: !12, file: !7, size: 128, align: 64, elements: !87, identifier: "f415d9e7bd492f2f756cd59aa02ff5c10c31ca09")
!252 = !DIDerivedType(tag: DW_TAG_member, name: "curarg", scope: !232, file: !7, baseType: !253, size: 128, align: 64, offset: 512)
!253 = !DICompositeType(tag: DW_TAG_structure_type, name: "Iter<core::fmt::ArgumentV1>", scope: !254, file: !7, size: 128, align: 64, elements: !256, identifier: "53ac355ccc0758e9513421a5c7b663b0a080d581")
!254 = !DINamespace(name: "slice", scope: !13, file: !255, line: 11)
!255 = !DIFile(filename: "/Users/rustbuild/src/rust-buildbot/slave/nightly-dist-rustc-mac/build/src/libcore/slice.rs", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!256 = !{!257, !258, !259}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !253, file: !7, baseType: !205, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !253, file: !7, baseType: !205, size: 64, align: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !253, file: !7, baseType: !260, align: 8, offset: 128)
!260 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&core::fmt::ArgumentV1>", scope: !261, file: !7, align: 8, elements: !87, identifier: "5b290e32826477f2be72665320e3c39e3caa5a56")
!261 = !DINamespace(name: "marker", scope: !13, file: !262, line: 11)
!262 = !DIFile(filename: "/Users/rustbuild/src/rust-buildbot/slave/nightly-dist-rustc-mac/build/src/libcore/marker.rs", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!263 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !232, file: !7, baseType: !202, size: 128, align: 64, offset: 640)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !202, file: !7, baseType: !59, size: 64, align: 64, offset: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!143, !50, !202}
!267 = !DILocalVariable(name: "pieces", arg: 1, scope: !142, file: !47, line: 1, type: !50)
!268 = !DILocation(line: 1, scope: !142)
!269 = !DILocalVariable(name: "args", arg: 2, scope: !142, file: !47, line: 1, type: !202)
!270 = !DILocalVariable(name: "pieces", scope: !271, file: !11, line: 241, type: !50)
!271 = distinct !DILexicalBlock(scope: !142, file: !11, line: 242, column: 63)
!272 = !DILocation(line: 241, scope: !271)
!273 = !DILocalVariable(name: "args", scope: !271, file: !11, line: 242, type: !202)
!274 = !DILocation(line: 242, scope: !271)
!275 = !DILocation(line: 241, scope: !142)
!276 = !DILocation(line: 242, scope: !142)
!277 = !DILocation(line: 244, scope: !271)
!278 = !DILocation(line: 245, scope: !271)
!279 = !DILocation(line: 246, scope: !271)
!280 = !DILocation(line: 243, scope: !271)
!281 = !DILocation(line: 248, scope: !271)
!282 = distinct !DISubprogram(name: "is_null<u8>", linkageName: "_ZN4core3ptr8{{impl}}11is_null<u8>E", scope: !284, file: !283, line: 490, type: !286, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !290, variables: !87)
!283 = !DIFile(filename: "/Users/rustbuild/src/rust-buildbot/slave/nightly-dist-rustc-mac/build/src/libcore/ptr.rs", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!284 = !DINamespace(name: "{{impl}}", scope: !285, file: !283, line: 476)
!285 = !DINamespace(name: "ptr", scope: !13, file: !283, line: 13)
!286 = !DISubroutineType(types: !287)
!287 = !{!288, !289}
!288 = !DIBasicType(name: "bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u8", baseType: !20, size: 64, align: 64)
!290 = !{!291}
!291 = !DITemplateTypeParameter(name: "T", type: !20)
!292 = !DILocalVariable(name: "self", arg: 1, scope: !282, file: !47, line: 1, type: !289)
!293 = !DILocation(line: 1, scope: !282)
!294 = !DILocalVariable(name: "self", scope: !295, file: !283, line: 490, type: !289)
!295 = distinct !DILexicalBlock(scope: !282, file: !283, line: 490, column: 48)
!296 = !DILocation(line: 490, scope: !295)
!297 = !DILocation(line: 490, scope: !282)
!298 = !DILocation(line: 491, scope: !295)
!299 = !DILocation(line: 492, scope: !295)
!300 = distinct !DISubprogram(name: "null_mut<u8>", linkageName: "_ZN4core3ptr12null_mut<u8>E", scope: !285, file: !283, line: 69, type: !301, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !290, variables: !87)
!301 = !DISubroutineType(types: !302)
!302 = !{!289}
!303 = !DILocation(line: 69, scope: !300)
!304 = distinct !DISubprogram(name: "exchange_malloc", linkageName: "_ZN5alloc4heap15exchange_mallocE", scope: !306, file: !305, line: 134, type: !307, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !87, variables: !87)
!305 = !DIFile(filename: "/Users/rustbuild/src/rust-buildbot/slave/nightly-dist-rustc-mac/build/src/liballoc/heap.rs", directory: "/Users/stanislaw/Projects/LLVM/llvm/projects/mull/lab/rust")
!306 = !DINamespace(name: "heap", scope: !112, file: !305, line: 11)
!307 = !DISubroutineType(types: !308)
!308 = !{!289, !59, !59}
!309 = !DILocalVariable(name: "size", arg: 1, scope: !304, file: !47, line: 1, type: !59)
!310 = !DILocation(line: 1, scope: !304)
!311 = !DILocalVariable(name: "align", arg: 2, scope: !304, file: !47, line: 1, type: !59)
!312 = !DILocalVariable(name: "size", scope: !313, file: !305, line: 134, type: !59)
!313 = distinct !DILexicalBlock(scope: !304, file: !305, line: 134, column: 64)
!314 = !DILocation(line: 134, scope: !313)
!315 = !DILocalVariable(name: "align", scope: !313, file: !305, line: 134, type: !59)
!316 = !DILocalVariable(name: "ptr", scope: !317, file: !305, line: 138, type: !289)
!317 = distinct !DILexicalBlock(scope: !313, file: !305, line: 138, column: 40)
!318 = !DILocation(line: 138, scope: !317)
!319 = !DILocation(line: 134, scope: !304)
!320 = !DILocation(line: 135, scope: !313)
!321 = !DILocation(line: 136, scope: !313)
!322 = !DILocation(line: 138, scope: !313)
!323 = !DILocation(line: 139, scope: !317)
!324 = !DILocation(line: 140, scope: !317)
!325 = !DILocation(line: 142, scope: !317)
!326 = !DILocation(line: 144, scope: !313)
!327 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN5alloc4heap8allocateE", scope: !306, file: !305, line: 57, type: !307, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !87, variables: !87)
!328 = !DILocalVariable(name: "align", scope: !329, file: !305, line: 37, type: !59)
!329 = distinct !DILexicalBlock(scope: !330, file: !305, line: 37, column: 55)
!330 = distinct !DISubprogram(name: "check_size_and_alignment", linkageName: "_ZN5alloc4heap24check_size_and_alignmentE", scope: !306, file: !305, line: 37, type: !331, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !87, variables: !87)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !59, !59}
!333 = !DILocation(line: 37, scope: !329, inlinedAt: !334)
!334 = distinct !DILocation(line: 58, scope: !335)
!335 = distinct !DILexicalBlock(scope: !327, file: !305, line: 57, column: 61)
!336 = !DILocalVariable(name: "size", scope: !329, file: !305, line: 37, type: !59)
!337 = !DILocalVariable(name: "align", arg: 2, scope: !330, file: !47, line: 1, type: !59)
!338 = !DILocation(line: 1, scope: !330, inlinedAt: !334)
!339 = !DILocalVariable(name: "size", arg: 1, scope: !330, file: !47, line: 1, type: !59)
!340 = !DILocalVariable(name: "size", arg: 1, scope: !327, file: !47, line: 1, type: !59)
!341 = !DILocation(line: 1, scope: !327)
!342 = !DILocalVariable(name: "align", arg: 2, scope: !327, file: !47, line: 1, type: !59)
!343 = !DILocalVariable(name: "size", scope: !335, file: !305, line: 57, type: !59)
!344 = !DILocation(line: 57, scope: !335)
!345 = !DILocalVariable(name: "align", scope: !335, file: !305, line: 57, type: !59)
!346 = !DILocation(line: 57, scope: !327)
!347 = !DILocation(line: 58, scope: !335)
!348 = !DILocation(line: 37, scope: !330, inlinedAt: !334)
!349 = !DILocation(line: 59, scope: !335)
!350 = !DILocation(line: 60, scope: !335)
!351 = distinct !DISubprogram(name: "sum", linkageName: "_ZN7example3sumE", scope: !48, file: !47, line: 2, type: !352, isLocal: true, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !87, variables: !87)
!352 = !DISubroutineType(types: !353)
!353 = !{!354, !354, !354}
!354 = !DIBasicType(name: "i32", size: 32, align: 32, encoding: DW_ATE_signed)
!355 = !DILocalVariable(name: "a", arg: 1, scope: !351, file: !47, line: 1, type: !354)
!356 = !DILocation(line: 1, scope: !351)
!357 = !DILocalVariable(name: "b", arg: 2, scope: !351, file: !47, line: 1, type: !354)
!358 = !DILocalVariable(name: "a", scope: !359, file: !47, line: 2, type: !354)
!359 = distinct !DILexicalBlock(scope: !351, file: !47, line: 2, column: 34)
!360 = !DILocation(line: 2, scope: !359)
!361 = !DILocalVariable(name: "b", scope: !359, file: !47, line: 2, type: !354)
!362 = !DILocation(line: 2, scope: !351)
!363 = !DILocation(line: 3, scope: !359)
!364 = !DILocation(line: 4, scope: !359)
!365 = distinct !DISubprogram(name: "just_print", linkageName: "_ZN7example10just_printE", scope: !48, file: !47, line: 6, type: !366, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !87, variables: !87)
!366 = !DISubroutineType(types: !367)
!367 = !{null}
!368 = !DILocation(line: 7, scope: !365)
!369 = !DILocation(line: 8, scope: !365)
!370 = distinct !DISubprogram(name: "rusttest_foo_sum1", linkageName: "_ZN7example17rusttest_foo_sum1E", scope: !48, file: !47, line: 11, type: !366, isLocal: true, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !87, variables: !87)
!371 = !DILocation(line: 12, scope: !370)
!372 = !DILocation(line: 13, scope: !370)
!373 = distinct !DISubprogram(name: "rusttest_foo_sum2", linkageName: "_ZN7example17rusttest_foo_sum2E", scope: !48, file: !47, line: 16, type: !366, isLocal: true, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !87, variables: !87)
!374 = !DILocation(line: 17, scope: !373)
!375 = !DILocation(line: 18, scope: !373)
!376 = distinct !DISubprogram(name: "rusttest_foo_sum3", linkageName: "_ZN7example17rusttest_foo_sum3E", scope: !48, file: !47, line: 21, type: !366, isLocal: true, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !87, variables: !87)
!377 = !DILocation(line: 22, scope: !376)
!378 = !DILocation(line: 23, scope: !376)
!379 = distinct !DISubprogram(name: "rusttest_foo_sum4", linkageName: "_ZN7example17rusttest_foo_sum4E", scope: !48, file: !47, line: 26, type: !366, isLocal: true, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !87, variables: !87)
!380 = !DILocation(line: 27, scope: !379)
!381 = !DILocation(line: 28, scope: !379)
!382 = distinct !DISubprogram(name: "main", linkageName: "_ZN7example6__test4mainE", scope: !383, file: !47, line: 1, type: !366, isLocal: true, isDefinition: true, scopeLine: 1, flags: DIFlagPrototyped, isOptimized: false, unit: !3, templateParams: !87, variables: !87)
!383 = !DINamespace(name: "__test", scope: !48, file: !7)
!384 = !DILocation(line: 1, scope: !382)