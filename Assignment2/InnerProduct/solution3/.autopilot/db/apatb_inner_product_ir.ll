; ModuleID = 'Z:/ECC/Desktop/Winter2023/ELEN226/Assignment2/InnerProduct/solution3/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 16, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 16, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_inner_product_ir(%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" %a, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" %b, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull dereferenceable(2) %s) local_unnamed_addr #0 {
entry:
  %a_copy_0 = alloca i16, align 512
  %a_copy_1 = alloca i16, align 512
  %a_copy_2 = alloca i16, align 512
  %a_copy_3 = alloca i16, align 512
  %a_copy_4 = alloca i16, align 512
  %a_copy_5 = alloca i16, align 512
  %a_copy_6 = alloca i16, align 512
  %a_copy_7 = alloca i16, align 512
  %b_copy_0 = alloca i16, align 512
  %b_copy_1 = alloca i16, align 512
  %b_copy_2 = alloca i16, align 512
  %b_copy_3 = alloca i16, align 512
  %b_copy_4 = alloca i16, align 512
  %b_copy_5 = alloca i16, align 512
  %b_copy_6 = alloca i16, align 512
  %b_copy_7 = alloca i16, align 512
  %s_copy = alloca i16, align 512
  %0 = bitcast %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %a to [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*
  %1 = bitcast %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %b to [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*
  call void @copy_in([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* nonnull %0, i16* nonnull align 512 %a_copy_0, i16* nonnull align 512 %a_copy_1, i16* nonnull align 512 %a_copy_2, i16* nonnull align 512 %a_copy_3, i16* nonnull align 512 %a_copy_4, i16* nonnull align 512 %a_copy_5, i16* nonnull align 512 %a_copy_6, i16* nonnull align 512 %a_copy_7, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* nonnull %1, i16* nonnull align 512 %b_copy_0, i16* nonnull align 512 %b_copy_1, i16* nonnull align 512 %b_copy_2, i16* nonnull align 512 %b_copy_3, i16* nonnull align 512 %b_copy_4, i16* nonnull align 512 %b_copy_5, i16* nonnull align 512 %b_copy_6, i16* nonnull align 512 %b_copy_7, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* nonnull %s, i16* nonnull align 512 %s_copy)
  call void @apatb_inner_product_hw(i16* %a_copy_0, i16* %a_copy_1, i16* %a_copy_2, i16* %a_copy_3, i16* %a_copy_4, i16* %a_copy_5, i16* %a_copy_6, i16* %a_copy_7, i16* %b_copy_0, i16* %b_copy_1, i16* %b_copy_2, i16* %b_copy_3, i16* %b_copy_4, i16* %b_copy_5, i16* %b_copy_6, i16* %b_copy_7, i16* %s_copy)
  call void @copy_back([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %0, i16* %a_copy_0, i16* %a_copy_1, i16* %a_copy_2, i16* %a_copy_3, i16* %a_copy_4, i16* %a_copy_5, i16* %a_copy_6, i16* %a_copy_7, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %1, i16* %b_copy_0, i16* %b_copy_1, i16* %b_copy_2, i16* %b_copy_3, i16* %b_copy_4, i16* %b_copy_5, i16* %b_copy_6, i16* %b_copy_7, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %s, i16* %s_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"(i16* noalias align 512, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly) unnamed_addr #1 {
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
define internal void @copy_in([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="0", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="2", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_45, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_56, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_67, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_78, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "orig.arg.no"="4", i16* noalias align 512 "orig.arg.no"="5") #2 {
entry:
  call void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.3.4"(i16* align 512 %_0, i16* align 512 %_1, i16* align 512 %_2, i16* align 512 %_3, i16* align 512 %_4, i16* align 512 %_5, i16* align 512 %_6, i16* align 512 %_7, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %0)
  call void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.3.4"(i16* align 512 %_01, i16* align 512 %_12, i16* align 512 %_23, i16* align 512 %_34, i16* align 512 %_45, i16* align 512 %_56, i16* align 512 %_67, i16* align 512 %_78, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"(i16* align 512 %3, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="2", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_45, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_56, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_67, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_78, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* noalias "orig.arg.no"="4", i16* noalias readonly align 512 "orig.arg.no"="5") #3 {
entry:
  call void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.9.10"([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %0, i16* align 512 %_0, i16* align 512 %_1, i16* align 512 %_2, i16* align 512 %_3, i16* align 512 %_4, i16* align 512 %_5, i16* align 512 %_6, i16* align 512 %_7)
  call void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.9.10"([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %1, i16* align 512 %_01, i16* align 512 %_12, i16* align 512 %_23, i16* align 512 %_34, i16* align 512 %_45, i16* align 512 %_56, i16* align 512 %_67, i16* align 512 %_78)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.15"(%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %2, i16* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.15"(%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* noalias, i16* noalias readonly align 512) unnamed_addr #1 {
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
define internal void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.9.10"([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7) #1 {
entry:
  %1 = icmp eq [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %0, null
  %2 = icmp eq i16* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %dst.addr.0.0.06 = getelementptr [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %4 = trunc i64 %for.loop.idx7 to i3
  switch i3 %4, label %src.addr.0.0.05.case.7 [
    i3 0, label %src.addr.0.0.05.case.0
    i3 1, label %src.addr.0.0.05.case.1
    i3 2, label %src.addr.0.0.05.case.2
    i3 3, label %src.addr.0.0.05.case.3
    i3 -4, label %src.addr.0.0.05.case.4
    i3 -3, label %src.addr.0.0.05.case.5
    i3 -2, label %src.addr.0.0.05.case.6
  ]

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %5 = load i16, i16* %_0, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  %6 = load i16, i16* %_1, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.2:                           ; preds = %for.loop
  %7 = load i16, i16* %_2, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.3:                           ; preds = %for.loop
  %8 = load i16, i16* %_3, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.4:                           ; preds = %for.loop
  %9 = load i16, i16* %_4, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.5:                           ; preds = %for.loop
  %10 = load i16, i16* %_5, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.6:                           ; preds = %for.loop
  %11 = load i16, i16* %_6, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.7:                           ; preds = %for.loop
  %12 = load i16, i16* %_7, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.7, %src.addr.0.0.05.case.6, %src.addr.0.0.05.case.5, %src.addr.0.0.05.case.4, %src.addr.0.0.05.case.3, %src.addr.0.0.05.case.2, %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0
  %13 = phi i16 [ %5, %src.addr.0.0.05.case.0 ], [ %6, %src.addr.0.0.05.case.1 ], [ %7, %src.addr.0.0.05.case.2 ], [ %8, %src.addr.0.0.05.case.3 ], [ %9, %src.addr.0.0.05.case.4 ], [ %10, %src.addr.0.0.05.case.5 ], [ %11, %src.addr.0.0.05.case.6 ], [ %12, %src.addr.0.0.05.case.7 ]
  store i16 %13, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.0.0.05.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a8struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.3.4"(i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_6, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_7, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %1 = icmp eq i16* %_0, null
  %2 = icmp eq [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %src.addr.0.0.05 = getelementptr [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %4 = load i16, i16* %src.addr.0.0.05, align 2
  %5 = trunc i64 %for.loop.idx7 to i3
  switch i3 %5, label %dst.addr.0.0.06.case.7 [
    i3 0, label %dst.addr.0.0.06.case.0
    i3 1, label %dst.addr.0.0.06.case.1
    i3 2, label %dst.addr.0.0.06.case.2
    i3 3, label %dst.addr.0.0.06.case.3
    i3 -4, label %dst.addr.0.0.06.case.4
    i3 -3, label %dst.addr.0.0.06.case.5
    i3 -2, label %dst.addr.0.0.06.case.6
  ]

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i16 %4, i16* %_0, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  store i16 %4, i16* %_1, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.2:                           ; preds = %for.loop
  store i16 %4, i16* %_2, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.3:                           ; preds = %for.loop
  store i16 %4, i16* %_3, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.4:                           ; preds = %for.loop
  store i16 %4, i16* %_4, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.5:                           ; preds = %for.loop
  store i16 %4, i16* %_5, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.6:                           ; preds = %for.loop
  store i16 %4, i16* %_6, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.7:                           ; preds = %for.loop
  store i16 %4, i16* %_7, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.7, %dst.addr.0.0.06.case.6, %dst.addr.0.0.06.case.5, %dst.addr.0.0.06.case.4, %dst.addr.0.0.06.case.3, %dst.addr.0.0.06.case.2, %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.0.0.06.exit, %entry
  ret void
}

declare void @apatb_inner_product_hw(i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="2", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_45, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_56, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_67, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_78, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* noalias "orig.arg.no"="4", i16* noalias readonly align 512 "orig.arg.no"="5") #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.15"(%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %2, i16* align 512 %3)
  ret void
}

define void @inner_product_hw_stub_wrapper(i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*) #4 {
entry:
  %17 = alloca [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]
  %18 = alloca [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]
  %19 = alloca %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"
  call void @copy_out([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %17, i16* %0, i16* %1, i16* %2, i16* %3, i16* %4, i16* %5, i16* %6, i16* %7, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %18, i16* %8, i16* %9, i16* %10, i16* %11, i16* %12, i16* %13, i16* %14, i16* %15, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %19, i16* %16)
  %20 = bitcast [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %17 to %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"*
  %21 = bitcast [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %18 to %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"*
  call void @inner_product_hw_stub(%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %20, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %21, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %19)
  call void @copy_in([8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %17, i16* %0, i16* %1, i16* %2, i16* %3, i16* %4, i16* %5, i16* %6, i16* %7, [8 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %18, i16* %8, i16* %9, i16* %10, i16* %11, i16* %12, i16* %13, i16* %14, i16* %15, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"* %19, i16* %16)
  ret void
}

declare void @inner_product_hw_stub(%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
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
