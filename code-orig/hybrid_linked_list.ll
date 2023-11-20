; ModuleID = 'link.8044c4592fe3b416-cgu.0'
source_filename = "link.8044c4592fe3b416-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<Node>" = type { ptr, {} }
%"core::ptr::metadata::PtrRepr<Node>" = type { [1 x i64] }

@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc27997114d8ae740E", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h88180f29dff247edE", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb7074bddacad29bbE", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb7074bddacad29bbE" }>, align 8
@alloc_91c7fa63c3cfeaa3c795652d5cf060e4 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc_560206a49c61adca6f3f0639a12632eb = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_91c7fa63c3cfeaa3c795652d5cf060e4, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_e5afe954f8c8def76db3b61906e5236f = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/cc66ad468955717ab92600c770da8c1601a4ff33/library/core/src/fmt/mod.rs" }>, align 1
@alloc_6ee95f9c4bd8272c6a9a45e0b075770e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e5afe954f8c8def76db3b61906e5236f, [16 x i8] c"K\00\00\00\00\00\00\005\01\00\00\0D\00\00\00" }>, align 8
@alloc_f44ac2c5dfb8e3ba444c5aa766be6c47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e5afe954f8c8def76db3b61906e5236f, [16 x i8] c"K\00\00\00\00\00\00\00+\01\00\00\0D\00\00\00" }>, align 8
@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_8d8d4a14e9a03b7e001867bbc73d66fd = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"link.rs" }>, align 1
@alloc_60c958ed4669b481c608c7806ed0bead = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_8d8d4a14e9a03b7e001867bbc73d66fd, [16 x i8] c"\07\00\00\00\00\00\00\00\1A\00\00\00\10\00\00\00" }>, align 8
@alloc_c578ee7e6f6510ec61712246779572bf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_8d8d4a14e9a03b7e001867bbc73d66fd, [16 x i8] c"\07\00\00\00\00\00\00\00\1E\00\00\00\05\00\00\00" }>, align 8
@alloc_9d9466013f308173dce134288583017f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_8d8d4a14e9a03b7e001867bbc73d66fd, [16 x i8] c"\07\00\00\00\00\00\00\00\1B\00\00\00\17\00\00\00" }>, align 8
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_c9ee96391497c38d8031dd5302a0dd52 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_0242e8ee118de705af76c627590b82cc = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c" " }>, align 1
@alloc_176ceba84061e39f7d76f419950d2914 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_0242e8ee118de705af76c627590b82cc, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_a5d9698cb4ec912c3337e4aad32261ad = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_8d8d4a14e9a03b7e001867bbc73d66fd, [16 x i8] c"\07\00\00\00\00\00\00\00'\00\00\00 \00\00\00" }>, align 8
@alloc_7f1980bc026943eafc531f2886a2f68e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_8d8d4a14e9a03b7e001867bbc73d66fd, [16 x i8] c"\07\00\00\00\00\00\00\00(\00\00\00\1C\00\00\00" }>, align 8
@alloc_9c3a411bd4d2fc788ad9a3b20ca3ae53 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"Original list:\0A" }>, align 1
@alloc_19c6ef197415c77f807a76c043007276 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_9c3a411bd4d2fc788ad9a3b20ca3ae53, [8 x i8] c"\0F\00\00\00\00\00\00\00" }>, align 8
@alloc_60c2eeeb55e1fb71d992f60995bff9ca = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"Updated list:\0A" }>, align 1
@alloc_e5c3ce20d9b7a720ef14639e59db8e25 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_60c2eeeb55e1fb71d992f60995bff9ca, [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hea2d6ab27cca713cE(ptr %f) unnamed_addr #0 {
start:
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17h191f6308f6ca3627E(ptr %f)
  call void asm sideeffect "", "~{memory}"(), !srcloc !4
  ret void
}

