; ModuleID = 'Z:/ECC/Desktop/Winter2023/ELEN226/Assignment3/mmul/solution4/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 16, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 16, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_mmul_ir([4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" %a, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4" %b, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="3" %c) local_unnamed_addr #0 {
entry:
  %a_copy_0_0 = alloca i16, align 512
  %a_copy_0_1 = alloca i16, align 512
  %a_copy_0_2 = alloca i16, align 512
  %a_copy_0_3 = alloca i16, align 512
  %a_copy_1_0 = alloca i16, align 512
  %a_copy_1_1 = alloca i16, align 512
  %a_copy_1_2 = alloca i16, align 512
  %a_copy_1_3 = alloca i16, align 512
  %a_copy_2_0 = alloca i16, align 512
  %a_copy_2_1 = alloca i16, align 512
  %a_copy_2_2 = alloca i16, align 512
  %a_copy_2_3 = alloca i16, align 512
  %b_copy_0_0 = alloca i16, align 512
  %b_copy_0_1 = alloca i16, align 512
  %b_copy_0_2 = alloca i16, align 512
  %b_copy_0_3 = alloca i16, align 512
  %b_copy_0_4 = alloca i16, align 512
  %b_copy_0_5 = alloca i16, align 512
  %b_copy_1_0 = alloca i16, align 512
  %b_copy_1_1 = alloca i16, align 512
  %b_copy_1_2 = alloca i16, align 512
  %b_copy_1_3 = alloca i16, align 512
  %b_copy_1_4 = alloca i16, align 512
  %b_copy_1_5 = alloca i16, align 512
  %b_copy_2_0 = alloca i16, align 512
  %b_copy_2_1 = alloca i16, align 512
  %b_copy_2_2 = alloca i16, align 512
  %b_copy_2_3 = alloca i16, align 512
  %b_copy_2_4 = alloca i16, align 512
  %b_copy_2_5 = alloca i16, align 512
  %b_copy_3_0 = alloca i16, align 512
  %b_copy_3_1 = alloca i16, align 512
  %b_copy_3_2 = alloca i16, align 512
  %b_copy_3_3 = alloca i16, align 512
  %b_copy_3_4 = alloca i16, align 512
  %b_copy_3_5 = alloca i16, align 512
  %c_copy = alloca [3 x [6 x i16]], align 512
  %0 = bitcast [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %a to [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]*
  %1 = bitcast [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %b to [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]*
  %2 = bitcast [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %c to [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]*
  call void @copy_in([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* nonnull %0, i16* nonnull align 512 %a_copy_0_0, i16* nonnull align 512 %a_copy_0_1, i16* nonnull align 512 %a_copy_0_2, i16* nonnull align 512 %a_copy_0_3, i16* nonnull align 512 %a_copy_1_0, i16* nonnull align 512 %a_copy_1_1, i16* nonnull align 512 %a_copy_1_2, i16* nonnull align 512 %a_copy_1_3, i16* nonnull align 512 %a_copy_2_0, i16* nonnull align 512 %a_copy_2_1, i16* nonnull align 512 %a_copy_2_2, i16* nonnull align 512 %a_copy_2_3, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* nonnull %1, i16* nonnull align 512 %b_copy_0_0, i16* nonnull align 512 %b_copy_0_1, i16* nonnull align 512 %b_copy_0_2, i16* nonnull align 512 %b_copy_0_3, i16* nonnull align 512 %b_copy_0_4, i16* nonnull align 512 %b_copy_0_5, i16* nonnull align 512 %b_copy_1_0, i16* nonnull align 512 %b_copy_1_1, i16* nonnull align 512 %b_copy_1_2, i16* nonnull align 512 %b_copy_1_3, i16* nonnull align 512 %b_copy_1_4, i16* nonnull align 512 %b_copy_1_5, i16* nonnull align 512 %b_copy_2_0, i16* nonnull align 512 %b_copy_2_1, i16* nonnull align 512 %b_copy_2_2, i16* nonnull align 512 %b_copy_2_3, i16* nonnull align 512 %b_copy_2_4, i16* nonnull align 512 %b_copy_2_5, i16* nonnull align 512 %b_copy_3_0, i16* nonnull align 512 %b_copy_3_1, i16* nonnull align 512 %b_copy_3_2, i16* nonnull align 512 %b_copy_3_3, i16* nonnull align 512 %b_copy_3_4, i16* nonnull align 512 %b_copy_3_5, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* nonnull %2, [3 x [6 x i16]]* nonnull align 512 %c_copy)
  %3 = getelementptr [3 x [6 x i16]], [3 x [6 x i16]]* %c_copy, i32 0, i32 0
  call void @apatb_mmul_hw(i16* %a_copy_0_0, i16* %a_copy_0_1, i16* %a_copy_0_2, i16* %a_copy_0_3, i16* %a_copy_1_0, i16* %a_copy_1_1, i16* %a_copy_1_2, i16* %a_copy_1_3, i16* %a_copy_2_0, i16* %a_copy_2_1, i16* %a_copy_2_2, i16* %a_copy_2_3, i16* %b_copy_0_0, i16* %b_copy_0_1, i16* %b_copy_0_2, i16* %b_copy_0_3, i16* %b_copy_0_4, i16* %b_copy_0_5, i16* %b_copy_1_0, i16* %b_copy_1_1, i16* %b_copy_1_2, i16* %b_copy_1_3, i16* %b_copy_1_4, i16* %b_copy_1_5, i16* %b_copy_2_0, i16* %b_copy_2_1, i16* %b_copy_2_2, i16* %b_copy_2_3, i16* %b_copy_2_4, i16* %b_copy_2_5, i16* %b_copy_3_0, i16* %b_copy_3_1, i16* %b_copy_3_2, i16* %b_copy_3_3, i16* %b_copy_3_4, i16* %b_copy_3_5, [6 x i16]* %3)
  call void @copy_back([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, i16* %a_copy_0_0, i16* %a_copy_0_1, i16* %a_copy_0_2, i16* %a_copy_0_3, i16* %a_copy_1_0, i16* %a_copy_1_1, i16* %a_copy_1_2, i16* %a_copy_1_3, i16* %a_copy_2_0, i16* %a_copy_2_1, i16* %a_copy_2_2, i16* %a_copy_2_3, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %1, i16* %b_copy_0_0, i16* %b_copy_0_1, i16* %b_copy_0_2, i16* %b_copy_0_3, i16* %b_copy_0_4, i16* %b_copy_0_5, i16* %b_copy_1_0, i16* %b_copy_1_1, i16* %b_copy_1_2, i16* %b_copy_1_3, i16* %b_copy_1_4, i16* %b_copy_1_5, i16* %b_copy_2_0, i16* %b_copy_2_1, i16* %b_copy_2_2, i16* %b_copy_2_3, i16* %b_copy_2_4, i16* %b_copy_2_5, i16* %b_copy_3_0, i16* %b_copy_3_1, i16* %b_copy_3_2, i16* %b_copy_3_3, i16* %b_copy_3_4, i16* %b_copy_3_5, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %2, [3 x [6 x i16]]* %c_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a3a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"([3 x [6 x i16]]* noalias align 512, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly) unnamed_addr #1 {
entry:
  %2 = icmp eq [3 x [6 x i16]]* %0, null
  %3 = icmp eq [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %src.addr6.0.0.013 = getelementptr [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]], [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %5 = getelementptr [3 x [6 x i16]], [3 x [6 x i16]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315
  %6 = load i16, i16* %src.addr6.0.0.013, align 2
  store i16 %6, i16* %5, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 6
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #2

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a3a4struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.3.4"(i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2_3, [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %1 = icmp eq i16* %_0_0, null
  %2 = icmp eq [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = trunc i64 %for.loop.idx16 to i2
  %5 = icmp eq i2 %4, -2
  br label %for.loop2

for.loop2:                                        ; preds = %dst.addr5.0.0.014.exit, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %dst.addr5.0.0.014.exit ]
  %src.addr6.0.0.013 = getelementptr [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]], [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %6 = load i16, i16* %src.addr6.0.0.013, align 2
  %7 = trunc i64 %for.loop.idx315 to i2
  switch i2 %4, label %dst.addr5.0.0.014.case.2 [
    i2 0, label %dst.addr5.0.0.014.case.0
    i2 1, label %dst.addr5.0.0.014.case.1
  ]

dst.addr5.0.0.014.case.0:                         ; preds = %for.loop2
  switch i2 %7, label %dst.addr5.0.0.014.case.3 [
    i2 0, label %dst.addr5.0.0.014.case.03
    i2 1, label %dst.addr5.0.0.014.case.14
    i2 -2, label %dst.addr5.0.0.014.case.25
  ]

dst.addr5.0.0.014.case.03:                        ; preds = %dst.addr5.0.0.014.case.0
  store i16 %6, i16* %_0_0, align 512
  br label %dst.addr5.0.0.014.exit2

dst.addr5.0.0.014.case.14:                        ; preds = %dst.addr5.0.0.014.case.0
  store i16 %6, i16* %_0_1, align 512
  br label %dst.addr5.0.0.014.exit2

dst.addr5.0.0.014.case.25:                        ; preds = %dst.addr5.0.0.014.case.0
  store i16 %6, i16* %_0_2, align 512
  br label %dst.addr5.0.0.014.exit2

dst.addr5.0.0.014.case.3:                         ; preds = %dst.addr5.0.0.014.case.0
  store i16 %6, i16* %_0_3, align 512
  br label %dst.addr5.0.0.014.exit2

dst.addr5.0.0.014.exit2:                          ; preds = %dst.addr5.0.0.014.case.3, %dst.addr5.0.0.014.case.25, %dst.addr5.0.0.014.case.14, %dst.addr5.0.0.014.case.03
  br label %dst.addr5.0.0.014.exit

dst.addr5.0.0.014.case.1:                         ; preds = %for.loop2
  switch i2 %7, label %dst.addr5.0.0.014.case.311 [
    i2 0, label %dst.addr5.0.0.014.case.08
    i2 1, label %dst.addr5.0.0.014.case.19
    i2 -2, label %dst.addr5.0.0.014.case.210
  ]

dst.addr5.0.0.014.case.08:                        ; preds = %dst.addr5.0.0.014.case.1
  store i16 %6, i16* %_1_0, align 512
  br label %dst.addr5.0.0.014.exit7

dst.addr5.0.0.014.case.19:                        ; preds = %dst.addr5.0.0.014.case.1
  store i16 %6, i16* %_1_1, align 512
  br label %dst.addr5.0.0.014.exit7

dst.addr5.0.0.014.case.210:                       ; preds = %dst.addr5.0.0.014.case.1
  store i16 %6, i16* %_1_2, align 512
  br label %dst.addr5.0.0.014.exit7

dst.addr5.0.0.014.case.311:                       ; preds = %dst.addr5.0.0.014.case.1
  store i16 %6, i16* %_1_3, align 512
  br label %dst.addr5.0.0.014.exit7

dst.addr5.0.0.014.exit7:                          ; preds = %dst.addr5.0.0.014.case.311, %dst.addr5.0.0.014.case.210, %dst.addr5.0.0.014.case.19, %dst.addr5.0.0.014.case.08
  br label %dst.addr5.0.0.014.exit

dst.addr5.0.0.014.case.2:                         ; preds = %for.loop2
  call void @llvm.assume(i1 %5)
  switch i2 %7, label %dst.addr5.0.0.014.case.317 [
    i2 0, label %dst.addr5.0.0.014.case.014
    i2 1, label %dst.addr5.0.0.014.case.115
    i2 -2, label %dst.addr5.0.0.014.case.216
  ]

dst.addr5.0.0.014.case.014:                       ; preds = %dst.addr5.0.0.014.case.2
  store i16 %6, i16* %_2_0, align 512
  br label %dst.addr5.0.0.014.exit13

dst.addr5.0.0.014.case.115:                       ; preds = %dst.addr5.0.0.014.case.2
  store i16 %6, i16* %_2_1, align 512
  br label %dst.addr5.0.0.014.exit13

dst.addr5.0.0.014.case.216:                       ; preds = %dst.addr5.0.0.014.case.2
  store i16 %6, i16* %_2_2, align 512
  br label %dst.addr5.0.0.014.exit13

dst.addr5.0.0.014.case.317:                       ; preds = %dst.addr5.0.0.014.case.2
  store i16 %6, i16* %_2_3, align 512
  br label %dst.addr5.0.0.014.exit13

dst.addr5.0.0.014.exit13:                         ; preds = %dst.addr5.0.0.014.case.317, %dst.addr5.0.0.014.case.216, %dst.addr5.0.0.014.case.115, %dst.addr5.0.0.014.case.014
  br label %dst.addr5.0.0.014.exit

dst.addr5.0.0.014.exit:                           ; preds = %dst.addr5.0.0.014.exit13, %dst.addr5.0.0.014.exit7, %dst.addr5.0.0.014.exit2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %dst.addr5.0.0.014.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a4a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.5.6"(i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0_4, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0_5, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1_4, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1_5, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2_4, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2_5, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3_4, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3_5, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %1 = icmp eq i16* %_0_0, null
  %2 = icmp eq [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = trunc i64 %for.loop.idx16 to i2
  br label %for.loop2

for.loop2:                                        ; preds = %dst.addr5.0.0.014.exit, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %dst.addr5.0.0.014.exit ]
  %src.addr6.0.0.013 = getelementptr [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]], [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %5 = load i16, i16* %src.addr6.0.0.013, align 2
  %6 = trunc i64 %for.loop.idx315 to i3
  switch i2 %4, label %dst.addr5.0.0.014.case.3 [
    i2 0, label %dst.addr5.0.0.014.case.0
    i2 1, label %dst.addr5.0.0.014.case.1
    i2 -2, label %dst.addr5.0.0.014.case.2
  ]

dst.addr5.0.0.014.case.0:                         ; preds = %for.loop2
  switch i3 %6, label %dst.addr5.0.0.014.case.5 [
    i3 0, label %dst.addr5.0.0.014.case.03
    i3 1, label %dst.addr5.0.0.014.case.14
    i3 2, label %dst.addr5.0.0.014.case.25
    i3 3, label %dst.addr5.0.0.014.case.36
    i3 -4, label %dst.addr5.0.0.014.case.4
  ]

dst.addr5.0.0.014.case.03:                        ; preds = %dst.addr5.0.0.014.case.0
  store i16 %5, i16* %_0_0, align 512
  br label %dst.addr5.0.0.014.exit2

dst.addr5.0.0.014.case.14:                        ; preds = %dst.addr5.0.0.014.case.0
  store i16 %5, i16* %_0_1, align 512
  br label %dst.addr5.0.0.014.exit2

dst.addr5.0.0.014.case.25:                        ; preds = %dst.addr5.0.0.014.case.0
  store i16 %5, i16* %_0_2, align 512
  br label %dst.addr5.0.0.014.exit2

dst.addr5.0.0.014.case.36:                        ; preds = %dst.addr5.0.0.014.case.0
  store i16 %5, i16* %_0_3, align 512
  br label %dst.addr5.0.0.014.exit2

dst.addr5.0.0.014.case.4:                         ; preds = %dst.addr5.0.0.014.case.0
  store i16 %5, i16* %_0_4, align 512
  br label %dst.addr5.0.0.014.exit2

dst.addr5.0.0.014.case.5:                         ; preds = %dst.addr5.0.0.014.case.0
  %7 = icmp eq i3 %6, -3
  call void @llvm.assume(i1 %7)
  store i16 %5, i16* %_0_5, align 512
  br label %dst.addr5.0.0.014.exit2

dst.addr5.0.0.014.exit2:                          ; preds = %dst.addr5.0.0.014.case.5, %dst.addr5.0.0.014.case.4, %dst.addr5.0.0.014.case.36, %dst.addr5.0.0.014.case.25, %dst.addr5.0.0.014.case.14, %dst.addr5.0.0.014.case.03
  br label %dst.addr5.0.0.014.exit

dst.addr5.0.0.014.case.1:                         ; preds = %for.loop2
  switch i3 %6, label %dst.addr5.0.0.014.case.514 [
    i3 0, label %dst.addr5.0.0.014.case.09
    i3 1, label %dst.addr5.0.0.014.case.110
    i3 2, label %dst.addr5.0.0.014.case.211
    i3 3, label %dst.addr5.0.0.014.case.312
    i3 -4, label %dst.addr5.0.0.014.case.413
  ]

dst.addr5.0.0.014.case.09:                        ; preds = %dst.addr5.0.0.014.case.1
  store i16 %5, i16* %_1_0, align 512
  br label %dst.addr5.0.0.014.exit8

dst.addr5.0.0.014.case.110:                       ; preds = %dst.addr5.0.0.014.case.1
  store i16 %5, i16* %_1_1, align 512
  br label %dst.addr5.0.0.014.exit8

dst.addr5.0.0.014.case.211:                       ; preds = %dst.addr5.0.0.014.case.1
  store i16 %5, i16* %_1_2, align 512
  br label %dst.addr5.0.0.014.exit8

dst.addr5.0.0.014.case.312:                       ; preds = %dst.addr5.0.0.014.case.1
  store i16 %5, i16* %_1_3, align 512
  br label %dst.addr5.0.0.014.exit8

dst.addr5.0.0.014.case.413:                       ; preds = %dst.addr5.0.0.014.case.1
  store i16 %5, i16* %_1_4, align 512
  br label %dst.addr5.0.0.014.exit8

dst.addr5.0.0.014.case.514:                       ; preds = %dst.addr5.0.0.014.case.1
  %8 = icmp eq i3 %6, -3
  call void @llvm.assume(i1 %8)
  store i16 %5, i16* %_1_5, align 512
  br label %dst.addr5.0.0.014.exit8

dst.addr5.0.0.014.exit8:                          ; preds = %dst.addr5.0.0.014.case.514, %dst.addr5.0.0.014.case.413, %dst.addr5.0.0.014.case.312, %dst.addr5.0.0.014.case.211, %dst.addr5.0.0.014.case.110, %dst.addr5.0.0.014.case.09
  br label %dst.addr5.0.0.014.exit

dst.addr5.0.0.014.case.2:                         ; preds = %for.loop2
  switch i3 %6, label %dst.addr5.0.0.014.case.522 [
    i3 0, label %dst.addr5.0.0.014.case.017
    i3 1, label %dst.addr5.0.0.014.case.118
    i3 2, label %dst.addr5.0.0.014.case.219
    i3 3, label %dst.addr5.0.0.014.case.320
    i3 -4, label %dst.addr5.0.0.014.case.421
  ]

dst.addr5.0.0.014.case.017:                       ; preds = %dst.addr5.0.0.014.case.2
  store i16 %5, i16* %_2_0, align 512
  br label %dst.addr5.0.0.014.exit16

dst.addr5.0.0.014.case.118:                       ; preds = %dst.addr5.0.0.014.case.2
  store i16 %5, i16* %_2_1, align 512
  br label %dst.addr5.0.0.014.exit16

dst.addr5.0.0.014.case.219:                       ; preds = %dst.addr5.0.0.014.case.2
  store i16 %5, i16* %_2_2, align 512
  br label %dst.addr5.0.0.014.exit16

dst.addr5.0.0.014.case.320:                       ; preds = %dst.addr5.0.0.014.case.2
  store i16 %5, i16* %_2_3, align 512
  br label %dst.addr5.0.0.014.exit16

dst.addr5.0.0.014.case.421:                       ; preds = %dst.addr5.0.0.014.case.2
  store i16 %5, i16* %_2_4, align 512
  br label %dst.addr5.0.0.014.exit16

dst.addr5.0.0.014.case.522:                       ; preds = %dst.addr5.0.0.014.case.2
  %9 = icmp eq i3 %6, -3
  call void @llvm.assume(i1 %9)
  store i16 %5, i16* %_2_5, align 512
  br label %dst.addr5.0.0.014.exit16

dst.addr5.0.0.014.exit16:                         ; preds = %dst.addr5.0.0.014.case.522, %dst.addr5.0.0.014.case.421, %dst.addr5.0.0.014.case.320, %dst.addr5.0.0.014.case.219, %dst.addr5.0.0.014.case.118, %dst.addr5.0.0.014.case.017
  br label %dst.addr5.0.0.014.exit

dst.addr5.0.0.014.case.3:                         ; preds = %for.loop2
  switch i3 %6, label %dst.addr5.0.0.014.case.530 [
    i3 0, label %dst.addr5.0.0.014.case.025
    i3 1, label %dst.addr5.0.0.014.case.126
    i3 2, label %dst.addr5.0.0.014.case.227
    i3 3, label %dst.addr5.0.0.014.case.328
    i3 -4, label %dst.addr5.0.0.014.case.429
  ]

dst.addr5.0.0.014.case.025:                       ; preds = %dst.addr5.0.0.014.case.3
  store i16 %5, i16* %_3_0, align 512
  br label %dst.addr5.0.0.014.exit24

dst.addr5.0.0.014.case.126:                       ; preds = %dst.addr5.0.0.014.case.3
  store i16 %5, i16* %_3_1, align 512
  br label %dst.addr5.0.0.014.exit24

dst.addr5.0.0.014.case.227:                       ; preds = %dst.addr5.0.0.014.case.3
  store i16 %5, i16* %_3_2, align 512
  br label %dst.addr5.0.0.014.exit24

dst.addr5.0.0.014.case.328:                       ; preds = %dst.addr5.0.0.014.case.3
  store i16 %5, i16* %_3_3, align 512
  br label %dst.addr5.0.0.014.exit24

dst.addr5.0.0.014.case.429:                       ; preds = %dst.addr5.0.0.014.case.3
  store i16 %5, i16* %_3_4, align 512
  br label %dst.addr5.0.0.014.exit24

dst.addr5.0.0.014.case.530:                       ; preds = %dst.addr5.0.0.014.case.3
  %10 = icmp eq i3 %6, -3
  call void @llvm.assume(i1 %10)
  store i16 %5, i16* %_3_5, align 512
  br label %dst.addr5.0.0.014.exit24

dst.addr5.0.0.014.exit24:                         ; preds = %dst.addr5.0.0.014.case.530, %dst.addr5.0.0.014.case.429, %dst.addr5.0.0.014.case.328, %dst.addr5.0.0.014.case.227, %dst.addr5.0.0.014.case.126, %dst.addr5.0.0.014.case.025
  br label %dst.addr5.0.0.014.exit

dst.addr5.0.0.014.exit:                           ; preds = %dst.addr5.0.0.014.exit24, %dst.addr5.0.0.014.exit16, %dst.addr5.0.0.014.exit8, %dst.addr5.0.0.014.exit2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 6
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %dst.addr5.0.0.014.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "orig.arg.no"="0", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_3, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "orig.arg.no"="2", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_01, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_12, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_23, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_34, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_4, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_5, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_05, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_16, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_27, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_38, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_4, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_5, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_09, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_110, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_211, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_312, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_4, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_5, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_4, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_5, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "orig.arg.no"="4", [3 x [6 x i16]]* noalias align 512 "orig.arg.no"="5") #3 {
entry:
  call void @"onebyonecpy_hls.p0a3a4struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.3.4"(i16* align 512 %_0_0, i16* align 512 %_0_1, i16* align 512 %_0_2, i16* align 512 %_0_3, i16* align 512 %_1_0, i16* align 512 %_1_1, i16* align 512 %_1_2, i16* align 512 %_1_3, i16* align 512 %_2_0, i16* align 512 %_2_1, i16* align 512 %_2_2, i16* align 512 %_2_3, [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0)
  call void @"onebyonecpy_hls.p0a4a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.5.6"(i16* align 512 %_0_01, i16* align 512 %_0_12, i16* align 512 %_0_23, i16* align 512 %_0_34, i16* align 512 %_0_4, i16* align 512 %_0_5, i16* align 512 %_1_05, i16* align 512 %_1_16, i16* align 512 %_1_27, i16* align 512 %_1_38, i16* align 512 %_1_4, i16* align 512 %_1_5, i16* align 512 %_2_09, i16* align 512 %_2_110, i16* align 512 %_2_211, i16* align 512 %_2_312, i16* align 512 %_2_4, i16* align 512 %_2_5, i16* align 512 %_3_0, i16* align 512 %_3_1, i16* align 512 %_3_2, i16* align 512 %_3_3, i16* align 512 %_3_4, i16* align 512 %_3_5, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %1)
  call fastcc void @"onebyonecpy_hls.p0a3a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"([3 x [6 x i16]]* align 512 %3, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a3a4struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.11.12"([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_3) #1 {
entry:
  %1 = icmp eq [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, null
  %2 = icmp eq i16* %_0_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = trunc i64 %for.loop.idx16 to i2
  %5 = icmp eq i2 %4, -2
  br label %for.loop2

for.loop2:                                        ; preds = %src.addr6.0.0.013.exit, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %src.addr6.0.0.013.exit ]
  %dst.addr5.0.0.014 = getelementptr [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]], [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %6 = trunc i64 %for.loop.idx315 to i2
  switch i2 %4, label %src.addr6.0.0.013.case.2 [
    i2 0, label %src.addr6.0.0.013.case.0
    i2 1, label %src.addr6.0.0.013.case.1
  ]

src.addr6.0.0.013.case.0:                         ; preds = %for.loop2
  switch i2 %6, label %src.addr6.0.0.013.case.3 [
    i2 0, label %src.addr6.0.0.013.case.03
    i2 1, label %src.addr6.0.0.013.case.14
    i2 -2, label %src.addr6.0.0.013.case.25
  ]

src.addr6.0.0.013.case.03:                        ; preds = %src.addr6.0.0.013.case.0
  %7 = load i16, i16* %_0_0, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.14:                        ; preds = %src.addr6.0.0.013.case.0
  %8 = load i16, i16* %_0_1, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.25:                        ; preds = %src.addr6.0.0.013.case.0
  %9 = load i16, i16* %_0_2, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.3:                         ; preds = %src.addr6.0.0.013.case.0
  %10 = load i16, i16* %_0_3, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.1:                         ; preds = %for.loop2
  switch i2 %6, label %src.addr6.0.0.013.case.315 [
    i2 0, label %src.addr6.0.0.013.case.012
    i2 1, label %src.addr6.0.0.013.case.113
    i2 -2, label %src.addr6.0.0.013.case.214
  ]

src.addr6.0.0.013.case.012:                       ; preds = %src.addr6.0.0.013.case.1
  %11 = load i16, i16* %_1_0, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.113:                       ; preds = %src.addr6.0.0.013.case.1
  %12 = load i16, i16* %_1_1, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.214:                       ; preds = %src.addr6.0.0.013.case.1
  %13 = load i16, i16* %_1_2, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.315:                       ; preds = %src.addr6.0.0.013.case.1
  %14 = load i16, i16* %_1_3, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.2:                         ; preds = %for.loop2
  call void @llvm.assume(i1 %5)
  switch i2 %6, label %src.addr6.0.0.013.case.325 [
    i2 0, label %src.addr6.0.0.013.case.022
    i2 1, label %src.addr6.0.0.013.case.123
    i2 -2, label %src.addr6.0.0.013.case.224
  ]

src.addr6.0.0.013.case.022:                       ; preds = %src.addr6.0.0.013.case.2
  %15 = load i16, i16* %_2_0, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.123:                       ; preds = %src.addr6.0.0.013.case.2
  %16 = load i16, i16* %_2_1, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.224:                       ; preds = %src.addr6.0.0.013.case.2
  %17 = load i16, i16* %_2_2, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.325:                       ; preds = %src.addr6.0.0.013.case.2
  %18 = load i16, i16* %_2_3, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.exit:                           ; preds = %src.addr6.0.0.013.case.325, %src.addr6.0.0.013.case.224, %src.addr6.0.0.013.case.123, %src.addr6.0.0.013.case.022, %src.addr6.0.0.013.case.315, %src.addr6.0.0.013.case.214, %src.addr6.0.0.013.case.113, %src.addr6.0.0.013.case.012, %src.addr6.0.0.013.case.3, %src.addr6.0.0.013.case.25, %src.addr6.0.0.013.case.14, %src.addr6.0.0.013.case.03
  %19 = phi i16 [ %7, %src.addr6.0.0.013.case.03 ], [ %8, %src.addr6.0.0.013.case.14 ], [ %9, %src.addr6.0.0.013.case.25 ], [ %10, %src.addr6.0.0.013.case.3 ], [ %11, %src.addr6.0.0.013.case.012 ], [ %12, %src.addr6.0.0.013.case.113 ], [ %13, %src.addr6.0.0.013.case.214 ], [ %14, %src.addr6.0.0.013.case.315 ], [ %15, %src.addr6.0.0.013.case.022 ], [ %16, %src.addr6.0.0.013.case.123 ], [ %17, %src.addr6.0.0.013.case.224 ], [ %18, %src.addr6.0.0.013.case.325 ]
  store i16 %19, i16* %dst.addr5.0.0.014, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %src.addr6.0.0.013.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a4a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.13.14"([4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_5, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_5, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_5, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3_5) #1 {
entry:
  %1 = icmp eq [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, null
  %2 = icmp eq i16* %_0_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = trunc i64 %for.loop.idx16 to i2
  br label %for.loop2

for.loop2:                                        ; preds = %src.addr6.0.0.013.exit, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %src.addr6.0.0.013.exit ]
  %dst.addr5.0.0.014 = getelementptr [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]], [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %5 = trunc i64 %for.loop.idx315 to i3
  switch i2 %4, label %src.addr6.0.0.013.case.3 [
    i2 0, label %src.addr6.0.0.013.case.0
    i2 1, label %src.addr6.0.0.013.case.1
    i2 -2, label %src.addr6.0.0.013.case.2
  ]

src.addr6.0.0.013.case.0:                         ; preds = %for.loop2
  switch i3 %5, label %src.addr6.0.0.013.case.5 [
    i3 0, label %src.addr6.0.0.013.case.03
    i3 1, label %src.addr6.0.0.013.case.14
    i3 2, label %src.addr6.0.0.013.case.25
    i3 3, label %src.addr6.0.0.013.case.36
    i3 -4, label %src.addr6.0.0.013.case.4
  ]

src.addr6.0.0.013.case.03:                        ; preds = %src.addr6.0.0.013.case.0
  %6 = load i16, i16* %_0_0, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.14:                        ; preds = %src.addr6.0.0.013.case.0
  %7 = load i16, i16* %_0_1, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.25:                        ; preds = %src.addr6.0.0.013.case.0
  %8 = load i16, i16* %_0_2, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.36:                        ; preds = %src.addr6.0.0.013.case.0
  %9 = load i16, i16* %_0_3, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.4:                         ; preds = %src.addr6.0.0.013.case.0
  %10 = load i16, i16* %_0_4, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.5:                         ; preds = %src.addr6.0.0.013.case.0
  %11 = icmp eq i3 %5, -3
  call void @llvm.assume(i1 %11)
  %12 = load i16, i16* %_0_5, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.1:                         ; preds = %for.loop2
  switch i3 %5, label %src.addr6.0.0.013.case.520 [
    i3 0, label %src.addr6.0.0.013.case.015
    i3 1, label %src.addr6.0.0.013.case.116
    i3 2, label %src.addr6.0.0.013.case.217
    i3 3, label %src.addr6.0.0.013.case.318
    i3 -4, label %src.addr6.0.0.013.case.419
  ]

src.addr6.0.0.013.case.015:                       ; preds = %src.addr6.0.0.013.case.1
  %13 = load i16, i16* %_1_0, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.116:                       ; preds = %src.addr6.0.0.013.case.1
  %14 = load i16, i16* %_1_1, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.217:                       ; preds = %src.addr6.0.0.013.case.1
  %15 = load i16, i16* %_1_2, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.318:                       ; preds = %src.addr6.0.0.013.case.1
  %16 = load i16, i16* %_1_3, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.419:                       ; preds = %src.addr6.0.0.013.case.1
  %17 = load i16, i16* %_1_4, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.520:                       ; preds = %src.addr6.0.0.013.case.1
  %18 = icmp eq i3 %5, -3
  call void @llvm.assume(i1 %18)
  %19 = load i16, i16* %_1_5, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.2:                         ; preds = %for.loop2
  switch i3 %5, label %src.addr6.0.0.013.case.534 [
    i3 0, label %src.addr6.0.0.013.case.029
    i3 1, label %src.addr6.0.0.013.case.130
    i3 2, label %src.addr6.0.0.013.case.231
    i3 3, label %src.addr6.0.0.013.case.332
    i3 -4, label %src.addr6.0.0.013.case.433
  ]

src.addr6.0.0.013.case.029:                       ; preds = %src.addr6.0.0.013.case.2
  %20 = load i16, i16* %_2_0, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.130:                       ; preds = %src.addr6.0.0.013.case.2
  %21 = load i16, i16* %_2_1, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.231:                       ; preds = %src.addr6.0.0.013.case.2
  %22 = load i16, i16* %_2_2, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.332:                       ; preds = %src.addr6.0.0.013.case.2
  %23 = load i16, i16* %_2_3, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.433:                       ; preds = %src.addr6.0.0.013.case.2
  %24 = load i16, i16* %_2_4, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.534:                       ; preds = %src.addr6.0.0.013.case.2
  %25 = icmp eq i3 %5, -3
  call void @llvm.assume(i1 %25)
  %26 = load i16, i16* %_2_5, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.3:                         ; preds = %for.loop2
  switch i3 %5, label %src.addr6.0.0.013.case.548 [
    i3 0, label %src.addr6.0.0.013.case.043
    i3 1, label %src.addr6.0.0.013.case.144
    i3 2, label %src.addr6.0.0.013.case.245
    i3 3, label %src.addr6.0.0.013.case.346
    i3 -4, label %src.addr6.0.0.013.case.447
  ]

src.addr6.0.0.013.case.043:                       ; preds = %src.addr6.0.0.013.case.3
  %27 = load i16, i16* %_3_0, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.144:                       ; preds = %src.addr6.0.0.013.case.3
  %28 = load i16, i16* %_3_1, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.245:                       ; preds = %src.addr6.0.0.013.case.3
  %29 = load i16, i16* %_3_2, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.346:                       ; preds = %src.addr6.0.0.013.case.3
  %30 = load i16, i16* %_3_3, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.447:                       ; preds = %src.addr6.0.0.013.case.3
  %31 = load i16, i16* %_3_4, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.548:                       ; preds = %src.addr6.0.0.013.case.3
  %32 = icmp eq i3 %5, -3
  call void @llvm.assume(i1 %32)
  %33 = load i16, i16* %_3_5, align 512
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.exit:                           ; preds = %src.addr6.0.0.013.case.548, %src.addr6.0.0.013.case.447, %src.addr6.0.0.013.case.346, %src.addr6.0.0.013.case.245, %src.addr6.0.0.013.case.144, %src.addr6.0.0.013.case.043, %src.addr6.0.0.013.case.534, %src.addr6.0.0.013.case.433, %src.addr6.0.0.013.case.332, %src.addr6.0.0.013.case.231, %src.addr6.0.0.013.case.130, %src.addr6.0.0.013.case.029, %src.addr6.0.0.013.case.520, %src.addr6.0.0.013.case.419, %src.addr6.0.0.013.case.318, %src.addr6.0.0.013.case.217, %src.addr6.0.0.013.case.116, %src.addr6.0.0.013.case.015, %src.addr6.0.0.013.case.5, %src.addr6.0.0.013.case.4, %src.addr6.0.0.013.case.36, %src.addr6.0.0.013.case.25, %src.addr6.0.0.013.case.14, %src.addr6.0.0.013.case.03
  %34 = phi i16 [ %6, %src.addr6.0.0.013.case.03 ], [ %7, %src.addr6.0.0.013.case.14 ], [ %8, %src.addr6.0.0.013.case.25 ], [ %9, %src.addr6.0.0.013.case.36 ], [ %10, %src.addr6.0.0.013.case.4 ], [ %12, %src.addr6.0.0.013.case.5 ], [ %13, %src.addr6.0.0.013.case.015 ], [ %14, %src.addr6.0.0.013.case.116 ], [ %15, %src.addr6.0.0.013.case.217 ], [ %16, %src.addr6.0.0.013.case.318 ], [ %17, %src.addr6.0.0.013.case.419 ], [ %19, %src.addr6.0.0.013.case.520 ], [ %20, %src.addr6.0.0.013.case.029 ], [ %21, %src.addr6.0.0.013.case.130 ], [ %22, %src.addr6.0.0.013.case.231 ], [ %23, %src.addr6.0.0.013.case.332 ], [ %24, %src.addr6.0.0.013.case.433 ], [ %26, %src.addr6.0.0.013.case.534 ], [ %27, %src.addr6.0.0.013.case.043 ], [ %28, %src.addr6.0.0.013.case.144 ], [ %29, %src.addr6.0.0.013.case.245 ], [ %30, %src.addr6.0.0.013.case.346 ], [ %31, %src.addr6.0.0.013.case.447 ], [ %33, %src.addr6.0.0.013.case.548 ]
  store i16 %34, i16* %dst.addr5.0.0.014, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 6
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %src.addr6.0.0.013.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "orig.arg.no"="0", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_3, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "orig.arg.no"="2", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_01, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_12, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_23, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_34, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_5, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_05, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_16, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_27, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_38, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_5, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_09, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_110, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_211, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_312, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_5, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_5, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "orig.arg.no"="4", [3 x [6 x i16]]* noalias readonly align 512 "orig.arg.no"="5") #4 {
entry:
  call void @"onebyonecpy_hls.p0a3a4struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.11.12"([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, i16* align 512 %_0_0, i16* align 512 %_0_1, i16* align 512 %_0_2, i16* align 512 %_0_3, i16* align 512 %_1_0, i16* align 512 %_1_1, i16* align 512 %_1_2, i16* align 512 %_1_3, i16* align 512 %_2_0, i16* align 512 %_2_1, i16* align 512 %_2_2, i16* align 512 %_2_3)
  call void @"onebyonecpy_hls.p0a4a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.13.14"([4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %1, i16* align 512 %_0_01, i16* align 512 %_0_12, i16* align 512 %_0_23, i16* align 512 %_0_34, i16* align 512 %_0_4, i16* align 512 %_0_5, i16* align 512 %_1_05, i16* align 512 %_1_16, i16* align 512 %_1_27, i16* align 512 %_1_38, i16* align 512 %_1_4, i16* align 512 %_1_5, i16* align 512 %_2_09, i16* align 512 %_2_110, i16* align 512 %_2_211, i16* align 512 %_2_312, i16* align 512 %_2_4, i16* align 512 %_2_5, i16* align 512 %_3_0, i16* align 512 %_3_1, i16* align 512 %_3_2, i16* align 512 %_3_3, i16* align 512 %_3_4, i16* align 512 %_3_5)
  call fastcc void @"onebyonecpy_hls.p0a3a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.19"([3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %2, [3 x [6 x i16]]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a3a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.19"([3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias, [3 x [6 x i16]]* noalias readonly align 512) unnamed_addr #1 {
entry:
  %2 = icmp eq [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, null
  %3 = icmp eq [3 x [6 x i16]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %5 = getelementptr [3 x [6 x i16]], [3 x [6 x i16]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315
  %dst.addr5.0.0.014 = getelementptr [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]], [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* %dst.addr5.0.0.014, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 6
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

declare void @apatb_mmul_hw(i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, [6 x i16]*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "orig.arg.no"="0", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2_3, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "orig.arg.no"="2", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_01, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_12, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_23, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_34, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0_5, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_05, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_16, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_27, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_38, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1_5, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_09, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_110, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_211, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_312, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2_5, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3_5, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "orig.arg.no"="4", [3 x [6 x i16]]* noalias readonly align 512 "orig.arg.no"="5") #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a3a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.19"([3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %2, [3 x [6 x i16]]* align 512 %3)
  ret void
}

define void @mmul_hw_stub_wrapper(i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, [6 x i16]*) #5 {
entry:
  %37 = alloca [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]
  %38 = alloca [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]
  %39 = alloca [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]
  %40 = bitcast [6 x i16]* %36 to [3 x [6 x i16]]*
  call void @copy_out([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %37, i16* %0, i16* %1, i16* %2, i16* %3, i16* %4, i16* %5, i16* %6, i16* %7, i16* %8, i16* %9, i16* %10, i16* %11, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %38, i16* %12, i16* %13, i16* %14, i16* %15, i16* %16, i16* %17, i16* %18, i16* %19, i16* %20, i16* %21, i16* %22, i16* %23, i16* %24, i16* %25, i16* %26, i16* %27, i16* %28, i16* %29, i16* %30, i16* %31, i16* %32, i16* %33, i16* %34, i16* %35, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %39, [3 x [6 x i16]]* %40)
  %41 = bitcast [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %37 to [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*
  %42 = bitcast [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %38 to [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*
  %43 = bitcast [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %39 to [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*
  call void @mmul_hw_stub([4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %41, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %42, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %43)
  call void @copy_in([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %37, i16* %0, i16* %1, i16* %2, i16* %3, i16* %4, i16* %5, i16* %6, i16* %7, i16* %8, i16* %9, i16* %10, i16* %11, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %38, i16* %12, i16* %13, i16* %14, i16* %15, i16* %16, i16* %17, i16* %18, i16* %19, i16* %20, i16* %21, i16* %22, i16* %23, i16* %24, i16* %25, i16* %26, i16* %27, i16* %28, i16* %29, i16* %30, i16* %31, i16* %32, i16* %33, i16* %34, i16* %35, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %39, [3 x [6 x i16]]* %40)
  ret void
}

declare void @mmul_hw_stub([4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
