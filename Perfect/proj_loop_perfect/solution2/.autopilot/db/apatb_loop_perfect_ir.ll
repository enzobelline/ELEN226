; ModuleID = 'Z:/ECC/Desktop/Winter2023/ELEN226/Perfect/proj_loop_perfect/solution2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<5>" = type { %"struct.ap_int_base<5, true>" }
%"struct.ap_int_base<5, true>" = type { %"struct.ssdm_int<5, true>" }
%"struct.ssdm_int<5, true>" = type { i5 }
%"struct.ap_int<6>" = type { %"struct.ap_int_base<6, true>" }
%"struct.ap_int_base<6, true>" = type { %"struct.ssdm_int<6, true>" }
%"struct.ssdm_int<6, true>" = type { i6 }

; Function Attrs: argmemonly noinline
define void @apatb_loop_perfect_ir(%"struct.ap_int<5>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="20" %A, %"struct.ap_int<6>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="20" %B) local_unnamed_addr #0 {
entry:
  %A_copy = alloca [20 x i5], align 512
  %B_copy = alloca [20 x i6], align 512
  %0 = bitcast %"struct.ap_int<5>"* %A to [20 x %"struct.ap_int<5>"]*
  %1 = bitcast %"struct.ap_int<6>"* %B to [20 x %"struct.ap_int<6>"]*
  call fastcc void @copy_in([20 x %"struct.ap_int<5>"]* nonnull %0, [20 x i5]* nonnull align 512 %A_copy, [20 x %"struct.ap_int<6>"]* nonnull %1, [20 x i6]* nonnull align 512 %B_copy)
  %2 = getelementptr [20 x i5], [20 x i5]* %A_copy, i32 0, i32 0
  %3 = getelementptr [20 x i6], [20 x i6]* %B_copy, i32 0, i32 0
  call void @apatb_loop_perfect_hw(i5* %2, i6* %3)
  call void @copy_back([20 x %"struct.ap_int<5>"]* %0, [20 x i5]* %A_copy, [20 x %"struct.ap_int<6>"]* %1, [20 x i6]* %B_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([20 x %"struct.ap_int<5>"]* noalias readonly, [20 x i5]* noalias align 512, [20 x %"struct.ap_int<6>"]* noalias readonly, [20 x i6]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<5>.11"([20 x i5]* align 512 %1, [20 x %"struct.ap_int<5>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<6>"([20 x i6]* align 512 %3, [20 x %"struct.ap_int<6>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<5>"([20 x %"struct.ap_int<5>"]* noalias, [20 x i5]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [20 x %"struct.ap_int<5>"]* %0, null
  %3 = icmp eq [20 x i5]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [20 x i5], [20 x i5]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [20 x %"struct.ap_int<5>"], [20 x %"struct.ap_int<5>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = bitcast i5* %5 to i8*
  %7 = load i8, i8* %6
  %8 = trunc i8 %7 to i5
  store i5 %8, i5* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 20
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<6>"([20 x i6]* noalias align 512, [20 x %"struct.ap_int<6>"]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [20 x i6]* %0, null
  %3 = icmp eq [20 x %"struct.ap_int<6>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [20 x %"struct.ap_int<6>"], [20 x %"struct.ap_int<6>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [20 x i6], [20 x i6]* %0, i64 0, i64 %for.loop.idx7
  %6 = bitcast i6* %src.addr.0.0.05 to i8*
  %7 = load i8, i8* %6
  %8 = trunc i8 %7 to i6
  store i6 %8, i6* %5, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 20
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([20 x %"struct.ap_int<5>"]* noalias, [20 x i5]* noalias readonly align 512, [20 x %"struct.ap_int<6>"]* noalias, [20 x i6]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<5>"([20 x %"struct.ap_int<5>"]* %0, [20 x i5]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<6>.5"([20 x %"struct.ap_int<6>"]* %2, [20 x i6]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<6>.5"([20 x %"struct.ap_int<6>"]* noalias, [20 x i6]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [20 x %"struct.ap_int<6>"]* %0, null
  %3 = icmp eq [20 x i6]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [20 x i6], [20 x i6]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [20 x %"struct.ap_int<6>"], [20 x %"struct.ap_int<6>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = bitcast i6* %5 to i8*
  %7 = load i8, i8* %6
  %8 = trunc i8 %7 to i6
  store i6 %8, i6* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 20
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<5>.11"([20 x i5]* noalias align 512, [20 x %"struct.ap_int<5>"]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [20 x i5]* %0, null
  %3 = icmp eq [20 x %"struct.ap_int<5>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [20 x %"struct.ap_int<5>"], [20 x %"struct.ap_int<5>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [20 x i5], [20 x i5]* %0, i64 0, i64 %for.loop.idx7
  %6 = bitcast i5* %src.addr.0.0.05 to i8*
  %7 = load i8, i8* %6
  %8 = trunc i8 %7 to i5
  store i5 %8, i5* %5, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 20
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_loop_perfect_hw(i5*, i6*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([20 x %"struct.ap_int<5>"]* noalias, [20 x i5]* noalias readonly align 512, [20 x %"struct.ap_int<6>"]* noalias, [20 x i6]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<6>.5"([20 x %"struct.ap_int<6>"]* %2, [20 x i6]* align 512 %3)
  ret void
}

define void @loop_perfect_hw_stub_wrapper(i5*, i6*) #4 {
entry:
  %2 = alloca [20 x %"struct.ap_int<5>"]
  %3 = alloca [20 x %"struct.ap_int<6>"]
  %4 = bitcast i5* %0 to [20 x i5]*
  %5 = bitcast i6* %1 to [20 x i6]*
  call void @copy_out([20 x %"struct.ap_int<5>"]* %2, [20 x i5]* %4, [20 x %"struct.ap_int<6>"]* %3, [20 x i6]* %5)
  %6 = bitcast [20 x %"struct.ap_int<5>"]* %2 to %"struct.ap_int<5>"*
  %7 = bitcast [20 x %"struct.ap_int<6>"]* %3 to %"struct.ap_int<6>"*
  call void @loop_perfect_hw_stub(%"struct.ap_int<5>"* %6, %"struct.ap_int<6>"* %7)
  call void @copy_in([20 x %"struct.ap_int<5>"]* %2, [20 x i5]* %4, [20 x %"struct.ap_int<6>"]* %3, [20 x i6]* %5)
  ret void
}

declare void @loop_perfect_hw_stub(%"struct.ap_int<5>"*, %"struct.ap_int<6>"*)

attributes #0 = { argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