; std::rt::lang_start
; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17hea00212d52f1b813E(ptr %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #1 {
start:
  %_8 = alloca ptr, align 8
  %_5 = alloca i64, align 8
  store ptr %main, ptr %_8, align 8
; call std::rt::lang_start_internal
  %0 = call i64 @_ZN3std2rt19lang_start_internal17hc2c145acab4a2a95E(ptr align 1 %_8, ptr align 8 @vtable.0, i64 %argc, ptr %argv, i8 %sigpipe)
  store i64 %0, ptr %_5, align 8
  %v = load i64, ptr %_5, align 8, !noundef !5
  ret i64 %v
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb7074bddacad29bbE"(ptr align 8 %_1) unnamed_addr #2 {
start:
  %_4 = load ptr, ptr %_1, align 8, !nonnull !5, !noundef !5
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  call void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hea2d6ab27cca713cE(ptr %_4)
; call <() as std::process::Termination>::report
  %self = call i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hbaccb40ef23f25b4E"()
  %_0 = zext i8 %self to i32
  ret i32 %_0
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h940f3e27dceff85bE(ptr sret(%"core::fmt::Arguments<'_>") align 8 %_0, ptr align 8 %pieces.0, i64 %pieces.1, ptr align 8 %args.0, i64 %args.1) unnamed_addr #2 {
start:
  %_16 = alloca { ptr, i64 }, align 8
  %_14 = alloca { ptr, i64 }, align 8
  %_12 = alloca %"core::fmt::Arguments<'_>", align 8
  %_3 = alloca i8, align 1
  %_4 = icmp ult i64 %pieces.1, %args.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_9 = add i64 %args.1, 1
  %_7 = icmp ugt i64 %pieces.1, %_9
  %0 = zext i1 %_7 to i8
  store i8 %0, ptr %_3, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, ptr %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %1 = load i8, ptr %_3, align 1, !range !6, !noundef !5
  %2 = trunc i8 %1 to i1
  br i1 %2, label %bb4, label %bb5

bb5:                                              ; preds = %bb3
  store ptr null, ptr %_14, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 0
  store ptr %pieces.0, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 1
  store i64 %pieces.1, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_14, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8, !align !7, !noundef !5
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_14, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i32 0, i32 2
  %10 = getelementptr inbounds { ptr, i64 }, ptr %9, i32 0, i32 0
  store ptr %6, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %9, i32 0, i32 1
  store i64 %8, ptr %11, align 8
  %12 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i32 0, i32 1
  %13 = getelementptr inbounds { ptr, i64 }, ptr %12, i32 0, i32 0
  store ptr %args.0, ptr %13, align 8
  %14 = getelementptr inbounds { ptr, i64 }, ptr %12, i32 0, i32 1
  store i64 %args.1, ptr %14, align 8
  ret void

bb4:                                              ; preds = %bb3
  store ptr null, ptr %_16, align 8
  %15 = getelementptr inbounds { ptr, i64 }, ptr %_12, i32 0, i32 0
  store ptr @alloc_560206a49c61adca6f3f0639a12632eb, ptr %15, align 8
  %16 = getelementptr inbounds { ptr, i64 }, ptr %_12, i32 0, i32 1
  store i64 1, ptr %16, align 8
  %17 = getelementptr inbounds { ptr, i64 }, ptr %_16, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8, !align !7, !noundef !5
  %19 = getelementptr inbounds { ptr, i64 }, ptr %_16, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_12, i32 0, i32 2
  %22 = getelementptr inbounds { ptr, i64 }, ptr %21, i32 0, i32 0
  store ptr %18, ptr %22, align 8
  %23 = getelementptr inbounds { ptr, i64 }, ptr %21, i32 0, i32 1
  store i64 %20, ptr %23, align 8
  %24 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_12, i32 0, i32 1
  %25 = getelementptr inbounds { ptr, i64 }, ptr %24, i32 0, i32 0
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %25, align 8
  %26 = getelementptr inbounds { ptr, i64 }, ptr %24, i32 0, i32 1
  store i64 0, ptr %26, align 8
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h1d3838058ed30aa5E(ptr align 8 %_12, ptr align 8 @alloc_6ee95f9c4bd8272c6a9a45e0b075770e) #12
  unreachable
}

; core::fmt::Arguments::new_const
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt9Arguments9new_const17ha25e3d32113551c7E(ptr sret(%"core::fmt::Arguments<'_>") align 8 %_0, ptr align 8 %pieces.0, i64 %pieces.1) unnamed_addr #2 {
start:
  %_7 = alloca { ptr, i64 }, align 8
  %_5 = alloca %"core::fmt::Arguments<'_>", align 8
  %_2 = icmp ugt i64 %pieces.1, 1
  br i1 %_2, label %bb1, label %bb3

bb3:                                              ; preds = %start
  store ptr null, ptr %_7, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 0
  store ptr %pieces.0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 1
  store i64 %pieces.1, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8, !align !7, !noundef !5
  %4 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i32 0, i32 2
  %7 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 0
  store ptr %3, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 1
  store i64 %5, ptr %8, align 8
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i32 0, i32 1
  %10 = getelementptr inbounds { ptr, i64 }, ptr %9, i32 0, i32 0
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %9, i32 0, i32 1
  store i64 0, ptr %11, align 8
  ret void

bb1:                                              ; preds = %start
; call core::fmt::Arguments::new_const
  call void @_ZN4core3fmt9Arguments9new_const17ha25e3d32113551c7E(ptr sret(%"core::fmt::Arguments<'_>") align 8 %_5, ptr align 8 @alloc_560206a49c61adca6f3f0639a12632eb, i64 1)
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h1d3838058ed30aa5E(ptr align 8 %_5, ptr align 8 @alloc_f44ac2c5dfb8e3ba444c5aa766be6c47) #12
  unreachable
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h88180f29dff247edE"(ptr %_1) unnamed_addr #2 {
start:
  %_2 = alloca {}, align 1
  %0 = load ptr, ptr %_1, align 8, !nonnull !5, !noundef !5
