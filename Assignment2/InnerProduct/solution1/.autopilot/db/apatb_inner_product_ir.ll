; ModuleID = 'Z:/ECC/Desktop/Winter2023/ELEN226/Assignment2/InnerProduct/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 16, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 16, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: argmemonly noinline
define void @apatb_inner_product_ir(%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" %a, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" %b, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull dereferenceable(2) %s) local_unnamed_addr #0 {
entry:
  %a_copy = alloca [8 x i16], align 512
  %b_copy = alloca [8 x i16], align 512
  %s_copy = alloca i16, align 512
  %0 = bitcast %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %a to [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*
  %1 = bitcast %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %b to [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*
  call fastcc void @copy_in([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* nonnull %0, [8 x i16]* nonnull align 512 %a_copy, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* nonnull %1, [8 x i16]* nonnull align 512 %b_copy, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* nonnull %s, i16* nonnull align 512 %s_copy)
  %2 = getelementptr [8 x i16], [8 x i16]* %a_copy, i32 0, i32 0
  %3 = getelementptr [8 x i16], [8 x i16]* %b_copy, i32 0, i32 0
  call void @apatb_inner_product_hw(i16* %2, i16* %3, i16* %s_copy)
  call void @copy_back([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %0, [8 x i16]* %a_copy, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %1, [8 x i16]* %b_copy, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %s, i16* %s_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias readonly, [8 x i16]* noalias align 512, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias readonly, [8 x i16]* noalias align 512, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly, i16* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"([8 x i16]* align 512 %1, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"([8 x i16]* align 512 %3, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"(i16* align 512 %5, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"(i16* noalias align 512, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i16* %0, null
  %3 = icmp eq %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %1, i32 0, i32 0, i32 0, i32 0
  %5 = load i16, i16* %.0.0.04, align 2
  store i16 %5, i16* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias, [8 x i16]* noalias readonly align 512, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias, [8 x i16]* noalias readonly align 512, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* noalias, i16* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.15"([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %0, [8 x i16]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.15"([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %2, [8 x i16]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.4"(%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %4, i16* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.4"(%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* noalias, i16* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %0, null
  %3 = icmp eq i16* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = load i16, i16* %1, align 512
  store i16 %5, i16* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"([8 x i16]* noalias align 512, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [8 x i16]* %0, null
  %3 = icmp eq [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [8 x i16], [8 x i16]* %0, i64 0, i64 %for.loop.idx7
  %6 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %6, i16* %5, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.15"([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias, [8 x i16]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %0, null
  %3 = icmp eq [8 x i16]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [8 x i16], [8 x i16]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_inner_product_hw(i16*, i16*, i16*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias, [8 x i16]* noalias readonly align 512, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias, [8 x i16]* noalias readonly align 512, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* noalias, i16* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.4"(%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %4, i16* align 512 %5)
  ret void
}

define void @inner_product_hw_stub_wrapper(i16*, i16*, i16*) #4 {
entry:
  %3 = alloca [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]
  %4 = alloca [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]
  %5 = alloca %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"
  %6 = bitcast i16* %0 to [8 x i16]*
  %7 = bitcast i16* %1 to [8 x i16]*
  call void @copy_out([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %3, [8 x i16]* %6, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %4, [8 x i16]* %7, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %5, i16* %2)
  %8 = bitcast [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %3 to %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"*
  %9 = bitcast [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %4 to %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"*
  call void @inner_product_hw_stub(%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %8, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %9, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %5)
  call void @copy_in([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %3, [8 x i16]* %6, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %4, [8 x i16]* %7, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %5, i16* %2)
  ret void
}

declare void @inner_product_hw_stub(%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"*)

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