; call core::ops::function::FnOnce::call_once
  %_0 = call i32 @_ZN4core3ops8function6FnOnce9call_once17h2c8856f1164b19abE(ptr %0)
  ret i32 %_0
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17h191f6308f6ca3627E(ptr %_1) unnamed_addr #2 {
start:
  %_2 = alloca {}, align 1
  call void %_1()
  ret void
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h2c8856f1164b19abE(ptr %0) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %1 = alloca { ptr, i32 }, align 8
  %_2 = alloca {}, align 1
  %_1 = alloca ptr, align 8
  store ptr %0, ptr %_1, align 8
; invoke std::rt::lang_start::{{closure}}
  %_0 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb7074bddacad29bbE"(ptr align 8 %_1)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %2 = load ptr, ptr %1, align 8, !noundef !5
  %3 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 8, !noundef !5
  %5 = insertvalue { ptr, i32 } poison, ptr %2, 0
  %6 = insertvalue { ptr, i32 } %5, i32 %4, 1
  resume { ptr, i32 } %6

cleanup:                                          ; preds = %start
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  %10 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  store i32 %9, ptr %11, align 8
  br label %bb3

bb1:                                              ; preds = %start
  ret i32 %_0
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17had7bfb7c304569bbE"(ptr %self) unnamed_addr #2 {
start:
  %_3 = ptrtoint ptr %self to i64
  %_0 = icmp eq i64 %_3, 0
  ret i1 %_0
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc27997114d8ae740E"(ptr align 8 %_1) unnamed_addr #2 {
start:
  ret void
}

; core::ptr::const_ptr::<impl *const T>::is_null
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h69478b1b354307a3E"(ptr %self) unnamed_addr #2 {
start:
  %_3 = ptrtoint ptr %self to i64
  %_0 = icmp eq i64 %_3, 0
  ret i1 %_0
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hbaccb40ef23f25b4E"() unnamed_addr #2 {
start:
  ret i8 0
}

; alloc::alloc::exchange_malloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal ptr @_ZN5alloc5alloc15exchange_malloc17h367e97cf056ececaE(i64 %size, i64 %align) unnamed_addr #2 {
start:
  %self = alloca ptr, align 8
  %_4 = alloca { ptr, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 1
  store i64 %size, ptr %0, align 8
  store i64 %align, ptr %layout, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 0
  %2 = load i64, ptr %1, align 8, !range !8, !noundef !5
  %3 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 1
  %4 = load i64, ptr %3, align 8, !noundef !5
; call alloc::alloc::Global::alloc_impl
  %5 = call { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h5cb3b4cd7892dbb9E(ptr align 1 @alloc_513570631223a12912d85da2bec3b15a, i64 %2, i64 %4, i1 zeroext false)
  store { ptr, i64 } %5, ptr %_4, align 8
  %6 = load ptr, ptr %_4, align 8, !noundef !5
  %7 = ptrtoint ptr %6 to i64
  %8 = icmp eq i64 %7, 0
  %_5 = select i1 %8, i64 1, i64 0
  %9 = icmp eq i64 %_5, 0
  br i1 %9, label %bb3, label %bb1

bb3:                                              ; preds = %start
  %10 = getelementptr inbounds { ptr, i64 }, ptr %_4, i32 0, i32 0
  %ptr.0 = load ptr, ptr %10, align 8, !nonnull !5, !noundef !5
  %11 = getelementptr inbounds { ptr, i64 }, ptr %_4, i32 0, i32 1
  %ptr.1 = load i64, ptr %11, align 8, !noundef !5
  store ptr %ptr.0, ptr %self, align 8
  %_16 = load ptr, ptr %self, align 8, !noundef !5
  ret ptr %_16

bb1:                                              ; preds = %start
  %12 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 0
  %13 = load i64, ptr %12, align 8, !range !8, !noundef !5
  %14 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 1
  %15 = load i64, ptr %14, align 8, !noundef !5
; call alloc::alloc::handle_alloc_error
  call void @_ZN5alloc5alloc18handle_alloc_error17h00dabb9e4252c679E(i64 %13, i64 %15) #12
  unreachable

bb2:                                              ; No predecessors!
  unreachable
}

; alloc::alloc::Global::alloc_impl
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h5cb3b4cd7892dbb9E(ptr align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext %zeroed) unnamed_addr #2 {
start:
  %0 = alloca i8, align 1
  %_71 = alloca { ptr, i64 }, align 8
  %_70 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %_57 = alloca ptr, align 8
  %_50 = alloca i64, align 8
  %_39 = alloca i64, align 8
  %_32 = alloca { ptr, i64 }, align 8
  %_31 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %_20 = alloca i64, align 8
  %_16 = alloca { ptr, i64 }, align 8
  %self2 = alloca ptr, align 8
  %self1 = alloca ptr, align 8
  %_10 = alloca ptr, align 8
  %raw_ptr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %_6 = alloca { ptr, i64 }, align 8
  %_0 = alloca { ptr, i64 }, align 8
  %1 = icmp eq i64 %layout.1, 0
  br i1 %1, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i64 %layout.0, ptr %_20, align 8
  %_21 = load i64, ptr %_20, align 8, !range !8, !noundef !5
  %_22 = icmp uge i64 %_21, 1
  %_23 = icmp ule i64 %_21, -9223372036854775808
  %_24 = and i1 %_22, %_23
  call void @llvm.assume(i1 %_24)
  %ptr = inttoptr i64 %_21 to ptr
  store ptr %ptr, ptr %data, align 8
  %_29 = load ptr, ptr %data, align 8, !noundef !5
  store ptr %_29, ptr %_32, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %_32, i32 0, i32 1
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_32, i32 0, i32 0
  %4 = load ptr, ptr %3, align 8, !noundef !5
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_32, i32 0, i32 1
  %6 = load i64, ptr %5, align 8, !noundef !5
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_31, i32 0, i32 0
  store ptr %4, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_31, i32 0, i32 1
  store i64 %6, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, i64 }, ptr %_31, i32 0, i32 0
  %ptr.0 = load ptr, ptr %9, align 8, !noundef !5
  %10 = getelementptr inbounds { ptr, i64 }, ptr %_31, i32 0, i32 1
  %ptr.1 = load i64, ptr %10, align 8, !noundef !5
  %11 = getelementptr inbounds { ptr, i64 }, ptr %_6, i32 0, i32 0
  store ptr %ptr.0, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, i64 }, ptr %_6, i32 0, i32 1
  store i64 %ptr.1, ptr %12, align 8
  %13 = getelementptr inbounds { ptr, i64 }, ptr %_6, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8, !nonnull !5, !noundef !5
  %15 = getelementptr inbounds { ptr, i64 }, ptr %_6, i32 0, i32 1
  %16 = load i64, ptr %15, align 8, !noundef !5
  %17 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 0
  store ptr %14, ptr %17, align 8
  %18 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 1
  store i64 %16, ptr %18, align 8
  br label %bb10

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb3, label %bb4

bb10:                                             ; preds = %bb9, %bb7, %bb2
  %19 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8, !noundef !5
  %21 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = insertvalue { ptr, i64 } poison, ptr %20, 0
  %24 = insertvalue { ptr, i64 } %23, i64 %22, 1
  ret { ptr, i64 } %24

bb4:                                              ; preds = %bb1
  %25 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  store i8 %25, ptr %0, align 1
  %_44 = load i8, ptr %0, align 1, !noundef !5
  store i64 %layout.0, ptr %_50, align 8
  %_51 = load i64, ptr %_50, align 8, !range !8, !noundef !5
  %_52 = icmp uge i64 %_51, 1
  %_53 = icmp ule i64 %_51, -9223372036854775808
  %_54 = and i1 %_52, %_53
  call void @llvm.assume(i1 %_54)
  %26 = call ptr @__rust_alloc(i64 %layout.1, i64 %_51) #13
  store ptr %26, ptr %raw_ptr, align 8
  br label %bb5

bb3:                                              ; preds = %bb1
  store i64 %layout.0, ptr %_39, align 8
  %_40 = load i64, ptr %_39, align 8, !range !8, !noundef !5
  %_41 = icmp uge i64 %_40, 1
  %_42 = icmp ule i64 %_40, -9223372036854775808
  %_43 = and i1 %_41, %_42
  call void @llvm.assume(i1 %_43)
  %27 = call ptr @__rust_alloc_zeroed(i64 %layout.1, i64 %_40) #13
  store ptr %27, ptr %raw_ptr, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %ptr3 = load ptr, ptr %raw_ptr, align 8, !noundef !5
  %_58 = ptrtoint ptr %ptr3 to i64
  %_56 = icmp eq i64 %_58, 0
  %_55 = xor i1 %_56, true
  br i1 %_55, label %bb14, label %bb15

bb15:                                             ; preds = %bb5
  store ptr null, ptr %self2, align 8
  br label %bb16

bb14:                                             ; preds = %bb5
  store ptr %ptr3, ptr %_57, align 8
  %28 = load ptr, ptr %_57, align 8, !nonnull !5, !noundef !5
  store ptr %28, ptr %self2, align 8
  br label %bb16

bb16:                                             ; preds = %bb14, %bb15
  %29 = load ptr, ptr %self2, align 8, !noundef !5
  %30 = ptrtoint ptr %29 to i64
  %31 = icmp eq i64 %30, 0
  %_62 = select i1 %31, i64 0, i64 1
  %32 = icmp eq i64 %_62, 0
  br i1 %32, label %bb17, label %bb18

bb17:                                             ; preds = %bb16
  store ptr null, ptr %self1, align 8
  br label %bb19

bb18:                                             ; preds = %bb16
  %v = load ptr, ptr %self2, align 8, !nonnull !5, !noundef !5
  store ptr %v, ptr %self1, align 8
  br label %bb19

bb19:                                             ; preds = %bb18, %bb17
  %33 = load ptr, ptr %self1, align 8, !noundef !5
  %34 = ptrtoint ptr %33 to i64
  %35 = icmp eq i64 %34, 0
  %_64 = select i1 %35, i64 1, i64 0
  %36 = icmp eq i64 %_64, 0
  br i1 %36, label %bb21, label %bb20

bb21:                                             ; preds = %bb19
  %v4 = load ptr, ptr %self1, align 8, !nonnull !5, !noundef !5
  store ptr %v4, ptr %_10, align 8
  br label %bb6

bb20:                                             ; preds = %bb19
  store ptr null, ptr %_10, align 8
  br label %bb6

bb6:                                              ; preds = %bb20, %bb21
  %37 = load ptr, ptr %_10, align 8, !noundef !5
  %38 = ptrtoint ptr %37 to i64
  %39 = icmp eq i64 %38, 0
  %_14 = select i1 %39, i64 1, i64 0
  %40 = icmp eq i64 %_14, 0
  br i1 %40, label %bb7, label %bb9

bb7:                                              ; preds = %bb6
  %ptr5 = load ptr, ptr %_10, align 8, !nonnull !5, !noundef !5
  store ptr %ptr5, ptr %_71, align 8
  %41 = getelementptr inbounds { ptr, i64 }, ptr %_71, i32 0, i32 1
  store i64 %layout.1, ptr %41, align 8
  %42 = getelementptr inbounds { ptr, i64 }, ptr %_71, i32 0, i32 0
  %43 = load ptr, ptr %42, align 8, !noundef !5
  %44 = getelementptr inbounds { ptr, i64 }, ptr %_71, i32 0, i32 1
  %45 = load i64, ptr %44, align 8, !noundef !5
  %46 = getelementptr inbounds { ptr, i64 }, ptr %_70, i32 0, i32 0
  store ptr %43, ptr %46, align 8
  %47 = getelementptr inbounds { ptr, i64 }, ptr %_70, i32 0, i32 1
  store i64 %45, ptr %47, align 8
  %48 = getelementptr inbounds { ptr, i64 }, ptr %_70, i32 0, i32 0
  %ptr.06 = load ptr, ptr %48, align 8, !noundef !5
  %49 = getelementptr inbounds { ptr, i64 }, ptr %_70, i32 0, i32 1
  %ptr.17 = load i64, ptr %49, align 8, !noundef !5
  %50 = getelementptr inbounds { ptr, i64 }, ptr %_16, i32 0, i32 0
  store ptr %ptr.06, ptr %50, align 8
  %51 = getelementptr inbounds { ptr, i64 }, ptr %_16, i32 0, i32 1
  store i64 %ptr.17, ptr %51, align 8
  %52 = getelementptr inbounds { ptr, i64 }, ptr %_16, i32 0, i32 0
  %53 = load ptr, ptr %52, align 8, !nonnull !5, !noundef !5
  %54 = getelementptr inbounds { ptr, i64 }, ptr %_16, i32 0, i32 1
  %55 = load i64, ptr %54, align 8, !noundef !5
  %56 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 0
  store ptr %53, ptr %56, align 8
  %57 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 1
  store i64 %55, ptr %57, align 8
  br label %bb10

bb9:                                              ; preds = %bb6
  store ptr null, ptr %_0, align 8
  br label %bb10

bb8:                                              ; No predecessors!
  unreachable
}

; alloc::boxed::Box<T,A>::into_raw
; Function Attrs: inlinehint nonlazybind uwtable
define internal ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$8into_raw17h794f293db9886d41E"(ptr align 8 %b) unnamed_addr #2 {
start:
  %leaked = alloca ptr, align 8
  %_8 = alloca ptr, align 8
  %_2 = alloca ptr, align 8
  store ptr %b, ptr %_8, align 8
  %self = load ptr, ptr %_8, align 8, !nonnull !5, !noundef !5
  store ptr %self, ptr %leaked, align 8
  %_15 = load ptr, ptr %leaked, align 8, !noundef !5
  store ptr %_15, ptr %_2, align 8
  %_0 = load ptr, ptr %_2, align 8, !noundef !5
  ret ptr %_0
}

; link::Node::new
; Function Attrs: nonlazybind uwtable
define internal { ptr, i32 } @_ZN4link4Node3new17h59c3423d3a1ddb24E(i32 %data) unnamed_addr #1 {
start:
  %_2.i = alloca %"core::ptr::metadata::PtrComponents<Node>", align 8
  %_1.i = alloca %"core::ptr::metadata::PtrRepr<Node>", align 8
  %_0 = alloca { ptr, i32 }, align 8
  store ptr null, ptr %_2.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_1.i, ptr align 8 %_2.i, i64 8, i1 false)
  %_0.i = load ptr, ptr %_1.i, align 8, !noundef !5
  %0 = getelementptr inbounds { ptr, i32 }, ptr %_0, i32 0, i32 1
  store i32 %data, ptr %0, align 8
  store ptr %_0.i, ptr %_0, align 8
  %1 = getelementptr inbounds { ptr, i32 }, ptr %_0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8, !noundef !5
  %3 = getelementptr inbounds { ptr, i32 }, ptr %_0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8, !noundef !5
  %5 = insertvalue { ptr, i32 } poison, ptr %2, 0
  %6 = insertvalue { ptr, i32 } %5, i32 %4, 1
  ret { ptr, i32 } %6
}

; link::append_node
; Function Attrs: nonlazybind uwtable
define internal ptr @_ZN4link11append_node17h263b60fcf3ef9137E(ptr %head, i32 %data) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca { ptr, i32 }, align 8
  %current = alloca ptr, align 8
  %_0 = alloca ptr, align 8
; call link::Node::new
  %1 = call { ptr, i32 } @_ZN4link4Node3new17h59c3423d3a1ddb24E(i32 %data)
  %_5.0 = extractvalue { ptr, i32 } %1, 0
  %_5.1 = extractvalue { ptr, i32 } %1, 1
; invoke alloc::alloc::exchange_malloc
  %_4.i = invoke ptr @_ZN5alloc5alloc15exchange_malloc17h367e97cf056ececaE(i64 16, i64 8)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h729c4c67846918b8E.exit" unwind label %cleanup.i

cleanup.i:                                        ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  store i32 %4, ptr %5, align 8
  %6 = load ptr, ptr %0, align 8, !noundef !5
  %7 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 8, !noundef !5
  %9 = insertvalue { ptr, i32 } poison, ptr %6, 0
  %10 = insertvalue { ptr, i32 } %9, i32 %8, 1
  resume { ptr, i32 } %10

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h729c4c67846918b8E.exit": ; preds = %start
  store ptr %_5.0, ptr %_4.i, align 8
  %11 = getelementptr inbounds { ptr, i32 }, ptr %_4.i, i32 0, i32 1
  store i32 %_5.1, ptr %11, align 8
; call alloc::boxed::Box<T,A>::into_raw
  %new_node = call ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$8into_raw17h794f293db9886d41E"(ptr align 8 %_4.i)
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17had7bfb7c304569bbE"(ptr %head)
  br i1 %_6, label %bb5, label %bb6

bb6:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h729c4c67846918b8E.exit"
  store ptr %head, ptr %current, align 8
  br label %bb7

bb5:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h729c4c67846918b8E.exit"
  store ptr %new_node, ptr %_0, align 8
  br label %bb11

bb7:                                              ; preds = %bb13, %bb6
  %_25 = load ptr, ptr %current, align 8, !noundef !5
  %_26 = ptrtoint ptr %_25 to i64
  %_29 = and i64 %_26, 7
  %_30 = icmp eq i64 %_29, 0
  %12 = call i1 @llvm.expect.i1(i1 %_30, i1 true)
  br i1 %12, label %bb14, label %panic

bb14:                                             ; preds = %bb7
  %13 = load ptr, ptr %current, align 8, !noundef !5
  %_10 = load ptr, ptr %13, align 8, !noundef !5
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_9 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17had7bfb7c304569bbE"(ptr %_10)
  %_8 = xor i1 %_9, true
  br i1 %_8, label %bb9, label %bb10

panic:                                            ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h6b62fcf0fdb98234E(i64 8, i64 %_26, ptr align 8 @alloc_60c958ed4669b481c608c7806ed0bead) #14
  unreachable

bb10:                                             ; preds = %bb14
  %_13 = load ptr, ptr %current, align 8, !noundef !5
  %_14 = ptrtoint ptr %_13 to i64
  %_17 = and i64 %_14, 7
  %_18 = icmp eq i64 %_17, 0
  %14 = call i1 @llvm.expect.i1(i1 %_18, i1 true)
  br i1 %14, label %bb12, label %panic1

bb9:                                              ; preds = %bb14
  %_19 = load ptr, ptr %current, align 8, !noundef !5
  %_20 = ptrtoint ptr %_19 to i64
  %_23 = and i64 %_20, 7
  %_24 = icmp eq i64 %_23, 0
  %15 = call i1 @llvm.expect.i1(i1 %_24, i1 true)
  br i1 %15, label %bb13, label %panic2

bb12:                                             ; preds = %bb10
  %16 = load ptr, ptr %current, align 8, !noundef !5
  store ptr %new_node, ptr %16, align 8
  store ptr %head, ptr %_0, align 8
  br label %bb11

panic1:                                           ; preds = %bb10
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h6b62fcf0fdb98234E(i64 8, i64 %_14, ptr align 8 @alloc_c578ee7e6f6510ec61712246779572bf) #14
  unreachable

bb11:                                             ; preds = %bb5, %bb12
  %17 = load ptr, ptr %_0, align 8, !noundef !5
  ret ptr %17

bb13:                                             ; preds = %bb9
  %18 = load ptr, ptr %current, align 8, !noundef !5
  %_11 = load ptr, ptr %18, align 8, !noundef !5
  store ptr %_11, ptr %current, align 8
  br label %bb7

panic2:                                           ; preds = %bb9
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h6b62fcf0fdb98234E(i64 8, i64 %_20, ptr align 8 @alloc_9d9466013f308173dce134288583017f) #14
  unreachable
}

; link::print_list
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4link10print_list17h8b4684cc082d83d1E(ptr %head) unnamed_addr #1 {
start:
  %_0.i = alloca { ptr, ptr }, align 8
  %_18 = alloca %"core::fmt::Arguments<'_>", align 8
  %_14 = alloca i32, align 4
  %_11 = alloca [1 x { ptr, ptr }], align 8
  %_7 = alloca %"core::fmt::Arguments<'_>", align 8
  %current = alloca ptr, align 8
  store ptr %head, ptr %current, align 8
  br label %bb1

bb1:                                              ; preds = %bb10, %start
  %_5 = load ptr, ptr %current, align 8, !noundef !5
; call core::ptr::const_ptr::<impl *const T>::is_null
  %_4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h69478b1b354307a3E"(ptr %_5)
  %_3 = xor i1 %_4, true
  br i1 %_3, label %bb3, label %bb7

bb7:                                              ; preds = %bb1
; call core::fmt::Arguments::new_const
  call void @_ZN4core3fmt9Arguments9new_const17ha25e3d32113551c7E(ptr sret(%"core::fmt::Arguments<'_>") align 8 %_18, ptr align 8 @alloc_c9ee96391497c38d8031dd5302a0dd52, i64 1)
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h80f4ba0e356726cdE(ptr align 8 %_18)
  ret void

bb3:                                              ; preds = %bb1
  %_28 = load ptr, ptr %current, align 8, !noundef !5
  %_29 = ptrtoint ptr %_28 to i64
  %_32 = and i64 %_29, 7
  %_33 = icmp eq i64 %_32, 0
  %0 = call i1 @llvm.expect.i1(i1 %_33, i1 true)
  br i1 %0, label %bb11, label %panic

bb11:                                             ; preds = %bb3
  %1 = load ptr, ptr %current, align 8, !noundef !5
  %2 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  %3 = load i32, ptr %2, align 8, !noundef !5
  store i32 %3, ptr %_14, align 4
  store ptr %_14, ptr %_0.i, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %_0.i, i32 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hebc36fc323e4e454E", ptr %4, align 8
  %5 = load ptr, ptr %_0.i, align 8, !nonnull !5, !align !9, !noundef !5
  %6 = getelementptr inbounds { ptr, ptr }, ptr %_0.i, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !nonnull !5, !noundef !5
  %8 = insertvalue { ptr, ptr } poison, ptr %5, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %7, 1
  %_12.0 = extractvalue { ptr, ptr } %9, 0
  %_12.1 = extractvalue { ptr, ptr } %9, 1
  %10 = getelementptr inbounds [1 x { ptr, ptr }], ptr %_11, i64 0, i64 0
  %11 = getelementptr inbounds { ptr, ptr }, ptr %10, i32 0, i32 0
  store ptr %_12.0, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, ptr }, ptr %10, i32 0, i32 1
  store ptr %_12.1, ptr %12, align 8
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h940f3e27dceff85bE(ptr sret(%"core::fmt::Arguments<'_>") align 8 %_7, ptr align 8 @alloc_176ceba84061e39f7d76f419950d2914, i64 2, ptr align 8 %_11, i64 1)
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h80f4ba0e356726cdE(ptr align 8 %_7)
  %_22 = load ptr, ptr %current, align 8, !noundef !5
  %_23 = ptrtoint ptr %_22 to i64
  %_26 = and i64 %_23, 7
  %_27 = icmp eq i64 %_26, 0
  %13 = call i1 @llvm.expect.i1(i1 %_27, i1 true)
  br i1 %13, label %bb10, label %panic1

panic:                                            ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h6b62fcf0fdb98234E(i64 8, i64 %_29, ptr align 8 @alloc_a5d9698cb4ec912c3337e4aad32261ad) #14
  unreachable

bb10:                                             ; preds = %bb11
  %14 = load ptr, ptr %current, align 8, !noundef !5
  %_16 = load ptr, ptr %14, align 8, !noundef !5
  store ptr %_16, ptr %current, align 8
  br label %bb1

panic1:                                           ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h6b62fcf0fdb98234E(i64 8, i64 %_23, ptr align 8 @alloc_7f1980bc026943eafc531f2886a2f68e) #14
  unreachable
}

; link::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4link4main17hc2501dd90cf85d8dE() unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca { ptr, i32 }, align 8
  %_17 = alloca %"core::fmt::Arguments<'_>", align 8
  %_9 = alloca %"core::fmt::Arguments<'_>", align 8
  %head = alloca ptr, align 8
; call link::Node::new
  %1 = call { ptr, i32 } @_ZN4link4Node3new17h59c3423d3a1ddb24E(i32 1)
  %_3.0 = extractvalue { ptr, i32 } %1, 0
  %_3.1 = extractvalue { ptr, i32 } %1, 1
; invoke alloc::alloc::exchange_malloc
  %_4.i = invoke ptr @_ZN5alloc5alloc15exchange_malloc17h367e97cf056ececaE(i64 16, i64 8)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h729c4c67846918b8E.exit" unwind label %cleanup.i

cleanup.i:                                        ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  store i32 %4, ptr %5, align 8
  %6 = load ptr, ptr %0, align 8, !noundef !5
  %7 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 8, !noundef !5
  %9 = insertvalue { ptr, i32 } poison, ptr %6, 0
  %10 = insertvalue { ptr, i32 } %9, i32 %8, 1
  resume { ptr, i32 } %10

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h729c4c67846918b8E.exit": ; preds = %start
  store ptr %_3.0, ptr %_4.i, align 8
  %11 = getelementptr inbounds { ptr, i32 }, ptr %_4.i, i32 0, i32 1
  store i32 %_3.1, ptr %11, align 8
; call alloc::boxed::Box<T,A>::into_raw
  %12 = call ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$8into_raw17h794f293db9886d41E"(ptr align 8 %_4.i)
  store ptr %12, ptr %head, align 8
  %_5 = load ptr, ptr %head, align 8, !noundef !5
; call link::append_node
  %_4 = call ptr @_ZN4link11append_node17h263b60fcf3ef9137E(ptr %_5, i32 2)
  store ptr %_4, ptr %head, align 8
  %_7 = load ptr, ptr %head, align 8, !noundef !5
; call link::append_node
  %_6 = call ptr @_ZN4link11append_node17h263b60fcf3ef9137E(ptr %_7, i32 3)
  store ptr %_6, ptr %head, align 8
; call core::fmt::Arguments::new_const
  call void @_ZN4core3fmt9Arguments9new_const17ha25e3d32113551c7E(ptr sret(%"core::fmt::Arguments<'_>") align 8 %_9, ptr align 8 @alloc_19c6ef197415c77f807a76c043007276, i64 1)
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h80f4ba0e356726cdE(ptr align 8 %_9)
  %_13 = load ptr, ptr %head, align 8, !noundef !5
; call link::print_list
  call void @_ZN4link10print_list17h8b4684cc082d83d1E(ptr %_13)
  %_15 = load ptr, ptr %head, align 8, !noundef !5
  call void @append_node_from_c(ptr %_15, i32 4)
; call core::fmt::Arguments::new_const
  call void @_ZN4core3fmt9Arguments9new_const17ha25e3d32113551c7E(ptr sret(%"core::fmt::Arguments<'_>") align 8 %_17, ptr align 8 @alloc_e5c3ce20d9b7a720ef14639e59db8e25, i64 1)
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h80f4ba0e356726cdE(ptr align 8 %_17)
  %_21 = load ptr, ptr %head, align 8, !noundef !5
; call link::print_list
  call void @_ZN4link10print_list17h8b4684cc082d83d1E(ptr %_21)
  ret void
}

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17hc2c145acab4a2a95E(ptr align 1, ptr align 8, i64, ptr, i8) unnamed_addr #1

; core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hebc36fc323e4e454E"(ptr align 4, ptr align 8) unnamed_addr #1

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h1d3838058ed30aa5E(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; alloc::alloc::handle_alloc_error
; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h00dabb9e4252c679E(i64, i64) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc(i64, i64 allocalign) unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc_zeroed(i64, i64 allocalign) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #9

; core::panicking::panic_misaligned_pointer_dereference
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h6b62fcf0fdb98234E(i64, i64, ptr align 8) unnamed_addr #10

; std::io::stdio::_print
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h80f4ba0e356726cdE(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @append_node_from_c(ptr, i32) unnamed_addr #1

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #11 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = call i64 @_ZN3std2rt10lang_start17hea00212d52f1b813E(ptr @_ZN4link4main17hc2501dd90cf85d8dE, i64 %2, ptr %1, i8 0)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

attributes #0 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nonlazybind "target-cpu"="x86-64" }
attributes #12 = { noreturn }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.73.0 (cc66ad468 2023-10-03) (Arch Linux rust 1:1.73.0-1)"}
!4 = !{i32 2040037}
!5 = !{}
!6 = !{i8 0, i8 2}
!7 = !{i64 8}
!8 = !{i64 1, i64 -9223372036854775807}
!9 = !{i64 1}
