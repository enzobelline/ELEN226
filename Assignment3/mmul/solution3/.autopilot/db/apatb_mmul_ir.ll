; ModuleID = 'Z:/ECC/Desktop/Winter2023/ELEN226/Assignment3/mmul/solution3/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 16, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 16, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_mmul_ir([4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" %a, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4" %b, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="3" %c) local_unnamed_addr #1 {
entry:
  %a_copy_0 = alloca [4 x i16], align 512
  %a_copy_1 = alloca [4 x i16], align 512
  %a_copy_2 = alloca [4 x i16], align 512
  %a_copy_3 = alloca [4 x i16], align 512
  %b_copy_0 = alloca [6 x i16], align 512
  %b_copy_1 = alloca [6 x i16], align 512
  %b_copy_2 = alloca [6 x i16], align 512
  %b_copy_3 = alloca [6 x i16], align 512
  %c_copy = alloca [3 x [6 x i16]], align 512
  %0 = bitcast [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %a to [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]*
  %1 = bitcast [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %b to [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]*
  %2 = bitcast [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %c to [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]*
  call void @copy_in([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* nonnull %0, [4 x i16]* nonnull align 512 %a_copy_0, [4 x i16]* nonnull align 512 %a_copy_1, [4 x i16]* nonnull align 512 %a_copy_2, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* nonnull %1, [6 x i16]* nonnull align 512 %b_copy_0, [6 x i16]* nonnull align 512 %b_copy_1, [6 x i16]* nonnull align 512 %b_copy_2, [6 x i16]* nonnull align 512 %b_copy_3, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* nonnull %2, [3 x [6 x i16]]* nonnull align 512 %c_copy)
  %3 = getelementptr [3 x [6 x i16]], [3 x [6 x i16]]* %c_copy, i32 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([4 x i16]* %a_copy_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([4 x i16]* %a_copy_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([4 x i16]* %a_copy_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([4 x i16]* %a_copy_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([6 x i16]* %b_copy_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5540
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([6 x i16]* %b_copy_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5540
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([6 x i16]* %b_copy_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !5540
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"([6 x i16]* %b_copy_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5540
  call void @apatb_mmul_hw([4 x i16]* %a_copy_0, [4 x i16]* %a_copy_1, [4 x i16]* %a_copy_2, [4 x i16]* %a_copy_3, [6 x i16]* %b_copy_0, [6 x i16]* %b_copy_1, [6 x i16]* %b_copy_2, [6 x i16]* %b_copy_3, [6 x i16]* %3)
  call void @copy_back([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, [4 x i16]* %a_copy_0, [4 x i16]* %a_copy_1, [4 x i16]* %a_copy_2, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %1, [6 x i16]* %b_copy_0, [6 x i16]* %b_copy_1, [6 x i16]* %b_copy_2, [6 x i16]* %b_copy_3, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %2, [3 x [6 x i16]]* %c_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a3a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"([3 x [6 x i16]]* noalias align 512, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly) unnamed_addr #2 {
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
declare void @llvm.assume(i1) #3

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a3a4struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.3.4"([4 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [4 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [4 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [4 x i16]* %_0, null
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
  %6 = getelementptr [4 x i16], [4 x i16]* %_0, i64 0, i64 %for.loop.idx315
  %7 = getelementptr [4 x i16], [4 x i16]* %_1, i64 0, i64 %for.loop.idx315
  %8 = getelementptr [4 x i16], [4 x i16]* %_2, i64 0, i64 %for.loop.idx315
  %9 = load i16, i16* %src.addr6.0.0.013, align 2
  switch i2 %4, label %dst.addr5.0.0.014.case.2 [
    i2 0, label %dst.addr5.0.0.014.case.0
    i2 1, label %dst.addr5.0.0.014.case.1
  ]

dst.addr5.0.0.014.case.0:                         ; preds = %for.loop2
  store i16 %9, i16* %6, align 2
  br label %dst.addr5.0.0.014.exit

dst.addr5.0.0.014.case.1:                         ; preds = %for.loop2
  store i16 %9, i16* %7, align 2
  br label %dst.addr5.0.0.014.exit

dst.addr5.0.0.014.case.2:                         ; preds = %for.loop2
  call void @llvm.assume(i1 %5)
  store i16 %9, i16* %8, align 2
  br label %dst.addr5.0.0.014.exit

dst.addr5.0.0.014.exit:                           ; preds = %dst.addr5.0.0.014.case.2, %dst.addr5.0.0.014.case.1, %dst.addr5.0.0.014.case.0
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
define internal void @"onebyonecpy_hls.p0a4a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.5.6"([6 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [6 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [6 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [6 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [6 x i16]* %_0, null
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
  %5 = getelementptr [6 x i16], [6 x i16]* %_0, i64 0, i64 %for.loop.idx315
  %6 = getelementptr [6 x i16], [6 x i16]* %_1, i64 0, i64 %for.loop.idx315
  %7 = getelementptr [6 x i16], [6 x i16]* %_2, i64 0, i64 %for.loop.idx315
  %8 = getelementptr [6 x i16], [6 x i16]* %_3, i64 0, i64 %for.loop.idx315
  %9 = load i16, i16* %src.addr6.0.0.013, align 2
  switch i2 %4, label %dst.addr5.0.0.014.case.3 [
    i2 0, label %dst.addr5.0.0.014.case.0
    i2 1, label %dst.addr5.0.0.014.case.1
    i2 -2, label %dst.addr5.0.0.014.case.2
  ]

dst.addr5.0.0.014.case.0:                         ; preds = %for.loop2
  store i16 %9, i16* %5, align 2
  br label %dst.addr5.0.0.014.exit

dst.addr5.0.0.014.case.1:                         ; preds = %for.loop2
  store i16 %9, i16* %6, align 2
  br label %dst.addr5.0.0.014.exit

dst.addr5.0.0.014.case.2:                         ; preds = %for.loop2
  store i16 %9, i16* %7, align 2
  br label %dst.addr5.0.0.014.exit

dst.addr5.0.0.014.case.3:                         ; preds = %for.loop2
  store i16 %9, i16* %8, align 2
  br label %dst.addr5.0.0.014.exit

dst.addr5.0.0.014.exit:                           ; preds = %dst.addr5.0.0.014.case.3, %dst.addr5.0.0.014.case.2, %dst.addr5.0.0.014.case.1, %dst.addr5.0.0.014.case.0
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
define internal void @copy_in([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "orig.arg.no"="0", [4 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [4 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [4 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "orig.arg.no"="2", [6 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [6 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [6 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [6 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "orig.arg.no"="4", [3 x [6 x i16]]* noalias align 512 "orig.arg.no"="5") #4 {
entry:
  call void @"onebyonecpy_hls.p0a3a4struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.3.4"([4 x i16]* align 512 %_0, [4 x i16]* align 512 %_1, [4 x i16]* align 512 %_2, [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0)
  call void @"onebyonecpy_hls.p0a4a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.5.6"([6 x i16]* align 512 %_01, [6 x i16]* align 512 %_12, [6 x i16]* align 512 %_23, [6 x i16]* align 512 %_34, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %1)
  call fastcc void @"onebyonecpy_hls.p0a3a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"([3 x [6 x i16]]* align 512 %3, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a3a4struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.11.12"([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [4 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [4 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [4 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2) #2 {
entry:
  %1 = icmp eq [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, null
  %2 = icmp eq [4 x i16]* %_0, null
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
  %6 = getelementptr [4 x i16], [4 x i16]* %_0, i64 0, i64 %for.loop.idx315
  %7 = getelementptr [4 x i16], [4 x i16]* %_1, i64 0, i64 %for.loop.idx315
  %8 = getelementptr [4 x i16], [4 x i16]* %_2, i64 0, i64 %for.loop.idx315
  %dst.addr5.0.0.014 = getelementptr [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]], [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  switch i2 %4, label %src.addr6.0.0.013.case.2 [
    i2 0, label %src.addr6.0.0.013.case.0
    i2 1, label %src.addr6.0.0.013.case.1
  ]

src.addr6.0.0.013.case.0:                         ; preds = %for.loop2
  %9 = load i16, i16* %6, align 2
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.1:                         ; preds = %for.loop2
  %10 = load i16, i16* %7, align 2
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.2:                         ; preds = %for.loop2
  call void @llvm.assume(i1 %5)
  %11 = load i16, i16* %8, align 2
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.exit:                           ; preds = %src.addr6.0.0.013.case.2, %src.addr6.0.0.013.case.1, %src.addr6.0.0.013.case.0
  %12 = phi i16 [ %9, %src.addr6.0.0.013.case.0 ], [ %10, %src.addr6.0.0.013.case.1 ], [ %11, %src.addr6.0.0.013.case.2 ]
  store i16 %12, i16* %dst.addr5.0.0.014, align 2
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
define internal void @"onebyonecpy_hls.p0a4a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.13.14"([4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [6 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [6 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [6 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [6 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3) #2 {
entry:
  %1 = icmp eq [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, null
  %2 = icmp eq [6 x i16]* %_0, null
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
  %5 = getelementptr [6 x i16], [6 x i16]* %_0, i64 0, i64 %for.loop.idx315
  %6 = getelementptr [6 x i16], [6 x i16]* %_1, i64 0, i64 %for.loop.idx315
  %7 = getelementptr [6 x i16], [6 x i16]* %_2, i64 0, i64 %for.loop.idx315
  %8 = getelementptr [6 x i16], [6 x i16]* %_3, i64 0, i64 %for.loop.idx315
  %dst.addr5.0.0.014 = getelementptr [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]], [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  switch i2 %4, label %src.addr6.0.0.013.case.3 [
    i2 0, label %src.addr6.0.0.013.case.0
    i2 1, label %src.addr6.0.0.013.case.1
    i2 -2, label %src.addr6.0.0.013.case.2
  ]

src.addr6.0.0.013.case.0:                         ; preds = %for.loop2
  %9 = load i16, i16* %5, align 2
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.1:                         ; preds = %for.loop2
  %10 = load i16, i16* %6, align 2
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.2:                         ; preds = %for.loop2
  %11 = load i16, i16* %7, align 2
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.case.3:                         ; preds = %for.loop2
  %12 = load i16, i16* %8, align 2
  br label %src.addr6.0.0.013.exit

src.addr6.0.0.013.exit:                           ; preds = %src.addr6.0.0.013.case.3, %src.addr6.0.0.013.case.2, %src.addr6.0.0.013.case.1, %src.addr6.0.0.013.case.0
  %13 = phi i16 [ %9, %src.addr6.0.0.013.case.0 ], [ %10, %src.addr6.0.0.013.case.1 ], [ %11, %src.addr6.0.0.013.case.2 ], [ %12, %src.addr6.0.0.013.case.3 ]
  store i16 %13, i16* %dst.addr5.0.0.014, align 2
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
define internal void @copy_out([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "orig.arg.no"="0", [4 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [4 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [4 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "orig.arg.no"="2", [6 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [6 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [6 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [6 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "orig.arg.no"="4", [3 x [6 x i16]]* noalias readonly align 512 "orig.arg.no"="5") #5 {
entry:
  call void @"onebyonecpy_hls.p0a3a4struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.11.12"([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, [4 x i16]* align 512 %_0, [4 x i16]* align 512 %_1, [4 x i16]* align 512 %_2)
  call void @"onebyonecpy_hls.p0a4a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.13.14"([4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %1, [6 x i16]* align 512 %_01, [6 x i16]* align 512 %_12, [6 x i16]* align 512 %_23, [6 x i16]* align 512 %_34)
  call fastcc void @"onebyonecpy_hls.p0a3a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.19"([3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %2, [3 x [6 x i16]]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a3a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.19"([3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias, [3 x [6 x i16]]* noalias readonly align 512) unnamed_addr #2 {
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

declare void @apatb_mmul_hw([4 x i16]*, [4 x i16]*, [4 x i16]*, [4 x i16]*, [6 x i16]*, [6 x i16]*, [6 x i16]*, [6 x i16]*, [6 x i16]*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "orig.arg.no"="0", [4 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [4 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [4 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "orig.arg.no"="2", [6 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [6 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [6 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [6 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "orig.arg.no"="4", [3 x [6 x i16]]* noalias readonly align 512 "orig.arg.no"="5") #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a3a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.19"([3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %2, [3 x [6 x i16]]* align 512 %3)
  ret void
}

define void @mmul_hw_stub_wrapper([4 x i16]*, [4 x i16]*, [4 x i16]*, [4 x i16]*, [6 x i16]*, [6 x i16]*, [6 x i16]*, [6 x i16]*, [6 x i16]*) #6 {
entry:
  %9 = alloca [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]
  %10 = alloca [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]
  %11 = alloca [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]
  %12 = bitcast [6 x i16]* %8 to [3 x [6 x i16]]*
  call void @copy_out([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %9, [4 x i16]* %0, [4 x i16]* %1, [4 x i16]* %2, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %10, [6 x i16]* %4, [6 x i16]* %5, [6 x i16]* %6, [6 x i16]* %7, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %11, [3 x [6 x i16]]* %12)
  %13 = bitcast [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %9 to [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*
  %14 = bitcast [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %10 to [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*
  %15 = bitcast [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %11 to [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*
  call void @mmul_hw_stub([4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %13, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %14, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %15)
  call void @copy_in([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %9, [4 x i16]* %0, [4 x i16]* %1, [4 x i16]* %2, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %10, [6 x i16]* %4, [6 x i16]* %5, [6 x i16]* %6, [6 x i16]* %7, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %11, [3 x [6 x i16]]* %12)
  ret void
}

declare void @mmul_hw_stub([4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !DILocation(line: 8, column: 9, scope: !6)
!6 = !DILexicalBlockFile(scope: !8, file: !7, discriminator: 0)
!7 = !DIFile(filename: "Z:/ECC/Desktop/Winter2023/ELEN226/Assignment3/mmul/solution3/directives.tcl", directory: "Z:\5CECC\5CDesktop\5CWinter2023\5CELEN226\5CAssignment3")
!8 = distinct !DISubprogram(name: "mmul", linkageName: "_Z4mmulPA4_8ap_fixedILi16ELi16EL9ap_q_mode5EL9ap_o_mode3ELi0EEPA6_S2_S6_", scope: !9, file: !9, line: 3, type: !10, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !5535, variables: !4)
!9 = !DIFile(filename: "mmul.cpp", directory: "Z:\5CECC\5CDesktop\5CWinter2023\5CELEN226\5CAssignment3")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !5531, !5531}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !5529)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "MM_DATA_T", file: !15, line: 24, baseType: !16)
!15 = !DIFile(filename: "./mmul.h", directory: "Z:\5CECC\5CDesktop\5CWinter2023\5CELEN226\5CAssignment3")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>", file: !17, line: 64, size: 16, flags: DIFlagTypePassByValue, elements: !18, templateParams: !5528, identifier: "_ZTS8ap_fixedILi16ELi16EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!17 = !DIFile(filename: "C:/Apps/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\5Cap_fixed.h", directory: "Z:\5CECC\5CDesktop\5CWinter2023\5CELEN226\5CAssignment3")
!18 = !{!19, !5451, !5455, !5458, !5461, !5464, !5467, !5470, !5473, !5476, !5479, !5482, !5485, !5488, !5491, !5494, !5497, !5500, !5503, !5506, !5509, !5515, !5520, !5525}
!19 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !16, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed_base<16, 16, true, AP_TRN, AP_WRAP, 0>", file: !21, line: 156, size: 16, flags: DIFlagTypePassByValue, elements: !22, templateParams: !4757, identifier: "_ZTS13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!21 = !DIFile(filename: "C:/Apps/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\5Cap_fixed_base.h", directory: "Z:\5CECC\5CDesktop\5CWinter2023\5CELEN226\5CAssignment3")
!22 = !{!23, !41, !43, !44, !56, !65, !69, !72, !75, !80, !81, !87, !91, !95, !98, !102, !107, !111, !116, !119, !124, !129, !134, !140, !146, !150, !154, !159, !163, !166, !169, !1767, !1770, !1771, !1774, !1777, !1780, !1783, !1786, !1789, !1792, !1796, !1797, !1798, !1799, !1802, !1803, !1806, !1809, !1812, !1815, !1816, !1817, !1820, !1823, !1824, !1825, !1826, !1827, !1830, !1831, !1834, !1835, !1842, !4683, !4686, !4687, !4690, !4693, !4694, !4697, !4698, !4701, !4704, !4705, !4706, !4709, !4710, !4711, !4712, !4713, !4714, !4759, !4762, !4763, !4764, !4767, !5426, !5429, !5432, !5435, !5436, !5437, !5438, !5439, !5440, !5441, !5444, !5447, !5448}
!23 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !20, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<16, true>", file: !25, line: 555, size: 16, flags: DIFlagTypePassByValue, elements: !26, templateParams: !36, identifier: "_ZTS8ssdm_intILi16ELb1EE")
!25 = !DIFile(filename: "C:/Apps/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\5Cap_common.h", directory: "Z:\5CECC\5CDesktop\5CWinter2023\5CELEN226\5CAssignment3")
!26 = !{!27, !29, !33}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !24, file: !25, line: 557, baseType: !28, size: 16)
!28 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!29 = !DISubprogram(name: "ssdm_int", scope: !24, file: !25, line: 558, type: !30, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!33 = !DISubprogram(name: "ssdm_int", scope: !24, file: !25, line: 559, type: !34, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !32, !28}
!36 = !{!37, !39}
!37 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 16)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DITemplateValueParameter(name: "_AP_S", type: !40, value: i8 1)
!40 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !20, file: !21, line: 159, baseType: !42, flags: DIFlagStaticMember, extraData: i32 16)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "iwidth", scope: !20, file: !21, line: 160, baseType: !42, flags: DIFlagStaticMember, extraData: i32 16)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "qmode", scope: !20, file: !21, line: 161, baseType: !45, flags: DIFlagStaticMember, extraData: i32 5)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "ap_q_mode", file: !47, line: 100, size: 32, elements: !48, identifier: "_ZTS9ap_q_mode")
!47 = !DIFile(filename: "C:/Apps/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\5Cap_decl.h", directory: "Z:\5CECC\5CDesktop\5CWinter2023\5CELEN226\5CAssignment3")
!48 = !{!49, !50, !51, !52, !53, !54, !55}
!49 = !DIEnumerator(name: "AP_RND", value: 0)
!50 = !DIEnumerator(name: "AP_RND_ZERO", value: 1)
!51 = !DIEnumerator(name: "AP_RND_MIN_INF", value: 2)
!52 = !DIEnumerator(name: "AP_RND_INF", value: 3)
!53 = !DIEnumerator(name: "AP_RND_CONV", value: 4)
!54 = !DIEnumerator(name: "AP_TRN", value: 5)
!55 = !DIEnumerator(name: "AP_TRN_ZERO", value: 6)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "omode", scope: !20, file: !21, line: 162, baseType: !57, flags: DIFlagStaticMember, extraData: i32 3)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "ap_o_mode", file: !47, line: 122, size: 32, elements: !59, identifier: "_ZTS9ap_o_mode")
!59 = !{!60, !61, !62, !63, !64}
!60 = !DIEnumerator(name: "AP_SAT", value: 0)
!61 = !DIEnumerator(name: "AP_SAT_ZERO", value: 1)
!62 = !DIEnumerator(name: "AP_SAT_SYM", value: 2)
!63 = !DIEnumerator(name: "AP_WRAP", value: 3)
!64 = !DIEnumerator(name: "AP_WRAP_SM", value: 4)
!65 = !DISubprogram(name: "report", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6reportEv", scope: !20, file: !21, line: 341, type: !66, isLocal: false, isDefinition: false, scopeLine: 341, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!69 = !DISubprogram(name: "overflow_adjust", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", scope: !20, file: !21, line: 346, type: !70, isLocal: false, isDefinition: false, scopeLine: 346, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !68, !40, !40, !40, !40}
!72 = !DISubprogram(name: "quantization_adjust", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", scope: !20, file: !21, line: 410, type: !73, isLocal: false, isDefinition: false, scopeLine: 410, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!73 = !DISubroutineType(types: !74)
!74 = !{!40, !68, !40, !40, !40}
!75 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE16countLeadingOnesEv", scope: !20, file: !21, line: 428, type: !76, isLocal: false, isDefinition: false, scopeLine: 428, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!76 = !DISubroutineType(types: !77)
!77 = !{!38, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!80 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 441, type: !66, isLocal: false, isDefinition: false, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: false)
!81 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 502, type: !82, isLocal: false, isDefinition: false, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: false)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !68, !84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!87 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 508, type: !88, isLocal: false, isDefinition: false, scopeLine: 508, flags: DIFlagPrototyped, isOptimized: false)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !68, !84, !90}
!90 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!91 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 570, type: !92, isLocal: false, isDefinition: false, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: false)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !68, !94}
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!95 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 571, type: !96, isLocal: false, isDefinition: false, scopeLine: 571, flags: DIFlagPrototyped, isOptimized: false)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !68, !85}
!98 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 572, type: !99, isLocal: false, isDefinition: false, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !68, !101}
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!102 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 573, type: !103, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: false)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !68, !105}
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!107 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 574, type: !108, isLocal: false, isDefinition: false, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: false)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !68, !110}
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!111 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 575, type: !112, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: false)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !68, !114}
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!116 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 576, type: !117, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: false)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !68, !42}
!119 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 577, type: !120, isLocal: false, isDefinition: false, scopeLine: 577, flags: DIFlagPrototyped, isOptimized: false)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !68, !122}
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!124 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 578, type: !125, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !68, !127}
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!129 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 579, type: !130, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: false)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !68, !132}
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!134 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 580, type: !135, isLocal: false, isDefinition: false, scopeLine: 580, flags: DIFlagPrototyped, isOptimized: false)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !68, !137}
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slong", file: !47, line: 233, baseType: !139)
!139 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!140 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 581, type: !141, isLocal: false, isDefinition: false, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: false)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !68, !143}
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_ulong", file: !47, line: 234, baseType: !145)
!145 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!146 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 589, type: !147, isLocal: false, isDefinition: false, scopeLine: 589, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !68, !149}
!149 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!150 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 707, type: !151, isLocal: false, isDefinition: false, scopeLine: 707, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !68, !153}
!153 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!154 = !DISubprogram(name: "ap_fixed_base", scope: !20, file: !21, line: 710, type: !155, isLocal: false, isDefinition: false, scopeLine: 710, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !68, !157}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !25, line: 657, baseType: !158)
!158 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!159 = !DISubprogram(name: "setBits", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", scope: !20, file: !21, line: 963, type: !160, isLocal: false, isDefinition: false, scopeLine: 963, flags: DIFlagPrototyped, isOptimized: false)
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !68, !144}
!162 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !20, size: 64)
!163 = !DISubprogram(name: "bitsToFixed", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", scope: !20, file: !21, line: 970, type: !164, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!164 = !DISubroutineType(types: !165)
!165 = !{!20, !144}
!166 = !DISubprogram(name: "checkOverflowCsimFix", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE20checkOverflowCsimFixEib", scope: !20, file: !21, line: 981, type: !167, isLocal: false, isDefinition: false, scopeLine: 981, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !78, !38, !40}
!169 = !DISubprogram(name: "to_ap_int_base", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", scope: !20, file: !21, line: 1027, type: !170, isLocal: false, isDefinition: false, scopeLine: 1027, flags: DIFlagPrototyped, isOptimized: false)
!170 = !DISubroutineType(types: !171)
!171 = !{!172, !78, !40}
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<16, true>", file: !173, line: 154, size: 16, flags: DIFlagTypePassByValue, elements: !174, templateParams: !1753, identifier: "_ZTS11ap_int_baseILi16ELb1EE")
!173 = !DIFile(filename: "C:/Apps/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\5Cap_int_base.h", directory: "Z:\5CECC\5CDesktop\5CWinter2023\5CELEN226\5CAssignment3")
!174 = !{!175, !176, !177, !178, !183, !187, !190, !193, !196, !199, !202, !205, !208, !211, !214, !217, !220, !223, !226, !229, !232, !235, !238, !243, !247, !252, !253, !257, !260, !263, !266, !269, !272, !275, !278, !281, !284, !287, !290, !293, !296, !304, !307, !310, !313, !316, !319, !322, !323, !326, !329, !332, !335, !338, !341, !344, !347, !351, !352, !353, !354, !355, !358, !359, !362, !365, !366, !369, !370, !371, !372, !373, !374, !375, !378, !379, !380, !479, !480, !483, !1647, !1648, !1649, !1653, !1656, !1659, !1662, !1663, !1664, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764}
!175 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !172, baseType: !24)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !172, file: !173, line: 176, baseType: !42, flags: DIFlagStaticMember, extraData: i32 16)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !172, file: !173, line: 177, baseType: !94, flags: DIFlagStaticMember, extraData: i1 true)
!178 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi16ELb1EE16countLeadingOnesEv", scope: !172, file: !173, line: 156, type: !179, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!179 = !DISubroutineType(types: !180)
!180 = !{!38, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!183 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 221, type: !184, isLocal: false, isDefinition: false, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !186}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!187 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 254, type: !188, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !186, !94}
!190 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 255, type: !191, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !186, !85}
!193 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 256, type: !194, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !186, !101}
!196 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 257, type: !197, isLocal: false, isDefinition: false, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !186, !105}
!199 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 258, type: !200, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !186, !110}
!202 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 259, type: !203, isLocal: false, isDefinition: false, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !186, !114}
!205 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 260, type: !206, isLocal: false, isDefinition: false, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !186, !42}
!208 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 261, type: !209, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !186, !122}
!211 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 262, type: !212, isLocal: false, isDefinition: false, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !186, !127}
!214 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 263, type: !215, isLocal: false, isDefinition: false, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !186, !132}
!217 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 264, type: !218, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !186, !137}
!220 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 265, type: !221, isLocal: false, isDefinition: false, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !186, !143}
!223 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 270, type: !224, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !186, !157}
!226 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 276, type: !227, isLocal: false, isDefinition: false, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !186, !153}
!229 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 335, type: !230, isLocal: false, isDefinition: false, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !186, !149}
!232 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 431, type: !233, isLocal: false, isDefinition: false, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !186, !84}
!235 = !DISubprogram(name: "ap_int_base", scope: !172, file: !173, line: 437, type: !236, isLocal: false, isDefinition: false, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !186, !84, !90}
!238 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi16ELb1EE4readEv", scope: !172, file: !173, line: 459, type: !239, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DISubroutineType(types: !240)
!240 = !{!172, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!242 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !172)
!243 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi16ELb1EE5writeERKS0_", scope: !172, file: !173, line: 466, type: !244, isLocal: false, isDefinition: false, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: false)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !241, !246}
!246 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !182, size: 64)
!247 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi16ELb1EEaSERVKS0_", scope: !172, file: !173, line: 478, type: !248, isLocal: false, isDefinition: false, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !241, !250}
!250 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!252 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi16ELb1EEaSERKS0_", scope: !172, file: !173, line: 488, type: !244, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!253 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSERVKS0_", scope: !172, file: !173, line: 505, type: !254, isLocal: false, isDefinition: false, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !186, !250}
!256 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !172, size: 64)
!257 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSERKS0_", scope: !172, file: !173, line: 511, type: !258, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false)
!258 = !DISubroutineType(types: !259)
!259 = !{!256, !186, !246}
!260 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEb", scope: !172, file: !173, line: 525, type: !261, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!261 = !DISubroutineType(types: !262)
!262 = !{!256, !186, !40}
!263 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEc", scope: !172, file: !173, line: 526, type: !264, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DISubroutineType(types: !265)
!265 = !{!256, !186, !86}
!266 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEa", scope: !172, file: !173, line: 527, type: !267, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DISubroutineType(types: !268)
!268 = !{!256, !186, !90}
!269 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEh", scope: !172, file: !173, line: 528, type: !270, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!270 = !DISubroutineType(types: !271)
!271 = !{!256, !186, !106}
!272 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEs", scope: !172, file: !173, line: 529, type: !273, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DISubroutineType(types: !274)
!274 = !{!256, !186, !28}
!275 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEt", scope: !172, file: !173, line: 530, type: !276, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!276 = !DISubroutineType(types: !277)
!277 = !{!256, !186, !115}
!278 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEi", scope: !172, file: !173, line: 531, type: !279, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!279 = !DISubroutineType(types: !280)
!280 = !{!256, !186, !38}
!281 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEj", scope: !172, file: !173, line: 532, type: !282, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!282 = !DISubroutineType(types: !283)
!283 = !{!256, !186, !123}
!284 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEl", scope: !172, file: !173, line: 533, type: !285, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!285 = !DISubroutineType(types: !286)
!286 = !{!256, !186, !128}
!287 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEm", scope: !172, file: !173, line: 534, type: !288, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DISubroutineType(types: !289)
!289 = !{!256, !186, !133}
!290 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEx", scope: !172, file: !173, line: 535, type: !291, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DISubroutineType(types: !292)
!292 = !{!256, !186, !138}
!293 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb1EEaSEy", scope: !172, file: !173, line: 536, type: !294, isLocal: false, isDefinition: false, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DISubroutineType(types: !295)
!295 = !{!256, !186, !144}
!296 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi16ELb1EEcvxEv", scope: !172, file: !173, line: 587, type: !297, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false)
!297 = !DISubroutineType(types: !298)
!298 = !{!299, !181}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !172, file: !173, line: 174, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !301, file: !173, line: 92, baseType: !138)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, true>", file: !173, line: 91, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !302, identifier: "_ZTS6retvalILi8ELb1EE")
!302 = !{!303, !39}
!303 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 8)
!304 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi16ELb1EE7to_boolEv", scope: !172, file: !173, line: 592, type: !305, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false)
!305 = !DISubroutineType(types: !306)
!306 = !{!40, !181}
!307 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi16ELb1EE7to_charEv", scope: !172, file: !173, line: 593, type: !308, isLocal: false, isDefinition: false, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: false)
!308 = !DISubroutineType(types: !309)
!309 = !{!86, !181}
!310 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi16ELb1EE8to_scharEv", scope: !172, file: !173, line: 594, type: !311, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!311 = !DISubroutineType(types: !312)
!312 = !{!90, !181}
!313 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi16ELb1EE8to_ucharEv", scope: !172, file: !173, line: 595, type: !314, isLocal: false, isDefinition: false, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DISubroutineType(types: !315)
!315 = !{!106, !181}
!316 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi16ELb1EE8to_shortEv", scope: !172, file: !173, line: 596, type: !317, isLocal: false, isDefinition: false, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: false)
!317 = !DISubroutineType(types: !318)
!318 = !{!28, !181}
!319 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi16ELb1EE9to_ushortEv", scope: !172, file: !173, line: 597, type: !320, isLocal: false, isDefinition: false, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false)
!320 = !DISubroutineType(types: !321)
!321 = !{!115, !181}
!322 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi16ELb1EE6to_intEv", scope: !172, file: !173, line: 598, type: !179, isLocal: false, isDefinition: false, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false)
!323 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi16ELb1EE7to_uintEv", scope: !172, file: !173, line: 599, type: !324, isLocal: false, isDefinition: false, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false)
!324 = !DISubroutineType(types: !325)
!325 = !{!123, !181}
!326 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi16ELb1EE7to_longEv", scope: !172, file: !173, line: 600, type: !327, isLocal: false, isDefinition: false, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false)
!327 = !DISubroutineType(types: !328)
!328 = !{!128, !181}
!329 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi16ELb1EE8to_ulongEv", scope: !172, file: !173, line: 601, type: !330, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!330 = !DISubroutineType(types: !331)
!331 = !{!133, !181}
!332 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi16ELb1EE8to_int64Ev", scope: !172, file: !173, line: 602, type: !333, isLocal: false, isDefinition: false, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false)
!333 = !DISubroutineType(types: !334)
!334 = !{!138, !181}
!335 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi16ELb1EE9to_uint64Ev", scope: !172, file: !173, line: 603, type: !336, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!336 = !DISubroutineType(types: !337)
!337 = !{!144, !181}
!338 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi16ELb1EE7to_halfEv", scope: !172, file: !173, line: 604, type: !339, isLocal: false, isDefinition: false, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: false)
!339 = !DISubroutineType(types: !340)
!340 = !{!157, !181}
!341 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi16ELb1EE8to_floatEv", scope: !172, file: !173, line: 605, type: !342, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false)
!342 = !DISubroutineType(types: !343)
!343 = !{!153, !181}
!344 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi16ELb1EE9to_doubleEv", scope: !172, file: !173, line: 606, type: !345, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false)
!345 = !DISubroutineType(types: !346)
!346 = !{!149, !181}
!347 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi16ELb1EE6lengthEv", scope: !172, file: !173, line: 630, type: !348, isLocal: false, isDefinition: false, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false)
!348 = !DISubroutineType(types: !349)
!349 = !{!38, !350}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!351 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi16ELb1EE6lengthEv", scope: !172, file: !173, line: 631, type: !179, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: false)
!352 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi16ELb1EE6iszeroEv", scope: !172, file: !173, line: 634, type: !305, isLocal: false, isDefinition: false, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false)
!353 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi16ELb1EE7is_zeroEv", scope: !172, file: !173, line: 637, type: !305, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!354 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi16ELb1EE4signEv", scope: !172, file: !173, line: 640, type: !305, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!355 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi16ELb1EE5clearEi", scope: !172, file: !173, line: 649, type: !356, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !186, !38}
!358 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi16ELb1EE6invertEi", scope: !172, file: !173, line: 655, type: !356, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!359 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi16ELb1EE4testEi", scope: !172, file: !173, line: 664, type: !360, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DISubroutineType(types: !361)
!361 = !{!40, !181, !38}
!362 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi16ELb1EE3getEv", scope: !172, file: !173, line: 670, type: !363, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!363 = !DISubroutineType(types: !364)
!364 = !{!256, !186}
!365 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi16ELb1EE3setEi", scope: !172, file: !173, line: 673, type: !356, isLocal: false, isDefinition: false, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: false)
!366 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi16ELb1EE3setEib", scope: !172, file: !173, line: 679, type: !367, isLocal: false, isDefinition: false, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: false)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !186, !38, !40}
!369 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi16ELb1EE7lrotateEi", scope: !172, file: !173, line: 686, type: !279, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!370 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi16ELb1EE7rrotateEi", scope: !172, file: !173, line: 701, type: !279, isLocal: false, isDefinition: false, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false)
!371 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi16ELb1EE7reverseEv", scope: !172, file: !173, line: 716, type: !363, isLocal: false, isDefinition: false, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false)
!372 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi16ELb1EE7set_bitEib", scope: !172, file: !173, line: 722, type: !367, isLocal: false, isDefinition: false, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false)
!373 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi16ELb1EE7get_bitEi", scope: !172, file: !173, line: 727, type: !360, isLocal: false, isDefinition: false, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: false)
!374 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi16ELb1EE5b_notEv", scope: !172, file: !173, line: 732, type: !184, isLocal: false, isDefinition: false, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: false)
!375 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi16ELb1EE17checkOverflowCsimEibb", scope: !172, file: !173, line: 806, type: !376, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!376 = !DISubroutineType(types: !377)
!377 = !{!40, !181, !38, !40, !40}
!378 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi16ELb1EEppEv", scope: !172, file: !173, line: 911, type: !363, isLocal: false, isDefinition: false, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: false)
!379 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi16ELb1EEmmEv", scope: !172, file: !173, line: 915, type: !363, isLocal: false, isDefinition: false, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: false)
!380 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi16ELb1EEppEi", scope: !172, file: !173, line: 923, type: !381, isLocal: false, isDefinition: false, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: false)
!381 = !DISubroutineType(types: !382)
!382 = !{!383, !186, !38}
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !385, file: !173, line: 213, baseType: !389)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<16, true>", scope: !172, file: !173, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !386, identifier: "_ZTSN11ap_int_baseILi16ELb1EE5RTypeILi16ELb1EEE")
!386 = !{!387, !388}
!387 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 16)
!388 = !DITemplateValueParameter(name: "_AP_S2", type: !40, value: i8 1)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !390, file: !173, line: 149, baseType: !391)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<16, true>", file: !173, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !386, identifier: "_ZTS15_ap_int_factoryILi16ELb1EE")
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<16>", file: !392, line: 18, size: 16, flags: DIFlagTypePassByValue, elements: !393, templateParams: !477, identifier: "_ZTS6ap_intILi16EE")
!392 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_int.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!393 = !{!394, !395, !399, !402, !405, !408, !411, !414, !417, !420, !423, !426, !429, !432, !437, !441, !444, !447, !452, !455, !458, !464, !470, !474}
!394 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !391, baseType: !172)
!395 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 21, type: !396, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!399 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 57, type: !400, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !398, !115, !40}
!402 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 127, type: !403, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !398, !40}
!405 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 128, type: !406, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !398, !86}
!408 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 129, type: !409, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !398, !90}
!411 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 130, type: !412, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !398, !106}
!414 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 131, type: !415, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !398, !28}
!417 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 132, type: !418, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !398, !115}
!420 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 133, type: !421, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !398, !38}
!423 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 134, type: !424, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !398, !123}
!426 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 135, type: !427, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !398, !128}
!429 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 136, type: !430, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !398, !133}
!432 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 137, type: !433, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !398, !435}
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slong", file: !436, line: 187, baseType: !139)
!436 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_decl.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!437 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 138, type: !438, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !398, !440}
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_ulong", file: !436, line: 188, baseType: !145)
!441 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 140, type: !442, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !398, !149}
!444 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 141, type: !445, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !398, !153}
!447 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 142, type: !448, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !398, !450}
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !451, line: 611, baseType: !158)
!451 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_common.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!452 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 145, type: !453, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !398, !84}
!455 = !DISubprogram(name: "ap_int", scope: !391, file: !392, line: 147, type: !456, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !398, !84, !90}
!458 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi16EEaSERKS0_", scope: !391, file: !392, line: 152, type: !459, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !398, !462}
!461 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !391, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!464 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi16EEaSERVKS0_", scope: !391, file: !392, line: 161, type: !465, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!465 = !DISubroutineType(types: !466)
!466 = !{!461, !398, !467}
!467 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !391)
!470 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi16EEaSERKS0_", scope: !391, file: !392, line: 167, type: !471, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !473, !462}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!474 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi16EEaSERVKS0_", scope: !391, file: !392, line: 171, type: !475, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !473, !467}
!477 = !{!478}
!478 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 16)
!479 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi16ELb1EEmmEi", scope: !172, file: !173, line: 928, type: !381, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!480 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi16ELb1EEpsEv", scope: !172, file: !173, line: 937, type: !481, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPrototyped, isOptimized: false)
!481 = !DISubroutineType(types: !482)
!482 = !{!384, !181}
!483 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi16ELb1EEngEv", scope: !172, file: !173, line: 940, type: !484, isLocal: false, isDefinition: false, scopeLine: 940, flags: DIFlagPrototyped, isOptimized: false)
!484 = !DISubroutineType(types: !485)
!485 = !{!486, !181}
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !487, file: !173, line: 209, baseType: !491)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !172, file: !173, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !488, identifier: "_ZTSN11ap_int_baseILi16ELb1EE5RTypeILi1ELb0EEE")
!488 = !{!489, !490}
!489 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 1)
!490 = !DITemplateValueParameter(name: "_AP_S2", type: !40, value: i8 0)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !492, file: !173, line: 149, baseType: !495)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<17, true>", file: !173, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !493, identifier: "_ZTS15_ap_int_factoryILi17ELb1EE")
!493 = !{!494, !388}
!494 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 17)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<17>", file: !392, line: 18, size: 32, flags: DIFlagTypePassByValue, elements: !496, templateParams: !1646, identifier: "_ZTS6ap_intILi17EE")
!496 = !{!497, !1568, !1572, !1576, !1579, !1582, !1585, !1588, !1591, !1594, !1597, !1600, !1603, !1606, !1609, !1612, !1615, !1618, !1621, !1624, !1627, !1633, !1639, !1643}
!497 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !495, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<17, true>", file: !499, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !500, templateParams: !1553, identifier: "_ZTS11ap_int_baseILi17ELb1EE")
!499 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_int_base.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!500 = !{!501, !515, !516, !517, !522, !526, !529, !532, !535, !538, !541, !544, !547, !550, !553, !556, !560, !564, !567, !570, !573, !576, !579, !584, !588, !593, !594, !598, !601, !604, !607, !610, !613, !616, !619, !622, !625, !628, !631, !634, !637, !642, !645, !648, !651, !654, !657, !660, !661, !664, !667, !670, !673, !676, !679, !682, !685, !689, !690, !691, !692, !693, !696, !697, !700, !703, !704, !707, !708, !709, !710, !711, !712, !713, !716, !717, !718, !725, !726, !729, !1446, !1447, !1448, !1452, !1455, !1458, !1461, !1462, !1463, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565}
!501 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !498, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<17, true>", file: !451, line: 509, size: 32, flags: DIFlagTypePassByValue, elements: !503, templateParams: !513, identifier: "_ZTS8ssdm_intILi17ELb1EE")
!503 = !{!504, !506, !510}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !502, file: !451, line: 511, baseType: !505, size: 17, align: 32)
!505 = !DIBasicType(name: "int17", size: 17, encoding: DW_ATE_signed)
!506 = !DISubprogram(name: "ssdm_int", scope: !502, file: !451, line: 512, type: !507, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!510 = !DISubprogram(name: "ssdm_int", scope: !502, file: !451, line: 513, type: !511, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !509, !505}
!513 = !{!514, !39}
!514 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 17)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !498, file: !499, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 17)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !498, file: !499, line: 131, baseType: !94, flags: DIFlagStaticMember, extraData: i1 true)
!517 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi17ELb1EE16countLeadingOnesEv", scope: !498, file: !499, line: 110, type: !518, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!518 = !DISubroutineType(types: !519)
!519 = !{!38, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!522 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 175, type: !523, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!526 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 208, type: !527, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !525, !94}
!529 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 209, type: !530, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !525, !85}
!532 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 210, type: !533, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !525, !101}
!535 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 211, type: !536, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !525, !105}
!538 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 212, type: !539, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !525, !110}
!541 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 213, type: !542, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !525, !114}
!544 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 214, type: !545, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !525, !42}
!547 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 215, type: !548, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !525, !122}
!550 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 216, type: !551, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !525, !127}
!553 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 217, type: !554, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !525, !132}
!556 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 218, type: !557, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !525, !559}
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!560 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 219, type: !561, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !525, !563}
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!564 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 224, type: !565, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !525, !450}
!567 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 230, type: !568, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !525, !153}
!570 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 289, type: !571, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !525, !149}
!573 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 385, type: !574, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !525, !84}
!576 = !DISubprogram(name: "ap_int_base", scope: !498, file: !499, line: 391, type: !577, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !525, !84, !90}
!579 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi17ELb1EE4readEv", scope: !498, file: !499, line: 413, type: !580, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!580 = !DISubroutineType(types: !581)
!581 = !{!498, !582}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!583 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !498)
!584 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi17ELb1EE5writeERKS0_", scope: !498, file: !499, line: 420, type: !585, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !582, !587}
!587 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !521, size: 64)
!588 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi17ELb1EEaSERVKS0_", scope: !498, file: !499, line: 432, type: !589, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !582, !591}
!591 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!593 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi17ELb1EEaSERKS0_", scope: !498, file: !499, line: 442, type: !585, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!594 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSERVKS0_", scope: !498, file: !499, line: 459, type: !595, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!595 = !DISubroutineType(types: !596)
!596 = !{!597, !525, !591}
!597 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !498, size: 64)
!598 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSERKS0_", scope: !498, file: !499, line: 465, type: !599, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!599 = !DISubroutineType(types: !600)
!600 = !{!597, !525, !587}
!601 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEb", scope: !498, file: !499, line: 479, type: !602, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!602 = !DISubroutineType(types: !603)
!603 = !{!597, !525, !40}
!604 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEc", scope: !498, file: !499, line: 480, type: !605, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!605 = !DISubroutineType(types: !606)
!606 = !{!597, !525, !86}
!607 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEa", scope: !498, file: !499, line: 481, type: !608, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!608 = !DISubroutineType(types: !609)
!609 = !{!597, !525, !90}
!610 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEh", scope: !498, file: !499, line: 482, type: !611, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!611 = !DISubroutineType(types: !612)
!612 = !{!597, !525, !106}
!613 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEs", scope: !498, file: !499, line: 483, type: !614, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!614 = !DISubroutineType(types: !615)
!615 = !{!597, !525, !28}
!616 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEt", scope: !498, file: !499, line: 484, type: !617, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!617 = !DISubroutineType(types: !618)
!618 = !{!597, !525, !115}
!619 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEi", scope: !498, file: !499, line: 485, type: !620, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!620 = !DISubroutineType(types: !621)
!621 = !{!597, !525, !38}
!622 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEj", scope: !498, file: !499, line: 486, type: !623, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!623 = !DISubroutineType(types: !624)
!624 = !{!597, !525, !123}
!625 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEl", scope: !498, file: !499, line: 487, type: !626, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!626 = !DISubroutineType(types: !627)
!627 = !{!597, !525, !128}
!628 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEm", scope: !498, file: !499, line: 488, type: !629, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!629 = !DISubroutineType(types: !630)
!630 = !{!597, !525, !133}
!631 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEx", scope: !498, file: !499, line: 489, type: !632, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!632 = !DISubroutineType(types: !633)
!633 = !{!597, !525, !435}
!634 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb1EEaSEy", scope: !498, file: !499, line: 490, type: !635, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!635 = !DISubroutineType(types: !636)
!636 = !{!597, !525, !440}
!637 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi17ELb1EEcvxEv", scope: !498, file: !499, line: 541, type: !638, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!638 = !DISubroutineType(types: !639)
!639 = !{!640, !520}
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !498, file: !499, line: 128, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !301, file: !499, line: 46, baseType: !435)
!642 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi17ELb1EE7to_boolEv", scope: !498, file: !499, line: 546, type: !643, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!643 = !DISubroutineType(types: !644)
!644 = !{!40, !520}
!645 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi17ELb1EE7to_charEv", scope: !498, file: !499, line: 547, type: !646, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!646 = !DISubroutineType(types: !647)
!647 = !{!86, !520}
!648 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi17ELb1EE8to_scharEv", scope: !498, file: !499, line: 548, type: !649, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!649 = !DISubroutineType(types: !650)
!650 = !{!90, !520}
!651 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi17ELb1EE8to_ucharEv", scope: !498, file: !499, line: 549, type: !652, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!652 = !DISubroutineType(types: !653)
!653 = !{!106, !520}
!654 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi17ELb1EE8to_shortEv", scope: !498, file: !499, line: 550, type: !655, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!655 = !DISubroutineType(types: !656)
!656 = !{!28, !520}
!657 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi17ELb1EE9to_ushortEv", scope: !498, file: !499, line: 551, type: !658, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!658 = !DISubroutineType(types: !659)
!659 = !{!115, !520}
!660 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi17ELb1EE6to_intEv", scope: !498, file: !499, line: 552, type: !518, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!661 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi17ELb1EE7to_uintEv", scope: !498, file: !499, line: 553, type: !662, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!662 = !DISubroutineType(types: !663)
!663 = !{!123, !520}
!664 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi17ELb1EE7to_longEv", scope: !498, file: !499, line: 554, type: !665, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!665 = !DISubroutineType(types: !666)
!666 = !{!128, !520}
!667 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi17ELb1EE8to_ulongEv", scope: !498, file: !499, line: 555, type: !668, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!668 = !DISubroutineType(types: !669)
!669 = !{!133, !520}
!670 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi17ELb1EE8to_int64Ev", scope: !498, file: !499, line: 556, type: !671, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!671 = !DISubroutineType(types: !672)
!672 = !{!435, !520}
!673 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi17ELb1EE9to_uint64Ev", scope: !498, file: !499, line: 557, type: !674, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!674 = !DISubroutineType(types: !675)
!675 = !{!440, !520}
!676 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi17ELb1EE7to_halfEv", scope: !498, file: !499, line: 558, type: !677, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!677 = !DISubroutineType(types: !678)
!678 = !{!450, !520}
!679 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi17ELb1EE8to_floatEv", scope: !498, file: !499, line: 559, type: !680, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!680 = !DISubroutineType(types: !681)
!681 = !{!153, !520}
!682 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi17ELb1EE9to_doubleEv", scope: !498, file: !499, line: 560, type: !683, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!683 = !DISubroutineType(types: !684)
!684 = !{!149, !520}
!685 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi17ELb1EE6lengthEv", scope: !498, file: !499, line: 584, type: !686, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!686 = !DISubroutineType(types: !687)
!687 = !{!38, !688}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!689 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi17ELb1EE6lengthEv", scope: !498, file: !499, line: 585, type: !518, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!690 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi17ELb1EE6iszeroEv", scope: !498, file: !499, line: 588, type: !643, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!691 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi17ELb1EE7is_zeroEv", scope: !498, file: !499, line: 591, type: !643, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!692 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi17ELb1EE4signEv", scope: !498, file: !499, line: 594, type: !643, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!693 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi17ELb1EE5clearEi", scope: !498, file: !499, line: 603, type: !694, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !525, !38}
!696 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi17ELb1EE6invertEi", scope: !498, file: !499, line: 609, type: !694, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!697 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi17ELb1EE4testEi", scope: !498, file: !499, line: 618, type: !698, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!698 = !DISubroutineType(types: !699)
!699 = !{!40, !520, !38}
!700 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi17ELb1EE3getEv", scope: !498, file: !499, line: 624, type: !701, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!701 = !DISubroutineType(types: !702)
!702 = !{!597, !525}
!703 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi17ELb1EE3setEi", scope: !498, file: !499, line: 627, type: !694, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!704 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi17ELb1EE3setEib", scope: !498, file: !499, line: 633, type: !705, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !525, !38, !40}
!707 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi17ELb1EE7lrotateEi", scope: !498, file: !499, line: 640, type: !620, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!708 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi17ELb1EE7rrotateEi", scope: !498, file: !499, line: 655, type: !620, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!709 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi17ELb1EE7reverseEv", scope: !498, file: !499, line: 670, type: !701, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!710 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi17ELb1EE7set_bitEib", scope: !498, file: !499, line: 676, type: !705, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!711 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi17ELb1EE7get_bitEi", scope: !498, file: !499, line: 681, type: !698, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!712 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi17ELb1EE5b_notEv", scope: !498, file: !499, line: 686, type: !523, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!713 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi17ELb1EE17checkOverflowCsimEibb", scope: !498, file: !499, line: 760, type: !714, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!714 = !DISubroutineType(types: !715)
!715 = !{!40, !520, !38, !40, !40}
!716 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi17ELb1EEppEv", scope: !498, file: !499, line: 865, type: !701, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!717 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi17ELb1EEmmEv", scope: !498, file: !499, line: 869, type: !701, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!718 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi17ELb1EEppEi", scope: !498, file: !499, line: 877, type: !719, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!719 = !DISubroutineType(types: !720)
!720 = !{!721, !525, !38}
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !723, file: !499, line: 167, baseType: !724)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<17, true>", scope: !498, file: !499, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !493, identifier: "_ZTSN11ap_int_baseILi17ELb1EE5RTypeILi17ELb1EEE")
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !492, file: !499, line: 103, baseType: !495)
!725 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi17ELb1EEmmEi", scope: !498, file: !499, line: 882, type: !719, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!726 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi17ELb1EEpsEv", scope: !498, file: !499, line: 891, type: !727, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!727 = !DISubroutineType(types: !728)
!728 = !{!722, !520}
!729 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi17ELb1EEngEv", scope: !498, file: !499, line: 894, type: !730, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!730 = !DISubroutineType(types: !731)
!731 = !{!732, !520}
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !733, file: !499, line: 163, baseType: !734)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !498, file: !499, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !488, identifier: "_ZTSN11ap_int_baseILi17ELb1EE5RTypeILi1ELb0EEE")
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !735, file: !499, line: 103, baseType: !738)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<18, true>", file: !499, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !736, identifier: "_ZTS15_ap_int_factoryILi18ELb1EE")
!736 = !{!737, !388}
!737 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 18)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<18>", file: !392, line: 18, size: 32, flags: DIFlagTypePassByValue, elements: !739, templateParams: !1445, identifier: "_ZTS6ap_intILi18EE")
!739 = !{!740, !1367, !1371, !1375, !1378, !1381, !1384, !1387, !1390, !1393, !1396, !1399, !1402, !1405, !1408, !1411, !1414, !1417, !1420, !1423, !1426, !1432, !1438, !1442}
!740 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !738, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<18, true>", file: !499, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !742, templateParams: !1365, identifier: "_ZTS11ap_int_baseILi18ELb1EE")
!742 = !{!743, !757, !758, !759, !764, !768, !771, !774, !777, !780, !783, !786, !789, !792, !795, !798, !801, !804, !807, !810, !813, !816, !819, !824, !828, !833, !834, !838, !841, !844, !847, !850, !853, !856, !859, !862, !865, !868, !871, !874, !877, !881, !884, !887, !890, !893, !896, !899, !900, !903, !906, !909, !912, !915, !918, !921, !924, !928, !929, !930, !931, !932, !935, !936, !939, !942, !943, !946, !947, !948, !949, !950, !951, !952, !955, !956, !957, !963, !964, !967, !1331, !1332, !1333, !1337, !1340, !1343, !1346, !1347, !1348, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362}
!743 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !741, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<18, true>", file: !451, line: 509, size: 32, flags: DIFlagTypePassByValue, elements: !745, templateParams: !755, identifier: "_ZTS8ssdm_intILi18ELb1EE")
!745 = !{!746, !748, !752}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !744, file: !451, line: 511, baseType: !747, size: 18, align: 32)
!747 = !DIBasicType(name: "int18", size: 18, encoding: DW_ATE_signed)
!748 = !DISubprogram(name: "ssdm_int", scope: !744, file: !451, line: 512, type: !749, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!752 = !DISubprogram(name: "ssdm_int", scope: !744, file: !451, line: 513, type: !753, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !751, !747}
!755 = !{!756, !39}
!756 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 18)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !741, file: !499, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 18)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !741, file: !499, line: 131, baseType: !94, flags: DIFlagStaticMember, extraData: i1 true)
!759 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi18ELb1EE16countLeadingOnesEv", scope: !741, file: !499, line: 110, type: !760, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!760 = !DISubroutineType(types: !761)
!761 = !{!38, !762}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!764 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 175, type: !765, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!768 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 208, type: !769, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !767, !94}
!771 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 209, type: !772, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !767, !85}
!774 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 210, type: !775, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !767, !101}
!777 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 211, type: !778, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !767, !105}
!780 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 212, type: !781, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !767, !110}
!783 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 213, type: !784, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !767, !114}
!786 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 214, type: !787, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !767, !42}
!789 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 215, type: !790, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !767, !122}
!792 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 216, type: !793, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !767, !127}
!795 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 217, type: !796, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !767, !132}
!798 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 218, type: !799, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !767, !559}
!801 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 219, type: !802, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !767, !563}
!804 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 224, type: !805, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !767, !450}
!807 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 230, type: !808, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !767, !153}
!810 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 289, type: !811, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !767, !149}
!813 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 385, type: !814, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !767, !84}
!816 = !DISubprogram(name: "ap_int_base", scope: !741, file: !499, line: 391, type: !817, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !767, !84, !90}
!819 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi18ELb1EE4readEv", scope: !741, file: !499, line: 413, type: !820, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!820 = !DISubroutineType(types: !821)
!821 = !{!741, !822}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!823 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !741)
!824 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi18ELb1EE5writeERKS0_", scope: !741, file: !499, line: 420, type: !825, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !822, !827}
!827 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !763, size: 64)
!828 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi18ELb1EEaSERVKS0_", scope: !741, file: !499, line: 432, type: !829, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !822, !831}
!831 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !823)
!833 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi18ELb1EEaSERKS0_", scope: !741, file: !499, line: 442, type: !825, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!834 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSERVKS0_", scope: !741, file: !499, line: 459, type: !835, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!835 = !DISubroutineType(types: !836)
!836 = !{!837, !767, !831}
!837 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !741, size: 64)
!838 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSERKS0_", scope: !741, file: !499, line: 465, type: !839, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!839 = !DISubroutineType(types: !840)
!840 = !{!837, !767, !827}
!841 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEb", scope: !741, file: !499, line: 479, type: !842, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!842 = !DISubroutineType(types: !843)
!843 = !{!837, !767, !40}
!844 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEc", scope: !741, file: !499, line: 480, type: !845, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!845 = !DISubroutineType(types: !846)
!846 = !{!837, !767, !86}
!847 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEa", scope: !741, file: !499, line: 481, type: !848, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!848 = !DISubroutineType(types: !849)
!849 = !{!837, !767, !90}
!850 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEh", scope: !741, file: !499, line: 482, type: !851, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!851 = !DISubroutineType(types: !852)
!852 = !{!837, !767, !106}
!853 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEs", scope: !741, file: !499, line: 483, type: !854, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!854 = !DISubroutineType(types: !855)
!855 = !{!837, !767, !28}
!856 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEt", scope: !741, file: !499, line: 484, type: !857, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!857 = !DISubroutineType(types: !858)
!858 = !{!837, !767, !115}
!859 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEi", scope: !741, file: !499, line: 485, type: !860, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!860 = !DISubroutineType(types: !861)
!861 = !{!837, !767, !38}
!862 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEj", scope: !741, file: !499, line: 486, type: !863, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!863 = !DISubroutineType(types: !864)
!864 = !{!837, !767, !123}
!865 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEl", scope: !741, file: !499, line: 487, type: !866, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!866 = !DISubroutineType(types: !867)
!867 = !{!837, !767, !128}
!868 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEm", scope: !741, file: !499, line: 488, type: !869, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!869 = !DISubroutineType(types: !870)
!870 = !{!837, !767, !133}
!871 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEx", scope: !741, file: !499, line: 489, type: !872, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!872 = !DISubroutineType(types: !873)
!873 = !{!837, !767, !435}
!874 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb1EEaSEy", scope: !741, file: !499, line: 490, type: !875, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!875 = !DISubroutineType(types: !876)
!876 = !{!837, !767, !440}
!877 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi18ELb1EEcvxEv", scope: !741, file: !499, line: 541, type: !878, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!878 = !DISubroutineType(types: !879)
!879 = !{!880, !762}
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !741, file: !499, line: 128, baseType: !641)
!881 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi18ELb1EE7to_boolEv", scope: !741, file: !499, line: 546, type: !882, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!882 = !DISubroutineType(types: !883)
!883 = !{!40, !762}
!884 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi18ELb1EE7to_charEv", scope: !741, file: !499, line: 547, type: !885, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!885 = !DISubroutineType(types: !886)
!886 = !{!86, !762}
!887 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi18ELb1EE8to_scharEv", scope: !741, file: !499, line: 548, type: !888, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!888 = !DISubroutineType(types: !889)
!889 = !{!90, !762}
!890 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi18ELb1EE8to_ucharEv", scope: !741, file: !499, line: 549, type: !891, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!891 = !DISubroutineType(types: !892)
!892 = !{!106, !762}
!893 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi18ELb1EE8to_shortEv", scope: !741, file: !499, line: 550, type: !894, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!894 = !DISubroutineType(types: !895)
!895 = !{!28, !762}
!896 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi18ELb1EE9to_ushortEv", scope: !741, file: !499, line: 551, type: !897, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!897 = !DISubroutineType(types: !898)
!898 = !{!115, !762}
!899 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi18ELb1EE6to_intEv", scope: !741, file: !499, line: 552, type: !760, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!900 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi18ELb1EE7to_uintEv", scope: !741, file: !499, line: 553, type: !901, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!901 = !DISubroutineType(types: !902)
!902 = !{!123, !762}
!903 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi18ELb1EE7to_longEv", scope: !741, file: !499, line: 554, type: !904, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!904 = !DISubroutineType(types: !905)
!905 = !{!128, !762}
!906 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi18ELb1EE8to_ulongEv", scope: !741, file: !499, line: 555, type: !907, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!907 = !DISubroutineType(types: !908)
!908 = !{!133, !762}
!909 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi18ELb1EE8to_int64Ev", scope: !741, file: !499, line: 556, type: !910, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!910 = !DISubroutineType(types: !911)
!911 = !{!435, !762}
!912 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi18ELb1EE9to_uint64Ev", scope: !741, file: !499, line: 557, type: !913, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!913 = !DISubroutineType(types: !914)
!914 = !{!440, !762}
!915 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi18ELb1EE7to_halfEv", scope: !741, file: !499, line: 558, type: !916, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!916 = !DISubroutineType(types: !917)
!917 = !{!450, !762}
!918 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi18ELb1EE8to_floatEv", scope: !741, file: !499, line: 559, type: !919, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!919 = !DISubroutineType(types: !920)
!920 = !{!153, !762}
!921 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi18ELb1EE9to_doubleEv", scope: !741, file: !499, line: 560, type: !922, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!922 = !DISubroutineType(types: !923)
!923 = !{!149, !762}
!924 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi18ELb1EE6lengthEv", scope: !741, file: !499, line: 584, type: !925, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!925 = !DISubroutineType(types: !926)
!926 = !{!38, !927}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!928 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi18ELb1EE6lengthEv", scope: !741, file: !499, line: 585, type: !760, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!929 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi18ELb1EE6iszeroEv", scope: !741, file: !499, line: 588, type: !882, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!930 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi18ELb1EE7is_zeroEv", scope: !741, file: !499, line: 591, type: !882, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!931 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi18ELb1EE4signEv", scope: !741, file: !499, line: 594, type: !882, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!932 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi18ELb1EE5clearEi", scope: !741, file: !499, line: 603, type: !933, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !767, !38}
!935 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi18ELb1EE6invertEi", scope: !741, file: !499, line: 609, type: !933, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!936 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi18ELb1EE4testEi", scope: !741, file: !499, line: 618, type: !937, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!937 = !DISubroutineType(types: !938)
!938 = !{!40, !762, !38}
!939 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi18ELb1EE3getEv", scope: !741, file: !499, line: 624, type: !940, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!940 = !DISubroutineType(types: !941)
!941 = !{!837, !767}
!942 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi18ELb1EE3setEi", scope: !741, file: !499, line: 627, type: !933, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!943 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi18ELb1EE3setEib", scope: !741, file: !499, line: 633, type: !944, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !767, !38, !40}
!946 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi18ELb1EE7lrotateEi", scope: !741, file: !499, line: 640, type: !860, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!947 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi18ELb1EE7rrotateEi", scope: !741, file: !499, line: 655, type: !860, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!948 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi18ELb1EE7reverseEv", scope: !741, file: !499, line: 670, type: !940, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!949 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi18ELb1EE7set_bitEib", scope: !741, file: !499, line: 676, type: !944, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!950 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi18ELb1EE7get_bitEi", scope: !741, file: !499, line: 681, type: !937, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!951 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi18ELb1EE5b_notEv", scope: !741, file: !499, line: 686, type: !765, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!952 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi18ELb1EE17checkOverflowCsimEibb", scope: !741, file: !499, line: 760, type: !953, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!953 = !DISubroutineType(types: !954)
!954 = !{!40, !762, !38, !40, !40}
!955 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi18ELb1EEppEv", scope: !741, file: !499, line: 865, type: !940, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!956 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi18ELb1EEmmEv", scope: !741, file: !499, line: 869, type: !940, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!957 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi18ELb1EEppEi", scope: !741, file: !499, line: 877, type: !958, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!958 = !DISubroutineType(types: !959)
!959 = !{!960, !767, !38}
!960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !961)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !962, file: !499, line: 167, baseType: !734)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<18, true>", scope: !741, file: !499, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !736, identifier: "_ZTSN11ap_int_baseILi18ELb1EE5RTypeILi18ELb1EEE")
!963 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi18ELb1EEmmEi", scope: !741, file: !499, line: 882, type: !958, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!964 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi18ELb1EEpsEv", scope: !741, file: !499, line: 891, type: !965, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!965 = !DISubroutineType(types: !966)
!966 = !{!961, !762}
!967 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi18ELb1EEngEv", scope: !741, file: !499, line: 894, type: !968, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!968 = !DISubroutineType(types: !969)
!969 = !{!970, !762}
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !971, file: !499, line: 163, baseType: !972)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !741, file: !499, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !488, identifier: "_ZTSN11ap_int_baseILi18ELb1EE5RTypeILi1ELb0EEE")
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !973, file: !499, line: 103, baseType: !976)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<19, true>", file: !499, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !974, identifier: "_ZTS15_ap_int_factoryILi19ELb1EE")
!974 = !{!975, !388}
!975 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 19)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<19>", file: !392, line: 18, size: 32, flags: DIFlagTypePassByValue, elements: !977, templateParams: !1330, identifier: "_ZTS6ap_intILi19EE")
!977 = !{!978, !1252, !1256, !1260, !1263, !1266, !1269, !1272, !1275, !1278, !1281, !1284, !1287, !1290, !1293, !1296, !1299, !1302, !1305, !1308, !1311, !1317, !1323, !1327}
!978 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !976, baseType: !979)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<19, true>", file: !499, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !980, templateParams: !1250, identifier: "_ZTS11ap_int_baseILi19ELb1EE")
!980 = !{!981, !995, !996, !997, !1002, !1006, !1009, !1012, !1015, !1018, !1021, !1024, !1027, !1030, !1033, !1036, !1039, !1042, !1045, !1048, !1051, !1054, !1057, !1062, !1066, !1071, !1072, !1076, !1079, !1082, !1085, !1088, !1091, !1094, !1097, !1100, !1103, !1106, !1109, !1112, !1115, !1119, !1122, !1125, !1128, !1131, !1134, !1137, !1138, !1141, !1144, !1147, !1150, !1153, !1156, !1159, !1162, !1166, !1167, !1168, !1169, !1170, !1173, !1174, !1177, !1180, !1181, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1193, !1194, !1195, !1201, !1202, !1205, !1215, !1216, !1217, !1221, !1224, !1227, !1230, !1231, !1232, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246}
!981 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !979, baseType: !982)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<19, true>", file: !451, line: 509, size: 32, flags: DIFlagTypePassByValue, elements: !983, templateParams: !993, identifier: "_ZTS8ssdm_intILi19ELb1EE")
!983 = !{!984, !986, !990}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !982, file: !451, line: 511, baseType: !985, size: 19, align: 32)
!985 = !DIBasicType(name: "int19", size: 19, encoding: DW_ATE_signed)
!986 = !DISubprogram(name: "ssdm_int", scope: !982, file: !451, line: 512, type: !987, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !989}
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!990 = !DISubprogram(name: "ssdm_int", scope: !982, file: !451, line: 513, type: !991, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !989, !985}
!993 = !{!994, !39}
!994 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 19)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !979, file: !499, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 19)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !979, file: !499, line: 131, baseType: !94, flags: DIFlagStaticMember, extraData: i1 true)
!997 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi19ELb1EE16countLeadingOnesEv", scope: !979, file: !499, line: 110, type: !998, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!998 = !DISubroutineType(types: !999)
!999 = !{!38, !1000}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !979)
!1002 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 175, type: !1003, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !1005}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1006 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 208, type: !1007, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{null, !1005, !94}
!1009 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 209, type: !1010, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !1005, !85}
!1012 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 210, type: !1013, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !1005, !101}
!1015 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 211, type: !1016, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !1005, !105}
!1018 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 212, type: !1019, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !1005, !110}
!1021 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 213, type: !1022, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !1005, !114}
!1024 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 214, type: !1025, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !1005, !42}
!1027 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 215, type: !1028, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !1005, !122}
!1030 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 216, type: !1031, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !1005, !127}
!1033 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 217, type: !1034, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !1005, !132}
!1036 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 218, type: !1037, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !1005, !559}
!1039 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 219, type: !1040, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !1005, !563}
!1042 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 224, type: !1043, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !1005, !450}
!1045 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 230, type: !1046, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{null, !1005, !153}
!1048 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 289, type: !1049, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !1005, !149}
!1051 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 385, type: !1052, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{null, !1005, !84}
!1054 = !DISubprogram(name: "ap_int_base", scope: !979, file: !499, line: 391, type: !1055, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !1005, !84, !90}
!1057 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi19ELb1EE4readEv", scope: !979, file: !499, line: 413, type: !1058, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!979, !1060}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1061 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !979)
!1062 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi19ELb1EE5writeERKS0_", scope: !979, file: !499, line: 420, type: !1063, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !1060, !1065}
!1065 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1001, size: 64)
!1066 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi19ELb1EEaSERVKS0_", scope: !979, file: !499, line: 432, type: !1067, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !1060, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1061)
!1071 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi19ELb1EEaSERKS0_", scope: !979, file: !499, line: 442, type: !1063, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!1072 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSERVKS0_", scope: !979, file: !499, line: 459, type: !1073, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!1075, !1005, !1069}
!1075 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !979, size: 64)
!1076 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSERKS0_", scope: !979, file: !499, line: 465, type: !1077, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!1075, !1005, !1065}
!1079 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEb", scope: !979, file: !499, line: 479, type: !1080, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!1075, !1005, !40}
!1082 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEc", scope: !979, file: !499, line: 480, type: !1083, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!1075, !1005, !86}
!1085 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEa", scope: !979, file: !499, line: 481, type: !1086, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!1075, !1005, !90}
!1088 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEh", scope: !979, file: !499, line: 482, type: !1089, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!1075, !1005, !106}
!1091 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEs", scope: !979, file: !499, line: 483, type: !1092, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!1075, !1005, !28}
!1094 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEt", scope: !979, file: !499, line: 484, type: !1095, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!1075, !1005, !115}
!1097 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEi", scope: !979, file: !499, line: 485, type: !1098, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!1075, !1005, !38}
!1100 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEj", scope: !979, file: !499, line: 486, type: !1101, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!1075, !1005, !123}
!1103 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEl", scope: !979, file: !499, line: 487, type: !1104, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!1075, !1005, !128}
!1106 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEm", scope: !979, file: !499, line: 488, type: !1107, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!1075, !1005, !133}
!1109 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEx", scope: !979, file: !499, line: 489, type: !1110, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!1075, !1005, !435}
!1112 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi19ELb1EEaSEy", scope: !979, file: !499, line: 490, type: !1113, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!1075, !1005, !440}
!1115 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi19ELb1EEcvxEv", scope: !979, file: !499, line: 541, type: !1116, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!1118, !1000}
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !979, file: !499, line: 128, baseType: !641)
!1119 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi19ELb1EE7to_boolEv", scope: !979, file: !499, line: 546, type: !1120, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!40, !1000}
!1122 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi19ELb1EE7to_charEv", scope: !979, file: !499, line: 547, type: !1123, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!86, !1000}
!1125 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi19ELb1EE8to_scharEv", scope: !979, file: !499, line: 548, type: !1126, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!90, !1000}
!1128 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi19ELb1EE8to_ucharEv", scope: !979, file: !499, line: 549, type: !1129, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!106, !1000}
!1131 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi19ELb1EE8to_shortEv", scope: !979, file: !499, line: 550, type: !1132, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!28, !1000}
!1134 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi19ELb1EE9to_ushortEv", scope: !979, file: !499, line: 551, type: !1135, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!115, !1000}
!1137 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi19ELb1EE6to_intEv", scope: !979, file: !499, line: 552, type: !998, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!1138 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi19ELb1EE7to_uintEv", scope: !979, file: !499, line: 553, type: !1139, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!123, !1000}
!1141 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi19ELb1EE7to_longEv", scope: !979, file: !499, line: 554, type: !1142, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!128, !1000}
!1144 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi19ELb1EE8to_ulongEv", scope: !979, file: !499, line: 555, type: !1145, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!133, !1000}
!1147 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi19ELb1EE8to_int64Ev", scope: !979, file: !499, line: 556, type: !1148, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!435, !1000}
!1150 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi19ELb1EE9to_uint64Ev", scope: !979, file: !499, line: 557, type: !1151, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!440, !1000}
!1153 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi19ELb1EE7to_halfEv", scope: !979, file: !499, line: 558, type: !1154, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!450, !1000}
!1156 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi19ELb1EE8to_floatEv", scope: !979, file: !499, line: 559, type: !1157, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!153, !1000}
!1159 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi19ELb1EE9to_doubleEv", scope: !979, file: !499, line: 560, type: !1160, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!149, !1000}
!1162 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi19ELb1EE6lengthEv", scope: !979, file: !499, line: 584, type: !1163, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!38, !1165}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1166 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi19ELb1EE6lengthEv", scope: !979, file: !499, line: 585, type: !998, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!1167 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi19ELb1EE6iszeroEv", scope: !979, file: !499, line: 588, type: !1120, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!1168 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi19ELb1EE7is_zeroEv", scope: !979, file: !499, line: 591, type: !1120, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!1169 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi19ELb1EE4signEv", scope: !979, file: !499, line: 594, type: !1120, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!1170 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi19ELb1EE5clearEi", scope: !979, file: !499, line: 603, type: !1171, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !1005, !38}
!1173 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi19ELb1EE6invertEi", scope: !979, file: !499, line: 609, type: !1171, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!1174 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi19ELb1EE4testEi", scope: !979, file: !499, line: 618, type: !1175, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!40, !1000, !38}
!1177 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi19ELb1EE3getEv", scope: !979, file: !499, line: 624, type: !1178, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!1075, !1005}
!1180 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi19ELb1EE3setEi", scope: !979, file: !499, line: 627, type: !1171, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!1181 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi19ELb1EE3setEib", scope: !979, file: !499, line: 633, type: !1182, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !1005, !38, !40}
!1184 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi19ELb1EE7lrotateEi", scope: !979, file: !499, line: 640, type: !1098, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!1185 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi19ELb1EE7rrotateEi", scope: !979, file: !499, line: 655, type: !1098, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!1186 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi19ELb1EE7reverseEv", scope: !979, file: !499, line: 670, type: !1178, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!1187 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi19ELb1EE7set_bitEib", scope: !979, file: !499, line: 676, type: !1182, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!1188 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi19ELb1EE7get_bitEi", scope: !979, file: !499, line: 681, type: !1175, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!1189 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi19ELb1EE5b_notEv", scope: !979, file: !499, line: 686, type: !1003, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!1190 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi19ELb1EE17checkOverflowCsimEibb", scope: !979, file: !499, line: 760, type: !1191, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!40, !1000, !38, !40, !40}
!1193 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi19ELb1EEppEv", scope: !979, file: !499, line: 865, type: !1178, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!1194 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi19ELb1EEmmEv", scope: !979, file: !499, line: 869, type: !1178, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!1195 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi19ELb1EEppEi", scope: !979, file: !499, line: 877, type: !1196, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!1198, !1005, !38}
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !1200, file: !499, line: 167, baseType: !972)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<19, true>", scope: !979, file: !499, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !974, identifier: "_ZTSN11ap_int_baseILi19ELb1EE5RTypeILi19ELb1EEE")
!1201 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi19ELb1EEmmEi", scope: !979, file: !499, line: 882, type: !1196, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!1202 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi19ELb1EEpsEv", scope: !979, file: !499, line: 891, type: !1203, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!1199, !1000}
!1205 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi19ELb1EEngEv", scope: !979, file: !499, line: 894, type: !1206, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!1208, !1000}
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !1209, file: !499, line: 163, baseType: !1210)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !979, file: !499, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !488, identifier: "_ZTSN11ap_int_baseILi19ELb1EE5RTypeILi1ELb0EEE")
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1211, file: !499, line: 103, baseType: !1214)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<20, true>", file: !499, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !1212, identifier: "_ZTS15_ap_int_factoryILi20ELb1EE")
!1212 = !{!1213, !388}
!1213 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 20)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<20>", file: !436, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS6ap_intILi20EE")
!1215 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi19ELb1EEntEv", scope: !979, file: !499, line: 901, type: !1120, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!1216 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi19ELb1EEcoEv", scope: !979, file: !499, line: 907, type: !1203, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!1217 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi19ELb1EE5rangeEii", scope: !979, file: !499, line: 1045, type: !1218, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!1220, !1005, !38, !38}
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<19, true>", file: !436, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi19ELb1EE")
!1221 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi19ELb1EE5rangeEii", scope: !979, file: !499, line: 1052, type: !1222, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!1220, !1000, !38, !38}
!1224 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi19ELb1EE5rangeEv", scope: !979, file: !499, line: 1076, type: !1225, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!1220, !1005}
!1227 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi19ELb1EE5rangeEv", scope: !979, file: !499, line: 1080, type: !1228, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!1220, !1000}
!1230 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi19ELb1EEclEii", scope: !979, file: !499, line: 1084, type: !1218, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!1231 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi19ELb1EEclEii", scope: !979, file: !499, line: 1088, type: !1222, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!1232 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi19ELb1EEixEi", scope: !979, file: !499, line: 1126, type: !1233, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!1235, !1005, !38}
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<19, true>", file: !436, line: 146, flags: DIFlagFwdDecl, identifier: "_ZTS10ap_bit_refILi19ELb1EE")
!1236 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi19ELb1EEixEi", scope: !979, file: !499, line: 1142, type: !1175, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!1237 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi19ELb1EE3bitEi", scope: !979, file: !499, line: 1155, type: !1233, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!1238 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi19ELb1EE3bitEi", scope: !979, file: !499, line: 1170, type: !1175, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!1239 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi19ELb1EE17countLeadingZerosEv", scope: !979, file: !499, line: 1193, type: !998, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!1240 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi19ELb1EE10and_reduceEv", scope: !979, file: !499, line: 1413, type: !1120, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!1241 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi19ELb1EE11nand_reduceEv", scope: !979, file: !499, line: 1414, type: !1120, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!1242 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi19ELb1EE9or_reduceEv", scope: !979, file: !499, line: 1415, type: !1120, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!1243 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi19ELb1EE10nor_reduceEv", scope: !979, file: !499, line: 1416, type: !1120, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!1244 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi19ELb1EE10xor_reduceEv", scope: !979, file: !499, line: 1417, type: !1120, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!1245 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi19ELb1EE11xnor_reduceEv", scope: !979, file: !499, line: 1418, type: !1120, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!1246 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi19ELb1EE9to_stringEab", scope: !979, file: !499, line: 1433, type: !1247, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!1249, !1000, !90, !40}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1250 = !{!1251, !39}
!1251 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 19)
!1252 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 21, type: !1253, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{null, !1255}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1256 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 57, type: !1257, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !1255, !1259, !40}
!1259 = !DIBasicType(name: "uint19", size: 19, encoding: DW_ATE_unsigned)
!1260 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 127, type: !1261, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !1255, !40}
!1263 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 128, type: !1264, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !1255, !86}
!1266 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 129, type: !1267, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !1255, !90}
!1269 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 130, type: !1270, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !1255, !106}
!1272 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 131, type: !1273, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !1255, !28}
!1275 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 132, type: !1276, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !1255, !115}
!1278 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 133, type: !1279, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{null, !1255, !38}
!1281 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 134, type: !1282, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !1255, !123}
!1284 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 135, type: !1285, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !1255, !128}
!1287 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 136, type: !1288, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{null, !1255, !133}
!1290 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 137, type: !1291, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !1255, !435}
!1293 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 138, type: !1294, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !1255, !440}
!1296 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 140, type: !1297, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !1255, !149}
!1299 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 141, type: !1300, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !1255, !153}
!1302 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 142, type: !1303, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !1255, !450}
!1305 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 145, type: !1306, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null, !1255, !84}
!1308 = !DISubprogram(name: "ap_int", scope: !976, file: !392, line: 147, type: !1309, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{null, !1255, !84, !90}
!1311 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi19EEaSERKS0_", scope: !976, file: !392, line: 152, type: !1312, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!1314, !1255, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !976, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !976)
!1317 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi19EEaSERVKS0_", scope: !976, file: !392, line: 161, type: !1318, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!1314, !1255, !1320}
!1320 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !976)
!1323 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi19EEaSERKS0_", scope: !976, file: !392, line: 167, type: !1324, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !1326, !1315}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1327 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi19EEaSERVKS0_", scope: !976, file: !392, line: 171, type: !1328, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1326, !1320}
!1330 = !{!1251}
!1331 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi18ELb1EEntEv", scope: !741, file: !499, line: 901, type: !882, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!1332 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi18ELb1EEcoEv", scope: !741, file: !499, line: 907, type: !965, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!1333 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi18ELb1EE5rangeEii", scope: !741, file: !499, line: 1045, type: !1334, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!1336, !767, !38, !38}
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<18, true>", file: !436, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi18ELb1EE")
!1337 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi18ELb1EE5rangeEii", scope: !741, file: !499, line: 1052, type: !1338, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!1336, !762, !38, !38}
!1340 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi18ELb1EE5rangeEv", scope: !741, file: !499, line: 1076, type: !1341, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!1336, !767}
!1343 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi18ELb1EE5rangeEv", scope: !741, file: !499, line: 1080, type: !1344, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!1336, !762}
!1346 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi18ELb1EEclEii", scope: !741, file: !499, line: 1084, type: !1334, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!1347 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi18ELb1EEclEii", scope: !741, file: !499, line: 1088, type: !1338, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!1348 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi18ELb1EEixEi", scope: !741, file: !499, line: 1126, type: !1349, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1351, !767, !38}
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<18, true>", file: !436, line: 146, flags: DIFlagFwdDecl, identifier: "_ZTS10ap_bit_refILi18ELb1EE")
!1352 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi18ELb1EEixEi", scope: !741, file: !499, line: 1142, type: !937, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!1353 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi18ELb1EE3bitEi", scope: !741, file: !499, line: 1155, type: !1349, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!1354 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi18ELb1EE3bitEi", scope: !741, file: !499, line: 1170, type: !937, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!1355 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi18ELb1EE17countLeadingZerosEv", scope: !741, file: !499, line: 1193, type: !760, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!1356 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb1EE10and_reduceEv", scope: !741, file: !499, line: 1413, type: !882, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!1357 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb1EE11nand_reduceEv", scope: !741, file: !499, line: 1414, type: !882, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!1358 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb1EE9or_reduceEv", scope: !741, file: !499, line: 1415, type: !882, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!1359 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb1EE10nor_reduceEv", scope: !741, file: !499, line: 1416, type: !882, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!1360 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb1EE10xor_reduceEv", scope: !741, file: !499, line: 1417, type: !882, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!1361 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb1EE11xnor_reduceEv", scope: !741, file: !499, line: 1418, type: !882, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!1362 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi18ELb1EE9to_stringEab", scope: !741, file: !499, line: 1433, type: !1363, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!1249, !762, !90, !40}
!1365 = !{!1366, !39}
!1366 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 18)
!1367 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 21, type: !1368, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1371 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 57, type: !1372, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{null, !1370, !1374, !40}
!1374 = !DIBasicType(name: "uint18", size: 18, encoding: DW_ATE_unsigned)
!1375 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 127, type: !1376, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !1370, !40}
!1378 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 128, type: !1379, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !1370, !86}
!1381 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 129, type: !1382, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !1370, !90}
!1384 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 130, type: !1385, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !1370, !106}
!1387 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 131, type: !1388, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !1370, !28}
!1390 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 132, type: !1391, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !1370, !115}
!1393 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 133, type: !1394, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !1370, !38}
!1396 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 134, type: !1397, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !1370, !123}
!1399 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 135, type: !1400, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !1370, !128}
!1402 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 136, type: !1403, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{null, !1370, !133}
!1405 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 137, type: !1406, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !1370, !435}
!1408 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 138, type: !1409, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{null, !1370, !440}
!1411 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 140, type: !1412, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{null, !1370, !149}
!1414 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 141, type: !1415, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null, !1370, !153}
!1417 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 142, type: !1418, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !1370, !450}
!1420 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 145, type: !1421, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{null, !1370, !84}
!1423 = !DISubprogram(name: "ap_int", scope: !738, file: !392, line: 147, type: !1424, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{null, !1370, !84, !90}
!1426 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi18EEaSERKS0_", scope: !738, file: !392, line: 152, type: !1427, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!1429, !1370, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !738, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!1432 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi18EEaSERVKS0_", scope: !738, file: !392, line: 161, type: !1433, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!1429, !1370, !1435}
!1435 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !738)
!1438 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi18EEaSERKS0_", scope: !738, file: !392, line: 167, type: !1439, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !1441, !1430}
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1442 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi18EEaSERVKS0_", scope: !738, file: !392, line: 171, type: !1443, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !1441, !1435}
!1445 = !{!1366}
!1446 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi17ELb1EEntEv", scope: !498, file: !499, line: 901, type: !643, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!1447 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi17ELb1EEcoEv", scope: !498, file: !499, line: 907, type: !727, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!1448 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi17ELb1EE5rangeEii", scope: !498, file: !499, line: 1045, type: !1449, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!1451, !525, !38, !38}
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<17, true>", file: !436, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi17ELb1EE")
!1452 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi17ELb1EE5rangeEii", scope: !498, file: !499, line: 1052, type: !1453, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!1451, !520, !38, !38}
!1455 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi17ELb1EE5rangeEv", scope: !498, file: !499, line: 1076, type: !1456, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!1451, !525}
!1458 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi17ELb1EE5rangeEv", scope: !498, file: !499, line: 1080, type: !1459, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!1451, !520}
!1461 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi17ELb1EEclEii", scope: !498, file: !499, line: 1084, type: !1449, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!1462 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi17ELb1EEclEii", scope: !498, file: !499, line: 1088, type: !1453, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!1463 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi17ELb1EEixEi", scope: !498, file: !499, line: 1126, type: !1464, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!1466, !525, !38}
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<17, true>", file: !1467, line: 761, size: 128, flags: DIFlagTypePassByReference, elements: !1468, templateParams: !1553, identifier: "_ZTS10ap_bit_refILi17ELb1EE")
!1467 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_int_ref.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!1468 = !{!1469, !1472, !1473, !1479, !1483, !1488, !1492, !1493, !1497, !1500, !1503, !1506, !1509, !1512, !1515, !1518, !1521, !1524, !1527, !1530, !1533, !1536, !1539, !1542, !1543, !1546, !1547, !1550}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !1466, file: !1467, line: 766, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !1466, file: !1467, line: 765, baseType: !498)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !1466, file: !1467, line: 767, baseType: !38, size: 32, offset: 64)
!1473 = !DISubprogram(name: "ap_bit_ref", scope: !1466, file: !1467, line: 771, type: !1474, isLocal: false, isDefinition: false, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: false)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{null, !1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1477 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1466)
!1479 = !DISubprogram(name: "ap_bit_ref", scope: !1466, file: !1467, line: 774, type: !1480, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !1476, !1482, !38}
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1483 = !DISubprogram(name: "ap_bit_ref", scope: !1466, file: !1467, line: 776, type: !1484, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: false)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{null, !1476, !1486, !38}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1471)
!1488 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi17ELb1EEcvbEv", scope: !1466, file: !1467, line: 779, type: !1489, isLocal: false, isDefinition: false, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!40, !1491}
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1492 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi17ELb1EE7to_boolEv", scope: !1466, file: !1467, line: 780, type: !1489, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false)
!1493 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEb", scope: !1466, file: !1467, line: 798, type: !1494, isLocal: false, isDefinition: false, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!1496, !1476, !40}
!1496 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1466, size: 64)
!1497 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEc", scope: !1466, file: !1467, line: 799, type: !1498, isLocal: false, isDefinition: false, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!1496, !1476, !86}
!1500 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEa", scope: !1466, file: !1467, line: 800, type: !1501, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!1496, !1476, !90}
!1503 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEh", scope: !1466, file: !1467, line: 801, type: !1504, isLocal: false, isDefinition: false, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: false)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!1496, !1476, !106}
!1506 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEs", scope: !1466, file: !1467, line: 802, type: !1507, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!1496, !1476, !28}
!1509 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEt", scope: !1466, file: !1467, line: 803, type: !1510, isLocal: false, isDefinition: false, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: false)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!1496, !1476, !115}
!1512 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEi", scope: !1466, file: !1467, line: 804, type: !1513, isLocal: false, isDefinition: false, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!1496, !1476, !38}
!1515 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEj", scope: !1466, file: !1467, line: 805, type: !1516, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!1496, !1476, !123}
!1518 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEl", scope: !1466, file: !1467, line: 806, type: !1519, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!1496, !1476, !128}
!1521 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEm", scope: !1466, file: !1467, line: 807, type: !1522, isLocal: false, isDefinition: false, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: false)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!1496, !1476, !133}
!1524 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEx", scope: !1466, file: !1467, line: 808, type: !1525, isLocal: false, isDefinition: false, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: false)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!1496, !1476, !435}
!1527 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEy", scope: !1466, file: !1467, line: 809, type: !1528, isLocal: false, isDefinition: false, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!1496, !1476, !440}
!1530 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEDh", scope: !1466, file: !1467, line: 820, type: !1531, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!1496, !1476, !450}
!1533 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEf", scope: !1466, file: !1467, line: 821, type: !1534, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!1496, !1476, !153}
!1536 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSEd", scope: !1466, file: !1467, line: 822, type: !1537, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!1496, !1476, !149}
!1539 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb1EEaSERKS0_", scope: !1466, file: !1467, line: 839, type: !1540, isLocal: false, isDefinition: false, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!1496, !1476, !1477}
!1542 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi17ELb1EE3getEv", scope: !1466, file: !1467, line: 959, type: !1489, isLocal: false, isDefinition: false, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false)
!1543 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi17ELb1EE3getEv", scope: !1466, file: !1467, line: 961, type: !1544, isLocal: false, isDefinition: false, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!40, !1476}
!1546 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi17ELb1EEcoEv", scope: !1466, file: !1467, line: 968, type: !1489, isLocal: false, isDefinition: false, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: false)
!1547 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi17ELb1EE6lengthEv", scope: !1466, file: !1467, line: 973, type: !1548, isLocal: false, isDefinition: false, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: false)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!38, !1491}
!1550 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi17ELb1EE9to_stringEv", scope: !1466, file: !1467, line: 979, type: !1551, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!1249, !1491}
!1553 = !{!1554, !39}
!1554 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 17)
!1555 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi17ELb1EEixEi", scope: !498, file: !499, line: 1142, type: !698, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!1556 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi17ELb1EE3bitEi", scope: !498, file: !499, line: 1155, type: !1464, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!1557 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi17ELb1EE3bitEi", scope: !498, file: !499, line: 1170, type: !698, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!1558 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi17ELb1EE17countLeadingZerosEv", scope: !498, file: !499, line: 1193, type: !518, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!1559 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb1EE10and_reduceEv", scope: !498, file: !499, line: 1413, type: !643, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!1560 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb1EE11nand_reduceEv", scope: !498, file: !499, line: 1414, type: !643, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!1561 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb1EE9or_reduceEv", scope: !498, file: !499, line: 1415, type: !643, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!1562 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb1EE10nor_reduceEv", scope: !498, file: !499, line: 1416, type: !643, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!1563 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb1EE10xor_reduceEv", scope: !498, file: !499, line: 1417, type: !643, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!1564 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb1EE11xnor_reduceEv", scope: !498, file: !499, line: 1418, type: !643, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!1565 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi17ELb1EE9to_stringEab", scope: !498, file: !499, line: 1433, type: !1566, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!1249, !520, !90, !40}
!1568 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 21, type: !1569, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !1571}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1572 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 57, type: !1573, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !1571, !1575, !40}
!1575 = !DIBasicType(name: "uint17", size: 17, encoding: DW_ATE_unsigned)
!1576 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 127, type: !1577, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{null, !1571, !40}
!1579 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 128, type: !1580, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !1571, !86}
!1582 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 129, type: !1583, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{null, !1571, !90}
!1585 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 130, type: !1586, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !1571, !106}
!1588 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 131, type: !1589, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{null, !1571, !28}
!1591 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 132, type: !1592, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{null, !1571, !115}
!1594 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 133, type: !1595, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !1571, !38}
!1597 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 134, type: !1598, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{null, !1571, !123}
!1600 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 135, type: !1601, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null, !1571, !128}
!1603 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 136, type: !1604, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1571, !133}
!1606 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 137, type: !1607, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{null, !1571, !435}
!1609 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 138, type: !1610, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{null, !1571, !440}
!1612 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 140, type: !1613, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null, !1571, !149}
!1615 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 141, type: !1616, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{null, !1571, !153}
!1618 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 142, type: !1619, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{null, !1571, !450}
!1621 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 145, type: !1622, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{null, !1571, !84}
!1624 = !DISubprogram(name: "ap_int", scope: !495, file: !392, line: 147, type: !1625, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !1571, !84, !90}
!1627 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi17EEaSERKS0_", scope: !495, file: !392, line: 152, type: !1628, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!1630, !1571, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !495, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!1633 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi17EEaSERVKS0_", scope: !495, file: !392, line: 161, type: !1634, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!1630, !1571, !1636}
!1636 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !495)
!1639 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi17EEaSERKS0_", scope: !495, file: !392, line: 167, type: !1640, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !1642, !1631}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1643 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi17EEaSERVKS0_", scope: !495, file: !392, line: 171, type: !1644, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !1642, !1636}
!1646 = !{!1554}
!1647 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi16ELb1EEntEv", scope: !172, file: !173, line: 947, type: !305, isLocal: false, isDefinition: false, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: false)
!1648 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi16ELb1EEcoEv", scope: !172, file: !173, line: 953, type: !481, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!1649 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi16ELb1EE5rangeEii", scope: !172, file: !173, line: 1091, type: !1650, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!1652, !186, !38, !38}
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<16, true>", file: !47, line: 189, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi16ELb1EE")
!1653 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi16ELb1EE5rangeEii", scope: !172, file: !173, line: 1098, type: !1654, isLocal: false, isDefinition: false, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: false)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!1652, !181, !38, !38}
!1656 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi16ELb1EE5rangeEv", scope: !172, file: !173, line: 1122, type: !1657, isLocal: false, isDefinition: false, scopeLine: 1122, flags: DIFlagPrototyped, isOptimized: false)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!1652, !186}
!1659 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi16ELb1EE5rangeEv", scope: !172, file: !173, line: 1126, type: !1660, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!1652, !181}
!1662 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi16ELb1EEclEii", scope: !172, file: !173, line: 1130, type: !1650, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: false)
!1663 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi16ELb1EEclEii", scope: !172, file: !173, line: 1134, type: !1654, isLocal: false, isDefinition: false, scopeLine: 1134, flags: DIFlagPrototyped, isOptimized: false)
!1664 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi16ELb1EEixEi", scope: !172, file: !173, line: 1172, type: !1665, isLocal: false, isDefinition: false, scopeLine: 1172, flags: DIFlagPrototyped, isOptimized: false)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!1667, !186, !38}
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<16, true>", file: !1467, line: 761, size: 128, flags: DIFlagTypePassByReference, elements: !1668, templateParams: !1753, identifier: "_ZTS10ap_bit_refILi16ELb1EE")
!1668 = !{!1669, !1672, !1673, !1679, !1683, !1688, !1692, !1693, !1697, !1700, !1703, !1706, !1709, !1712, !1715, !1718, !1721, !1724, !1727, !1730, !1733, !1736, !1739, !1742, !1743, !1746, !1747, !1750}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !1667, file: !1467, line: 766, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !1667, file: !1467, line: 765, baseType: !172)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !1667, file: !1467, line: 767, baseType: !38, size: 32, offset: 64)
!1673 = !DISubprogram(name: "ap_bit_ref", scope: !1667, file: !1467, line: 771, type: !1674, isLocal: false, isDefinition: false, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: false)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1677 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1667)
!1679 = !DISubprogram(name: "ap_bit_ref", scope: !1667, file: !1467, line: 774, type: !1680, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{null, !1676, !1682, !38}
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1683 = !DISubprogram(name: "ap_bit_ref", scope: !1667, file: !1467, line: 776, type: !1684, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: false)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !1676, !1686, !38}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1671)
!1688 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi16ELb1EEcvbEv", scope: !1667, file: !1467, line: 779, type: !1689, isLocal: false, isDefinition: false, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!40, !1691}
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1692 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi16ELb1EE7to_boolEv", scope: !1667, file: !1467, line: 780, type: !1689, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false)
!1693 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEb", scope: !1667, file: !1467, line: 798, type: !1694, isLocal: false, isDefinition: false, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!1696, !1676, !40}
!1696 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1667, size: 64)
!1697 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEc", scope: !1667, file: !1467, line: 799, type: !1698, isLocal: false, isDefinition: false, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!1696, !1676, !86}
!1700 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEa", scope: !1667, file: !1467, line: 800, type: !1701, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!1696, !1676, !90}
!1703 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEh", scope: !1667, file: !1467, line: 801, type: !1704, isLocal: false, isDefinition: false, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: false)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!1696, !1676, !106}
!1706 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEs", scope: !1667, file: !1467, line: 802, type: !1707, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!1696, !1676, !28}
!1709 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEt", scope: !1667, file: !1467, line: 803, type: !1710, isLocal: false, isDefinition: false, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: false)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!1696, !1676, !115}
!1712 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEi", scope: !1667, file: !1467, line: 804, type: !1713, isLocal: false, isDefinition: false, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!1696, !1676, !38}
!1715 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEj", scope: !1667, file: !1467, line: 805, type: !1716, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!1696, !1676, !123}
!1718 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEl", scope: !1667, file: !1467, line: 806, type: !1719, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!1696, !1676, !128}
!1721 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEm", scope: !1667, file: !1467, line: 807, type: !1722, isLocal: false, isDefinition: false, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: false)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!1696, !1676, !133}
!1724 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEx", scope: !1667, file: !1467, line: 808, type: !1725, isLocal: false, isDefinition: false, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: false)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!1696, !1676, !435}
!1727 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEy", scope: !1667, file: !1467, line: 809, type: !1728, isLocal: false, isDefinition: false, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!1696, !1676, !440}
!1730 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEDh", scope: !1667, file: !1467, line: 820, type: !1731, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!1696, !1676, !450}
!1733 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEf", scope: !1667, file: !1467, line: 821, type: !1734, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!1696, !1676, !153}
!1736 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSEd", scope: !1667, file: !1467, line: 822, type: !1737, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!1696, !1676, !149}
!1739 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb1EEaSERKS0_", scope: !1667, file: !1467, line: 839, type: !1740, isLocal: false, isDefinition: false, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!1696, !1676, !1677}
!1742 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi16ELb1EE3getEv", scope: !1667, file: !1467, line: 959, type: !1689, isLocal: false, isDefinition: false, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false)
!1743 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi16ELb1EE3getEv", scope: !1667, file: !1467, line: 961, type: !1744, isLocal: false, isDefinition: false, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!40, !1676}
!1746 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi16ELb1EEcoEv", scope: !1667, file: !1467, line: 968, type: !1689, isLocal: false, isDefinition: false, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: false)
!1747 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi16ELb1EE6lengthEv", scope: !1667, file: !1467, line: 973, type: !1748, isLocal: false, isDefinition: false, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: false)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!38, !1691}
!1750 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi16ELb1EE9to_stringEv", scope: !1667, file: !1467, line: 979, type: !1751, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!1249, !1691}
!1753 = !{!478, !39}
!1754 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi16ELb1EEixEi", scope: !172, file: !173, line: 1188, type: !360, isLocal: false, isDefinition: false, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: false)
!1755 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi16ELb1EE3bitEi", scope: !172, file: !173, line: 1201, type: !1665, isLocal: false, isDefinition: false, scopeLine: 1201, flags: DIFlagPrototyped, isOptimized: false)
!1756 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi16ELb1EE3bitEi", scope: !172, file: !173, line: 1216, type: !360, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false)
!1757 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi16ELb1EE17countLeadingZerosEv", scope: !172, file: !173, line: 1239, type: !179, isLocal: false, isDefinition: false, scopeLine: 1239, flags: DIFlagPrototyped, isOptimized: false)
!1758 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb1EE10and_reduceEv", scope: !172, file: !173, line: 1459, type: !305, isLocal: false, isDefinition: false, scopeLine: 1459, flags: DIFlagPrototyped, isOptimized: false)
!1759 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb1EE11nand_reduceEv", scope: !172, file: !173, line: 1460, type: !305, isLocal: false, isDefinition: false, scopeLine: 1460, flags: DIFlagPrototyped, isOptimized: false)
!1760 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb1EE9or_reduceEv", scope: !172, file: !173, line: 1461, type: !305, isLocal: false, isDefinition: false, scopeLine: 1461, flags: DIFlagPrototyped, isOptimized: false)
!1761 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb1EE10nor_reduceEv", scope: !172, file: !173, line: 1462, type: !305, isLocal: false, isDefinition: false, scopeLine: 1462, flags: DIFlagPrototyped, isOptimized: false)
!1762 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb1EE10xor_reduceEv", scope: !172, file: !173, line: 1463, type: !305, isLocal: false, isDefinition: false, scopeLine: 1463, flags: DIFlagPrototyped, isOptimized: false)
!1763 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb1EE11xnor_reduceEv", scope: !172, file: !173, line: 1464, type: !305, isLocal: false, isDefinition: false, scopeLine: 1464, flags: DIFlagPrototyped, isOptimized: false)
!1764 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi16ELb1EE9to_stringEab", scope: !172, file: !173, line: 1479, type: !1765, isLocal: false, isDefinition: false, scopeLine: 1479, flags: DIFlagPrototyped, isOptimized: false)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!1249, !181, !90, !40}
!1767 = !DISubprogram(name: "to_char", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_charEv", scope: !20, file: !21, line: 1066, type: !1768, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!86, !78}
!1770 = !DISubprogram(name: "to_int", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", scope: !20, file: !21, line: 1068, type: !76, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false)
!1771 = !DISubprogram(name: "to_uint", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", scope: !20, file: !21, line: 1070, type: !1772, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!123, !78}
!1774 = !DISubprogram(name: "to_int64", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", scope: !20, file: !21, line: 1072, type: !1775, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!138, !78}
!1777 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", scope: !20, file: !21, line: 1074, type: !1778, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: false)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!144, !78}
!1780 = !DISubprogram(name: "to_ap_int", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_ap_intEv", scope: !20, file: !21, line: 1076, type: !1781, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!391, !78}
!1783 = !DISubprogram(name: "to_double", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", scope: !20, file: !21, line: 1080, type: !1784, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!149, !78}
!1786 = !DISubprogram(name: "to_float", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", scope: !20, file: !21, line: 1130, type: !1787, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: false)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!153, !78}
!1789 = !DISubprogram(name: "to_half", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_halfEv", scope: !20, file: !21, line: 1177, type: !1790, isLocal: false, isDefinition: false, scopeLine: 1177, flags: DIFlagPrototyped, isOptimized: false)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!157, !78}
!1792 = !DISubprogram(name: "operator long double", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcveEv", scope: !20, file: !21, line: 1223, type: !1793, isLocal: false, isDefinition: false, scopeLine: 1223, flags: DIFlagPrototyped, isOptimized: false)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!1795, !78}
!1795 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!1796 = !DISubprogram(name: "operator double", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", scope: !20, file: !21, line: 1225, type: !1784, isLocal: false, isDefinition: false, scopeLine: 1225, flags: DIFlagPrototyped, isOptimized: false)
!1797 = !DISubprogram(name: "operator float", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", scope: !20, file: !21, line: 1227, type: !1787, isLocal: false, isDefinition: false, scopeLine: 1227, flags: DIFlagPrototyped, isOptimized: false)
!1798 = !DISubprogram(name: "operator __fp16", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvDhEv", scope: !20, file: !21, line: 1229, type: !1790, isLocal: false, isDefinition: false, scopeLine: 1229, flags: DIFlagPrototyped, isOptimized: false)
!1799 = !DISubprogram(name: "operator bool", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvbEv", scope: !20, file: !21, line: 1231, type: !1800, isLocal: false, isDefinition: false, scopeLine: 1231, flags: DIFlagPrototyped, isOptimized: false)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!40, !78}
!1802 = !DISubprogram(name: "operator char", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", scope: !20, file: !21, line: 1233, type: !1768, isLocal: false, isDefinition: false, scopeLine: 1233, flags: DIFlagPrototyped, isOptimized: false)
!1803 = !DISubprogram(name: "operator signed char", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", scope: !20, file: !21, line: 1235, type: !1804, isLocal: false, isDefinition: false, scopeLine: 1235, flags: DIFlagPrototyped, isOptimized: false)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!90, !78}
!1806 = !DISubprogram(name: "operator unsigned char", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", scope: !20, file: !21, line: 1237, type: !1807, isLocal: false, isDefinition: false, scopeLine: 1237, flags: DIFlagPrototyped, isOptimized: false)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!106, !78}
!1809 = !DISubprogram(name: "operator short", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", scope: !20, file: !21, line: 1239, type: !1810, isLocal: false, isDefinition: false, scopeLine: 1239, flags: DIFlagPrototyped, isOptimized: false)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!28, !78}
!1812 = !DISubprogram(name: "operator unsigned short", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", scope: !20, file: !21, line: 1241, type: !1813, isLocal: false, isDefinition: false, scopeLine: 1241, flags: DIFlagPrototyped, isOptimized: false)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!115, !78}
!1815 = !DISubprogram(name: "operator int", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", scope: !20, file: !21, line: 1243, type: !76, isLocal: false, isDefinition: false, scopeLine: 1243, flags: DIFlagPrototyped, isOptimized: false)
!1816 = !DISubprogram(name: "operator unsigned int", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", scope: !20, file: !21, line: 1245, type: !1772, isLocal: false, isDefinition: false, scopeLine: 1245, flags: DIFlagPrototyped, isOptimized: false)
!1817 = !DISubprogram(name: "operator long", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", scope: !20, file: !21, line: 1249, type: !1818, isLocal: false, isDefinition: false, scopeLine: 1249, flags: DIFlagPrototyped, isOptimized: false)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!128, !78}
!1820 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", scope: !20, file: !21, line: 1251, type: !1821, isLocal: false, isDefinition: false, scopeLine: 1251, flags: DIFlagPrototyped, isOptimized: false)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!133, !78}
!1823 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", scope: !20, file: !21, line: 1258, type: !1778, isLocal: false, isDefinition: false, scopeLine: 1258, flags: DIFlagPrototyped, isOptimized: false)
!1824 = !DISubprogram(name: "operator long long", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", scope: !20, file: !21, line: 1260, type: !1775, isLocal: false, isDefinition: false, scopeLine: 1260, flags: DIFlagPrototyped, isOptimized: false)
!1825 = !DISubprogram(name: "length", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", scope: !20, file: !21, line: 1262, type: !76, isLocal: false, isDefinition: false, scopeLine: 1262, flags: DIFlagPrototyped, isOptimized: false)
!1826 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", scope: !20, file: !21, line: 1275, type: !76, isLocal: false, isDefinition: false, scopeLine: 1275, flags: DIFlagPrototyped, isOptimized: false)
!1827 = !DISubprogram(name: "operator++", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", scope: !20, file: !21, line: 1423, type: !1828, isLocal: false, isDefinition: false, scopeLine: 1423, flags: DIFlagPrototyped, isOptimized: false)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!162, !68}
!1830 = !DISubprogram(name: "operator--", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", scope: !20, file: !21, line: 1429, type: !1828, isLocal: false, isDefinition: false, scopeLine: 1429, flags: DIFlagPrototyped, isOptimized: false)
!1831 = !DISubprogram(name: "operator++", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", scope: !20, file: !21, line: 1435, type: !1832, isLocal: false, isDefinition: false, scopeLine: 1435, flags: DIFlagPrototyped, isOptimized: false)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!79, !68, !38}
!1834 = !DISubprogram(name: "operator--", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", scope: !20, file: !21, line: 1442, type: !1832, isLocal: false, isDefinition: false, scopeLine: 1442, flags: DIFlagPrototyped, isOptimized: false)
!1835 = !DISubprogram(name: "operator+", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", scope: !20, file: !21, line: 1450, type: !1836, isLocal: false, isDefinition: false, scopeLine: 1450, flags: DIFlagPrototyped, isOptimized: false)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!1838, !68}
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1839, file: !21, line: 137, baseType: !16)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_fixed_factory<16, 16, true>", file: !21, line: 136, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !1840, identifier: "_ZTS17_ap_fixed_factoryILi16ELi16ELb1EE")
!1840 = !{!387, !1841, !388}
!1841 = !DITemplateValueParameter(name: "_AP_I2", type: !38, value: i32 16)
!1842 = !DISubprogram(name: "operator-", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", scope: !20, file: !21, line: 1452, type: !1843, isLocal: false, isDefinition: false, scopeLine: 1452, flags: DIFlagPrototyped, isOptimized: false)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!1845, !78}
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1846, file: !21, line: 137, baseType: !1849)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_fixed_factory<17, 17, true>", file: !21, line: 136, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !1847, identifier: "_ZTS17_ap_fixed_factoryILi17ELi17ELb1EE")
!1847 = !{!494, !1848, !388}
!1848 = !DITemplateValueParameter(name: "_AP_I2", type: !38, value: i32 17)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed<17, 17, AP_TRN, AP_WRAP, 0>", file: !1850, line: 18, size: 32, flags: DIFlagTypePassByValue, elements: !1851, templateParams: !4682, identifier: "_ZTS8ap_fixedILi17ELi17EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!1850 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_fixed.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!1851 = !{!1852, !4605, !4609, !4612, !4615, !4618, !4621, !4624, !4627, !4630, !4633, !4636, !4639, !4642, !4645, !4648, !4651, !4654, !4657, !4660, !4663, !4669, !4674, !4679}
!1852 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1849, baseType: !1853)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed_base<17, 17, true, AP_TRN, AP_WRAP, 0>", file: !1854, line: 110, size: 32, flags: DIFlagTypePassByValue, elements: !1855, templateParams: !3911, identifier: "_ZTS13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!1854 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_fixed_base.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1865, !1868, !1871, !1876, !1877, !1880, !1883, !1886, !1889, !1892, !1895, !1898, !1901, !1904, !1907, !1910, !1913, !1916, !1919, !1922, !1925, !1928, !1932, !1935, !1938, !1941, !1944, !1945, !1948, !1951, !1954, !1957, !1960, !1963, !1966, !1969, !1970, !1971, !1972, !1975, !1976, !1979, !1982, !1985, !1988, !1989, !1990, !1993, !1996, !1997, !1998, !1999, !2000, !2003, !2004, !2007, !2008, !2012, !3837, !3840, !3841, !3844, !3847, !3848, !3851, !3852, !3855, !3858, !3859, !3860, !3863, !3864, !3865, !3866, !3867, !3868, !3913, !3916, !3917, !3918, !3921, !4580, !4583, !4586, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4598, !4601, !4602}
!1856 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1853, baseType: !502)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1853, file: !1854, line: 113, baseType: !42, flags: DIFlagStaticMember, extraData: i32 17)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "iwidth", scope: !1853, file: !1854, line: 114, baseType: !42, flags: DIFlagStaticMember, extraData: i32 17)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "qmode", scope: !1853, file: !1854, line: 115, baseType: !45, flags: DIFlagStaticMember, extraData: i32 5)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "omode", scope: !1853, file: !1854, line: 116, baseType: !57, flags: DIFlagStaticMember, extraData: i32 3)
!1861 = !DISubprogram(name: "report", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6reportEv", scope: !1853, file: !1854, line: 295, type: !1862, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1865 = !DISubprogram(name: "overflow_adjust", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", scope: !1853, file: !1854, line: 300, type: !1866, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{null, !1864, !40, !40, !40, !40}
!1868 = !DISubprogram(name: "quantization_adjust", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", scope: !1853, file: !1854, line: 364, type: !1869, isLocal: false, isDefinition: false, scopeLine: 364, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!40, !1864, !40, !40, !40}
!1871 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE16countLeadingOnesEv", scope: !1853, file: !1854, line: 382, type: !1872, isLocal: false, isDefinition: false, scopeLine: 382, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!38, !1874}
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1853)
!1876 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 395, type: !1862, isLocal: false, isDefinition: false, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false)
!1877 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 456, type: !1878, isLocal: false, isDefinition: false, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: false)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{null, !1864, !84}
!1880 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 462, type: !1881, isLocal: false, isDefinition: false, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !1864, !84, !90}
!1883 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 524, type: !1884, isLocal: false, isDefinition: false, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: false)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{null, !1864, !94}
!1886 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 525, type: !1887, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !1864, !85}
!1889 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 526, type: !1890, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{null, !1864, !101}
!1892 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 527, type: !1893, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !1864, !105}
!1895 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 528, type: !1896, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !1864, !110}
!1898 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 529, type: !1899, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{null, !1864, !114}
!1901 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 530, type: !1902, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{null, !1864, !42}
!1904 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 531, type: !1905, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1864, !122}
!1907 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 532, type: !1908, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !1864, !127}
!1910 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 533, type: !1911, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !1864, !132}
!1913 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 534, type: !1914, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !1864, !559}
!1916 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 535, type: !1917, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !1864, !563}
!1919 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 543, type: !1920, isLocal: false, isDefinition: false, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: false)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{null, !1864, !149}
!1922 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 661, type: !1923, isLocal: false, isDefinition: false, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: false)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !1864, !153}
!1925 = !DISubprogram(name: "ap_fixed_base", scope: !1853, file: !1854, line: 664, type: !1926, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !1864, !450}
!1928 = !DISubprogram(name: "setBits", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", scope: !1853, file: !1854, line: 917, type: !1929, isLocal: false, isDefinition: false, scopeLine: 917, flags: DIFlagPrototyped, isOptimized: false)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!1931, !1864, !440}
!1931 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1853, size: 64)
!1932 = !DISubprogram(name: "bitsToFixed", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", scope: !1853, file: !1854, line: 924, type: !1933, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!1853, !440}
!1935 = !DISubprogram(name: "checkOverflowCsimFix", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE20checkOverflowCsimFixEib", scope: !1853, file: !1854, line: 935, type: !1936, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !1874, !38, !40}
!1938 = !DISubprogram(name: "to_ap_int_base", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", scope: !1853, file: !1854, line: 981, type: !1939, isLocal: false, isDefinition: false, scopeLine: 981, flags: DIFlagPrototyped, isOptimized: false)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!498, !1874, !40}
!1941 = !DISubprogram(name: "to_char", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_charEv", scope: !1853, file: !1854, line: 1020, type: !1942, isLocal: false, isDefinition: false, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: false)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!86, !1874}
!1944 = !DISubprogram(name: "to_int", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", scope: !1853, file: !1854, line: 1022, type: !1872, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!1945 = !DISubprogram(name: "to_uint", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", scope: !1853, file: !1854, line: 1024, type: !1946, isLocal: false, isDefinition: false, scopeLine: 1024, flags: DIFlagPrototyped, isOptimized: false)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!123, !1874}
!1948 = !DISubprogram(name: "to_int64", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", scope: !1853, file: !1854, line: 1026, type: !1949, isLocal: false, isDefinition: false, scopeLine: 1026, flags: DIFlagPrototyped, isOptimized: false)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!435, !1874}
!1951 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", scope: !1853, file: !1854, line: 1028, type: !1952, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!440, !1874}
!1954 = !DISubprogram(name: "to_ap_int", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_ap_intEv", scope: !1853, file: !1854, line: 1030, type: !1955, isLocal: false, isDefinition: false, scopeLine: 1030, flags: DIFlagPrototyped, isOptimized: false)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!495, !1874}
!1957 = !DISubprogram(name: "to_double", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", scope: !1853, file: !1854, line: 1034, type: !1958, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!149, !1874}
!1960 = !DISubprogram(name: "to_float", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", scope: !1853, file: !1854, line: 1084, type: !1961, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!153, !1874}
!1963 = !DISubprogram(name: "to_half", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_halfEv", scope: !1853, file: !1854, line: 1131, type: !1964, isLocal: false, isDefinition: false, scopeLine: 1131, flags: DIFlagPrototyped, isOptimized: false)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!450, !1874}
!1966 = !DISubprogram(name: "operator long double", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcveEv", scope: !1853, file: !1854, line: 1177, type: !1967, isLocal: false, isDefinition: false, scopeLine: 1177, flags: DIFlagPrototyped, isOptimized: false)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!1795, !1874}
!1969 = !DISubprogram(name: "operator double", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", scope: !1853, file: !1854, line: 1179, type: !1958, isLocal: false, isDefinition: false, scopeLine: 1179, flags: DIFlagPrototyped, isOptimized: false)
!1970 = !DISubprogram(name: "operator float", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", scope: !1853, file: !1854, line: 1181, type: !1961, isLocal: false, isDefinition: false, scopeLine: 1181, flags: DIFlagPrototyped, isOptimized: false)
!1971 = !DISubprogram(name: "operator __fp16", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvDhEv", scope: !1853, file: !1854, line: 1183, type: !1964, isLocal: false, isDefinition: false, scopeLine: 1183, flags: DIFlagPrototyped, isOptimized: false)
!1972 = !DISubprogram(name: "operator bool", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvbEv", scope: !1853, file: !1854, line: 1185, type: !1973, isLocal: false, isDefinition: false, scopeLine: 1185, flags: DIFlagPrototyped, isOptimized: false)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!40, !1874}
!1975 = !DISubprogram(name: "operator char", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", scope: !1853, file: !1854, line: 1187, type: !1942, isLocal: false, isDefinition: false, scopeLine: 1187, flags: DIFlagPrototyped, isOptimized: false)
!1976 = !DISubprogram(name: "operator signed char", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", scope: !1853, file: !1854, line: 1189, type: !1977, isLocal: false, isDefinition: false, scopeLine: 1189, flags: DIFlagPrototyped, isOptimized: false)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!90, !1874}
!1979 = !DISubprogram(name: "operator unsigned char", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", scope: !1853, file: !1854, line: 1191, type: !1980, isLocal: false, isDefinition: false, scopeLine: 1191, flags: DIFlagPrototyped, isOptimized: false)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!106, !1874}
!1982 = !DISubprogram(name: "operator short", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", scope: !1853, file: !1854, line: 1193, type: !1983, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!28, !1874}
!1985 = !DISubprogram(name: "operator unsigned short", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", scope: !1853, file: !1854, line: 1195, type: !1986, isLocal: false, isDefinition: false, scopeLine: 1195, flags: DIFlagPrototyped, isOptimized: false)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!115, !1874}
!1988 = !DISubprogram(name: "operator int", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", scope: !1853, file: !1854, line: 1197, type: !1872, isLocal: false, isDefinition: false, scopeLine: 1197, flags: DIFlagPrototyped, isOptimized: false)
!1989 = !DISubprogram(name: "operator unsigned int", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", scope: !1853, file: !1854, line: 1199, type: !1946, isLocal: false, isDefinition: false, scopeLine: 1199, flags: DIFlagPrototyped, isOptimized: false)
!1990 = !DISubprogram(name: "operator long", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", scope: !1853, file: !1854, line: 1203, type: !1991, isLocal: false, isDefinition: false, scopeLine: 1203, flags: DIFlagPrototyped, isOptimized: false)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!128, !1874}
!1993 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", scope: !1853, file: !1854, line: 1205, type: !1994, isLocal: false, isDefinition: false, scopeLine: 1205, flags: DIFlagPrototyped, isOptimized: false)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!133, !1874}
!1996 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", scope: !1853, file: !1854, line: 1212, type: !1952, isLocal: false, isDefinition: false, scopeLine: 1212, flags: DIFlagPrototyped, isOptimized: false)
!1997 = !DISubprogram(name: "operator long long", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", scope: !1853, file: !1854, line: 1214, type: !1949, isLocal: false, isDefinition: false, scopeLine: 1214, flags: DIFlagPrototyped, isOptimized: false)
!1998 = !DISubprogram(name: "length", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", scope: !1853, file: !1854, line: 1216, type: !1872, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false)
!1999 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", scope: !1853, file: !1854, line: 1229, type: !1872, isLocal: false, isDefinition: false, scopeLine: 1229, flags: DIFlagPrototyped, isOptimized: false)
!2000 = !DISubprogram(name: "operator++", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", scope: !1853, file: !1854, line: 1377, type: !2001, isLocal: false, isDefinition: false, scopeLine: 1377, flags: DIFlagPrototyped, isOptimized: false)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!1931, !1864}
!2003 = !DISubprogram(name: "operator--", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", scope: !1853, file: !1854, line: 1383, type: !2001, isLocal: false, isDefinition: false, scopeLine: 1383, flags: DIFlagPrototyped, isOptimized: false)
!2004 = !DISubprogram(name: "operator++", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", scope: !1853, file: !1854, line: 1389, type: !2005, isLocal: false, isDefinition: false, scopeLine: 1389, flags: DIFlagPrototyped, isOptimized: false)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!1875, !1864, !38}
!2007 = !DISubprogram(name: "operator--", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", scope: !1853, file: !1854, line: 1396, type: !2005, isLocal: false, isDefinition: false, scopeLine: 1396, flags: DIFlagPrototyped, isOptimized: false)
!2008 = !DISubprogram(name: "operator+", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", scope: !1853, file: !1854, line: 1404, type: !2009, isLocal: false, isDefinition: false, scopeLine: 1404, flags: DIFlagPrototyped, isOptimized: false)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!2011, !1864}
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1846, file: !1854, line: 91, baseType: !1849)
!2012 = !DISubprogram(name: "operator-", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", scope: !1853, file: !1854, line: 1406, type: !2013, isLocal: false, isDefinition: false, scopeLine: 1406, flags: DIFlagPrototyped, isOptimized: false)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!2015, !1874}
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2016, file: !1854, line: 91, baseType: !2019)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_fixed_factory<18, 18, true>", file: !1854, line: 90, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2017, identifier: "_ZTS17_ap_fixed_factoryILi18ELi18ELb1EE")
!2017 = !{!737, !2018, !388}
!2018 = !DITemplateValueParameter(name: "_AP_I2", type: !38, value: i32 18)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed<18, 18, AP_TRN, AP_WRAP, 0>", file: !1850, line: 18, size: 32, flags: DIFlagTypePassByValue, elements: !2020, templateParams: !3836, identifier: "_ZTS8ap_fixedILi18ELi18EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!2020 = !{!2021, !3759, !3763, !3766, !3769, !3772, !3775, !3778, !3781, !3784, !3787, !3790, !3793, !3796, !3799, !3802, !3805, !3808, !3811, !3814, !3817, !3823, !3828, !3833}
!2021 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2019, baseType: !2022)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed_base<18, 18, true, AP_TRN, AP_WRAP, 0>", file: !1854, line: 110, size: 32, flags: DIFlagTypePassByValue, elements: !2023, templateParams: !3257, identifier: "_ZTS13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!2023 = !{!2024, !2025, !2026, !2027, !2028, !2029, !2033, !2036, !2039, !2044, !2045, !2048, !2051, !2054, !2057, !2060, !2063, !2066, !2069, !2072, !2075, !2078, !2081, !2084, !2087, !2090, !2093, !2096, !2100, !2103, !2106, !2109, !2112, !2113, !2116, !2119, !2122, !2125, !2128, !2131, !2134, !2137, !2138, !2139, !2140, !2143, !2144, !2147, !2150, !2153, !2156, !2157, !2158, !2161, !2164, !2165, !2166, !2167, !2168, !2171, !2172, !2175, !2176, !2179, !3182, !3185, !3186, !3189, !3192, !3193, !3196, !3197, !3200, !3203, !3204, !3205, !3208, !3209, !3210, !3211, !3212, !3213, !3259, !3262, !3263, !3264, !3267, !3734, !3737, !3740, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3752, !3755, !3756}
!2024 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2022, baseType: !744)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2022, file: !1854, line: 113, baseType: !42, flags: DIFlagStaticMember, extraData: i32 18)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "iwidth", scope: !2022, file: !1854, line: 114, baseType: !42, flags: DIFlagStaticMember, extraData: i32 18)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "qmode", scope: !2022, file: !1854, line: 115, baseType: !45, flags: DIFlagStaticMember, extraData: i32 5)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "omode", scope: !2022, file: !1854, line: 116, baseType: !57, flags: DIFlagStaticMember, extraData: i32 3)
!2029 = !DISubprogram(name: "report", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6reportEv", scope: !2022, file: !1854, line: 295, type: !2030, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !2032}
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2033 = !DISubprogram(name: "overflow_adjust", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", scope: !2022, file: !1854, line: 300, type: !2034, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !2032, !40, !40, !40, !40}
!2036 = !DISubprogram(name: "quantization_adjust", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", scope: !2022, file: !1854, line: 364, type: !2037, isLocal: false, isDefinition: false, scopeLine: 364, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!40, !2032, !40, !40, !40}
!2039 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE16countLeadingOnesEv", scope: !2022, file: !1854, line: 382, type: !2040, isLocal: false, isDefinition: false, scopeLine: 382, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!38, !2042}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2022)
!2044 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 395, type: !2030, isLocal: false, isDefinition: false, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false)
!2045 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 456, type: !2046, isLocal: false, isDefinition: false, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: false)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !2032, !84}
!2048 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 462, type: !2049, isLocal: false, isDefinition: false, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{null, !2032, !84, !90}
!2051 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 524, type: !2052, isLocal: false, isDefinition: false, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: false)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !2032, !94}
!2054 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 525, type: !2055, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{null, !2032, !85}
!2057 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 526, type: !2058, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !2032, !101}
!2060 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 527, type: !2061, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{null, !2032, !105}
!2063 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 528, type: !2064, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{null, !2032, !110}
!2066 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 529, type: !2067, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{null, !2032, !114}
!2069 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 530, type: !2070, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{null, !2032, !42}
!2072 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 531, type: !2073, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{null, !2032, !122}
!2075 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 532, type: !2076, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null, !2032, !127}
!2078 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 533, type: !2079, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !2032, !132}
!2081 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 534, type: !2082, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{null, !2032, !559}
!2084 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 535, type: !2085, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{null, !2032, !563}
!2087 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 543, type: !2088, isLocal: false, isDefinition: false, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: false)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !2032, !149}
!2090 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 661, type: !2091, isLocal: false, isDefinition: false, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: false)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null, !2032, !153}
!2093 = !DISubprogram(name: "ap_fixed_base", scope: !2022, file: !1854, line: 664, type: !2094, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !2032, !450}
!2096 = !DISubprogram(name: "setBits", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", scope: !2022, file: !1854, line: 917, type: !2097, isLocal: false, isDefinition: false, scopeLine: 917, flags: DIFlagPrototyped, isOptimized: false)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!2099, !2032, !440}
!2099 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2022, size: 64)
!2100 = !DISubprogram(name: "bitsToFixed", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", scope: !2022, file: !1854, line: 924, type: !2101, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!2022, !440}
!2103 = !DISubprogram(name: "checkOverflowCsimFix", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE20checkOverflowCsimFixEib", scope: !2022, file: !1854, line: 935, type: !2104, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{null, !2042, !38, !40}
!2106 = !DISubprogram(name: "to_ap_int_base", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", scope: !2022, file: !1854, line: 981, type: !2107, isLocal: false, isDefinition: false, scopeLine: 981, flags: DIFlagPrototyped, isOptimized: false)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!741, !2042, !40}
!2109 = !DISubprogram(name: "to_char", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_charEv", scope: !2022, file: !1854, line: 1020, type: !2110, isLocal: false, isDefinition: false, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: false)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!86, !2042}
!2112 = !DISubprogram(name: "to_int", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", scope: !2022, file: !1854, line: 1022, type: !2040, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!2113 = !DISubprogram(name: "to_uint", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", scope: !2022, file: !1854, line: 1024, type: !2114, isLocal: false, isDefinition: false, scopeLine: 1024, flags: DIFlagPrototyped, isOptimized: false)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!123, !2042}
!2116 = !DISubprogram(name: "to_int64", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", scope: !2022, file: !1854, line: 1026, type: !2117, isLocal: false, isDefinition: false, scopeLine: 1026, flags: DIFlagPrototyped, isOptimized: false)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!435, !2042}
!2119 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", scope: !2022, file: !1854, line: 1028, type: !2120, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!440, !2042}
!2122 = !DISubprogram(name: "to_ap_int", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_ap_intEv", scope: !2022, file: !1854, line: 1030, type: !2123, isLocal: false, isDefinition: false, scopeLine: 1030, flags: DIFlagPrototyped, isOptimized: false)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!738, !2042}
!2125 = !DISubprogram(name: "to_double", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", scope: !2022, file: !1854, line: 1034, type: !2126, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!149, !2042}
!2128 = !DISubprogram(name: "to_float", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", scope: !2022, file: !1854, line: 1084, type: !2129, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!153, !2042}
!2131 = !DISubprogram(name: "to_half", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_halfEv", scope: !2022, file: !1854, line: 1131, type: !2132, isLocal: false, isDefinition: false, scopeLine: 1131, flags: DIFlagPrototyped, isOptimized: false)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!450, !2042}
!2134 = !DISubprogram(name: "operator long double", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcveEv", scope: !2022, file: !1854, line: 1177, type: !2135, isLocal: false, isDefinition: false, scopeLine: 1177, flags: DIFlagPrototyped, isOptimized: false)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!1795, !2042}
!2137 = !DISubprogram(name: "operator double", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", scope: !2022, file: !1854, line: 1179, type: !2126, isLocal: false, isDefinition: false, scopeLine: 1179, flags: DIFlagPrototyped, isOptimized: false)
!2138 = !DISubprogram(name: "operator float", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", scope: !2022, file: !1854, line: 1181, type: !2129, isLocal: false, isDefinition: false, scopeLine: 1181, flags: DIFlagPrototyped, isOptimized: false)
!2139 = !DISubprogram(name: "operator __fp16", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvDhEv", scope: !2022, file: !1854, line: 1183, type: !2132, isLocal: false, isDefinition: false, scopeLine: 1183, flags: DIFlagPrototyped, isOptimized: false)
!2140 = !DISubprogram(name: "operator bool", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvbEv", scope: !2022, file: !1854, line: 1185, type: !2141, isLocal: false, isDefinition: false, scopeLine: 1185, flags: DIFlagPrototyped, isOptimized: false)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!40, !2042}
!2143 = !DISubprogram(name: "operator char", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", scope: !2022, file: !1854, line: 1187, type: !2110, isLocal: false, isDefinition: false, scopeLine: 1187, flags: DIFlagPrototyped, isOptimized: false)
!2144 = !DISubprogram(name: "operator signed char", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", scope: !2022, file: !1854, line: 1189, type: !2145, isLocal: false, isDefinition: false, scopeLine: 1189, flags: DIFlagPrototyped, isOptimized: false)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!90, !2042}
!2147 = !DISubprogram(name: "operator unsigned char", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", scope: !2022, file: !1854, line: 1191, type: !2148, isLocal: false, isDefinition: false, scopeLine: 1191, flags: DIFlagPrototyped, isOptimized: false)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!106, !2042}
!2150 = !DISubprogram(name: "operator short", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", scope: !2022, file: !1854, line: 1193, type: !2151, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!28, !2042}
!2153 = !DISubprogram(name: "operator unsigned short", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", scope: !2022, file: !1854, line: 1195, type: !2154, isLocal: false, isDefinition: false, scopeLine: 1195, flags: DIFlagPrototyped, isOptimized: false)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!115, !2042}
!2156 = !DISubprogram(name: "operator int", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", scope: !2022, file: !1854, line: 1197, type: !2040, isLocal: false, isDefinition: false, scopeLine: 1197, flags: DIFlagPrototyped, isOptimized: false)
!2157 = !DISubprogram(name: "operator unsigned int", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", scope: !2022, file: !1854, line: 1199, type: !2114, isLocal: false, isDefinition: false, scopeLine: 1199, flags: DIFlagPrototyped, isOptimized: false)
!2158 = !DISubprogram(name: "operator long", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", scope: !2022, file: !1854, line: 1203, type: !2159, isLocal: false, isDefinition: false, scopeLine: 1203, flags: DIFlagPrototyped, isOptimized: false)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!128, !2042}
!2161 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", scope: !2022, file: !1854, line: 1205, type: !2162, isLocal: false, isDefinition: false, scopeLine: 1205, flags: DIFlagPrototyped, isOptimized: false)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!133, !2042}
!2164 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", scope: !2022, file: !1854, line: 1212, type: !2120, isLocal: false, isDefinition: false, scopeLine: 1212, flags: DIFlagPrototyped, isOptimized: false)
!2165 = !DISubprogram(name: "operator long long", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", scope: !2022, file: !1854, line: 1214, type: !2117, isLocal: false, isDefinition: false, scopeLine: 1214, flags: DIFlagPrototyped, isOptimized: false)
!2166 = !DISubprogram(name: "length", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", scope: !2022, file: !1854, line: 1216, type: !2040, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false)
!2167 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", scope: !2022, file: !1854, line: 1229, type: !2040, isLocal: false, isDefinition: false, scopeLine: 1229, flags: DIFlagPrototyped, isOptimized: false)
!2168 = !DISubprogram(name: "operator++", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", scope: !2022, file: !1854, line: 1377, type: !2169, isLocal: false, isDefinition: false, scopeLine: 1377, flags: DIFlagPrototyped, isOptimized: false)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!2099, !2032}
!2171 = !DISubprogram(name: "operator--", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", scope: !2022, file: !1854, line: 1383, type: !2169, isLocal: false, isDefinition: false, scopeLine: 1383, flags: DIFlagPrototyped, isOptimized: false)
!2172 = !DISubprogram(name: "operator++", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", scope: !2022, file: !1854, line: 1389, type: !2173, isLocal: false, isDefinition: false, scopeLine: 1389, flags: DIFlagPrototyped, isOptimized: false)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!2043, !2032, !38}
!2175 = !DISubprogram(name: "operator--", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", scope: !2022, file: !1854, line: 1396, type: !2173, isLocal: false, isDefinition: false, scopeLine: 1396, flags: DIFlagPrototyped, isOptimized: false)
!2176 = !DISubprogram(name: "operator+", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", scope: !2022, file: !1854, line: 1404, type: !2177, isLocal: false, isDefinition: false, scopeLine: 1404, flags: DIFlagPrototyped, isOptimized: false)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!2015, !2032}
!2179 = !DISubprogram(name: "operator-", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", scope: !2022, file: !1854, line: 1406, type: !2180, isLocal: false, isDefinition: false, scopeLine: 1406, flags: DIFlagPrototyped, isOptimized: false)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!2182, !2042}
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2183, file: !1854, line: 91, baseType: !2186)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_fixed_factory<19, 19, true>", file: !1854, line: 90, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2184, identifier: "_ZTS17_ap_fixed_factoryILi19ELi19ELb1EE")
!2184 = !{!975, !2185, !388}
!2185 = !DITemplateValueParameter(name: "_AP_I2", type: !38, value: i32 19)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed<19, 19, AP_TRN, AP_WRAP, 0>", file: !1850, line: 18, size: 32, flags: DIFlagTypePassByValue, elements: !2187, templateParams: !3181, identifier: "_ZTS8ap_fixedILi19ELi19EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!2187 = !{!2188, !3104, !3108, !3111, !3114, !3117, !3120, !3123, !3126, !3129, !3132, !3135, !3138, !3141, !3144, !3147, !3150, !3153, !3156, !3159, !3162, !3168, !3173, !3178}
!2188 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2186, baseType: !2189)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed_base<19, 19, true, AP_TRN, AP_WRAP, 0>", file: !1854, line: 110, size: 32, flags: DIFlagTypePassByValue, elements: !2190, templateParams: !3102, identifier: "_ZTS13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!2190 = !{!2191, !2192, !2193, !2194, !2195, !2196, !2200, !2203, !2206, !2211, !2212, !2215, !2218, !2221, !2224, !2227, !2230, !2233, !2236, !2239, !2242, !2245, !2248, !2251, !2254, !2257, !2260, !2263, !2267, !2270, !2273, !2276, !2279, !2280, !2283, !2286, !2289, !2292, !2295, !2298, !2301, !2304, !2305, !2306, !2307, !2310, !2311, !2314, !2317, !2320, !2323, !2324, !2325, !2328, !2331, !2332, !2333, !2334, !2335, !2338, !2339, !2342, !2343, !2346, !3030, !3033, !3034, !3037, !3040, !3041, !3044, !3045, !3048, !3051, !3052, !3053, !3056, !3057, !3058, !3059, !3060, !3061, !3065, !3068, !3069, !3070, !3073, !3077, !3080, !3083, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3095, !3098, !3099}
!2191 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2189, baseType: !982)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2189, file: !1854, line: 113, baseType: !42, flags: DIFlagStaticMember, extraData: i32 19)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "iwidth", scope: !2189, file: !1854, line: 114, baseType: !42, flags: DIFlagStaticMember, extraData: i32 19)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "qmode", scope: !2189, file: !1854, line: 115, baseType: !45, flags: DIFlagStaticMember, extraData: i32 5)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "omode", scope: !2189, file: !1854, line: 116, baseType: !57, flags: DIFlagStaticMember, extraData: i32 3)
!2196 = !DISubprogram(name: "report", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6reportEv", scope: !2189, file: !1854, line: 295, type: !2197, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2200 = !DISubprogram(name: "overflow_adjust", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", scope: !2189, file: !1854, line: 300, type: !2201, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !2199, !40, !40, !40, !40}
!2203 = !DISubprogram(name: "quantization_adjust", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", scope: !2189, file: !1854, line: 364, type: !2204, isLocal: false, isDefinition: false, scopeLine: 364, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!40, !2199, !40, !40, !40}
!2206 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE16countLeadingOnesEv", scope: !2189, file: !1854, line: 382, type: !2207, isLocal: false, isDefinition: false, scopeLine: 382, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!38, !2209}
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2189)
!2211 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 395, type: !2197, isLocal: false, isDefinition: false, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false)
!2212 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 456, type: !2213, isLocal: false, isDefinition: false, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: false)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !2199, !84}
!2215 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 462, type: !2216, isLocal: false, isDefinition: false, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{null, !2199, !84, !90}
!2218 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 524, type: !2219, isLocal: false, isDefinition: false, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: false)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !2199, !94}
!2221 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 525, type: !2222, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{null, !2199, !85}
!2224 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 526, type: !2225, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{null, !2199, !101}
!2227 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 527, type: !2228, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{null, !2199, !105}
!2230 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 528, type: !2231, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{null, !2199, !110}
!2233 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 529, type: !2234, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{null, !2199, !114}
!2236 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 530, type: !2237, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !2199, !42}
!2239 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 531, type: !2240, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{null, !2199, !122}
!2242 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 532, type: !2243, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{null, !2199, !127}
!2245 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 533, type: !2246, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{null, !2199, !132}
!2248 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 534, type: !2249, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{null, !2199, !559}
!2251 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 535, type: !2252, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{null, !2199, !563}
!2254 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 543, type: !2255, isLocal: false, isDefinition: false, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: false)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !2199, !149}
!2257 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 661, type: !2258, isLocal: false, isDefinition: false, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: false)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{null, !2199, !153}
!2260 = !DISubprogram(name: "ap_fixed_base", scope: !2189, file: !1854, line: 664, type: !2261, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{null, !2199, !450}
!2263 = !DISubprogram(name: "setBits", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", scope: !2189, file: !1854, line: 917, type: !2264, isLocal: false, isDefinition: false, scopeLine: 917, flags: DIFlagPrototyped, isOptimized: false)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!2266, !2199, !440}
!2266 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2189, size: 64)
!2267 = !DISubprogram(name: "bitsToFixed", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", scope: !2189, file: !1854, line: 924, type: !2268, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!2189, !440}
!2270 = !DISubprogram(name: "checkOverflowCsimFix", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE20checkOverflowCsimFixEib", scope: !2189, file: !1854, line: 935, type: !2271, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{null, !2209, !38, !40}
!2273 = !DISubprogram(name: "to_ap_int_base", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", scope: !2189, file: !1854, line: 981, type: !2274, isLocal: false, isDefinition: false, scopeLine: 981, flags: DIFlagPrototyped, isOptimized: false)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!979, !2209, !40}
!2276 = !DISubprogram(name: "to_char", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_charEv", scope: !2189, file: !1854, line: 1020, type: !2277, isLocal: false, isDefinition: false, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: false)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!86, !2209}
!2279 = !DISubprogram(name: "to_int", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", scope: !2189, file: !1854, line: 1022, type: !2207, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!2280 = !DISubprogram(name: "to_uint", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", scope: !2189, file: !1854, line: 1024, type: !2281, isLocal: false, isDefinition: false, scopeLine: 1024, flags: DIFlagPrototyped, isOptimized: false)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!123, !2209}
!2283 = !DISubprogram(name: "to_int64", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", scope: !2189, file: !1854, line: 1026, type: !2284, isLocal: false, isDefinition: false, scopeLine: 1026, flags: DIFlagPrototyped, isOptimized: false)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!435, !2209}
!2286 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", scope: !2189, file: !1854, line: 1028, type: !2287, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!440, !2209}
!2289 = !DISubprogram(name: "to_ap_int", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_ap_intEv", scope: !2189, file: !1854, line: 1030, type: !2290, isLocal: false, isDefinition: false, scopeLine: 1030, flags: DIFlagPrototyped, isOptimized: false)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!976, !2209}
!2292 = !DISubprogram(name: "to_double", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", scope: !2189, file: !1854, line: 1034, type: !2293, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!149, !2209}
!2295 = !DISubprogram(name: "to_float", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", scope: !2189, file: !1854, line: 1084, type: !2296, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!153, !2209}
!2298 = !DISubprogram(name: "to_half", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_halfEv", scope: !2189, file: !1854, line: 1131, type: !2299, isLocal: false, isDefinition: false, scopeLine: 1131, flags: DIFlagPrototyped, isOptimized: false)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!450, !2209}
!2301 = !DISubprogram(name: "operator long double", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcveEv", scope: !2189, file: !1854, line: 1177, type: !2302, isLocal: false, isDefinition: false, scopeLine: 1177, flags: DIFlagPrototyped, isOptimized: false)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!1795, !2209}
!2304 = !DISubprogram(name: "operator double", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", scope: !2189, file: !1854, line: 1179, type: !2293, isLocal: false, isDefinition: false, scopeLine: 1179, flags: DIFlagPrototyped, isOptimized: false)
!2305 = !DISubprogram(name: "operator float", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", scope: !2189, file: !1854, line: 1181, type: !2296, isLocal: false, isDefinition: false, scopeLine: 1181, flags: DIFlagPrototyped, isOptimized: false)
!2306 = !DISubprogram(name: "operator __fp16", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvDhEv", scope: !2189, file: !1854, line: 1183, type: !2299, isLocal: false, isDefinition: false, scopeLine: 1183, flags: DIFlagPrototyped, isOptimized: false)
!2307 = !DISubprogram(name: "operator bool", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvbEv", scope: !2189, file: !1854, line: 1185, type: !2308, isLocal: false, isDefinition: false, scopeLine: 1185, flags: DIFlagPrototyped, isOptimized: false)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!40, !2209}
!2310 = !DISubprogram(name: "operator char", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", scope: !2189, file: !1854, line: 1187, type: !2277, isLocal: false, isDefinition: false, scopeLine: 1187, flags: DIFlagPrototyped, isOptimized: false)
!2311 = !DISubprogram(name: "operator signed char", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", scope: !2189, file: !1854, line: 1189, type: !2312, isLocal: false, isDefinition: false, scopeLine: 1189, flags: DIFlagPrototyped, isOptimized: false)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!90, !2209}
!2314 = !DISubprogram(name: "operator unsigned char", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", scope: !2189, file: !1854, line: 1191, type: !2315, isLocal: false, isDefinition: false, scopeLine: 1191, flags: DIFlagPrototyped, isOptimized: false)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!106, !2209}
!2317 = !DISubprogram(name: "operator short", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", scope: !2189, file: !1854, line: 1193, type: !2318, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!28, !2209}
!2320 = !DISubprogram(name: "operator unsigned short", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", scope: !2189, file: !1854, line: 1195, type: !2321, isLocal: false, isDefinition: false, scopeLine: 1195, flags: DIFlagPrototyped, isOptimized: false)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!115, !2209}
!2323 = !DISubprogram(name: "operator int", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", scope: !2189, file: !1854, line: 1197, type: !2207, isLocal: false, isDefinition: false, scopeLine: 1197, flags: DIFlagPrototyped, isOptimized: false)
!2324 = !DISubprogram(name: "operator unsigned int", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", scope: !2189, file: !1854, line: 1199, type: !2281, isLocal: false, isDefinition: false, scopeLine: 1199, flags: DIFlagPrototyped, isOptimized: false)
!2325 = !DISubprogram(name: "operator long", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", scope: !2189, file: !1854, line: 1203, type: !2326, isLocal: false, isDefinition: false, scopeLine: 1203, flags: DIFlagPrototyped, isOptimized: false)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!128, !2209}
!2328 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", scope: !2189, file: !1854, line: 1205, type: !2329, isLocal: false, isDefinition: false, scopeLine: 1205, flags: DIFlagPrototyped, isOptimized: false)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!133, !2209}
!2331 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", scope: !2189, file: !1854, line: 1212, type: !2287, isLocal: false, isDefinition: false, scopeLine: 1212, flags: DIFlagPrototyped, isOptimized: false)
!2332 = !DISubprogram(name: "operator long long", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", scope: !2189, file: !1854, line: 1214, type: !2284, isLocal: false, isDefinition: false, scopeLine: 1214, flags: DIFlagPrototyped, isOptimized: false)
!2333 = !DISubprogram(name: "length", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", scope: !2189, file: !1854, line: 1216, type: !2207, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false)
!2334 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", scope: !2189, file: !1854, line: 1229, type: !2207, isLocal: false, isDefinition: false, scopeLine: 1229, flags: DIFlagPrototyped, isOptimized: false)
!2335 = !DISubprogram(name: "operator++", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", scope: !2189, file: !1854, line: 1377, type: !2336, isLocal: false, isDefinition: false, scopeLine: 1377, flags: DIFlagPrototyped, isOptimized: false)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!2266, !2199}
!2338 = !DISubprogram(name: "operator--", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", scope: !2189, file: !1854, line: 1383, type: !2336, isLocal: false, isDefinition: false, scopeLine: 1383, flags: DIFlagPrototyped, isOptimized: false)
!2339 = !DISubprogram(name: "operator++", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", scope: !2189, file: !1854, line: 1389, type: !2340, isLocal: false, isDefinition: false, scopeLine: 1389, flags: DIFlagPrototyped, isOptimized: false)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!2210, !2199, !38}
!2342 = !DISubprogram(name: "operator--", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", scope: !2189, file: !1854, line: 1396, type: !2340, isLocal: false, isDefinition: false, scopeLine: 1396, flags: DIFlagPrototyped, isOptimized: false)
!2343 = !DISubprogram(name: "operator+", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", scope: !2189, file: !1854, line: 1404, type: !2344, isLocal: false, isDefinition: false, scopeLine: 1404, flags: DIFlagPrototyped, isOptimized: false)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!2182, !2199}
!2346 = !DISubprogram(name: "operator-", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", scope: !2189, file: !1854, line: 1406, type: !2347, isLocal: false, isDefinition: false, scopeLine: 1406, flags: DIFlagPrototyped, isOptimized: false)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!2349, !2209}
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2350, file: !1854, line: 91, baseType: !2353)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_fixed_factory<20, 20, true>", file: !1854, line: 90, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2351, identifier: "_ZTS17_ap_fixed_factoryILi20ELi20ELb1EE")
!2351 = !{!1213, !2352, !388}
!2352 = !DITemplateValueParameter(name: "_AP_I2", type: !38, value: i32 20)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed<20, 20, AP_TRN, AP_WRAP, 0>", file: !1850, line: 18, size: 32, flags: DIFlagTypePassByValue, elements: !2354, templateParams: !3029, identifier: "_ZTS8ap_fixedILi20ELi20EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!2354 = !{!2355, !2951, !2955, !2959, !2962, !2965, !2968, !2971, !2974, !2977, !2980, !2983, !2986, !2989, !2992, !2995, !2998, !3001, !3004, !3007, !3010, !3016, !3021, !3026}
!2355 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2353, baseType: !2356)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed_base<20, 20, true, AP_TRN, AP_WRAP, 0>", file: !1854, line: 110, size: 32, flags: DIFlagTypePassByValue, elements: !2357, templateParams: !2948, identifier: "_ZTS13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!2357 = !{!2358, !2372, !2373, !2374, !2375, !2376, !2380, !2383, !2386, !2391, !2392, !2395, !2398, !2401, !2404, !2407, !2410, !2413, !2416, !2419, !2422, !2425, !2428, !2431, !2434, !2437, !2440, !2443, !2447, !2450, !2453, !2457, !2460, !2461, !2464, !2467, !2470, !2473, !2476, !2479, !2482, !2485, !2486, !2487, !2488, !2491, !2492, !2495, !2498, !2501, !2504, !2505, !2506, !2509, !2512, !2513, !2514, !2515, !2516, !2519, !2520, !2523, !2524, !2527, !2876, !2879, !2880, !2883, !2886, !2887, !2890, !2891, !2894, !2897, !2898, !2899, !2902, !2903, !2904, !2905, !2906, !2907, !2911, !2914, !2915, !2916, !2919, !2923, !2926, !2929, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2941, !2944, !2945}
!2358 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2356, baseType: !2359)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<20, true>", file: !451, line: 509, size: 32, flags: DIFlagTypePassByValue, elements: !2360, templateParams: !2370, identifier: "_ZTS8ssdm_intILi20ELb1EE")
!2360 = !{!2361, !2363, !2367}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !2359, file: !451, line: 511, baseType: !2362, size: 20, align: 32)
!2362 = !DIBasicType(name: "int20", size: 20, encoding: DW_ATE_signed)
!2363 = !DISubprogram(name: "ssdm_int", scope: !2359, file: !451, line: 512, type: !2364, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{null, !2366}
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2367 = !DISubprogram(name: "ssdm_int", scope: !2359, file: !451, line: 513, type: !2368, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !2366, !2362}
!2370 = !{!2371, !39}
!2371 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 20)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2356, file: !1854, line: 113, baseType: !42, flags: DIFlagStaticMember, extraData: i32 20)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "iwidth", scope: !2356, file: !1854, line: 114, baseType: !42, flags: DIFlagStaticMember, extraData: i32 20)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "qmode", scope: !2356, file: !1854, line: 115, baseType: !45, flags: DIFlagStaticMember, extraData: i32 5)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "omode", scope: !2356, file: !1854, line: 116, baseType: !57, flags: DIFlagStaticMember, extraData: i32 3)
!2376 = !DISubprogram(name: "report", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6reportEv", scope: !2356, file: !1854, line: 295, type: !2377, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !2379}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2380 = !DISubprogram(name: "overflow_adjust", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", scope: !2356, file: !1854, line: 300, type: !2381, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !2379, !40, !40, !40, !40}
!2383 = !DISubprogram(name: "quantization_adjust", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", scope: !2356, file: !1854, line: 364, type: !2384, isLocal: false, isDefinition: false, scopeLine: 364, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!40, !2379, !40, !40, !40}
!2386 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE16countLeadingOnesEv", scope: !2356, file: !1854, line: 382, type: !2387, isLocal: false, isDefinition: false, scopeLine: 382, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!38, !2389}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2356)
!2391 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 395, type: !2377, isLocal: false, isDefinition: false, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false)
!2392 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 456, type: !2393, isLocal: false, isDefinition: false, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: false)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !2379, !84}
!2395 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 462, type: !2396, isLocal: false, isDefinition: false, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{null, !2379, !84, !90}
!2398 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 524, type: !2399, isLocal: false, isDefinition: false, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: false)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{null, !2379, !94}
!2401 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 525, type: !2402, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{null, !2379, !85}
!2404 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 526, type: !2405, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !2379, !101}
!2407 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 527, type: !2408, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !2379, !105}
!2410 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 528, type: !2411, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{null, !2379, !110}
!2413 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 529, type: !2414, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !2379, !114}
!2416 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 530, type: !2417, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !2379, !42}
!2419 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 531, type: !2420, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{null, !2379, !122}
!2422 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 532, type: !2423, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{null, !2379, !127}
!2425 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 533, type: !2426, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !2379, !132}
!2428 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 534, type: !2429, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{null, !2379, !559}
!2431 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 535, type: !2432, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{null, !2379, !563}
!2434 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 543, type: !2435, isLocal: false, isDefinition: false, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: false)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{null, !2379, !149}
!2437 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 661, type: !2438, isLocal: false, isDefinition: false, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: false)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{null, !2379, !153}
!2440 = !DISubprogram(name: "ap_fixed_base", scope: !2356, file: !1854, line: 664, type: !2441, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{null, !2379, !450}
!2443 = !DISubprogram(name: "setBits", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", scope: !2356, file: !1854, line: 917, type: !2444, isLocal: false, isDefinition: false, scopeLine: 917, flags: DIFlagPrototyped, isOptimized: false)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!2446, !2379, !440}
!2446 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2356, size: 64)
!2447 = !DISubprogram(name: "bitsToFixed", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", scope: !2356, file: !1854, line: 924, type: !2448, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!2356, !440}
!2450 = !DISubprogram(name: "checkOverflowCsimFix", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE20checkOverflowCsimFixEib", scope: !2356, file: !1854, line: 935, type: !2451, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{null, !2389, !38, !40}
!2453 = !DISubprogram(name: "to_ap_int_base", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", scope: !2356, file: !1854, line: 981, type: !2454, isLocal: false, isDefinition: false, scopeLine: 981, flags: DIFlagPrototyped, isOptimized: false)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!2456, !2389, !40}
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<20, true>", file: !499, line: 108, flags: DIFlagFwdDecl, identifier: "_ZTS11ap_int_baseILi20ELb1EE")
!2457 = !DISubprogram(name: "to_char", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_charEv", scope: !2356, file: !1854, line: 1020, type: !2458, isLocal: false, isDefinition: false, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: false)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!86, !2389}
!2460 = !DISubprogram(name: "to_int", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", scope: !2356, file: !1854, line: 1022, type: !2387, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!2461 = !DISubprogram(name: "to_uint", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", scope: !2356, file: !1854, line: 1024, type: !2462, isLocal: false, isDefinition: false, scopeLine: 1024, flags: DIFlagPrototyped, isOptimized: false)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!123, !2389}
!2464 = !DISubprogram(name: "to_int64", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", scope: !2356, file: !1854, line: 1026, type: !2465, isLocal: false, isDefinition: false, scopeLine: 1026, flags: DIFlagPrototyped, isOptimized: false)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!435, !2389}
!2467 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", scope: !2356, file: !1854, line: 1028, type: !2468, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!440, !2389}
!2470 = !DISubprogram(name: "to_ap_int", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_ap_intEv", scope: !2356, file: !1854, line: 1030, type: !2471, isLocal: false, isDefinition: false, scopeLine: 1030, flags: DIFlagPrototyped, isOptimized: false)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!1214, !2389}
!2473 = !DISubprogram(name: "to_double", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", scope: !2356, file: !1854, line: 1034, type: !2474, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!149, !2389}
!2476 = !DISubprogram(name: "to_float", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", scope: !2356, file: !1854, line: 1084, type: !2477, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!153, !2389}
!2479 = !DISubprogram(name: "to_half", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_halfEv", scope: !2356, file: !1854, line: 1131, type: !2480, isLocal: false, isDefinition: false, scopeLine: 1131, flags: DIFlagPrototyped, isOptimized: false)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!450, !2389}
!2482 = !DISubprogram(name: "operator long double", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcveEv", scope: !2356, file: !1854, line: 1177, type: !2483, isLocal: false, isDefinition: false, scopeLine: 1177, flags: DIFlagPrototyped, isOptimized: false)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!1795, !2389}
!2485 = !DISubprogram(name: "operator double", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", scope: !2356, file: !1854, line: 1179, type: !2474, isLocal: false, isDefinition: false, scopeLine: 1179, flags: DIFlagPrototyped, isOptimized: false)
!2486 = !DISubprogram(name: "operator float", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", scope: !2356, file: !1854, line: 1181, type: !2477, isLocal: false, isDefinition: false, scopeLine: 1181, flags: DIFlagPrototyped, isOptimized: false)
!2487 = !DISubprogram(name: "operator __fp16", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvDhEv", scope: !2356, file: !1854, line: 1183, type: !2480, isLocal: false, isDefinition: false, scopeLine: 1183, flags: DIFlagPrototyped, isOptimized: false)
!2488 = !DISubprogram(name: "operator bool", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvbEv", scope: !2356, file: !1854, line: 1185, type: !2489, isLocal: false, isDefinition: false, scopeLine: 1185, flags: DIFlagPrototyped, isOptimized: false)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!40, !2389}
!2491 = !DISubprogram(name: "operator char", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", scope: !2356, file: !1854, line: 1187, type: !2458, isLocal: false, isDefinition: false, scopeLine: 1187, flags: DIFlagPrototyped, isOptimized: false)
!2492 = !DISubprogram(name: "operator signed char", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", scope: !2356, file: !1854, line: 1189, type: !2493, isLocal: false, isDefinition: false, scopeLine: 1189, flags: DIFlagPrototyped, isOptimized: false)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!90, !2389}
!2495 = !DISubprogram(name: "operator unsigned char", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", scope: !2356, file: !1854, line: 1191, type: !2496, isLocal: false, isDefinition: false, scopeLine: 1191, flags: DIFlagPrototyped, isOptimized: false)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!106, !2389}
!2498 = !DISubprogram(name: "operator short", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", scope: !2356, file: !1854, line: 1193, type: !2499, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!28, !2389}
!2501 = !DISubprogram(name: "operator unsigned short", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", scope: !2356, file: !1854, line: 1195, type: !2502, isLocal: false, isDefinition: false, scopeLine: 1195, flags: DIFlagPrototyped, isOptimized: false)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!115, !2389}
!2504 = !DISubprogram(name: "operator int", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", scope: !2356, file: !1854, line: 1197, type: !2387, isLocal: false, isDefinition: false, scopeLine: 1197, flags: DIFlagPrototyped, isOptimized: false)
!2505 = !DISubprogram(name: "operator unsigned int", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", scope: !2356, file: !1854, line: 1199, type: !2462, isLocal: false, isDefinition: false, scopeLine: 1199, flags: DIFlagPrototyped, isOptimized: false)
!2506 = !DISubprogram(name: "operator long", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", scope: !2356, file: !1854, line: 1203, type: !2507, isLocal: false, isDefinition: false, scopeLine: 1203, flags: DIFlagPrototyped, isOptimized: false)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!128, !2389}
!2509 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", scope: !2356, file: !1854, line: 1205, type: !2510, isLocal: false, isDefinition: false, scopeLine: 1205, flags: DIFlagPrototyped, isOptimized: false)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!133, !2389}
!2512 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", scope: !2356, file: !1854, line: 1212, type: !2468, isLocal: false, isDefinition: false, scopeLine: 1212, flags: DIFlagPrototyped, isOptimized: false)
!2513 = !DISubprogram(name: "operator long long", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", scope: !2356, file: !1854, line: 1214, type: !2465, isLocal: false, isDefinition: false, scopeLine: 1214, flags: DIFlagPrototyped, isOptimized: false)
!2514 = !DISubprogram(name: "length", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", scope: !2356, file: !1854, line: 1216, type: !2387, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false)
!2515 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", scope: !2356, file: !1854, line: 1229, type: !2387, isLocal: false, isDefinition: false, scopeLine: 1229, flags: DIFlagPrototyped, isOptimized: false)
!2516 = !DISubprogram(name: "operator++", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", scope: !2356, file: !1854, line: 1377, type: !2517, isLocal: false, isDefinition: false, scopeLine: 1377, flags: DIFlagPrototyped, isOptimized: false)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!2446, !2379}
!2519 = !DISubprogram(name: "operator--", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", scope: !2356, file: !1854, line: 1383, type: !2517, isLocal: false, isDefinition: false, scopeLine: 1383, flags: DIFlagPrototyped, isOptimized: false)
!2520 = !DISubprogram(name: "operator++", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", scope: !2356, file: !1854, line: 1389, type: !2521, isLocal: false, isDefinition: false, scopeLine: 1389, flags: DIFlagPrototyped, isOptimized: false)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!2390, !2379, !38}
!2523 = !DISubprogram(name: "operator--", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", scope: !2356, file: !1854, line: 1396, type: !2521, isLocal: false, isDefinition: false, scopeLine: 1396, flags: DIFlagPrototyped, isOptimized: false)
!2524 = !DISubprogram(name: "operator+", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", scope: !2356, file: !1854, line: 1404, type: !2525, isLocal: false, isDefinition: false, scopeLine: 1404, flags: DIFlagPrototyped, isOptimized: false)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!2349, !2379}
!2527 = !DISubprogram(name: "operator-", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", scope: !2356, file: !1854, line: 1406, type: !2528, isLocal: false, isDefinition: false, scopeLine: 1406, flags: DIFlagPrototyped, isOptimized: false)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!2530, !2389}
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2531, file: !1854, line: 91, baseType: !2535)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_fixed_factory<21, 21, true>", file: !1854, line: 90, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2532, identifier: "_ZTS17_ap_fixed_factoryILi21ELi21ELb1EE")
!2532 = !{!2533, !2534, !388}
!2533 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 21)
!2534 = !DITemplateValueParameter(name: "_AP_I2", type: !38, value: i32 21)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed<21, 21, AP_TRN, AP_WRAP, 0>", file: !1850, line: 18, size: 32, flags: DIFlagTypePassByValue, elements: !2536, templateParams: !2875, identifier: "_ZTS8ap_fixedILi21ELi21EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!2536 = !{!2537, !2797, !2801, !2805, !2808, !2811, !2814, !2817, !2820, !2823, !2826, !2829, !2832, !2835, !2838, !2841, !2844, !2847, !2850, !2853, !2856, !2862, !2867, !2872}
!2537 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2535, baseType: !2538)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed_base<21, 21, true, AP_TRN, AP_WRAP, 0>", file: !1854, line: 110, size: 32, flags: DIFlagTypePassByValue, elements: !2539, templateParams: !2791, identifier: "_ZTS13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!2539 = !{!2540, !2554, !2555, !2556, !2557, !2558, !2562, !2565, !2568, !2573, !2574, !2577, !2580, !2583, !2586, !2589, !2592, !2595, !2598, !2601, !2604, !2607, !2610, !2613, !2616, !2619, !2622, !2625, !2629, !2632, !2635, !2639, !2642, !2643, !2646, !2649, !2652, !2656, !2659, !2662, !2665, !2668, !2669, !2670, !2671, !2674, !2675, !2678, !2681, !2684, !2687, !2688, !2689, !2692, !2695, !2696, !2697, !2698, !2699, !2702, !2703, !2706, !2707, !2710, !2719, !2722, !2723, !2726, !2729, !2730, !2733, !2734, !2737, !2740, !2741, !2742, !2745, !2746, !2747, !2748, !2749, !2750, !2754, !2757, !2758, !2759, !2762, !2766, !2769, !2772, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2784, !2787, !2788}
!2540 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2538, baseType: !2541)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<21, true>", file: !451, line: 509, size: 32, flags: DIFlagTypePassByValue, elements: !2542, templateParams: !2552, identifier: "_ZTS8ssdm_intILi21ELb1EE")
!2542 = !{!2543, !2545, !2549}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !2541, file: !451, line: 511, baseType: !2544, size: 21, align: 32)
!2544 = !DIBasicType(name: "int21", size: 21, encoding: DW_ATE_signed)
!2545 = !DISubprogram(name: "ssdm_int", scope: !2541, file: !451, line: 512, type: !2546, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !2548}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2549 = !DISubprogram(name: "ssdm_int", scope: !2541, file: !451, line: 513, type: !2550, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{null, !2548, !2544}
!2552 = !{!2553, !39}
!2553 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 21)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2538, file: !1854, line: 113, baseType: !42, flags: DIFlagStaticMember, extraData: i32 21)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "iwidth", scope: !2538, file: !1854, line: 114, baseType: !42, flags: DIFlagStaticMember, extraData: i32 21)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "qmode", scope: !2538, file: !1854, line: 115, baseType: !45, flags: DIFlagStaticMember, extraData: i32 5)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "omode", scope: !2538, file: !1854, line: 116, baseType: !57, flags: DIFlagStaticMember, extraData: i32 3)
!2558 = !DISubprogram(name: "report", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6reportEv", scope: !2538, file: !1854, line: 295, type: !2559, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{null, !2561}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2562 = !DISubprogram(name: "overflow_adjust", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", scope: !2538, file: !1854, line: 300, type: !2563, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{null, !2561, !40, !40, !40, !40}
!2565 = !DISubprogram(name: "quantization_adjust", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", scope: !2538, file: !1854, line: 364, type: !2566, isLocal: false, isDefinition: false, scopeLine: 364, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!40, !2561, !40, !40, !40}
!2568 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE16countLeadingOnesEv", scope: !2538, file: !1854, line: 382, type: !2569, isLocal: false, isDefinition: false, scopeLine: 382, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!38, !2571}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2538)
!2573 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 395, type: !2559, isLocal: false, isDefinition: false, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false)
!2574 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 456, type: !2575, isLocal: false, isDefinition: false, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: false)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !2561, !84}
!2577 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 462, type: !2578, isLocal: false, isDefinition: false, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{null, !2561, !84, !90}
!2580 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 524, type: !2581, isLocal: false, isDefinition: false, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: false)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{null, !2561, !94}
!2583 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 525, type: !2584, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{null, !2561, !85}
!2586 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 526, type: !2587, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{null, !2561, !101}
!2589 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 527, type: !2590, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{null, !2561, !105}
!2592 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 528, type: !2593, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{null, !2561, !110}
!2595 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 529, type: !2596, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{null, !2561, !114}
!2598 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 530, type: !2599, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{null, !2561, !42}
!2601 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 531, type: !2602, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{null, !2561, !122}
!2604 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 532, type: !2605, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{null, !2561, !127}
!2607 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 533, type: !2608, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{null, !2561, !132}
!2610 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 534, type: !2611, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{null, !2561, !559}
!2613 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 535, type: !2614, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{null, !2561, !563}
!2616 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 543, type: !2617, isLocal: false, isDefinition: false, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: false)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{null, !2561, !149}
!2619 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 661, type: !2620, isLocal: false, isDefinition: false, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: false)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{null, !2561, !153}
!2622 = !DISubprogram(name: "ap_fixed_base", scope: !2538, file: !1854, line: 664, type: !2623, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{null, !2561, !450}
!2625 = !DISubprogram(name: "setBits", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", scope: !2538, file: !1854, line: 917, type: !2626, isLocal: false, isDefinition: false, scopeLine: 917, flags: DIFlagPrototyped, isOptimized: false)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!2628, !2561, !440}
!2628 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2538, size: 64)
!2629 = !DISubprogram(name: "bitsToFixed", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", scope: !2538, file: !1854, line: 924, type: !2630, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!2538, !440}
!2632 = !DISubprogram(name: "checkOverflowCsimFix", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE20checkOverflowCsimFixEib", scope: !2538, file: !1854, line: 935, type: !2633, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{null, !2571, !38, !40}
!2635 = !DISubprogram(name: "to_ap_int_base", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", scope: !2538, file: !1854, line: 981, type: !2636, isLocal: false, isDefinition: false, scopeLine: 981, flags: DIFlagPrototyped, isOptimized: false)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!2638, !2571, !40}
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<21, true>", file: !499, line: 108, flags: DIFlagFwdDecl, identifier: "_ZTS11ap_int_baseILi21ELb1EE")
!2639 = !DISubprogram(name: "to_char", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_charEv", scope: !2538, file: !1854, line: 1020, type: !2640, isLocal: false, isDefinition: false, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: false)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!86, !2571}
!2642 = !DISubprogram(name: "to_int", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", scope: !2538, file: !1854, line: 1022, type: !2569, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!2643 = !DISubprogram(name: "to_uint", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", scope: !2538, file: !1854, line: 1024, type: !2644, isLocal: false, isDefinition: false, scopeLine: 1024, flags: DIFlagPrototyped, isOptimized: false)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!123, !2571}
!2646 = !DISubprogram(name: "to_int64", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", scope: !2538, file: !1854, line: 1026, type: !2647, isLocal: false, isDefinition: false, scopeLine: 1026, flags: DIFlagPrototyped, isOptimized: false)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!435, !2571}
!2649 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", scope: !2538, file: !1854, line: 1028, type: !2650, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!440, !2571}
!2652 = !DISubprogram(name: "to_ap_int", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_ap_intEv", scope: !2538, file: !1854, line: 1030, type: !2653, isLocal: false, isDefinition: false, scopeLine: 1030, flags: DIFlagPrototyped, isOptimized: false)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!2655, !2571}
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<21>", file: !436, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS6ap_intILi21EE")
!2656 = !DISubprogram(name: "to_double", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", scope: !2538, file: !1854, line: 1034, type: !2657, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!149, !2571}
!2659 = !DISubprogram(name: "to_float", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", scope: !2538, file: !1854, line: 1084, type: !2660, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!153, !2571}
!2662 = !DISubprogram(name: "to_half", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_halfEv", scope: !2538, file: !1854, line: 1131, type: !2663, isLocal: false, isDefinition: false, scopeLine: 1131, flags: DIFlagPrototyped, isOptimized: false)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!450, !2571}
!2665 = !DISubprogram(name: "operator long double", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcveEv", scope: !2538, file: !1854, line: 1177, type: !2666, isLocal: false, isDefinition: false, scopeLine: 1177, flags: DIFlagPrototyped, isOptimized: false)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!1795, !2571}
!2668 = !DISubprogram(name: "operator double", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", scope: !2538, file: !1854, line: 1179, type: !2657, isLocal: false, isDefinition: false, scopeLine: 1179, flags: DIFlagPrototyped, isOptimized: false)
!2669 = !DISubprogram(name: "operator float", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", scope: !2538, file: !1854, line: 1181, type: !2660, isLocal: false, isDefinition: false, scopeLine: 1181, flags: DIFlagPrototyped, isOptimized: false)
!2670 = !DISubprogram(name: "operator __fp16", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvDhEv", scope: !2538, file: !1854, line: 1183, type: !2663, isLocal: false, isDefinition: false, scopeLine: 1183, flags: DIFlagPrototyped, isOptimized: false)
!2671 = !DISubprogram(name: "operator bool", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvbEv", scope: !2538, file: !1854, line: 1185, type: !2672, isLocal: false, isDefinition: false, scopeLine: 1185, flags: DIFlagPrototyped, isOptimized: false)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!40, !2571}
!2674 = !DISubprogram(name: "operator char", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", scope: !2538, file: !1854, line: 1187, type: !2640, isLocal: false, isDefinition: false, scopeLine: 1187, flags: DIFlagPrototyped, isOptimized: false)
!2675 = !DISubprogram(name: "operator signed char", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", scope: !2538, file: !1854, line: 1189, type: !2676, isLocal: false, isDefinition: false, scopeLine: 1189, flags: DIFlagPrototyped, isOptimized: false)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!90, !2571}
!2678 = !DISubprogram(name: "operator unsigned char", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", scope: !2538, file: !1854, line: 1191, type: !2679, isLocal: false, isDefinition: false, scopeLine: 1191, flags: DIFlagPrototyped, isOptimized: false)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!106, !2571}
!2681 = !DISubprogram(name: "operator short", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", scope: !2538, file: !1854, line: 1193, type: !2682, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!28, !2571}
!2684 = !DISubprogram(name: "operator unsigned short", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", scope: !2538, file: !1854, line: 1195, type: !2685, isLocal: false, isDefinition: false, scopeLine: 1195, flags: DIFlagPrototyped, isOptimized: false)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!115, !2571}
!2687 = !DISubprogram(name: "operator int", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", scope: !2538, file: !1854, line: 1197, type: !2569, isLocal: false, isDefinition: false, scopeLine: 1197, flags: DIFlagPrototyped, isOptimized: false)
!2688 = !DISubprogram(name: "operator unsigned int", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", scope: !2538, file: !1854, line: 1199, type: !2644, isLocal: false, isDefinition: false, scopeLine: 1199, flags: DIFlagPrototyped, isOptimized: false)
!2689 = !DISubprogram(name: "operator long", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", scope: !2538, file: !1854, line: 1203, type: !2690, isLocal: false, isDefinition: false, scopeLine: 1203, flags: DIFlagPrototyped, isOptimized: false)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!128, !2571}
!2692 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", scope: !2538, file: !1854, line: 1205, type: !2693, isLocal: false, isDefinition: false, scopeLine: 1205, flags: DIFlagPrototyped, isOptimized: false)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!133, !2571}
!2695 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", scope: !2538, file: !1854, line: 1212, type: !2650, isLocal: false, isDefinition: false, scopeLine: 1212, flags: DIFlagPrototyped, isOptimized: false)
!2696 = !DISubprogram(name: "operator long long", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", scope: !2538, file: !1854, line: 1214, type: !2647, isLocal: false, isDefinition: false, scopeLine: 1214, flags: DIFlagPrototyped, isOptimized: false)
!2697 = !DISubprogram(name: "length", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", scope: !2538, file: !1854, line: 1216, type: !2569, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false)
!2698 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", scope: !2538, file: !1854, line: 1229, type: !2569, isLocal: false, isDefinition: false, scopeLine: 1229, flags: DIFlagPrototyped, isOptimized: false)
!2699 = !DISubprogram(name: "operator++", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", scope: !2538, file: !1854, line: 1377, type: !2700, isLocal: false, isDefinition: false, scopeLine: 1377, flags: DIFlagPrototyped, isOptimized: false)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!2628, !2561}
!2702 = !DISubprogram(name: "operator--", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", scope: !2538, file: !1854, line: 1383, type: !2700, isLocal: false, isDefinition: false, scopeLine: 1383, flags: DIFlagPrototyped, isOptimized: false)
!2703 = !DISubprogram(name: "operator++", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", scope: !2538, file: !1854, line: 1389, type: !2704, isLocal: false, isDefinition: false, scopeLine: 1389, flags: DIFlagPrototyped, isOptimized: false)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!2572, !2561, !38}
!2706 = !DISubprogram(name: "operator--", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", scope: !2538, file: !1854, line: 1396, type: !2704, isLocal: false, isDefinition: false, scopeLine: 1396, flags: DIFlagPrototyped, isOptimized: false)
!2707 = !DISubprogram(name: "operator+", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", scope: !2538, file: !1854, line: 1404, type: !2708, isLocal: false, isDefinition: false, scopeLine: 1404, flags: DIFlagPrototyped, isOptimized: false)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!2530, !2561}
!2710 = !DISubprogram(name: "operator-", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", scope: !2538, file: !1854, line: 1406, type: !2711, isLocal: false, isDefinition: false, scopeLine: 1406, flags: DIFlagPrototyped, isOptimized: false)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!2713, !2571}
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2714, file: !1854, line: 91, baseType: !2718)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_fixed_factory<22, 22, true>", file: !1854, line: 90, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2715, identifier: "_ZTS17_ap_fixed_factoryILi22ELi22ELb1EE")
!2715 = !{!2716, !2717, !388}
!2716 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 22)
!2717 = !DITemplateValueParameter(name: "_AP_I2", type: !38, value: i32 22)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed<22, 22, AP_TRN, AP_WRAP, 0>", file: !436, line: 157, flags: DIFlagFwdDecl, identifier: "_ZTS8ap_fixedILi22ELi22EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!2719 = !DISubprogram(name: "getNeg", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", scope: !2538, file: !1854, line: 1412, type: !2720, isLocal: false, isDefinition: false, scopeLine: 1412, flags: DIFlagPrototyped, isOptimized: false)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!2538, !2561}
!2722 = !DISubprogram(name: "operator!", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", scope: !2538, file: !1854, line: 1420, type: !2672, isLocal: false, isDefinition: false, scopeLine: 1420, flags: DIFlagPrototyped, isOptimized: false)
!2723 = !DISubprogram(name: "operator~", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", scope: !2538, file: !1854, line: 1425, type: !2724, isLocal: false, isDefinition: false, scopeLine: 1425, flags: DIFlagPrototyped, isOptimized: false)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!2538, !2571}
!2726 = !DISubprogram(name: "operator<<", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", scope: !2538, file: !1854, line: 1452, type: !2727, isLocal: false, isDefinition: false, scopeLine: 1452, flags: DIFlagPrototyped, isOptimized: false)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!2538, !2571, !123}
!2729 = !DISubprogram(name: "operator>>", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", scope: !2538, file: !1854, line: 1486, type: !2727, isLocal: false, isDefinition: false, scopeLine: 1486, flags: DIFlagPrototyped, isOptimized: false)
!2730 = !DISubprogram(name: "operator<<", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", scope: !2538, file: !1854, line: 1509, type: !2731, isLocal: false, isDefinition: false, scopeLine: 1509, flags: DIFlagPrototyped, isOptimized: false)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!2538, !2571, !38}
!2733 = !DISubprogram(name: "operator>>", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", scope: !2538, file: !1854, line: 1520, type: !2731, isLocal: false, isDefinition: false, scopeLine: 1520, flags: DIFlagPrototyped, isOptimized: false)
!2734 = !DISubprogram(name: "operator<<=", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", scope: !2538, file: !1854, line: 1579, type: !2735, isLocal: false, isDefinition: false, scopeLine: 1579, flags: DIFlagPrototyped, isOptimized: false)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!2628, !2561, !42}
!2737 = !DISubprogram(name: "operator<<=", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", scope: !2538, file: !1854, line: 1584, type: !2738, isLocal: false, isDefinition: false, scopeLine: 1584, flags: DIFlagPrototyped, isOptimized: false)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!2628, !2561, !122}
!2740 = !DISubprogram(name: "operator>>=", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", scope: !2538, file: !1854, line: 1605, type: !2735, isLocal: false, isDefinition: false, scopeLine: 1605, flags: DIFlagPrototyped, isOptimized: false)
!2741 = !DISubprogram(name: "operator>>=", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", scope: !2538, file: !1854, line: 1610, type: !2738, isLocal: false, isDefinition: false, scopeLine: 1610, flags: DIFlagPrototyped, isOptimized: false)
!2742 = !DISubprogram(name: "operator>", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", scope: !2538, file: !1854, line: 1660, type: !2743, isLocal: false, isDefinition: false, scopeLine: 1660, flags: DIFlagPrototyped, isOptimized: false)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!40, !2571, !149}
!2745 = !DISubprogram(name: "operator<", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", scope: !2538, file: !1854, line: 1661, type: !2743, isLocal: false, isDefinition: false, scopeLine: 1661, flags: DIFlagPrototyped, isOptimized: false)
!2746 = !DISubprogram(name: "operator>=", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", scope: !2538, file: !1854, line: 1662, type: !2743, isLocal: false, isDefinition: false, scopeLine: 1662, flags: DIFlagPrototyped, isOptimized: false)
!2747 = !DISubprogram(name: "operator<=", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", scope: !2538, file: !1854, line: 1663, type: !2743, isLocal: false, isDefinition: false, scopeLine: 1663, flags: DIFlagPrototyped, isOptimized: false)
!2748 = !DISubprogram(name: "operator==", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", scope: !2538, file: !1854, line: 1664, type: !2743, isLocal: false, isDefinition: false, scopeLine: 1664, flags: DIFlagPrototyped, isOptimized: false)
!2749 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", scope: !2538, file: !1854, line: 1665, type: !2743, isLocal: false, isDefinition: false, scopeLine: 1665, flags: DIFlagPrototyped, isOptimized: false)
!2750 = !DISubprogram(name: "operator[]", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", scope: !2538, file: !1854, line: 1668, type: !2751, isLocal: false, isDefinition: false, scopeLine: 1668, flags: DIFlagPrototyped, isOptimized: false)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!2753, !2561, !123}
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "af_bit_ref<21, 21, true, AP_TRN, AP_WRAP, 0>", file: !436, line: 169, flags: DIFlagFwdDecl, identifier: "_ZTS10af_bit_refILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!2754 = !DISubprogram(name: "operator[]", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", scope: !2538, file: !1854, line: 1683, type: !2755, isLocal: false, isDefinition: false, scopeLine: 1683, flags: DIFlagPrototyped, isOptimized: false)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!40, !2571, !123}
!2757 = !DISubprogram(name: "bit", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", scope: !2538, file: !1854, line: 1688, type: !2751, isLocal: false, isDefinition: false, scopeLine: 1688, flags: DIFlagPrototyped, isOptimized: false)
!2758 = !DISubprogram(name: "bit", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", scope: !2538, file: !1854, line: 1703, type: !2755, isLocal: false, isDefinition: false, scopeLine: 1703, flags: DIFlagPrototyped, isOptimized: false)
!2759 = !DISubprogram(name: "get_bit", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", scope: !2538, file: !1854, line: 1718, type: !2760, isLocal: false, isDefinition: false, scopeLine: 1718, flags: DIFlagPrototyped, isOptimized: false)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!40, !2571, !38}
!2762 = !DISubprogram(name: "range", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", scope: !2538, file: !1854, line: 1743, type: !2763, isLocal: false, isDefinition: false, scopeLine: 1743, flags: DIFlagPrototyped, isOptimized: false)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!2765, !2561, !38, !38}
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "af_range_ref<21, 21, true, AP_TRN, AP_WRAP, 0>", file: !436, line: 165, flags: DIFlagFwdDecl, identifier: "_ZTS12af_range_refILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!2766 = !DISubprogram(name: "range", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", scope: !2538, file: !1854, line: 1750, type: !2767, isLocal: false, isDefinition: false, scopeLine: 1750, flags: DIFlagPrototyped, isOptimized: false)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!2765, !2571, !38, !38}
!2769 = !DISubprogram(name: "range", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", scope: !2538, file: !1854, line: 1775, type: !2770, isLocal: false, isDefinition: false, scopeLine: 1775, flags: DIFlagPrototyped, isOptimized: false)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!2765, !2561}
!2772 = !DISubprogram(name: "range", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", scope: !2538, file: !1854, line: 1779, type: !2773, isLocal: false, isDefinition: false, scopeLine: 1779, flags: DIFlagPrototyped, isOptimized: false)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!2765, !2571}
!2775 = !DISubprogram(name: "operator()", linkageName: "_ZN13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", scope: !2538, file: !1854, line: 1783, type: !2763, isLocal: false, isDefinition: false, scopeLine: 1783, flags: DIFlagPrototyped, isOptimized: false)
!2776 = !DISubprogram(name: "operator()", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", scope: !2538, file: !1854, line: 1788, type: !2767, isLocal: false, isDefinition: false, scopeLine: 1788, flags: DIFlagPrototyped, isOptimized: false)
!2777 = !DISubprogram(name: "is_zero", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", scope: !2538, file: !1854, line: 1811, type: !2672, isLocal: false, isDefinition: false, scopeLine: 1811, flags: DIFlagPrototyped, isOptimized: false)
!2778 = !DISubprogram(name: "is_neg", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", scope: !2538, file: !1854, line: 1813, type: !2672, isLocal: false, isDefinition: false, scopeLine: 1813, flags: DIFlagPrototyped, isOptimized: false)
!2779 = !DISubprogram(name: "wl", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", scope: !2538, file: !1854, line: 1818, type: !2569, isLocal: false, isDefinition: false, scopeLine: 1818, flags: DIFlagPrototyped, isOptimized: false)
!2780 = !DISubprogram(name: "iwl", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", scope: !2538, file: !1854, line: 1820, type: !2569, isLocal: false, isDefinition: false, scopeLine: 1820, flags: DIFlagPrototyped, isOptimized: false)
!2781 = !DISubprogram(name: "q_mode", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", scope: !2538, file: !1854, line: 1822, type: !2782, isLocal: false, isDefinition: false, scopeLine: 1822, flags: DIFlagPrototyped, isOptimized: false)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!46, !2571}
!2784 = !DISubprogram(name: "o_mode", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", scope: !2538, file: !1854, line: 1824, type: !2785, isLocal: false, isDefinition: false, scopeLine: 1824, flags: DIFlagPrototyped, isOptimized: false)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!58, !2571}
!2787 = !DISubprogram(name: "n_bits", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", scope: !2538, file: !1854, line: 1826, type: !2569, isLocal: false, isDefinition: false, scopeLine: 1826, flags: DIFlagPrototyped, isOptimized: false)
!2788 = !DISubprogram(name: "to_string", linkageName: "_ZNK13ap_fixed_baseILi21ELi21ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEhb", scope: !2538, file: !1854, line: 1918, type: !2789, isLocal: false, isDefinition: false, scopeLine: 1918, flags: DIFlagPrototyped, isOptimized: false)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!1249, !2571, !106, !40}
!2791 = !{!2792, !2793, !39, !2794, !2795, !2796}
!2792 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 21)
!2793 = !DITemplateValueParameter(name: "_AP_I", type: !38, value: i32 21)
!2794 = !DITemplateValueParameter(name: "_AP_Q", type: !46, value: i32 5)
!2795 = !DITemplateValueParameter(name: "_AP_O", type: !58, value: i32 3)
!2796 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 0)
!2797 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 22, type: !2798, isLocal: false, isDefinition: false, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: false)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{null, !2800}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2801 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 75, type: !2802, isLocal: false, isDefinition: false, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{null, !2800, !2804, !40}
!2804 = !DIBasicType(name: "uint21", size: 21, encoding: DW_ATE_unsigned)
!2805 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 131, type: !2806, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{null, !2800, !40}
!2808 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 132, type: !2809, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !2800, !86}
!2811 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 133, type: !2812, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{null, !2800, !90}
!2814 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 134, type: !2815, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{null, !2800, !106}
!2817 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 135, type: !2818, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{null, !2800, !28}
!2820 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 136, type: !2821, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{null, !2800, !115}
!2823 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 137, type: !2824, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{null, !2800, !38}
!2826 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 138, type: !2827, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{null, !2800, !123}
!2829 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 139, type: !2830, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{null, !2800, !128}
!2832 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 140, type: !2833, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{null, !2800, !133}
!2835 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 141, type: !2836, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null, !2800, !435}
!2838 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 142, type: !2839, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{null, !2800, !440}
!2841 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 143, type: !2842, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{null, !2800, !450}
!2844 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 144, type: !2845, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{null, !2800, !153}
!2847 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 145, type: !2848, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{null, !2800, !149}
!2850 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 148, type: !2851, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{null, !2800, !84}
!2853 = !DISubprogram(name: "ap_fixed", scope: !2535, file: !1850, line: 150, type: !2854, isLocal: false, isDefinition: false, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{null, !2800, !84, !90}
!2856 = !DISubprogram(name: "operator=", linkageName: "_ZN8ap_fixedILi21ELi21EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !2535, file: !1850, line: 159, type: !2857, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!2859, !2800, !2860}
!2859 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2535, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2535)
!2862 = !DISubprogram(name: "operator=", linkageName: "_ZNV8ap_fixedILi21ELi21EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !2535, file: !1850, line: 168, type: !2863, isLocal: false, isDefinition: false, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{null, !2865, !2860}
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2866 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2535)
!2867 = !DISubprogram(name: "operator=", linkageName: "_ZN8ap_fixedILi21ELi21EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", scope: !2535, file: !1850, line: 173, type: !2868, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!2859, !2800, !2870}
!2870 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2866)
!2872 = !DISubprogram(name: "operator=", linkageName: "_ZNV8ap_fixedILi21ELi21EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", scope: !2535, file: !1850, line: 179, type: !2873, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{null, !2865, !2870}
!2875 = !{!2792, !2793, !2794, !2795, !2796}
!2876 = !DISubprogram(name: "getNeg", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", scope: !2356, file: !1854, line: 1412, type: !2877, isLocal: false, isDefinition: false, scopeLine: 1412, flags: DIFlagPrototyped, isOptimized: false)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!2356, !2379}
!2879 = !DISubprogram(name: "operator!", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", scope: !2356, file: !1854, line: 1420, type: !2489, isLocal: false, isDefinition: false, scopeLine: 1420, flags: DIFlagPrototyped, isOptimized: false)
!2880 = !DISubprogram(name: "operator~", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", scope: !2356, file: !1854, line: 1425, type: !2881, isLocal: false, isDefinition: false, scopeLine: 1425, flags: DIFlagPrototyped, isOptimized: false)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!2356, !2389}
!2883 = !DISubprogram(name: "operator<<", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", scope: !2356, file: !1854, line: 1452, type: !2884, isLocal: false, isDefinition: false, scopeLine: 1452, flags: DIFlagPrototyped, isOptimized: false)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!2356, !2389, !123}
!2886 = !DISubprogram(name: "operator>>", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", scope: !2356, file: !1854, line: 1486, type: !2884, isLocal: false, isDefinition: false, scopeLine: 1486, flags: DIFlagPrototyped, isOptimized: false)
!2887 = !DISubprogram(name: "operator<<", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", scope: !2356, file: !1854, line: 1509, type: !2888, isLocal: false, isDefinition: false, scopeLine: 1509, flags: DIFlagPrototyped, isOptimized: false)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!2356, !2389, !38}
!2890 = !DISubprogram(name: "operator>>", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", scope: !2356, file: !1854, line: 1520, type: !2888, isLocal: false, isDefinition: false, scopeLine: 1520, flags: DIFlagPrototyped, isOptimized: false)
!2891 = !DISubprogram(name: "operator<<=", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", scope: !2356, file: !1854, line: 1579, type: !2892, isLocal: false, isDefinition: false, scopeLine: 1579, flags: DIFlagPrototyped, isOptimized: false)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!2446, !2379, !42}
!2894 = !DISubprogram(name: "operator<<=", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", scope: !2356, file: !1854, line: 1584, type: !2895, isLocal: false, isDefinition: false, scopeLine: 1584, flags: DIFlagPrototyped, isOptimized: false)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!2446, !2379, !122}
!2897 = !DISubprogram(name: "operator>>=", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", scope: !2356, file: !1854, line: 1605, type: !2892, isLocal: false, isDefinition: false, scopeLine: 1605, flags: DIFlagPrototyped, isOptimized: false)
!2898 = !DISubprogram(name: "operator>>=", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", scope: !2356, file: !1854, line: 1610, type: !2895, isLocal: false, isDefinition: false, scopeLine: 1610, flags: DIFlagPrototyped, isOptimized: false)
!2899 = !DISubprogram(name: "operator>", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", scope: !2356, file: !1854, line: 1660, type: !2900, isLocal: false, isDefinition: false, scopeLine: 1660, flags: DIFlagPrototyped, isOptimized: false)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!40, !2389, !149}
!2902 = !DISubprogram(name: "operator<", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", scope: !2356, file: !1854, line: 1661, type: !2900, isLocal: false, isDefinition: false, scopeLine: 1661, flags: DIFlagPrototyped, isOptimized: false)
!2903 = !DISubprogram(name: "operator>=", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", scope: !2356, file: !1854, line: 1662, type: !2900, isLocal: false, isDefinition: false, scopeLine: 1662, flags: DIFlagPrototyped, isOptimized: false)
!2904 = !DISubprogram(name: "operator<=", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", scope: !2356, file: !1854, line: 1663, type: !2900, isLocal: false, isDefinition: false, scopeLine: 1663, flags: DIFlagPrototyped, isOptimized: false)
!2905 = !DISubprogram(name: "operator==", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", scope: !2356, file: !1854, line: 1664, type: !2900, isLocal: false, isDefinition: false, scopeLine: 1664, flags: DIFlagPrototyped, isOptimized: false)
!2906 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", scope: !2356, file: !1854, line: 1665, type: !2900, isLocal: false, isDefinition: false, scopeLine: 1665, flags: DIFlagPrototyped, isOptimized: false)
!2907 = !DISubprogram(name: "operator[]", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", scope: !2356, file: !1854, line: 1668, type: !2908, isLocal: false, isDefinition: false, scopeLine: 1668, flags: DIFlagPrototyped, isOptimized: false)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!2910, !2379, !123}
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "af_bit_ref<20, 20, true, AP_TRN, AP_WRAP, 0>", file: !436, line: 169, flags: DIFlagFwdDecl, identifier: "_ZTS10af_bit_refILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!2911 = !DISubprogram(name: "operator[]", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", scope: !2356, file: !1854, line: 1683, type: !2912, isLocal: false, isDefinition: false, scopeLine: 1683, flags: DIFlagPrototyped, isOptimized: false)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!40, !2389, !123}
!2914 = !DISubprogram(name: "bit", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", scope: !2356, file: !1854, line: 1688, type: !2908, isLocal: false, isDefinition: false, scopeLine: 1688, flags: DIFlagPrototyped, isOptimized: false)
!2915 = !DISubprogram(name: "bit", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", scope: !2356, file: !1854, line: 1703, type: !2912, isLocal: false, isDefinition: false, scopeLine: 1703, flags: DIFlagPrototyped, isOptimized: false)
!2916 = !DISubprogram(name: "get_bit", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", scope: !2356, file: !1854, line: 1718, type: !2917, isLocal: false, isDefinition: false, scopeLine: 1718, flags: DIFlagPrototyped, isOptimized: false)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!40, !2389, !38}
!2919 = !DISubprogram(name: "range", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", scope: !2356, file: !1854, line: 1743, type: !2920, isLocal: false, isDefinition: false, scopeLine: 1743, flags: DIFlagPrototyped, isOptimized: false)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!2922, !2379, !38, !38}
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "af_range_ref<20, 20, true, AP_TRN, AP_WRAP, 0>", file: !436, line: 165, flags: DIFlagFwdDecl, identifier: "_ZTS12af_range_refILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!2923 = !DISubprogram(name: "range", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", scope: !2356, file: !1854, line: 1750, type: !2924, isLocal: false, isDefinition: false, scopeLine: 1750, flags: DIFlagPrototyped, isOptimized: false)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!2922, !2389, !38, !38}
!2926 = !DISubprogram(name: "range", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", scope: !2356, file: !1854, line: 1775, type: !2927, isLocal: false, isDefinition: false, scopeLine: 1775, flags: DIFlagPrototyped, isOptimized: false)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!2922, !2379}
!2929 = !DISubprogram(name: "range", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", scope: !2356, file: !1854, line: 1779, type: !2930, isLocal: false, isDefinition: false, scopeLine: 1779, flags: DIFlagPrototyped, isOptimized: false)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!2922, !2389}
!2932 = !DISubprogram(name: "operator()", linkageName: "_ZN13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", scope: !2356, file: !1854, line: 1783, type: !2920, isLocal: false, isDefinition: false, scopeLine: 1783, flags: DIFlagPrototyped, isOptimized: false)
!2933 = !DISubprogram(name: "operator()", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", scope: !2356, file: !1854, line: 1788, type: !2924, isLocal: false, isDefinition: false, scopeLine: 1788, flags: DIFlagPrototyped, isOptimized: false)
!2934 = !DISubprogram(name: "is_zero", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", scope: !2356, file: !1854, line: 1811, type: !2489, isLocal: false, isDefinition: false, scopeLine: 1811, flags: DIFlagPrototyped, isOptimized: false)
!2935 = !DISubprogram(name: "is_neg", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", scope: !2356, file: !1854, line: 1813, type: !2489, isLocal: false, isDefinition: false, scopeLine: 1813, flags: DIFlagPrototyped, isOptimized: false)
!2936 = !DISubprogram(name: "wl", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", scope: !2356, file: !1854, line: 1818, type: !2387, isLocal: false, isDefinition: false, scopeLine: 1818, flags: DIFlagPrototyped, isOptimized: false)
!2937 = !DISubprogram(name: "iwl", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", scope: !2356, file: !1854, line: 1820, type: !2387, isLocal: false, isDefinition: false, scopeLine: 1820, flags: DIFlagPrototyped, isOptimized: false)
!2938 = !DISubprogram(name: "q_mode", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", scope: !2356, file: !1854, line: 1822, type: !2939, isLocal: false, isDefinition: false, scopeLine: 1822, flags: DIFlagPrototyped, isOptimized: false)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!46, !2389}
!2941 = !DISubprogram(name: "o_mode", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", scope: !2356, file: !1854, line: 1824, type: !2942, isLocal: false, isDefinition: false, scopeLine: 1824, flags: DIFlagPrototyped, isOptimized: false)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!58, !2389}
!2944 = !DISubprogram(name: "n_bits", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", scope: !2356, file: !1854, line: 1826, type: !2387, isLocal: false, isDefinition: false, scopeLine: 1826, flags: DIFlagPrototyped, isOptimized: false)
!2945 = !DISubprogram(name: "to_string", linkageName: "_ZNK13ap_fixed_baseILi20ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEhb", scope: !2356, file: !1854, line: 1918, type: !2946, isLocal: false, isDefinition: false, scopeLine: 1918, flags: DIFlagPrototyped, isOptimized: false)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!1249, !2389, !106, !40}
!2948 = !{!2949, !2950, !39, !2794, !2795, !2796}
!2949 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 20)
!2950 = !DITemplateValueParameter(name: "_AP_I", type: !38, value: i32 20)
!2951 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 22, type: !2952, isLocal: false, isDefinition: false, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: false)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{null, !2954}
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2955 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 75, type: !2956, isLocal: false, isDefinition: false, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{null, !2954, !2958, !40}
!2958 = !DIBasicType(name: "uint20", size: 20, encoding: DW_ATE_unsigned)
!2959 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 131, type: !2960, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{null, !2954, !40}
!2962 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 132, type: !2963, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !2954, !86}
!2965 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 133, type: !2966, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{null, !2954, !90}
!2968 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 134, type: !2969, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{null, !2954, !106}
!2971 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 135, type: !2972, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{null, !2954, !28}
!2974 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 136, type: !2975, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{null, !2954, !115}
!2977 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 137, type: !2978, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{null, !2954, !38}
!2980 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 138, type: !2981, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{null, !2954, !123}
!2983 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 139, type: !2984, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{null, !2954, !128}
!2986 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 140, type: !2987, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !2954, !133}
!2989 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 141, type: !2990, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{null, !2954, !435}
!2992 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 142, type: !2993, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{null, !2954, !440}
!2995 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 143, type: !2996, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{null, !2954, !450}
!2998 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 144, type: !2999, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{null, !2954, !153}
!3001 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 145, type: !3002, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{null, !2954, !149}
!3004 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 148, type: !3005, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{null, !2954, !84}
!3007 = !DISubprogram(name: "ap_fixed", scope: !2353, file: !1850, line: 150, type: !3008, isLocal: false, isDefinition: false, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{null, !2954, !84, !90}
!3010 = !DISubprogram(name: "operator=", linkageName: "_ZN8ap_fixedILi20ELi20EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !2353, file: !1850, line: 159, type: !3011, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!3013, !2954, !3014}
!3013 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2353, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3015, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2353)
!3016 = !DISubprogram(name: "operator=", linkageName: "_ZNV8ap_fixedILi20ELi20EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !2353, file: !1850, line: 168, type: !3017, isLocal: false, isDefinition: false, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{null, !3019, !3014}
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3020 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2353)
!3021 = !DISubprogram(name: "operator=", linkageName: "_ZN8ap_fixedILi20ELi20EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", scope: !2353, file: !1850, line: 173, type: !3022, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!3013, !2954, !3024}
!3024 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3020)
!3026 = !DISubprogram(name: "operator=", linkageName: "_ZNV8ap_fixedILi20ELi20EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", scope: !2353, file: !1850, line: 179, type: !3027, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !3019, !3024}
!3029 = !{!2949, !2950, !2794, !2795, !2796}
!3030 = !DISubprogram(name: "getNeg", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", scope: !2189, file: !1854, line: 1412, type: !3031, isLocal: false, isDefinition: false, scopeLine: 1412, flags: DIFlagPrototyped, isOptimized: false)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!2189, !2199}
!3033 = !DISubprogram(name: "operator!", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", scope: !2189, file: !1854, line: 1420, type: !2308, isLocal: false, isDefinition: false, scopeLine: 1420, flags: DIFlagPrototyped, isOptimized: false)
!3034 = !DISubprogram(name: "operator~", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", scope: !2189, file: !1854, line: 1425, type: !3035, isLocal: false, isDefinition: false, scopeLine: 1425, flags: DIFlagPrototyped, isOptimized: false)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!2189, !2209}
!3037 = !DISubprogram(name: "operator<<", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", scope: !2189, file: !1854, line: 1452, type: !3038, isLocal: false, isDefinition: false, scopeLine: 1452, flags: DIFlagPrototyped, isOptimized: false)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!2189, !2209, !123}
!3040 = !DISubprogram(name: "operator>>", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", scope: !2189, file: !1854, line: 1486, type: !3038, isLocal: false, isDefinition: false, scopeLine: 1486, flags: DIFlagPrototyped, isOptimized: false)
!3041 = !DISubprogram(name: "operator<<", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", scope: !2189, file: !1854, line: 1509, type: !3042, isLocal: false, isDefinition: false, scopeLine: 1509, flags: DIFlagPrototyped, isOptimized: false)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!2189, !2209, !38}
!3044 = !DISubprogram(name: "operator>>", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", scope: !2189, file: !1854, line: 1520, type: !3042, isLocal: false, isDefinition: false, scopeLine: 1520, flags: DIFlagPrototyped, isOptimized: false)
!3045 = !DISubprogram(name: "operator<<=", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", scope: !2189, file: !1854, line: 1579, type: !3046, isLocal: false, isDefinition: false, scopeLine: 1579, flags: DIFlagPrototyped, isOptimized: false)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!2266, !2199, !42}
!3048 = !DISubprogram(name: "operator<<=", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", scope: !2189, file: !1854, line: 1584, type: !3049, isLocal: false, isDefinition: false, scopeLine: 1584, flags: DIFlagPrototyped, isOptimized: false)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!2266, !2199, !122}
!3051 = !DISubprogram(name: "operator>>=", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", scope: !2189, file: !1854, line: 1605, type: !3046, isLocal: false, isDefinition: false, scopeLine: 1605, flags: DIFlagPrototyped, isOptimized: false)
!3052 = !DISubprogram(name: "operator>>=", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", scope: !2189, file: !1854, line: 1610, type: !3049, isLocal: false, isDefinition: false, scopeLine: 1610, flags: DIFlagPrototyped, isOptimized: false)
!3053 = !DISubprogram(name: "operator>", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", scope: !2189, file: !1854, line: 1660, type: !3054, isLocal: false, isDefinition: false, scopeLine: 1660, flags: DIFlagPrototyped, isOptimized: false)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!40, !2209, !149}
!3056 = !DISubprogram(name: "operator<", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", scope: !2189, file: !1854, line: 1661, type: !3054, isLocal: false, isDefinition: false, scopeLine: 1661, flags: DIFlagPrototyped, isOptimized: false)
!3057 = !DISubprogram(name: "operator>=", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", scope: !2189, file: !1854, line: 1662, type: !3054, isLocal: false, isDefinition: false, scopeLine: 1662, flags: DIFlagPrototyped, isOptimized: false)
!3058 = !DISubprogram(name: "operator<=", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", scope: !2189, file: !1854, line: 1663, type: !3054, isLocal: false, isDefinition: false, scopeLine: 1663, flags: DIFlagPrototyped, isOptimized: false)
!3059 = !DISubprogram(name: "operator==", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", scope: !2189, file: !1854, line: 1664, type: !3054, isLocal: false, isDefinition: false, scopeLine: 1664, flags: DIFlagPrototyped, isOptimized: false)
!3060 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", scope: !2189, file: !1854, line: 1665, type: !3054, isLocal: false, isDefinition: false, scopeLine: 1665, flags: DIFlagPrototyped, isOptimized: false)
!3061 = !DISubprogram(name: "operator[]", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", scope: !2189, file: !1854, line: 1668, type: !3062, isLocal: false, isDefinition: false, scopeLine: 1668, flags: DIFlagPrototyped, isOptimized: false)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!3064, !2199, !123}
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "af_bit_ref<19, 19, true, AP_TRN, AP_WRAP, 0>", file: !436, line: 169, flags: DIFlagFwdDecl, identifier: "_ZTS10af_bit_refILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!3065 = !DISubprogram(name: "operator[]", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", scope: !2189, file: !1854, line: 1683, type: !3066, isLocal: false, isDefinition: false, scopeLine: 1683, flags: DIFlagPrototyped, isOptimized: false)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!40, !2209, !123}
!3068 = !DISubprogram(name: "bit", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", scope: !2189, file: !1854, line: 1688, type: !3062, isLocal: false, isDefinition: false, scopeLine: 1688, flags: DIFlagPrototyped, isOptimized: false)
!3069 = !DISubprogram(name: "bit", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", scope: !2189, file: !1854, line: 1703, type: !3066, isLocal: false, isDefinition: false, scopeLine: 1703, flags: DIFlagPrototyped, isOptimized: false)
!3070 = !DISubprogram(name: "get_bit", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", scope: !2189, file: !1854, line: 1718, type: !3071, isLocal: false, isDefinition: false, scopeLine: 1718, flags: DIFlagPrototyped, isOptimized: false)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!40, !2209, !38}
!3073 = !DISubprogram(name: "range", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", scope: !2189, file: !1854, line: 1743, type: !3074, isLocal: false, isDefinition: false, scopeLine: 1743, flags: DIFlagPrototyped, isOptimized: false)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!3076, !2199, !38, !38}
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "af_range_ref<19, 19, true, AP_TRN, AP_WRAP, 0>", file: !436, line: 165, flags: DIFlagFwdDecl, identifier: "_ZTS12af_range_refILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!3077 = !DISubprogram(name: "range", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", scope: !2189, file: !1854, line: 1750, type: !3078, isLocal: false, isDefinition: false, scopeLine: 1750, flags: DIFlagPrototyped, isOptimized: false)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!3076, !2209, !38, !38}
!3080 = !DISubprogram(name: "range", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", scope: !2189, file: !1854, line: 1775, type: !3081, isLocal: false, isDefinition: false, scopeLine: 1775, flags: DIFlagPrototyped, isOptimized: false)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!3076, !2199}
!3083 = !DISubprogram(name: "range", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", scope: !2189, file: !1854, line: 1779, type: !3084, isLocal: false, isDefinition: false, scopeLine: 1779, flags: DIFlagPrototyped, isOptimized: false)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!3076, !2209}
!3086 = !DISubprogram(name: "operator()", linkageName: "_ZN13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", scope: !2189, file: !1854, line: 1783, type: !3074, isLocal: false, isDefinition: false, scopeLine: 1783, flags: DIFlagPrototyped, isOptimized: false)
!3087 = !DISubprogram(name: "operator()", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", scope: !2189, file: !1854, line: 1788, type: !3078, isLocal: false, isDefinition: false, scopeLine: 1788, flags: DIFlagPrototyped, isOptimized: false)
!3088 = !DISubprogram(name: "is_zero", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", scope: !2189, file: !1854, line: 1811, type: !2308, isLocal: false, isDefinition: false, scopeLine: 1811, flags: DIFlagPrototyped, isOptimized: false)
!3089 = !DISubprogram(name: "is_neg", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", scope: !2189, file: !1854, line: 1813, type: !2308, isLocal: false, isDefinition: false, scopeLine: 1813, flags: DIFlagPrototyped, isOptimized: false)
!3090 = !DISubprogram(name: "wl", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", scope: !2189, file: !1854, line: 1818, type: !2207, isLocal: false, isDefinition: false, scopeLine: 1818, flags: DIFlagPrototyped, isOptimized: false)
!3091 = !DISubprogram(name: "iwl", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", scope: !2189, file: !1854, line: 1820, type: !2207, isLocal: false, isDefinition: false, scopeLine: 1820, flags: DIFlagPrototyped, isOptimized: false)
!3092 = !DISubprogram(name: "q_mode", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", scope: !2189, file: !1854, line: 1822, type: !3093, isLocal: false, isDefinition: false, scopeLine: 1822, flags: DIFlagPrototyped, isOptimized: false)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!46, !2209}
!3095 = !DISubprogram(name: "o_mode", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", scope: !2189, file: !1854, line: 1824, type: !3096, isLocal: false, isDefinition: false, scopeLine: 1824, flags: DIFlagPrototyped, isOptimized: false)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!58, !2209}
!3098 = !DISubprogram(name: "n_bits", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", scope: !2189, file: !1854, line: 1826, type: !2207, isLocal: false, isDefinition: false, scopeLine: 1826, flags: DIFlagPrototyped, isOptimized: false)
!3099 = !DISubprogram(name: "to_string", linkageName: "_ZNK13ap_fixed_baseILi19ELi19ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEhb", scope: !2189, file: !1854, line: 1918, type: !3100, isLocal: false, isDefinition: false, scopeLine: 1918, flags: DIFlagPrototyped, isOptimized: false)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!1249, !2209, !106, !40}
!3102 = !{!1251, !3103, !39, !2794, !2795, !2796}
!3103 = !DITemplateValueParameter(name: "_AP_I", type: !38, value: i32 19)
!3104 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 22, type: !3105, isLocal: false, isDefinition: false, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: false)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{null, !3107}
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3108 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 75, type: !3109, isLocal: false, isDefinition: false, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{null, !3107, !1259, !40}
!3111 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 131, type: !3112, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{null, !3107, !40}
!3114 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 132, type: !3115, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{null, !3107, !86}
!3117 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 133, type: !3118, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{null, !3107, !90}
!3120 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 134, type: !3121, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !3107, !106}
!3123 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 135, type: !3124, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{null, !3107, !28}
!3126 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 136, type: !3127, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{null, !3107, !115}
!3129 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 137, type: !3130, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !3107, !38}
!3132 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 138, type: !3133, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{null, !3107, !123}
!3135 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 139, type: !3136, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{null, !3107, !128}
!3138 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 140, type: !3139, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{null, !3107, !133}
!3141 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 141, type: !3142, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{null, !3107, !435}
!3144 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 142, type: !3145, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !3107, !440}
!3147 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 143, type: !3148, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{null, !3107, !450}
!3150 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 144, type: !3151, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{null, !3107, !153}
!3153 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 145, type: !3154, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{null, !3107, !149}
!3156 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 148, type: !3157, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{null, !3107, !84}
!3159 = !DISubprogram(name: "ap_fixed", scope: !2186, file: !1850, line: 150, type: !3160, isLocal: false, isDefinition: false, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{null, !3107, !84, !90}
!3162 = !DISubprogram(name: "operator=", linkageName: "_ZN8ap_fixedILi19ELi19EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !2186, file: !1850, line: 159, type: !3163, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!3165, !3107, !3166}
!3165 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2186, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3167, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2186)
!3168 = !DISubprogram(name: "operator=", linkageName: "_ZNV8ap_fixedILi19ELi19EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !2186, file: !1850, line: 168, type: !3169, isLocal: false, isDefinition: false, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{null, !3171, !3166}
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3172 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2186)
!3173 = !DISubprogram(name: "operator=", linkageName: "_ZN8ap_fixedILi19ELi19EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", scope: !2186, file: !1850, line: 173, type: !3174, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!3165, !3107, !3176}
!3176 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3172)
!3178 = !DISubprogram(name: "operator=", linkageName: "_ZNV8ap_fixedILi19ELi19EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", scope: !2186, file: !1850, line: 179, type: !3179, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{null, !3171, !3176}
!3181 = !{!1251, !3103, !2794, !2795, !2796}
!3182 = !DISubprogram(name: "getNeg", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", scope: !2022, file: !1854, line: 1412, type: !3183, isLocal: false, isDefinition: false, scopeLine: 1412, flags: DIFlagPrototyped, isOptimized: false)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!2022, !2032}
!3185 = !DISubprogram(name: "operator!", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", scope: !2022, file: !1854, line: 1420, type: !2141, isLocal: false, isDefinition: false, scopeLine: 1420, flags: DIFlagPrototyped, isOptimized: false)
!3186 = !DISubprogram(name: "operator~", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", scope: !2022, file: !1854, line: 1425, type: !3187, isLocal: false, isDefinition: false, scopeLine: 1425, flags: DIFlagPrototyped, isOptimized: false)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!2022, !2042}
!3189 = !DISubprogram(name: "operator<<", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", scope: !2022, file: !1854, line: 1452, type: !3190, isLocal: false, isDefinition: false, scopeLine: 1452, flags: DIFlagPrototyped, isOptimized: false)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!2022, !2042, !123}
!3192 = !DISubprogram(name: "operator>>", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", scope: !2022, file: !1854, line: 1486, type: !3190, isLocal: false, isDefinition: false, scopeLine: 1486, flags: DIFlagPrototyped, isOptimized: false)
!3193 = !DISubprogram(name: "operator<<", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", scope: !2022, file: !1854, line: 1509, type: !3194, isLocal: false, isDefinition: false, scopeLine: 1509, flags: DIFlagPrototyped, isOptimized: false)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!2022, !2042, !38}
!3196 = !DISubprogram(name: "operator>>", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", scope: !2022, file: !1854, line: 1520, type: !3194, isLocal: false, isDefinition: false, scopeLine: 1520, flags: DIFlagPrototyped, isOptimized: false)
!3197 = !DISubprogram(name: "operator<<=", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", scope: !2022, file: !1854, line: 1579, type: !3198, isLocal: false, isDefinition: false, scopeLine: 1579, flags: DIFlagPrototyped, isOptimized: false)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!2099, !2032, !42}
!3200 = !DISubprogram(name: "operator<<=", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", scope: !2022, file: !1854, line: 1584, type: !3201, isLocal: false, isDefinition: false, scopeLine: 1584, flags: DIFlagPrototyped, isOptimized: false)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!2099, !2032, !122}
!3203 = !DISubprogram(name: "operator>>=", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", scope: !2022, file: !1854, line: 1605, type: !3198, isLocal: false, isDefinition: false, scopeLine: 1605, flags: DIFlagPrototyped, isOptimized: false)
!3204 = !DISubprogram(name: "operator>>=", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", scope: !2022, file: !1854, line: 1610, type: !3201, isLocal: false, isDefinition: false, scopeLine: 1610, flags: DIFlagPrototyped, isOptimized: false)
!3205 = !DISubprogram(name: "operator>", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", scope: !2022, file: !1854, line: 1660, type: !3206, isLocal: false, isDefinition: false, scopeLine: 1660, flags: DIFlagPrototyped, isOptimized: false)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!40, !2042, !149}
!3208 = !DISubprogram(name: "operator<", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", scope: !2022, file: !1854, line: 1661, type: !3206, isLocal: false, isDefinition: false, scopeLine: 1661, flags: DIFlagPrototyped, isOptimized: false)
!3209 = !DISubprogram(name: "operator>=", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", scope: !2022, file: !1854, line: 1662, type: !3206, isLocal: false, isDefinition: false, scopeLine: 1662, flags: DIFlagPrototyped, isOptimized: false)
!3210 = !DISubprogram(name: "operator<=", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", scope: !2022, file: !1854, line: 1663, type: !3206, isLocal: false, isDefinition: false, scopeLine: 1663, flags: DIFlagPrototyped, isOptimized: false)
!3211 = !DISubprogram(name: "operator==", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", scope: !2022, file: !1854, line: 1664, type: !3206, isLocal: false, isDefinition: false, scopeLine: 1664, flags: DIFlagPrototyped, isOptimized: false)
!3212 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", scope: !2022, file: !1854, line: 1665, type: !3206, isLocal: false, isDefinition: false, scopeLine: 1665, flags: DIFlagPrototyped, isOptimized: false)
!3213 = !DISubprogram(name: "operator[]", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", scope: !2022, file: !1854, line: 1668, type: !3214, isLocal: false, isDefinition: false, scopeLine: 1668, flags: DIFlagPrototyped, isOptimized: false)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!3216, !2032, !123}
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "af_bit_ref<18, 18, true, AP_TRN, AP_WRAP, 0>", file: !3217, line: 27, size: 128, flags: DIFlagTypePassByReference, elements: !3218, templateParams: !3257, identifier: "_ZTS10af_bit_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!3217 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_fixed_ref.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!3218 = !{!3219, !3222, !3223, !3229, !3233, !3238, !3242, !3246, !3249, !3250, !3251, !3254}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !3216, file: !3217, line: 32, baseType: !3220, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !3216, file: !3217, line: 31, baseType: !2022)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !3216, file: !3217, line: 33, baseType: !38, size: 32, offset: 64)
!3223 = !DISubprogram(name: "af_bit_ref", scope: !3216, file: !3217, line: 36, type: !3224, isLocal: false, isDefinition: false, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{null, !3226, !3227}
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3227 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3216)
!3229 = !DISubprogram(name: "af_bit_ref", scope: !3216, file: !3217, line: 47, type: !3230, isLocal: false, isDefinition: false, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{null, !3226, !3232, !38}
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3233 = !DISubprogram(name: "af_bit_ref", scope: !3216, file: !3217, line: 49, type: !3234, isLocal: false, isDefinition: false, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{null, !3226, !3236, !38}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3221)
!3238 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10af_bit_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvbEv", scope: !3216, file: !3217, line: 53, type: !3239, isLocal: false, isDefinition: false, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!40, !3241}
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3242 = !DISubprogram(name: "operator=", linkageName: "_ZN10af_bit_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEb", scope: !3216, file: !3217, line: 57, type: !3243, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!3245, !3226, !40}
!3245 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3216, size: 64)
!3246 = !DISubprogram(name: "operator=", linkageName: "_ZN10af_bit_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !3216, file: !3217, line: 64, type: !3247, isLocal: false, isDefinition: false, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!3245, !3226, !3227}
!3249 = !DISubprogram(name: "operator~", linkageName: "_ZNK10af_bit_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", scope: !3216, file: !3217, line: 180, type: !3239, isLocal: false, isDefinition: false, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false)
!3250 = !DISubprogram(name: "get", linkageName: "_ZNK10af_bit_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3getEv", scope: !3216, file: !3217, line: 185, type: !3239, isLocal: false, isDefinition: false, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false)
!3251 = !DISubprogram(name: "length", linkageName: "_ZNK10af_bit_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", scope: !3216, file: !3217, line: 187, type: !3252, isLocal: false, isDefinition: false, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!38, !3241}
!3254 = !DISubprogram(name: "to_string", linkageName: "_ZNK10af_bit_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEv", scope: !3216, file: !3217, line: 193, type: !3255, isLocal: false, isDefinition: false, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!1249, !3241}
!3257 = !{!1366, !3258, !39, !2794, !2795, !2796}
!3258 = !DITemplateValueParameter(name: "_AP_I", type: !38, value: i32 18)
!3259 = !DISubprogram(name: "operator[]", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", scope: !2022, file: !1854, line: 1683, type: !3260, isLocal: false, isDefinition: false, scopeLine: 1683, flags: DIFlagPrototyped, isOptimized: false)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!40, !2042, !123}
!3262 = !DISubprogram(name: "bit", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", scope: !2022, file: !1854, line: 1688, type: !3214, isLocal: false, isDefinition: false, scopeLine: 1688, flags: DIFlagPrototyped, isOptimized: false)
!3263 = !DISubprogram(name: "bit", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", scope: !2022, file: !1854, line: 1703, type: !3260, isLocal: false, isDefinition: false, scopeLine: 1703, flags: DIFlagPrototyped, isOptimized: false)
!3264 = !DISubprogram(name: "get_bit", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", scope: !2022, file: !1854, line: 1718, type: !3265, isLocal: false, isDefinition: false, scopeLine: 1718, flags: DIFlagPrototyped, isOptimized: false)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!40, !2042, !38}
!3267 = !DISubprogram(name: "range", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", scope: !2022, file: !1854, line: 1743, type: !3268, isLocal: false, isDefinition: false, scopeLine: 1743, flags: DIFlagPrototyped, isOptimized: false)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!3270, !2032, !38, !38}
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "af_range_ref<18, 18, true, AP_TRN, AP_WRAP, 0>", file: !3217, line: 214, size: 128, flags: DIFlagTypePassByReference, elements: !3271, templateParams: !3257, identifier: "_ZTS12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!3271 = !{!3272, !3275, !3276, !3277, !3283, !3287, !3292, !3296, !3299, !3302, !3305, !3308, !3311, !3314, !3317, !3320, !3323, !3326, !3329, !3333, !3337, !3341, !3344, !3347, !3351, !3705, !3706, !3709, !3712, !3715, !3718, !3721, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !3270, file: !3217, line: 219, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !3270, file: !3217, line: 218, baseType: !2022)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "l_index", scope: !3270, file: !3217, line: 220, baseType: !38, size: 32, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "h_index", scope: !3270, file: !3217, line: 221, baseType: !38, size: 32, offset: 96)
!3277 = !DISubprogram(name: "af_range_ref", scope: !3270, file: !3217, line: 225, type: !3278, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !3280, !3281}
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3281 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3270)
!3283 = !DISubprogram(name: "af_range_ref", scope: !3270, file: !3217, line: 232, type: !3284, isLocal: false, isDefinition: false, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{null, !3280, !3286, !38, !38}
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3287 = !DISubprogram(name: "af_range_ref", scope: !3270, file: !3217, line: 244, type: !3288, isLocal: false, isDefinition: false, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{null, !3280, !3290, !38, !38}
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3274)
!3292 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEb", scope: !3270, file: !3217, line: 266, type: !3293, isLocal: false, isDefinition: false, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!3295, !3280, !94}
!3295 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3270, size: 64)
!3296 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEc", scope: !3270, file: !3217, line: 267, type: !3297, isLocal: false, isDefinition: false, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: false)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!3295, !3280, !85}
!3299 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEa", scope: !3270, file: !3217, line: 268, type: !3300, isLocal: false, isDefinition: false, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: false)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!3295, !3280, !101}
!3302 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEh", scope: !3270, file: !3217, line: 269, type: !3303, isLocal: false, isDefinition: false, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!3295, !3280, !105}
!3305 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEs", scope: !3270, file: !3217, line: 270, type: !3306, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!3295, !3280, !110}
!3308 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEt", scope: !3270, file: !3217, line: 271, type: !3309, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!3295, !3280, !114}
!3311 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEi", scope: !3270, file: !3217, line: 272, type: !3312, isLocal: false, isDefinition: false, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: false)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!3295, !3280, !42}
!3314 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEj", scope: !3270, file: !3217, line: 273, type: !3315, isLocal: false, isDefinition: false, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!3295, !3280, !122}
!3317 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEl", scope: !3270, file: !3217, line: 274, type: !3318, isLocal: false, isDefinition: false, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!3295, !3280, !127}
!3320 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEm", scope: !3270, file: !3217, line: 275, type: !3321, isLocal: false, isDefinition: false, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: false)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!3295, !3280, !132}
!3323 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEx", scope: !3270, file: !3217, line: 276, type: !3324, isLocal: false, isDefinition: false, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!3295, !3280, !559}
!3326 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEy", scope: !3270, file: !3217, line: 277, type: !3327, isLocal: false, isDefinition: false, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: false)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!3295, !3280, !563}
!3329 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEDh", scope: !3270, file: !3217, line: 278, type: !3330, isLocal: false, isDefinition: false, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: false)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!3295, !3280, !3332}
!3332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!3333 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEf", scope: !3270, file: !3217, line: 279, type: !3334, isLocal: false, isDefinition: false, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!3295, !3280, !3336}
!3336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!3337 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEd", scope: !3270, file: !3217, line: 280, type: !3338, isLocal: false, isDefinition: false, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!3295, !3280, !3340}
!3340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!3341 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEPKc", scope: !3270, file: !3217, line: 284, type: !3342, isLocal: false, isDefinition: false, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!3295, !3280, !84}
!3344 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !3270, file: !3217, line: 325, type: !3345, isLocal: false, isDefinition: false, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: false)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!3295, !3280, !3281}
!3347 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", scope: !3270, file: !3217, line: 518, type: !3348, isLocal: false, isDefinition: false, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: false)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!440, !3350}
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3351 = !DISubprogram(name: "operator ap_int_base", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcv11ap_int_baseILi18ELb0EEEv", scope: !3270, file: !3217, line: 524, type: !3352, isLocal: false, isDefinition: false, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: false)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!3354, !3350}
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<18, false>", file: !499, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !3355, templateParams: !3704, identifier: "_ZTS11ap_int_baseILi18ELb0EE")
!3355 = !{!3356, !3369, !3370, !3371, !3376, !3380, !3383, !3386, !3389, !3392, !3395, !3398, !3401, !3404, !3407, !3410, !3413, !3416, !3419, !3422, !3425, !3428, !3431, !3436, !3440, !3445, !3446, !3450, !3453, !3456, !3459, !3462, !3465, !3468, !3471, !3474, !3477, !3480, !3483, !3486, !3489, !3496, !3499, !3502, !3505, !3508, !3511, !3514, !3515, !3518, !3521, !3524, !3527, !3530, !3533, !3536, !3539, !3543, !3544, !3545, !3546, !3547, !3550, !3551, !3554, !3557, !3558, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3570, !3571, !3572, !3661, !3662, !3665, !3670, !3671, !3672, !3676, !3679, !3682, !3685, !3686, !3687, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701}
!3356 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3354, baseType: !3357)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<18, false>", file: !451, line: 517, size: 32, flags: DIFlagTypePassByValue, elements: !3358, templateParams: !3367, identifier: "_ZTS8ssdm_intILi18ELb0EE")
!3358 = !{!3359, !3360, !3364}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !3357, file: !451, line: 519, baseType: !1374, size: 18, align: 32)
!3360 = !DISubprogram(name: "ssdm_int", scope: !3357, file: !451, line: 520, type: !3361, isLocal: false, isDefinition: false, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: false)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !3363}
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3364 = !DISubprogram(name: "ssdm_int", scope: !3357, file: !451, line: 521, type: !3365, isLocal: false, isDefinition: false, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: false)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{null, !3363, !1374}
!3367 = !{!756, !3368}
!3368 = !DITemplateValueParameter(name: "_AP_S", type: !40, value: i8 0)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !3354, file: !499, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 18)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !3354, file: !499, line: 131, baseType: !94, flags: DIFlagStaticMember, extraData: i1 false)
!3371 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi18ELb0EE16countLeadingOnesEv", scope: !3354, file: !499, line: 110, type: !3372, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!38, !3374}
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3354)
!3376 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 175, type: !3377, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{null, !3379}
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3380 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 208, type: !3381, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{null, !3379, !94}
!3383 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 209, type: !3384, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{null, !3379, !85}
!3386 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 210, type: !3387, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{null, !3379, !101}
!3389 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 211, type: !3390, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{null, !3379, !105}
!3392 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 212, type: !3393, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{null, !3379, !110}
!3395 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 213, type: !3396, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{null, !3379, !114}
!3398 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 214, type: !3399, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{null, !3379, !42}
!3401 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 215, type: !3402, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{null, !3379, !122}
!3404 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 216, type: !3405, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{null, !3379, !127}
!3407 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 217, type: !3408, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{null, !3379, !132}
!3410 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 218, type: !3411, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !3379, !559}
!3413 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 219, type: !3414, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{null, !3379, !563}
!3416 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 224, type: !3417, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{null, !3379, !450}
!3419 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 230, type: !3420, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{null, !3379, !153}
!3422 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 289, type: !3423, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{null, !3379, !149}
!3425 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 385, type: !3426, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{null, !3379, !84}
!3428 = !DISubprogram(name: "ap_int_base", scope: !3354, file: !499, line: 391, type: !3429, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{null, !3379, !84, !90}
!3431 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi18ELb0EE4readEv", scope: !3354, file: !499, line: 413, type: !3432, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!3354, !3434}
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3435 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3354)
!3436 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi18ELb0EE5writeERKS0_", scope: !3354, file: !499, line: 420, type: !3437, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{null, !3434, !3439}
!3439 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3375, size: 64)
!3440 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi18ELb0EEaSERVKS0_", scope: !3354, file: !499, line: 432, type: !3441, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{null, !3434, !3443}
!3443 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3435)
!3445 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi18ELb0EEaSERKS0_", scope: !3354, file: !499, line: 442, type: !3437, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!3446 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSERVKS0_", scope: !3354, file: !499, line: 459, type: !3447, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!3449, !3379, !3443}
!3449 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3354, size: 64)
!3450 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSERKS0_", scope: !3354, file: !499, line: 465, type: !3451, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!3449, !3379, !3439}
!3453 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSEb", scope: !3354, file: !499, line: 479, type: !3454, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!3449, !3379, !40}
!3456 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSEc", scope: !3354, file: !499, line: 480, type: !3457, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!3449, !3379, !86}
!3459 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSEa", scope: !3354, file: !499, line: 481, type: !3460, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!3449, !3379, !90}
!3462 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSEh", scope: !3354, file: !499, line: 482, type: !3463, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!3449, !3379, !106}
!3465 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSEs", scope: !3354, file: !499, line: 483, type: !3466, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!3449, !3379, !28}
!3468 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSEt", scope: !3354, file: !499, line: 484, type: !3469, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!3449, !3379, !115}
!3471 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSEi", scope: !3354, file: !499, line: 485, type: !3472, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!3449, !3379, !38}
!3474 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSEj", scope: !3354, file: !499, line: 486, type: !3475, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!3449, !3379, !123}
!3477 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSEl", scope: !3354, file: !499, line: 487, type: !3478, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!3449, !3379, !128}
!3480 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSEm", scope: !3354, file: !499, line: 488, type: !3481, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!3449, !3379, !133}
!3483 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSEx", scope: !3354, file: !499, line: 489, type: !3484, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!3449, !3379, !435}
!3486 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi18ELb0EEaSEy", scope: !3354, file: !499, line: 490, type: !3487, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!3449, !3379, !440}
!3489 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK11ap_int_baseILi18ELb0EEcvyEv", scope: !3354, file: !499, line: 541, type: !3490, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!3492, !3374}
!3492 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !3354, file: !499, line: 128, baseType: !3493)
!3493 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !3494, file: !499, line: 51, baseType: !440)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, false>", file: !499, line: 50, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !3495, identifier: "_ZTS6retvalILi8ELb0EE")
!3495 = !{!303, !3368}
!3496 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi18ELb0EE7to_boolEv", scope: !3354, file: !499, line: 546, type: !3497, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!40, !3374}
!3499 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi18ELb0EE7to_charEv", scope: !3354, file: !499, line: 547, type: !3500, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!86, !3374}
!3502 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi18ELb0EE8to_scharEv", scope: !3354, file: !499, line: 548, type: !3503, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!90, !3374}
!3505 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi18ELb0EE8to_ucharEv", scope: !3354, file: !499, line: 549, type: !3506, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!106, !3374}
!3508 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi18ELb0EE8to_shortEv", scope: !3354, file: !499, line: 550, type: !3509, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!28, !3374}
!3511 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi18ELb0EE9to_ushortEv", scope: !3354, file: !499, line: 551, type: !3512, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!115, !3374}
!3514 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi18ELb0EE6to_intEv", scope: !3354, file: !499, line: 552, type: !3372, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!3515 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi18ELb0EE7to_uintEv", scope: !3354, file: !499, line: 553, type: !3516, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!123, !3374}
!3518 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi18ELb0EE7to_longEv", scope: !3354, file: !499, line: 554, type: !3519, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!128, !3374}
!3521 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi18ELb0EE8to_ulongEv", scope: !3354, file: !499, line: 555, type: !3522, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!133, !3374}
!3524 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi18ELb0EE8to_int64Ev", scope: !3354, file: !499, line: 556, type: !3525, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!435, !3374}
!3527 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi18ELb0EE9to_uint64Ev", scope: !3354, file: !499, line: 557, type: !3528, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!440, !3374}
!3530 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi18ELb0EE7to_halfEv", scope: !3354, file: !499, line: 558, type: !3531, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!450, !3374}
!3533 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi18ELb0EE8to_floatEv", scope: !3354, file: !499, line: 559, type: !3534, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!153, !3374}
!3536 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi18ELb0EE9to_doubleEv", scope: !3354, file: !499, line: 560, type: !3537, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!149, !3374}
!3539 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi18ELb0EE6lengthEv", scope: !3354, file: !499, line: 584, type: !3540, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!38, !3542}
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3543 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi18ELb0EE6lengthEv", scope: !3354, file: !499, line: 585, type: !3372, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!3544 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi18ELb0EE6iszeroEv", scope: !3354, file: !499, line: 588, type: !3497, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!3545 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi18ELb0EE7is_zeroEv", scope: !3354, file: !499, line: 591, type: !3497, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!3546 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi18ELb0EE4signEv", scope: !3354, file: !499, line: 594, type: !3497, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!3547 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi18ELb0EE5clearEi", scope: !3354, file: !499, line: 603, type: !3548, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{null, !3379, !38}
!3550 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi18ELb0EE6invertEi", scope: !3354, file: !499, line: 609, type: !3548, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!3551 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi18ELb0EE4testEi", scope: !3354, file: !499, line: 618, type: !3552, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!40, !3374, !38}
!3554 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi18ELb0EE3getEv", scope: !3354, file: !499, line: 624, type: !3555, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!3449, !3379}
!3557 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi18ELb0EE3setEi", scope: !3354, file: !499, line: 627, type: !3548, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!3558 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi18ELb0EE3setEib", scope: !3354, file: !499, line: 633, type: !3559, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{null, !3379, !38, !40}
!3561 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi18ELb0EE7lrotateEi", scope: !3354, file: !499, line: 640, type: !3472, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!3562 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi18ELb0EE7rrotateEi", scope: !3354, file: !499, line: 655, type: !3472, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!3563 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi18ELb0EE7reverseEv", scope: !3354, file: !499, line: 670, type: !3555, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!3564 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi18ELb0EE7set_bitEib", scope: !3354, file: !499, line: 676, type: !3559, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!3565 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi18ELb0EE7get_bitEi", scope: !3354, file: !499, line: 681, type: !3552, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!3566 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi18ELb0EE5b_notEv", scope: !3354, file: !499, line: 686, type: !3377, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!3567 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi18ELb0EE17checkOverflowCsimEibb", scope: !3354, file: !499, line: 760, type: !3568, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!40, !3374, !38, !40, !40}
!3570 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi18ELb0EEppEv", scope: !3354, file: !499, line: 865, type: !3555, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!3571 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi18ELb0EEmmEv", scope: !3354, file: !499, line: 869, type: !3555, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!3572 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi18ELb0EEppEi", scope: !3354, file: !499, line: 877, type: !3573, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!3575, !3379, !38}
!3575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3576)
!3576 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !3577, file: !499, line: 167, baseType: !3579)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<18, false>", scope: !3354, file: !499, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !3578, identifier: "_ZTSN11ap_int_baseILi18ELb0EE5RTypeILi18ELb0EEE")
!3578 = !{!737, !490}
!3579 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3580, file: !499, line: 105, baseType: !3581)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<18, false>", file: !499, line: 105, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !3578, identifier: "_ZTS15_ap_int_factoryILi18ELb0EE")
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<18>", file: !392, line: 181, size: 32, flags: DIFlagTypePassByValue, elements: !3582, templateParams: !1445, identifier: "_ZTS7ap_uintILi18EE")
!3582 = !{!3583, !3584, !3588, !3591, !3594, !3597, !3600, !3603, !3606, !3609, !3612, !3615, !3618, !3621, !3624, !3627, !3630, !3633, !3636, !3639, !3642, !3648, !3654, !3658}
!3583 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3581, baseType: !3354)
!3584 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 184, type: !3585, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{null, !3587}
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3588 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 212, type: !3589, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{null, !3587, !1374, !40}
!3591 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 281, type: !3592, isLocal: false, isDefinition: false, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: false)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{null, !3587, !40}
!3594 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 282, type: !3595, isLocal: false, isDefinition: false, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{null, !3587, !86}
!3597 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 283, type: !3598, isLocal: false, isDefinition: false, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{null, !3587, !90}
!3600 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 284, type: !3601, isLocal: false, isDefinition: false, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{null, !3587, !106}
!3603 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 285, type: !3604, isLocal: false, isDefinition: false, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{null, !3587, !28}
!3606 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 286, type: !3607, isLocal: false, isDefinition: false, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{null, !3587, !115}
!3609 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 287, type: !3610, isLocal: false, isDefinition: false, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{null, !3587, !38}
!3612 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 288, type: !3613, isLocal: false, isDefinition: false, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: false)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{null, !3587, !123}
!3615 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 289, type: !3616, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{null, !3587, !128}
!3618 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 290, type: !3619, isLocal: false, isDefinition: false, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: false)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{null, !3587, !133}
!3621 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 291, type: !3622, isLocal: false, isDefinition: false, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{null, !3587, !435}
!3624 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 292, type: !3625, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: false)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{null, !3587, !440}
!3627 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 294, type: !3628, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{null, !3587, !149}
!3630 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 295, type: !3631, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{null, !3587, !153}
!3633 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 296, type: !3634, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{null, !3587, !450}
!3636 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 299, type: !3637, isLocal: false, isDefinition: false, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{null, !3587, !84}
!3639 = !DISubprogram(name: "ap_uint", scope: !3581, file: !392, line: 301, type: !3640, isLocal: false, isDefinition: false, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: false)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !3587, !84, !90}
!3642 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi18EEaSERKS0_", scope: !3581, file: !392, line: 307, type: !3643, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!3645, !3587, !3646}
!3645 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3581, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3647, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3581)
!3648 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi18EEaSERVKS0_", scope: !3581, file: !392, line: 317, type: !3649, isLocal: false, isDefinition: false, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: false)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!3645, !3587, !3651}
!3651 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3652, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3653)
!3653 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3581)
!3654 = !DISubprogram(name: "operator=", linkageName: "_ZNV7ap_uintILi18EEaSERKS0_", scope: !3581, file: !392, line: 323, type: !3655, isLocal: false, isDefinition: false, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: false)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{null, !3657, !3646}
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3658 = !DISubprogram(name: "operator=", linkageName: "_ZNV7ap_uintILi18EEaSERVKS0_", scope: !3581, file: !392, line: 327, type: !3659, isLocal: false, isDefinition: false, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{null, !3657, !3651}
!3661 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi18ELb0EEmmEi", scope: !3354, file: !499, line: 882, type: !3573, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!3662 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi18ELb0EEpsEv", scope: !3354, file: !499, line: 891, type: !3663, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!3576, !3374}
!3665 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi18ELb0EEngEv", scope: !3354, file: !499, line: 894, type: !3666, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!3668, !3374}
!3668 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !3669, file: !499, line: 163, baseType: !972)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !3354, file: !499, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !488, identifier: "_ZTSN11ap_int_baseILi18ELb0EE5RTypeILi1ELb0EEE")
!3670 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi18ELb0EEntEv", scope: !3354, file: !499, line: 901, type: !3497, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!3671 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi18ELb0EEcoEv", scope: !3354, file: !499, line: 907, type: !3663, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!3672 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi18ELb0EE5rangeEii", scope: !3354, file: !499, line: 1045, type: !3673, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!3675, !3379, !38, !38}
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<18, false>", file: !436, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi18ELb0EE")
!3676 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi18ELb0EE5rangeEii", scope: !3354, file: !499, line: 1052, type: !3677, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!3675, !3374, !38, !38}
!3679 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi18ELb0EE5rangeEv", scope: !3354, file: !499, line: 1076, type: !3680, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!3675, !3379}
!3682 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi18ELb0EE5rangeEv", scope: !3354, file: !499, line: 1080, type: !3683, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!3675, !3374}
!3685 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi18ELb0EEclEii", scope: !3354, file: !499, line: 1084, type: !3673, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!3686 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi18ELb0EEclEii", scope: !3354, file: !499, line: 1088, type: !3677, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!3687 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi18ELb0EEixEi", scope: !3354, file: !499, line: 1126, type: !3688, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!3690, !3379, !38}
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<18, false>", file: !436, line: 146, flags: DIFlagFwdDecl, identifier: "_ZTS10ap_bit_refILi18ELb0EE")
!3691 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi18ELb0EEixEi", scope: !3354, file: !499, line: 1142, type: !3552, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!3692 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi18ELb0EE3bitEi", scope: !3354, file: !499, line: 1155, type: !3688, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!3693 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi18ELb0EE3bitEi", scope: !3354, file: !499, line: 1170, type: !3552, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!3694 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi18ELb0EE17countLeadingZerosEv", scope: !3354, file: !499, line: 1193, type: !3372, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!3695 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb0EE10and_reduceEv", scope: !3354, file: !499, line: 1413, type: !3497, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!3696 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb0EE11nand_reduceEv", scope: !3354, file: !499, line: 1414, type: !3497, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!3697 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb0EE9or_reduceEv", scope: !3354, file: !499, line: 1415, type: !3497, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!3698 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb0EE10nor_reduceEv", scope: !3354, file: !499, line: 1416, type: !3497, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!3699 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb0EE10xor_reduceEv", scope: !3354, file: !499, line: 1417, type: !3497, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!3700 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi18ELb0EE11xnor_reduceEv", scope: !3354, file: !499, line: 1418, type: !3497, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!3701 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi18ELb0EE9to_stringEab", scope: !3354, file: !499, line: 1433, type: !3702, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!1249, !3374, !90, !40}
!3704 = !{!1366, !3368}
!3705 = !DISubprogram(name: "to_ap_int_base", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEv", scope: !3270, file: !3217, line: 530, type: !3352, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!3706 = !DISubprogram(name: "to_char", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_charEv", scope: !3270, file: !3217, line: 537, type: !3707, isLocal: false, isDefinition: false, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: false)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!86, !3350}
!3709 = !DISubprogram(name: "to_int", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", scope: !3270, file: !3217, line: 541, type: !3710, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!38, !3350}
!3712 = !DISubprogram(name: "to_uint", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", scope: !3270, file: !3217, line: 545, type: !3713, isLocal: false, isDefinition: false, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: false)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!123, !3350}
!3715 = !DISubprogram(name: "to_long", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_longEv", scope: !3270, file: !3217, line: 549, type: !3716, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!128, !3350}
!3718 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_ulongEv", scope: !3270, file: !3217, line: 553, type: !3719, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!133, !3350}
!3721 = !DISubprogram(name: "to_int64", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", scope: !3270, file: !3217, line: 557, type: !3722, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!435, !3350}
!3724 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", scope: !3270, file: !3217, line: 561, type: !3348, isLocal: false, isDefinition: false, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: false)
!3725 = !DISubprogram(name: "operator~", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", scope: !3270, file: !3217, line: 567, type: !3352, isLocal: false, isDefinition: false, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: false)
!3726 = !DISubprogram(name: "operator!", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", scope: !3270, file: !3217, line: 573, type: !3352, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: false)
!3727 = !DISubprogram(name: "operator+", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", scope: !3270, file: !3217, line: 579, type: !3352, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: false)
!3728 = !DISubprogram(name: "operator-", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", scope: !3270, file: !3217, line: 585, type: !3352, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!3729 = !DISubprogram(name: "get", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3getEv", scope: !3270, file: !3217, line: 592, type: !3352, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false)
!3730 = !DISubprogram(name: "length", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", scope: !3270, file: !3217, line: 603, type: !3710, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!3731 = !DISubprogram(name: "to_string", linkageName: "_ZNK12af_range_refILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", scope: !3270, file: !3217, line: 615, type: !3732, isLocal: false, isDefinition: false, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: false)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!1249, !3350, !90}
!3734 = !DISubprogram(name: "range", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", scope: !2022, file: !1854, line: 1750, type: !3735, isLocal: false, isDefinition: false, scopeLine: 1750, flags: DIFlagPrototyped, isOptimized: false)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!3270, !2042, !38, !38}
!3737 = !DISubprogram(name: "range", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", scope: !2022, file: !1854, line: 1775, type: !3738, isLocal: false, isDefinition: false, scopeLine: 1775, flags: DIFlagPrototyped, isOptimized: false)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!3270, !2032}
!3740 = !DISubprogram(name: "range", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", scope: !2022, file: !1854, line: 1779, type: !3741, isLocal: false, isDefinition: false, scopeLine: 1779, flags: DIFlagPrototyped, isOptimized: false)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!3270, !2042}
!3743 = !DISubprogram(name: "operator()", linkageName: "_ZN13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", scope: !2022, file: !1854, line: 1783, type: !3268, isLocal: false, isDefinition: false, scopeLine: 1783, flags: DIFlagPrototyped, isOptimized: false)
!3744 = !DISubprogram(name: "operator()", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", scope: !2022, file: !1854, line: 1788, type: !3735, isLocal: false, isDefinition: false, scopeLine: 1788, flags: DIFlagPrototyped, isOptimized: false)
!3745 = !DISubprogram(name: "is_zero", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", scope: !2022, file: !1854, line: 1811, type: !2141, isLocal: false, isDefinition: false, scopeLine: 1811, flags: DIFlagPrototyped, isOptimized: false)
!3746 = !DISubprogram(name: "is_neg", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", scope: !2022, file: !1854, line: 1813, type: !2141, isLocal: false, isDefinition: false, scopeLine: 1813, flags: DIFlagPrototyped, isOptimized: false)
!3747 = !DISubprogram(name: "wl", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", scope: !2022, file: !1854, line: 1818, type: !2040, isLocal: false, isDefinition: false, scopeLine: 1818, flags: DIFlagPrototyped, isOptimized: false)
!3748 = !DISubprogram(name: "iwl", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", scope: !2022, file: !1854, line: 1820, type: !2040, isLocal: false, isDefinition: false, scopeLine: 1820, flags: DIFlagPrototyped, isOptimized: false)
!3749 = !DISubprogram(name: "q_mode", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", scope: !2022, file: !1854, line: 1822, type: !3750, isLocal: false, isDefinition: false, scopeLine: 1822, flags: DIFlagPrototyped, isOptimized: false)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!46, !2042}
!3752 = !DISubprogram(name: "o_mode", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", scope: !2022, file: !1854, line: 1824, type: !3753, isLocal: false, isDefinition: false, scopeLine: 1824, flags: DIFlagPrototyped, isOptimized: false)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!58, !2042}
!3755 = !DISubprogram(name: "n_bits", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", scope: !2022, file: !1854, line: 1826, type: !2040, isLocal: false, isDefinition: false, scopeLine: 1826, flags: DIFlagPrototyped, isOptimized: false)
!3756 = !DISubprogram(name: "to_string", linkageName: "_ZNK13ap_fixed_baseILi18ELi18ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEhb", scope: !2022, file: !1854, line: 1918, type: !3757, isLocal: false, isDefinition: false, scopeLine: 1918, flags: DIFlagPrototyped, isOptimized: false)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!1249, !2042, !106, !40}
!3759 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 22, type: !3760, isLocal: false, isDefinition: false, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: false)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{null, !3762}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3763 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 75, type: !3764, isLocal: false, isDefinition: false, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{null, !3762, !1374, !40}
!3766 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 131, type: !3767, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{null, !3762, !40}
!3769 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 132, type: !3770, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{null, !3762, !86}
!3772 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 133, type: !3773, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{null, !3762, !90}
!3775 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 134, type: !3776, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{null, !3762, !106}
!3778 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 135, type: !3779, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{null, !3762, !28}
!3781 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 136, type: !3782, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !3762, !115}
!3784 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 137, type: !3785, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{null, !3762, !38}
!3787 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 138, type: !3788, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !3762, !123}
!3790 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 139, type: !3791, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{null, !3762, !128}
!3793 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 140, type: !3794, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !3762, !133}
!3796 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 141, type: !3797, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{null, !3762, !435}
!3799 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 142, type: !3800, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{null, !3762, !440}
!3802 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 143, type: !3803, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{null, !3762, !450}
!3805 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 144, type: !3806, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{null, !3762, !153}
!3808 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 145, type: !3809, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{null, !3762, !149}
!3811 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 148, type: !3812, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{null, !3762, !84}
!3814 = !DISubprogram(name: "ap_fixed", scope: !2019, file: !1850, line: 150, type: !3815, isLocal: false, isDefinition: false, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{null, !3762, !84, !90}
!3817 = !DISubprogram(name: "operator=", linkageName: "_ZN8ap_fixedILi18ELi18EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !2019, file: !1850, line: 159, type: !3818, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!3820, !3762, !3821}
!3820 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2019, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3822, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2019)
!3823 = !DISubprogram(name: "operator=", linkageName: "_ZNV8ap_fixedILi18ELi18EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !2019, file: !1850, line: 168, type: !3824, isLocal: false, isDefinition: false, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{null, !3826, !3821}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3827 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2019)
!3828 = !DISubprogram(name: "operator=", linkageName: "_ZN8ap_fixedILi18ELi18EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", scope: !2019, file: !1850, line: 173, type: !3829, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!3820, !3762, !3831}
!3831 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3832, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3827)
!3833 = !DISubprogram(name: "operator=", linkageName: "_ZNV8ap_fixedILi18ELi18EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", scope: !2019, file: !1850, line: 179, type: !3834, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{null, !3826, !3831}
!3836 = !{!1366, !3258, !2794, !2795, !2796}
!3837 = !DISubprogram(name: "getNeg", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", scope: !1853, file: !1854, line: 1412, type: !3838, isLocal: false, isDefinition: false, scopeLine: 1412, flags: DIFlagPrototyped, isOptimized: false)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!1853, !1864}
!3840 = !DISubprogram(name: "operator!", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", scope: !1853, file: !1854, line: 1420, type: !1973, isLocal: false, isDefinition: false, scopeLine: 1420, flags: DIFlagPrototyped, isOptimized: false)
!3841 = !DISubprogram(name: "operator~", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", scope: !1853, file: !1854, line: 1425, type: !3842, isLocal: false, isDefinition: false, scopeLine: 1425, flags: DIFlagPrototyped, isOptimized: false)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!1853, !1874}
!3844 = !DISubprogram(name: "operator<<", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", scope: !1853, file: !1854, line: 1452, type: !3845, isLocal: false, isDefinition: false, scopeLine: 1452, flags: DIFlagPrototyped, isOptimized: false)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!1853, !1874, !123}
!3847 = !DISubprogram(name: "operator>>", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", scope: !1853, file: !1854, line: 1486, type: !3845, isLocal: false, isDefinition: false, scopeLine: 1486, flags: DIFlagPrototyped, isOptimized: false)
!3848 = !DISubprogram(name: "operator<<", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", scope: !1853, file: !1854, line: 1509, type: !3849, isLocal: false, isDefinition: false, scopeLine: 1509, flags: DIFlagPrototyped, isOptimized: false)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!1853, !1874, !38}
!3851 = !DISubprogram(name: "operator>>", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", scope: !1853, file: !1854, line: 1520, type: !3849, isLocal: false, isDefinition: false, scopeLine: 1520, flags: DIFlagPrototyped, isOptimized: false)
!3852 = !DISubprogram(name: "operator<<=", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", scope: !1853, file: !1854, line: 1579, type: !3853, isLocal: false, isDefinition: false, scopeLine: 1579, flags: DIFlagPrototyped, isOptimized: false)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!1931, !1864, !42}
!3855 = !DISubprogram(name: "operator<<=", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", scope: !1853, file: !1854, line: 1584, type: !3856, isLocal: false, isDefinition: false, scopeLine: 1584, flags: DIFlagPrototyped, isOptimized: false)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!1931, !1864, !122}
!3858 = !DISubprogram(name: "operator>>=", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", scope: !1853, file: !1854, line: 1605, type: !3853, isLocal: false, isDefinition: false, scopeLine: 1605, flags: DIFlagPrototyped, isOptimized: false)
!3859 = !DISubprogram(name: "operator>>=", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", scope: !1853, file: !1854, line: 1610, type: !3856, isLocal: false, isDefinition: false, scopeLine: 1610, flags: DIFlagPrototyped, isOptimized: false)
!3860 = !DISubprogram(name: "operator>", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", scope: !1853, file: !1854, line: 1660, type: !3861, isLocal: false, isDefinition: false, scopeLine: 1660, flags: DIFlagPrototyped, isOptimized: false)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!40, !1874, !149}
!3863 = !DISubprogram(name: "operator<", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", scope: !1853, file: !1854, line: 1661, type: !3861, isLocal: false, isDefinition: false, scopeLine: 1661, flags: DIFlagPrototyped, isOptimized: false)
!3864 = !DISubprogram(name: "operator>=", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", scope: !1853, file: !1854, line: 1662, type: !3861, isLocal: false, isDefinition: false, scopeLine: 1662, flags: DIFlagPrototyped, isOptimized: false)
!3865 = !DISubprogram(name: "operator<=", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", scope: !1853, file: !1854, line: 1663, type: !3861, isLocal: false, isDefinition: false, scopeLine: 1663, flags: DIFlagPrototyped, isOptimized: false)
!3866 = !DISubprogram(name: "operator==", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", scope: !1853, file: !1854, line: 1664, type: !3861, isLocal: false, isDefinition: false, scopeLine: 1664, flags: DIFlagPrototyped, isOptimized: false)
!3867 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", scope: !1853, file: !1854, line: 1665, type: !3861, isLocal: false, isDefinition: false, scopeLine: 1665, flags: DIFlagPrototyped, isOptimized: false)
!3868 = !DISubprogram(name: "operator[]", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", scope: !1853, file: !1854, line: 1668, type: !3869, isLocal: false, isDefinition: false, scopeLine: 1668, flags: DIFlagPrototyped, isOptimized: false)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!3871, !1864, !123}
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "af_bit_ref<17, 17, true, AP_TRN, AP_WRAP, 0>", file: !3217, line: 27, size: 128, flags: DIFlagTypePassByReference, elements: !3872, templateParams: !3911, identifier: "_ZTS10af_bit_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!3872 = !{!3873, !3876, !3877, !3883, !3887, !3892, !3896, !3900, !3903, !3904, !3905, !3908}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !3871, file: !3217, line: 32, baseType: !3874, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !3871, file: !3217, line: 31, baseType: !1853)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !3871, file: !3217, line: 33, baseType: !38, size: 32, offset: 64)
!3877 = !DISubprogram(name: "af_bit_ref", scope: !3871, file: !3217, line: 36, type: !3878, isLocal: false, isDefinition: false, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{null, !3880, !3881}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3881 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3882, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3871)
!3883 = !DISubprogram(name: "af_bit_ref", scope: !3871, file: !3217, line: 47, type: !3884, isLocal: false, isDefinition: false, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{null, !3880, !3886, !38}
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3887 = !DISubprogram(name: "af_bit_ref", scope: !3871, file: !3217, line: 49, type: !3888, isLocal: false, isDefinition: false, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{null, !3880, !3890, !38}
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3875)
!3892 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10af_bit_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvbEv", scope: !3871, file: !3217, line: 53, type: !3893, isLocal: false, isDefinition: false, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!40, !3895}
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3896 = !DISubprogram(name: "operator=", linkageName: "_ZN10af_bit_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEb", scope: !3871, file: !3217, line: 57, type: !3897, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!3899, !3880, !40}
!3899 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3871, size: 64)
!3900 = !DISubprogram(name: "operator=", linkageName: "_ZN10af_bit_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !3871, file: !3217, line: 64, type: !3901, isLocal: false, isDefinition: false, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!3899, !3880, !3881}
!3903 = !DISubprogram(name: "operator~", linkageName: "_ZNK10af_bit_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", scope: !3871, file: !3217, line: 180, type: !3893, isLocal: false, isDefinition: false, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false)
!3904 = !DISubprogram(name: "get", linkageName: "_ZNK10af_bit_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3getEv", scope: !3871, file: !3217, line: 185, type: !3893, isLocal: false, isDefinition: false, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false)
!3905 = !DISubprogram(name: "length", linkageName: "_ZNK10af_bit_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", scope: !3871, file: !3217, line: 187, type: !3906, isLocal: false, isDefinition: false, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!38, !3895}
!3908 = !DISubprogram(name: "to_string", linkageName: "_ZNK10af_bit_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEv", scope: !3871, file: !3217, line: 193, type: !3909, isLocal: false, isDefinition: false, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!1249, !3895}
!3911 = !{!1554, !3912, !39, !2794, !2795, !2796}
!3912 = !DITemplateValueParameter(name: "_AP_I", type: !38, value: i32 17)
!3913 = !DISubprogram(name: "operator[]", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", scope: !1853, file: !1854, line: 1683, type: !3914, isLocal: false, isDefinition: false, scopeLine: 1683, flags: DIFlagPrototyped, isOptimized: false)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!40, !1874, !123}
!3916 = !DISubprogram(name: "bit", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", scope: !1853, file: !1854, line: 1688, type: !3869, isLocal: false, isDefinition: false, scopeLine: 1688, flags: DIFlagPrototyped, isOptimized: false)
!3917 = !DISubprogram(name: "bit", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", scope: !1853, file: !1854, line: 1703, type: !3914, isLocal: false, isDefinition: false, scopeLine: 1703, flags: DIFlagPrototyped, isOptimized: false)
!3918 = !DISubprogram(name: "get_bit", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", scope: !1853, file: !1854, line: 1718, type: !3919, isLocal: false, isDefinition: false, scopeLine: 1718, flags: DIFlagPrototyped, isOptimized: false)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!40, !1874, !38}
!3921 = !DISubprogram(name: "range", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", scope: !1853, file: !1854, line: 1743, type: !3922, isLocal: false, isDefinition: false, scopeLine: 1743, flags: DIFlagPrototyped, isOptimized: false)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!3924, !1864, !38, !38}
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "af_range_ref<17, 17, true, AP_TRN, AP_WRAP, 0>", file: !3217, line: 214, size: 128, flags: DIFlagTypePassByReference, elements: !3925, templateParams: !3911, identifier: "_ZTS12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!3925 = !{!3926, !3929, !3930, !3931, !3937, !3941, !3946, !3950, !3953, !3956, !3959, !3962, !3965, !3968, !3971, !3974, !3977, !3980, !3983, !3986, !3989, !3992, !3995, !3998, !4002, !4551, !4552, !4555, !4558, !4561, !4564, !4567, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !3924, file: !3217, line: 219, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !3924, file: !3217, line: 218, baseType: !1853)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "l_index", scope: !3924, file: !3217, line: 220, baseType: !38, size: 32, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "h_index", scope: !3924, file: !3217, line: 221, baseType: !38, size: 32, offset: 96)
!3931 = !DISubprogram(name: "af_range_ref", scope: !3924, file: !3217, line: 225, type: !3932, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{null, !3934, !3935}
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3935 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3936, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3924)
!3937 = !DISubprogram(name: "af_range_ref", scope: !3924, file: !3217, line: 232, type: !3938, isLocal: false, isDefinition: false, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{null, !3934, !3940, !38, !38}
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3941 = !DISubprogram(name: "af_range_ref", scope: !3924, file: !3217, line: 244, type: !3942, isLocal: false, isDefinition: false, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{null, !3934, !3944, !38, !38}
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3928)
!3946 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEb", scope: !3924, file: !3217, line: 266, type: !3947, isLocal: false, isDefinition: false, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!3949, !3934, !94}
!3949 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3924, size: 64)
!3950 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEc", scope: !3924, file: !3217, line: 267, type: !3951, isLocal: false, isDefinition: false, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: false)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!3949, !3934, !85}
!3953 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEa", scope: !3924, file: !3217, line: 268, type: !3954, isLocal: false, isDefinition: false, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: false)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!3949, !3934, !101}
!3956 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEh", scope: !3924, file: !3217, line: 269, type: !3957, isLocal: false, isDefinition: false, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!3949, !3934, !105}
!3959 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEs", scope: !3924, file: !3217, line: 270, type: !3960, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!3949, !3934, !110}
!3962 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEt", scope: !3924, file: !3217, line: 271, type: !3963, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!3949, !3934, !114}
!3965 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEi", scope: !3924, file: !3217, line: 272, type: !3966, isLocal: false, isDefinition: false, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: false)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!3949, !3934, !42}
!3968 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEj", scope: !3924, file: !3217, line: 273, type: !3969, isLocal: false, isDefinition: false, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!3949, !3934, !122}
!3971 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEl", scope: !3924, file: !3217, line: 274, type: !3972, isLocal: false, isDefinition: false, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!3949, !3934, !127}
!3974 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEm", scope: !3924, file: !3217, line: 275, type: !3975, isLocal: false, isDefinition: false, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: false)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!3949, !3934, !132}
!3977 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEx", scope: !3924, file: !3217, line: 276, type: !3978, isLocal: false, isDefinition: false, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!3949, !3934, !559}
!3980 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEy", scope: !3924, file: !3217, line: 277, type: !3981, isLocal: false, isDefinition: false, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: false)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!3949, !3934, !563}
!3983 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEDh", scope: !3924, file: !3217, line: 278, type: !3984, isLocal: false, isDefinition: false, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: false)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!3949, !3934, !3332}
!3986 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEf", scope: !3924, file: !3217, line: 279, type: !3987, isLocal: false, isDefinition: false, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!3949, !3934, !3336}
!3989 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEd", scope: !3924, file: !3217, line: 280, type: !3990, isLocal: false, isDefinition: false, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!3949, !3934, !3340}
!3992 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEPKc", scope: !3924, file: !3217, line: 284, type: !3993, isLocal: false, isDefinition: false, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!3949, !3934, !84}
!3995 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !3924, file: !3217, line: 325, type: !3996, isLocal: false, isDefinition: false, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: false)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!3949, !3934, !3935}
!3998 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", scope: !3924, file: !3217, line: 518, type: !3999, isLocal: false, isDefinition: false, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: false)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!440, !4001}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4002 = !DISubprogram(name: "operator ap_int_base", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcv11ap_int_baseILi17ELb0EEEv", scope: !3924, file: !3217, line: 524, type: !4003, isLocal: false, isDefinition: false, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: false)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!4005, !4001}
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<17, false>", file: !499, line: 108, size: 32, flags: DIFlagTypePassByValue, elements: !4006, templateParams: !4437, identifier: "_ZTS11ap_int_baseILi17ELb0EE")
!4006 = !{!4007, !4019, !4020, !4021, !4026, !4030, !4033, !4036, !4039, !4042, !4045, !4048, !4051, !4054, !4057, !4060, !4063, !4066, !4069, !4072, !4075, !4078, !4081, !4086, !4090, !4095, !4096, !4100, !4103, !4106, !4109, !4112, !4115, !4118, !4121, !4124, !4127, !4130, !4133, !4136, !4139, !4143, !4146, !4149, !4152, !4155, !4158, !4161, !4162, !4165, !4168, !4171, !4174, !4177, !4180, !4183, !4186, !4190, !4191, !4192, !4193, !4194, !4197, !4198, !4201, !4204, !4205, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4217, !4218, !4219, !4308, !4309, !4312, !4317, !4318, !4319, !4438, !4441, !4444, !4447, !4448, !4449, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548}
!4007 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4005, baseType: !4008)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<17, false>", file: !451, line: 517, size: 32, flags: DIFlagTypePassByValue, elements: !4009, templateParams: !4018, identifier: "_ZTS8ssdm_intILi17ELb0EE")
!4009 = !{!4010, !4011, !4015}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !4008, file: !451, line: 519, baseType: !1575, size: 17, align: 32)
!4011 = !DISubprogram(name: "ssdm_int", scope: !4008, file: !451, line: 520, type: !4012, isLocal: false, isDefinition: false, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: false)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{null, !4014}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4015 = !DISubprogram(name: "ssdm_int", scope: !4008, file: !451, line: 521, type: !4016, isLocal: false, isDefinition: false, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: false)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{null, !4014, !1575}
!4018 = !{!514, !3368}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4005, file: !499, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 17)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !4005, file: !499, line: 131, baseType: !94, flags: DIFlagStaticMember, extraData: i1 false)
!4021 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi17ELb0EE16countLeadingOnesEv", scope: !4005, file: !499, line: 110, type: !4022, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!38, !4024}
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4005)
!4026 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 175, type: !4027, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{null, !4029}
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4030 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 208, type: !4031, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{null, !4029, !94}
!4033 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 209, type: !4034, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{null, !4029, !85}
!4036 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 210, type: !4037, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{null, !4029, !101}
!4039 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 211, type: !4040, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{null, !4029, !105}
!4042 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 212, type: !4043, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{null, !4029, !110}
!4045 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 213, type: !4046, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{null, !4029, !114}
!4048 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 214, type: !4049, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{null, !4029, !42}
!4051 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 215, type: !4052, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{null, !4029, !122}
!4054 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 216, type: !4055, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{null, !4029, !127}
!4057 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 217, type: !4058, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{null, !4029, !132}
!4060 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 218, type: !4061, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !4029, !559}
!4063 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 219, type: !4064, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{null, !4029, !563}
!4066 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 224, type: !4067, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{null, !4029, !450}
!4069 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 230, type: !4070, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{null, !4029, !153}
!4072 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 289, type: !4073, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{null, !4029, !149}
!4075 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 385, type: !4076, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{null, !4029, !84}
!4078 = !DISubprogram(name: "ap_int_base", scope: !4005, file: !499, line: 391, type: !4079, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{null, !4029, !84, !90}
!4081 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi17ELb0EE4readEv", scope: !4005, file: !499, line: 413, type: !4082, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!4005, !4084}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4085 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4005)
!4086 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi17ELb0EE5writeERKS0_", scope: !4005, file: !499, line: 420, type: !4087, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{null, !4084, !4089}
!4089 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4025, size: 64)
!4090 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi17ELb0EEaSERVKS0_", scope: !4005, file: !499, line: 432, type: !4091, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{null, !4084, !4093}
!4093 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4085)
!4095 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi17ELb0EEaSERKS0_", scope: !4005, file: !499, line: 442, type: !4087, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!4096 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb0EEaSERVKS0_", scope: !4005, file: !499, line: 459, type: !4097, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!4099, !4029, !4093}
!4099 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4005, size: 64)
!4100 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb0EEaSERKS0_", scope: !4005, file: !499, line: 465, type: !4101, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!4099, !4029, !4089}
!4103 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb0EEaSEb", scope: !4005, file: !499, line: 479, type: !4104, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!4099, !4029, !40}
!4106 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb0EEaSEc", scope: !4005, file: !499, line: 480, type: !4107, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!4099, !4029, !86}
!4109 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb0EEaSEa", scope: !4005, file: !499, line: 481, type: !4110, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!4099, !4029, !90}
!4112 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb0EEaSEh", scope: !4005, file: !499, line: 482, type: !4113, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!4099, !4029, !106}
!4115 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb0EEaSEs", scope: !4005, file: !499, line: 483, type: !4116, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!4099, !4029, !28}
!4118 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb0EEaSEt", scope: !4005, file: !499, line: 484, type: !4119, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!4099, !4029, !115}
!4121 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb0EEaSEi", scope: !4005, file: !499, line: 485, type: !4122, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!4099, !4029, !38}
!4124 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb0EEaSEj", scope: !4005, file: !499, line: 486, type: !4125, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!4099, !4029, !123}
!4127 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb0EEaSEl", scope: !4005, file: !499, line: 487, type: !4128, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!4099, !4029, !128}
!4130 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb0EEaSEm", scope: !4005, file: !499, line: 488, type: !4131, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!4099, !4029, !133}
!4133 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb0EEaSEx", scope: !4005, file: !499, line: 489, type: !4134, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!4099, !4029, !435}
!4136 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi17ELb0EEaSEy", scope: !4005, file: !499, line: 490, type: !4137, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!4099, !4029, !440}
!4139 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK11ap_int_baseILi17ELb0EEcvyEv", scope: !4005, file: !499, line: 541, type: !4140, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!4142, !4024}
!4142 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !4005, file: !499, line: 128, baseType: !3493)
!4143 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi17ELb0EE7to_boolEv", scope: !4005, file: !499, line: 546, type: !4144, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!40, !4024}
!4146 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi17ELb0EE7to_charEv", scope: !4005, file: !499, line: 547, type: !4147, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!86, !4024}
!4149 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi17ELb0EE8to_scharEv", scope: !4005, file: !499, line: 548, type: !4150, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!90, !4024}
!4152 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi17ELb0EE8to_ucharEv", scope: !4005, file: !499, line: 549, type: !4153, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!106, !4024}
!4155 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi17ELb0EE8to_shortEv", scope: !4005, file: !499, line: 550, type: !4156, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!28, !4024}
!4158 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi17ELb0EE9to_ushortEv", scope: !4005, file: !499, line: 551, type: !4159, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!115, !4024}
!4161 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi17ELb0EE6to_intEv", scope: !4005, file: !499, line: 552, type: !4022, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!4162 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi17ELb0EE7to_uintEv", scope: !4005, file: !499, line: 553, type: !4163, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!123, !4024}
!4165 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi17ELb0EE7to_longEv", scope: !4005, file: !499, line: 554, type: !4166, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!128, !4024}
!4168 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi17ELb0EE8to_ulongEv", scope: !4005, file: !499, line: 555, type: !4169, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!133, !4024}
!4171 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi17ELb0EE8to_int64Ev", scope: !4005, file: !499, line: 556, type: !4172, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!435, !4024}
!4174 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi17ELb0EE9to_uint64Ev", scope: !4005, file: !499, line: 557, type: !4175, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!440, !4024}
!4177 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi17ELb0EE7to_halfEv", scope: !4005, file: !499, line: 558, type: !4178, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!450, !4024}
!4180 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi17ELb0EE8to_floatEv", scope: !4005, file: !499, line: 559, type: !4181, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!153, !4024}
!4183 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi17ELb0EE9to_doubleEv", scope: !4005, file: !499, line: 560, type: !4184, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!149, !4024}
!4186 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi17ELb0EE6lengthEv", scope: !4005, file: !499, line: 584, type: !4187, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!38, !4189}
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4190 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi17ELb0EE6lengthEv", scope: !4005, file: !499, line: 585, type: !4022, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!4191 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi17ELb0EE6iszeroEv", scope: !4005, file: !499, line: 588, type: !4144, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!4192 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi17ELb0EE7is_zeroEv", scope: !4005, file: !499, line: 591, type: !4144, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!4193 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi17ELb0EE4signEv", scope: !4005, file: !499, line: 594, type: !4144, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!4194 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi17ELb0EE5clearEi", scope: !4005, file: !499, line: 603, type: !4195, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{null, !4029, !38}
!4197 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi17ELb0EE6invertEi", scope: !4005, file: !499, line: 609, type: !4195, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!4198 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi17ELb0EE4testEi", scope: !4005, file: !499, line: 618, type: !4199, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!40, !4024, !38}
!4201 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi17ELb0EE3getEv", scope: !4005, file: !499, line: 624, type: !4202, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!4099, !4029}
!4204 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi17ELb0EE3setEi", scope: !4005, file: !499, line: 627, type: !4195, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!4205 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi17ELb0EE3setEib", scope: !4005, file: !499, line: 633, type: !4206, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{null, !4029, !38, !40}
!4208 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi17ELb0EE7lrotateEi", scope: !4005, file: !499, line: 640, type: !4122, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!4209 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi17ELb0EE7rrotateEi", scope: !4005, file: !499, line: 655, type: !4122, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!4210 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi17ELb0EE7reverseEv", scope: !4005, file: !499, line: 670, type: !4202, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!4211 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi17ELb0EE7set_bitEib", scope: !4005, file: !499, line: 676, type: !4206, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!4212 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi17ELb0EE7get_bitEi", scope: !4005, file: !499, line: 681, type: !4199, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!4213 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi17ELb0EE5b_notEv", scope: !4005, file: !499, line: 686, type: !4027, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!4214 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi17ELb0EE17checkOverflowCsimEibb", scope: !4005, file: !499, line: 760, type: !4215, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!40, !4024, !38, !40, !40}
!4217 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi17ELb0EEppEv", scope: !4005, file: !499, line: 865, type: !4202, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!4218 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi17ELb0EEmmEv", scope: !4005, file: !499, line: 869, type: !4202, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!4219 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi17ELb0EEppEi", scope: !4005, file: !499, line: 877, type: !4220, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!4222, !4029, !38}
!4222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4223)
!4223 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !4224, file: !499, line: 167, baseType: !4226)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<17, false>", scope: !4005, file: !499, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !4225, identifier: "_ZTSN11ap_int_baseILi17ELb0EE5RTypeILi17ELb0EEE")
!4225 = !{!494, !490}
!4226 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4227, file: !499, line: 105, baseType: !4228)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<17, false>", file: !499, line: 105, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !4225, identifier: "_ZTS15_ap_int_factoryILi17ELb0EE")
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<17>", file: !392, line: 181, size: 32, flags: DIFlagTypePassByValue, elements: !4229, templateParams: !1646, identifier: "_ZTS7ap_uintILi17EE")
!4229 = !{!4230, !4231, !4235, !4238, !4241, !4244, !4247, !4250, !4253, !4256, !4259, !4262, !4265, !4268, !4271, !4274, !4277, !4280, !4283, !4286, !4289, !4295, !4301, !4305}
!4230 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4228, baseType: !4005)
!4231 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 184, type: !4232, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{null, !4234}
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4235 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 212, type: !4236, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{null, !4234, !1575, !40}
!4238 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 281, type: !4239, isLocal: false, isDefinition: false, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: false)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{null, !4234, !40}
!4241 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 282, type: !4242, isLocal: false, isDefinition: false, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{null, !4234, !86}
!4244 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 283, type: !4245, isLocal: false, isDefinition: false, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{null, !4234, !90}
!4247 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 284, type: !4248, isLocal: false, isDefinition: false, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{null, !4234, !106}
!4250 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 285, type: !4251, isLocal: false, isDefinition: false, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{null, !4234, !28}
!4253 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 286, type: !4254, isLocal: false, isDefinition: false, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{null, !4234, !115}
!4256 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 287, type: !4257, isLocal: false, isDefinition: false, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{null, !4234, !38}
!4259 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 288, type: !4260, isLocal: false, isDefinition: false, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: false)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{null, !4234, !123}
!4262 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 289, type: !4263, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{null, !4234, !128}
!4265 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 290, type: !4266, isLocal: false, isDefinition: false, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: false)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{null, !4234, !133}
!4268 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 291, type: !4269, isLocal: false, isDefinition: false, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{null, !4234, !435}
!4271 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 292, type: !4272, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: false)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{null, !4234, !440}
!4274 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 294, type: !4275, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{null, !4234, !149}
!4277 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 295, type: !4278, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{null, !4234, !153}
!4280 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 296, type: !4281, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{null, !4234, !450}
!4283 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 299, type: !4284, isLocal: false, isDefinition: false, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{null, !4234, !84}
!4286 = !DISubprogram(name: "ap_uint", scope: !4228, file: !392, line: 301, type: !4287, isLocal: false, isDefinition: false, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: false)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{null, !4234, !84, !90}
!4289 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi17EEaSERKS0_", scope: !4228, file: !392, line: 307, type: !4290, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!4292, !4234, !4293}
!4292 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4228, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4294, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4228)
!4295 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi17EEaSERVKS0_", scope: !4228, file: !392, line: 317, type: !4296, isLocal: false, isDefinition: false, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: false)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!4292, !4234, !4298}
!4298 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4299, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4300)
!4300 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4228)
!4301 = !DISubprogram(name: "operator=", linkageName: "_ZNV7ap_uintILi17EEaSERKS0_", scope: !4228, file: !392, line: 323, type: !4302, isLocal: false, isDefinition: false, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: false)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{null, !4304, !4293}
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4305 = !DISubprogram(name: "operator=", linkageName: "_ZNV7ap_uintILi17EEaSERVKS0_", scope: !4228, file: !392, line: 327, type: !4306, isLocal: false, isDefinition: false, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{null, !4304, !4298}
!4308 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi17ELb0EEmmEi", scope: !4005, file: !499, line: 882, type: !4220, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!4309 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi17ELb0EEpsEv", scope: !4005, file: !499, line: 891, type: !4310, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!4223, !4024}
!4312 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi17ELb0EEngEv", scope: !4005, file: !499, line: 894, type: !4313, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!4315, !4024}
!4315 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !4316, file: !499, line: 163, baseType: !734)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !4005, file: !499, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !488, identifier: "_ZTSN11ap_int_baseILi17ELb0EE5RTypeILi1ELb0EEE")
!4317 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi17ELb0EEntEv", scope: !4005, file: !499, line: 901, type: !4144, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!4318 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi17ELb0EEcoEv", scope: !4005, file: !499, line: 907, type: !4310, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!4319 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi17ELb0EE5rangeEii", scope: !4005, file: !499, line: 1045, type: !4320, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!4322, !4029, !38, !38}
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<17, false>", file: !1467, line: 290, size: 128, flags: DIFlagTypePassByReference, elements: !4323, templateParams: !4437, identifier: "_ZTS12ap_range_refILi17ELb0EE")
!4323 = !{!4324, !4327, !4328, !4329, !4335, !4339, !4344, !4348, !4351, !4355, !4358, !4361, !4364, !4367, !4370, !4373, !4376, !4379, !4382, !4385, !4388, !4391, !4394, !4397, !4400, !4403, !4407, !4408, !4409, !4410, !4411, !4412, !4415, !4416, !4419, !4422, !4425, !4428, !4429, !4432, !4433, !4434}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !4322, file: !1467, line: 295, baseType: !4325, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !4322, file: !1467, line: 294, baseType: !4005)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "l_index", scope: !4322, file: !1467, line: 296, baseType: !38, size: 32, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "h_index", scope: !4322, file: !1467, line: 297, baseType: !38, size: 32, offset: 96)
!4329 = !DISubprogram(name: "ap_range_ref", scope: !4322, file: !1467, line: 300, type: !4330, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{null, !4332, !4333}
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4333 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4334, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4322)
!4335 = !DISubprogram(name: "ap_range_ref", scope: !4322, file: !1467, line: 303, type: !4336, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: false)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{null, !4332, !4338, !38, !38}
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4339 = !DISubprogram(name: "ap_range_ref", scope: !4322, file: !1467, line: 306, type: !4340, isLocal: false, isDefinition: false, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{null, !4332, !4342, !38, !38}
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4326)
!4344 = !DISubprogram(name: "operator ap_int_base", linkageName: "_ZNK12ap_range_refILi17ELb0EEcv11ap_int_baseILi17ELb0EEEv", scope: !4322, file: !1467, line: 309, type: !4345, isLocal: false, isDefinition: false, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: false)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!4005, !4347}
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4348 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK12ap_range_refILi17ELb0EEcvyEv", scope: !4322, file: !1467, line: 315, type: !4349, isLocal: false, isDefinition: false, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: false)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!440, !4347}
!4351 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSEb", scope: !4322, file: !1467, line: 339, type: !4352, isLocal: false, isDefinition: false, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: false)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!4354, !4332, !40}
!4354 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4322, size: 64)
!4355 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSEc", scope: !4322, file: !1467, line: 340, type: !4356, isLocal: false, isDefinition: false, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!4354, !4332, !86}
!4358 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSEa", scope: !4322, file: !1467, line: 341, type: !4359, isLocal: false, isDefinition: false, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!4354, !4332, !90}
!4361 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSEh", scope: !4322, file: !1467, line: 342, type: !4362, isLocal: false, isDefinition: false, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!4354, !4332, !106}
!4364 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSEs", scope: !4322, file: !1467, line: 343, type: !4365, isLocal: false, isDefinition: false, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: false)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!4354, !4332, !28}
!4367 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSEt", scope: !4322, file: !1467, line: 344, type: !4368, isLocal: false, isDefinition: false, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!4354, !4332, !115}
!4370 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSEi", scope: !4322, file: !1467, line: 345, type: !4371, isLocal: false, isDefinition: false, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!4354, !4332, !38}
!4373 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSEj", scope: !4322, file: !1467, line: 346, type: !4374, isLocal: false, isDefinition: false, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: false)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!4354, !4332, !123}
!4376 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSEl", scope: !4322, file: !1467, line: 347, type: !4377, isLocal: false, isDefinition: false, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!4354, !4332, !128}
!4379 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSEm", scope: !4322, file: !1467, line: 348, type: !4380, isLocal: false, isDefinition: false, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: false)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!4354, !4332, !133}
!4382 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSEx", scope: !4322, file: !1467, line: 349, type: !4383, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!4354, !4332, !435}
!4385 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSEy", scope: !4322, file: !1467, line: 350, type: !4386, isLocal: false, isDefinition: false, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: false)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!4354, !4332, !440}
!4388 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSEDh", scope: !4322, file: !1467, line: 351, type: !4389, isLocal: false, isDefinition: false, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: false)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!4354, !4332, !450}
!4391 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSEf", scope: !4322, file: !1467, line: 352, type: !4392, isLocal: false, isDefinition: false, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!4354, !4332, !153}
!4394 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSEd", scope: !4322, file: !1467, line: 353, type: !4395, isLocal: false, isDefinition: false, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: false)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!4354, !4332, !149}
!4397 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSEPKc", scope: !4322, file: !1467, line: 358, type: !4398, isLocal: false, isDefinition: false, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!4354, !4332, !84}
!4400 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi17ELb0EEaSERKS0_", scope: !4322, file: !1467, line: 375, type: !4401, isLocal: false, isDefinition: false, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: false)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!4354, !4332, !4333}
!4403 = !DISubprogram(name: "operator,", linkageName: "_ZN12ap_range_refILi17ELb0EEcmER11ap_int_baseILi17ELb0EE", scope: !4322, file: !1467, line: 443, type: !4404, isLocal: false, isDefinition: false, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: false)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!4406, !4332, !4099}
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_concat_ref<17, ap_range_ref<17, false>, 17, ap_int_base<17, false> >", file: !1467, line: 28, flags: DIFlagFwdDecl, identifier: "_ZTS13ap_concat_refILi17E12ap_range_refILi17ELb0EELi17E11ap_int_baseILi17ELb0EEE")
!4407 = !DISubprogram(name: "operator~", linkageName: "_ZNK12ap_range_refILi17ELb0EEcoEv", scope: !4322, file: !1467, line: 601, type: !4345, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!4408 = !DISubprogram(name: "operator!", linkageName: "_ZNK12ap_range_refILi17ELb0EEntEv", scope: !4322, file: !1467, line: 607, type: !4345, isLocal: false, isDefinition: false, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: false)
!4409 = !DISubprogram(name: "operator+", linkageName: "_ZNK12ap_range_refILi17ELb0EEpsEv", scope: !4322, file: !1467, line: 613, type: !4345, isLocal: false, isDefinition: false, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: false)
!4410 = !DISubprogram(name: "operator-", linkageName: "_ZNK12ap_range_refILi17ELb0EEngEv", scope: !4322, file: !1467, line: 619, type: !4345, isLocal: false, isDefinition: false, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: false)
!4411 = !DISubprogram(name: "get", linkageName: "_ZNK12ap_range_refILi17ELb0EE3getEv", scope: !4322, file: !1467, line: 626, type: !4345, isLocal: false, isDefinition: false, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: false)
!4412 = !DISubprogram(name: "length", linkageName: "_ZNK12ap_range_refILi17ELb0EE6lengthEv", scope: !4322, file: !1467, line: 637, type: !4413, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!38, !4347}
!4415 = !DISubprogram(name: "to_int", linkageName: "_ZNK12ap_range_refILi17ELb0EE6to_intEv", scope: !4322, file: !1467, line: 641, type: !4413, isLocal: false, isDefinition: false, scopeLine: 641, flags: DIFlagPrototyped, isOptimized: false)
!4416 = !DISubprogram(name: "to_uint", linkageName: "_ZNK12ap_range_refILi17ELb0EE7to_uintEv", scope: !4322, file: !1467, line: 645, type: !4417, isLocal: false, isDefinition: false, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: false)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!123, !4347}
!4419 = !DISubprogram(name: "to_long", linkageName: "_ZNK12ap_range_refILi17ELb0EE7to_longEv", scope: !4322, file: !1467, line: 651, type: !4420, isLocal: false, isDefinition: false, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: false)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!128, !4347}
!4422 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK12ap_range_refILi17ELb0EE8to_ulongEv", scope: !4322, file: !1467, line: 655, type: !4423, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!133, !4347}
!4425 = !DISubprogram(name: "to_int64", linkageName: "_ZNK12ap_range_refILi17ELb0EE8to_int64Ev", scope: !4322, file: !1467, line: 661, type: !4426, isLocal: false, isDefinition: false, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: false)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!435, !4347}
!4428 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK12ap_range_refILi17ELb0EE9to_uint64Ev", scope: !4322, file: !1467, line: 665, type: !4349, isLocal: false, isDefinition: false, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: false)
!4429 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK12ap_range_refILi17ELb0EE10and_reduceEv", scope: !4322, file: !1467, line: 671, type: !4430, isLocal: false, isDefinition: false, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: false)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!40, !4347}
!4432 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK12ap_range_refILi17ELb0EE9or_reduceEv", scope: !4322, file: !1467, line: 685, type: !4430, isLocal: false, isDefinition: false, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false)
!4433 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK12ap_range_refILi17ELb0EE10xor_reduceEv", scope: !4322, file: !1467, line: 699, type: !4430, isLocal: false, isDefinition: false, scopeLine: 699, flags: DIFlagPrototyped, isOptimized: false)
!4434 = !DISubprogram(name: "to_string", linkageName: "_ZNK12ap_range_refILi17ELb0EE9to_stringEa", scope: !4322, file: !1467, line: 720, type: !4435, isLocal: false, isDefinition: false, scopeLine: 720, flags: DIFlagPrototyped, isOptimized: false)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!1249, !4347, !90}
!4437 = !{!1554, !3368}
!4438 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi17ELb0EE5rangeEii", scope: !4005, file: !499, line: 1052, type: !4439, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!4322, !4024, !38, !38}
!4441 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi17ELb0EE5rangeEv", scope: !4005, file: !499, line: 1076, type: !4442, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!4322, !4029}
!4444 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi17ELb0EE5rangeEv", scope: !4005, file: !499, line: 1080, type: !4445, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!4322, !4024}
!4447 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi17ELb0EEclEii", scope: !4005, file: !499, line: 1084, type: !4320, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!4448 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi17ELb0EEclEii", scope: !4005, file: !499, line: 1088, type: !4439, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!4449 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi17ELb0EEixEi", scope: !4005, file: !499, line: 1126, type: !4450, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!4452, !4029, !38}
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<17, false>", file: !1467, line: 761, size: 128, flags: DIFlagTypePassByReference, elements: !4453, templateParams: !4437, identifier: "_ZTS10ap_bit_refILi17ELb0EE")
!4453 = !{!4454, !4457, !4458, !4464, !4468, !4473, !4477, !4478, !4482, !4485, !4488, !4491, !4494, !4497, !4500, !4503, !4506, !4509, !4512, !4515, !4518, !4521, !4524, !4527, !4528, !4531, !4532, !4535}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !4452, file: !1467, line: 766, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4456, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !4452, file: !1467, line: 765, baseType: !4005)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !4452, file: !1467, line: 767, baseType: !38, size: 32, offset: 64)
!4458 = !DISubprogram(name: "ap_bit_ref", scope: !4452, file: !1467, line: 771, type: !4459, isLocal: false, isDefinition: false, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: false)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{null, !4461, !4462}
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4462 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4452)
!4464 = !DISubprogram(name: "ap_bit_ref", scope: !4452, file: !1467, line: 774, type: !4465, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{null, !4461, !4467, !38}
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4468 = !DISubprogram(name: "ap_bit_ref", scope: !4452, file: !1467, line: 776, type: !4469, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: false)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{null, !4461, !4471, !38}
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4456)
!4473 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi17ELb0EEcvbEv", scope: !4452, file: !1467, line: 779, type: !4474, isLocal: false, isDefinition: false, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!40, !4476}
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4477 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi17ELb0EE7to_boolEv", scope: !4452, file: !1467, line: 780, type: !4474, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false)
!4478 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb0EEaSEb", scope: !4452, file: !1467, line: 798, type: !4479, isLocal: false, isDefinition: false, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!4481, !4461, !40}
!4481 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4452, size: 64)
!4482 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb0EEaSEc", scope: !4452, file: !1467, line: 799, type: !4483, isLocal: false, isDefinition: false, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!4481, !4461, !86}
!4485 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb0EEaSEa", scope: !4452, file: !1467, line: 800, type: !4486, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!4481, !4461, !90}
!4488 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb0EEaSEh", scope: !4452, file: !1467, line: 801, type: !4489, isLocal: false, isDefinition: false, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: false)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!4481, !4461, !106}
!4491 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb0EEaSEs", scope: !4452, file: !1467, line: 802, type: !4492, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!4481, !4461, !28}
!4494 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb0EEaSEt", scope: !4452, file: !1467, line: 803, type: !4495, isLocal: false, isDefinition: false, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: false)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!4481, !4461, !115}
!4497 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb0EEaSEi", scope: !4452, file: !1467, line: 804, type: !4498, isLocal: false, isDefinition: false, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!4481, !4461, !38}
!4500 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb0EEaSEj", scope: !4452, file: !1467, line: 805, type: !4501, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!4481, !4461, !123}
!4503 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb0EEaSEl", scope: !4452, file: !1467, line: 806, type: !4504, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!4481, !4461, !128}
!4506 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb0EEaSEm", scope: !4452, file: !1467, line: 807, type: !4507, isLocal: false, isDefinition: false, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: false)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!4481, !4461, !133}
!4509 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb0EEaSEx", scope: !4452, file: !1467, line: 808, type: !4510, isLocal: false, isDefinition: false, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: false)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!4481, !4461, !435}
!4512 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb0EEaSEy", scope: !4452, file: !1467, line: 809, type: !4513, isLocal: false, isDefinition: false, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!4481, !4461, !440}
!4515 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb0EEaSEDh", scope: !4452, file: !1467, line: 820, type: !4516, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!4481, !4461, !450}
!4518 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb0EEaSEf", scope: !4452, file: !1467, line: 821, type: !4519, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!4481, !4461, !153}
!4521 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb0EEaSEd", scope: !4452, file: !1467, line: 822, type: !4522, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!4481, !4461, !149}
!4524 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi17ELb0EEaSERKS0_", scope: !4452, file: !1467, line: 839, type: !4525, isLocal: false, isDefinition: false, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!4481, !4461, !4462}
!4527 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi17ELb0EE3getEv", scope: !4452, file: !1467, line: 959, type: !4474, isLocal: false, isDefinition: false, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false)
!4528 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi17ELb0EE3getEv", scope: !4452, file: !1467, line: 961, type: !4529, isLocal: false, isDefinition: false, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!40, !4461}
!4531 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi17ELb0EEcoEv", scope: !4452, file: !1467, line: 968, type: !4474, isLocal: false, isDefinition: false, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: false)
!4532 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi17ELb0EE6lengthEv", scope: !4452, file: !1467, line: 973, type: !4533, isLocal: false, isDefinition: false, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: false)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!38, !4476}
!4535 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi17ELb0EE9to_stringEv", scope: !4452, file: !1467, line: 979, type: !4536, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!1249, !4476}
!4538 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi17ELb0EEixEi", scope: !4005, file: !499, line: 1142, type: !4199, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!4539 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi17ELb0EE3bitEi", scope: !4005, file: !499, line: 1155, type: !4450, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!4540 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi17ELb0EE3bitEi", scope: !4005, file: !499, line: 1170, type: !4199, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!4541 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi17ELb0EE17countLeadingZerosEv", scope: !4005, file: !499, line: 1193, type: !4022, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!4542 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb0EE10and_reduceEv", scope: !4005, file: !499, line: 1413, type: !4144, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!4543 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb0EE11nand_reduceEv", scope: !4005, file: !499, line: 1414, type: !4144, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!4544 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb0EE9or_reduceEv", scope: !4005, file: !499, line: 1415, type: !4144, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!4545 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb0EE10nor_reduceEv", scope: !4005, file: !499, line: 1416, type: !4144, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!4546 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb0EE10xor_reduceEv", scope: !4005, file: !499, line: 1417, type: !4144, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!4547 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi17ELb0EE11xnor_reduceEv", scope: !4005, file: !499, line: 1418, type: !4144, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!4548 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi17ELb0EE9to_stringEab", scope: !4005, file: !499, line: 1433, type: !4549, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!1249, !4024, !90, !40}
!4551 = !DISubprogram(name: "to_ap_int_base", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEv", scope: !3924, file: !3217, line: 530, type: !4003, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!4552 = !DISubprogram(name: "to_char", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_charEv", scope: !3924, file: !3217, line: 537, type: !4553, isLocal: false, isDefinition: false, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: false)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!86, !4001}
!4555 = !DISubprogram(name: "to_int", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", scope: !3924, file: !3217, line: 541, type: !4556, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!38, !4001}
!4558 = !DISubprogram(name: "to_uint", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", scope: !3924, file: !3217, line: 545, type: !4559, isLocal: false, isDefinition: false, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: false)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!123, !4001}
!4561 = !DISubprogram(name: "to_long", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_longEv", scope: !3924, file: !3217, line: 549, type: !4562, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!128, !4001}
!4564 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_ulongEv", scope: !3924, file: !3217, line: 553, type: !4565, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!133, !4001}
!4567 = !DISubprogram(name: "to_int64", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", scope: !3924, file: !3217, line: 557, type: !4568, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!435, !4001}
!4570 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", scope: !3924, file: !3217, line: 561, type: !3999, isLocal: false, isDefinition: false, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: false)
!4571 = !DISubprogram(name: "operator~", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", scope: !3924, file: !3217, line: 567, type: !4003, isLocal: false, isDefinition: false, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: false)
!4572 = !DISubprogram(name: "operator!", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", scope: !3924, file: !3217, line: 573, type: !4003, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: false)
!4573 = !DISubprogram(name: "operator+", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", scope: !3924, file: !3217, line: 579, type: !4003, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: false)
!4574 = !DISubprogram(name: "operator-", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", scope: !3924, file: !3217, line: 585, type: !4003, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!4575 = !DISubprogram(name: "get", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3getEv", scope: !3924, file: !3217, line: 592, type: !4003, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false)
!4576 = !DISubprogram(name: "length", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", scope: !3924, file: !3217, line: 603, type: !4556, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!4577 = !DISubprogram(name: "to_string", linkageName: "_ZNK12af_range_refILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", scope: !3924, file: !3217, line: 615, type: !4578, isLocal: false, isDefinition: false, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: false)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!1249, !4001, !90}
!4580 = !DISubprogram(name: "range", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", scope: !1853, file: !1854, line: 1750, type: !4581, isLocal: false, isDefinition: false, scopeLine: 1750, flags: DIFlagPrototyped, isOptimized: false)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!3924, !1874, !38, !38}
!4583 = !DISubprogram(name: "range", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", scope: !1853, file: !1854, line: 1775, type: !4584, isLocal: false, isDefinition: false, scopeLine: 1775, flags: DIFlagPrototyped, isOptimized: false)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!3924, !1864}
!4586 = !DISubprogram(name: "range", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", scope: !1853, file: !1854, line: 1779, type: !4587, isLocal: false, isDefinition: false, scopeLine: 1779, flags: DIFlagPrototyped, isOptimized: false)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!3924, !1874}
!4589 = !DISubprogram(name: "operator()", linkageName: "_ZN13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", scope: !1853, file: !1854, line: 1783, type: !3922, isLocal: false, isDefinition: false, scopeLine: 1783, flags: DIFlagPrototyped, isOptimized: false)
!4590 = !DISubprogram(name: "operator()", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", scope: !1853, file: !1854, line: 1788, type: !4581, isLocal: false, isDefinition: false, scopeLine: 1788, flags: DIFlagPrototyped, isOptimized: false)
!4591 = !DISubprogram(name: "is_zero", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", scope: !1853, file: !1854, line: 1811, type: !1973, isLocal: false, isDefinition: false, scopeLine: 1811, flags: DIFlagPrototyped, isOptimized: false)
!4592 = !DISubprogram(name: "is_neg", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", scope: !1853, file: !1854, line: 1813, type: !1973, isLocal: false, isDefinition: false, scopeLine: 1813, flags: DIFlagPrototyped, isOptimized: false)
!4593 = !DISubprogram(name: "wl", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", scope: !1853, file: !1854, line: 1818, type: !1872, isLocal: false, isDefinition: false, scopeLine: 1818, flags: DIFlagPrototyped, isOptimized: false)
!4594 = !DISubprogram(name: "iwl", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", scope: !1853, file: !1854, line: 1820, type: !1872, isLocal: false, isDefinition: false, scopeLine: 1820, flags: DIFlagPrototyped, isOptimized: false)
!4595 = !DISubprogram(name: "q_mode", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", scope: !1853, file: !1854, line: 1822, type: !4596, isLocal: false, isDefinition: false, scopeLine: 1822, flags: DIFlagPrototyped, isOptimized: false)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!46, !1874}
!4598 = !DISubprogram(name: "o_mode", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", scope: !1853, file: !1854, line: 1824, type: !4599, isLocal: false, isDefinition: false, scopeLine: 1824, flags: DIFlagPrototyped, isOptimized: false)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!58, !1874}
!4601 = !DISubprogram(name: "n_bits", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", scope: !1853, file: !1854, line: 1826, type: !1872, isLocal: false, isDefinition: false, scopeLine: 1826, flags: DIFlagPrototyped, isOptimized: false)
!4602 = !DISubprogram(name: "to_string", linkageName: "_ZNK13ap_fixed_baseILi17ELi17ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEhb", scope: !1853, file: !1854, line: 1918, type: !4603, isLocal: false, isDefinition: false, scopeLine: 1918, flags: DIFlagPrototyped, isOptimized: false)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!1249, !1874, !106, !40}
!4605 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 22, type: !4606, isLocal: false, isDefinition: false, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: false)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{null, !4608}
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4609 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 75, type: !4610, isLocal: false, isDefinition: false, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{null, !4608, !1575, !40}
!4612 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 131, type: !4613, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{null, !4608, !40}
!4615 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 132, type: !4616, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{null, !4608, !86}
!4618 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 133, type: !4619, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{null, !4608, !90}
!4621 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 134, type: !4622, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{null, !4608, !106}
!4624 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 135, type: !4625, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{null, !4608, !28}
!4627 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 136, type: !4628, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{null, !4608, !115}
!4630 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 137, type: !4631, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{null, !4608, !38}
!4633 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 138, type: !4634, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{null, !4608, !123}
!4636 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 139, type: !4637, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{null, !4608, !128}
!4639 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 140, type: !4640, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{null, !4608, !133}
!4642 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 141, type: !4643, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{null, !4608, !435}
!4645 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 142, type: !4646, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{null, !4608, !440}
!4648 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 143, type: !4649, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{null, !4608, !450}
!4651 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 144, type: !4652, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{null, !4608, !153}
!4654 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 145, type: !4655, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{null, !4608, !149}
!4657 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 148, type: !4658, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{null, !4608, !84}
!4660 = !DISubprogram(name: "ap_fixed", scope: !1849, file: !1850, line: 150, type: !4661, isLocal: false, isDefinition: false, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{null, !4608, !84, !90}
!4663 = !DISubprogram(name: "operator=", linkageName: "_ZN8ap_fixedILi17ELi17EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !1849, file: !1850, line: 159, type: !4664, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!4666, !4608, !4667}
!4666 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1849, size: 64)
!4667 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4668, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1849)
!4669 = !DISubprogram(name: "operator=", linkageName: "_ZNV8ap_fixedILi17ELi17EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !1849, file: !1850, line: 168, type: !4670, isLocal: false, isDefinition: false, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{null, !4672, !4667}
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4673 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1849)
!4674 = !DISubprogram(name: "operator=", linkageName: "_ZN8ap_fixedILi17ELi17EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", scope: !1849, file: !1850, line: 173, type: !4675, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!4666, !4608, !4677}
!4677 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4678, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4673)
!4679 = !DISubprogram(name: "operator=", linkageName: "_ZNV8ap_fixedILi17ELi17EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", scope: !1849, file: !1850, line: 179, type: !4680, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{null, !4672, !4677}
!4682 = !{!1554, !3912, !2794, !2795, !2796}
!4683 = !DISubprogram(name: "getNeg", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", scope: !20, file: !21, line: 1458, type: !4684, isLocal: false, isDefinition: false, scopeLine: 1458, flags: DIFlagPrototyped, isOptimized: false)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!20, !68}
!4686 = !DISubprogram(name: "operator!", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", scope: !20, file: !21, line: 1466, type: !1800, isLocal: false, isDefinition: false, scopeLine: 1466, flags: DIFlagPrototyped, isOptimized: false)
!4687 = !DISubprogram(name: "operator~", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", scope: !20, file: !21, line: 1471, type: !4688, isLocal: false, isDefinition: false, scopeLine: 1471, flags: DIFlagPrototyped, isOptimized: false)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!20, !78}
!4690 = !DISubprogram(name: "operator<<", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", scope: !20, file: !21, line: 1498, type: !4691, isLocal: false, isDefinition: false, scopeLine: 1498, flags: DIFlagPrototyped, isOptimized: false)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!20, !78, !123}
!4693 = !DISubprogram(name: "operator>>", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", scope: !20, file: !21, line: 1532, type: !4691, isLocal: false, isDefinition: false, scopeLine: 1532, flags: DIFlagPrototyped, isOptimized: false)
!4694 = !DISubprogram(name: "operator<<", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", scope: !20, file: !21, line: 1555, type: !4695, isLocal: false, isDefinition: false, scopeLine: 1555, flags: DIFlagPrototyped, isOptimized: false)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!20, !78, !38}
!4697 = !DISubprogram(name: "operator>>", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", scope: !20, file: !21, line: 1566, type: !4695, isLocal: false, isDefinition: false, scopeLine: 1566, flags: DIFlagPrototyped, isOptimized: false)
!4698 = !DISubprogram(name: "operator<<=", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", scope: !20, file: !21, line: 1625, type: !4699, isLocal: false, isDefinition: false, scopeLine: 1625, flags: DIFlagPrototyped, isOptimized: false)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!162, !68, !42}
!4701 = !DISubprogram(name: "operator<<=", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", scope: !20, file: !21, line: 1630, type: !4702, isLocal: false, isDefinition: false, scopeLine: 1630, flags: DIFlagPrototyped, isOptimized: false)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!162, !68, !122}
!4704 = !DISubprogram(name: "operator>>=", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", scope: !20, file: !21, line: 1651, type: !4699, isLocal: false, isDefinition: false, scopeLine: 1651, flags: DIFlagPrototyped, isOptimized: false)
!4705 = !DISubprogram(name: "operator>>=", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", scope: !20, file: !21, line: 1656, type: !4702, isLocal: false, isDefinition: false, scopeLine: 1656, flags: DIFlagPrototyped, isOptimized: false)
!4706 = !DISubprogram(name: "operator>", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", scope: !20, file: !21, line: 1706, type: !4707, isLocal: false, isDefinition: false, scopeLine: 1706, flags: DIFlagPrototyped, isOptimized: false)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!40, !78, !149}
!4709 = !DISubprogram(name: "operator<", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", scope: !20, file: !21, line: 1707, type: !4707, isLocal: false, isDefinition: false, scopeLine: 1707, flags: DIFlagPrototyped, isOptimized: false)
!4710 = !DISubprogram(name: "operator>=", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", scope: !20, file: !21, line: 1708, type: !4707, isLocal: false, isDefinition: false, scopeLine: 1708, flags: DIFlagPrototyped, isOptimized: false)
!4711 = !DISubprogram(name: "operator<=", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", scope: !20, file: !21, line: 1709, type: !4707, isLocal: false, isDefinition: false, scopeLine: 1709, flags: DIFlagPrototyped, isOptimized: false)
!4712 = !DISubprogram(name: "operator==", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", scope: !20, file: !21, line: 1710, type: !4707, isLocal: false, isDefinition: false, scopeLine: 1710, flags: DIFlagPrototyped, isOptimized: false)
!4713 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", scope: !20, file: !21, line: 1711, type: !4707, isLocal: false, isDefinition: false, scopeLine: 1711, flags: DIFlagPrototyped, isOptimized: false)
!4714 = !DISubprogram(name: "operator[]", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", scope: !20, file: !21, line: 1714, type: !4715, isLocal: false, isDefinition: false, scopeLine: 1714, flags: DIFlagPrototyped, isOptimized: false)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!4717, !68, !123}
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "af_bit_ref<16, 16, true, AP_TRN, AP_WRAP, 0>", file: !3217, line: 27, size: 128, flags: DIFlagTypePassByReference, elements: !4718, templateParams: !4757, identifier: "_ZTS10af_bit_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!4718 = !{!4719, !4722, !4723, !4729, !4733, !4738, !4742, !4746, !4749, !4750, !4751, !4754}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !4717, file: !3217, line: 32, baseType: !4720, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4721, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !4717, file: !3217, line: 31, baseType: !20)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !4717, file: !3217, line: 33, baseType: !38, size: 32, offset: 64)
!4723 = !DISubprogram(name: "af_bit_ref", scope: !4717, file: !3217, line: 36, type: !4724, isLocal: false, isDefinition: false, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{null, !4726, !4727}
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4727 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4728, size: 64)
!4728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4717)
!4729 = !DISubprogram(name: "af_bit_ref", scope: !4717, file: !3217, line: 47, type: !4730, isLocal: false, isDefinition: false, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{null, !4726, !4732, !38}
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4733 = !DISubprogram(name: "af_bit_ref", scope: !4717, file: !3217, line: 49, type: !4734, isLocal: false, isDefinition: false, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{null, !4726, !4736, !38}
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4721)
!4738 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10af_bit_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvbEv", scope: !4717, file: !3217, line: 53, type: !4739, isLocal: false, isDefinition: false, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!40, !4741}
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4742 = !DISubprogram(name: "operator=", linkageName: "_ZN10af_bit_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEb", scope: !4717, file: !3217, line: 57, type: !4743, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!4745, !4726, !40}
!4745 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4717, size: 64)
!4746 = !DISubprogram(name: "operator=", linkageName: "_ZN10af_bit_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !4717, file: !3217, line: 64, type: !4747, isLocal: false, isDefinition: false, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!4745, !4726, !4727}
!4749 = !DISubprogram(name: "operator~", linkageName: "_ZNK10af_bit_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", scope: !4717, file: !3217, line: 180, type: !4739, isLocal: false, isDefinition: false, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false)
!4750 = !DISubprogram(name: "get", linkageName: "_ZNK10af_bit_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3getEv", scope: !4717, file: !3217, line: 185, type: !4739, isLocal: false, isDefinition: false, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false)
!4751 = !DISubprogram(name: "length", linkageName: "_ZNK10af_bit_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", scope: !4717, file: !3217, line: 187, type: !4752, isLocal: false, isDefinition: false, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!38, !4741}
!4754 = !DISubprogram(name: "to_string", linkageName: "_ZNK10af_bit_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEv", scope: !4717, file: !3217, line: 193, type: !4755, isLocal: false, isDefinition: false, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!1249, !4741}
!4757 = !{!478, !4758, !39, !2794, !2795, !2796}
!4758 = !DITemplateValueParameter(name: "_AP_I", type: !38, value: i32 16)
!4759 = !DISubprogram(name: "operator[]", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", scope: !20, file: !21, line: 1729, type: !4760, isLocal: false, isDefinition: false, scopeLine: 1729, flags: DIFlagPrototyped, isOptimized: false)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!40, !78, !123}
!4762 = !DISubprogram(name: "bit", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", scope: !20, file: !21, line: 1734, type: !4715, isLocal: false, isDefinition: false, scopeLine: 1734, flags: DIFlagPrototyped, isOptimized: false)
!4763 = !DISubprogram(name: "bit", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", scope: !20, file: !21, line: 1749, type: !4760, isLocal: false, isDefinition: false, scopeLine: 1749, flags: DIFlagPrototyped, isOptimized: false)
!4764 = !DISubprogram(name: "get_bit", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", scope: !20, file: !21, line: 1764, type: !4765, isLocal: false, isDefinition: false, scopeLine: 1764, flags: DIFlagPrototyped, isOptimized: false)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!40, !78, !38}
!4767 = !DISubprogram(name: "range", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", scope: !20, file: !21, line: 1789, type: !4768, isLocal: false, isDefinition: false, scopeLine: 1789, flags: DIFlagPrototyped, isOptimized: false)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{!4770, !68, !38, !38}
!4770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "af_range_ref<16, 16, true, AP_TRN, AP_WRAP, 0>", file: !3217, line: 214, size: 128, flags: DIFlagTypePassByReference, elements: !4771, templateParams: !4757, identifier: "_ZTS12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!4771 = !{!4772, !4775, !4776, !4777, !4783, !4787, !4792, !4796, !4799, !4802, !4805, !4808, !4811, !4814, !4817, !4820, !4823, !4826, !4829, !4832, !4835, !4838, !4841, !4844, !4848, !5397, !5398, !5401, !5404, !5407, !5410, !5413, !5416, !5417, !5418, !5419, !5420, !5421, !5422, !5423}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !4770, file: !3217, line: 219, baseType: !4773, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4774, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !4770, file: !3217, line: 218, baseType: !20)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "l_index", scope: !4770, file: !3217, line: 220, baseType: !38, size: 32, offset: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "h_index", scope: !4770, file: !3217, line: 221, baseType: !38, size: 32, offset: 96)
!4777 = !DISubprogram(name: "af_range_ref", scope: !4770, file: !3217, line: 225, type: !4778, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{null, !4780, !4781}
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4781 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4782, size: 64)
!4782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4770)
!4783 = !DISubprogram(name: "af_range_ref", scope: !4770, file: !3217, line: 232, type: !4784, isLocal: false, isDefinition: false, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{null, !4780, !4786, !38, !38}
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4787 = !DISubprogram(name: "af_range_ref", scope: !4770, file: !3217, line: 244, type: !4788, isLocal: false, isDefinition: false, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{null, !4780, !4790, !38, !38}
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4774)
!4792 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEb", scope: !4770, file: !3217, line: 266, type: !4793, isLocal: false, isDefinition: false, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!4795, !4780, !94}
!4795 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4770, size: 64)
!4796 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEc", scope: !4770, file: !3217, line: 267, type: !4797, isLocal: false, isDefinition: false, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: false)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!4795, !4780, !85}
!4799 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEa", scope: !4770, file: !3217, line: 268, type: !4800, isLocal: false, isDefinition: false, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: false)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!4795, !4780, !101}
!4802 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEh", scope: !4770, file: !3217, line: 269, type: !4803, isLocal: false, isDefinition: false, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!4795, !4780, !105}
!4805 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEs", scope: !4770, file: !3217, line: 270, type: !4806, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!4795, !4780, !110}
!4808 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEt", scope: !4770, file: !3217, line: 271, type: !4809, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!4795, !4780, !114}
!4811 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEi", scope: !4770, file: !3217, line: 272, type: !4812, isLocal: false, isDefinition: false, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: false)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!4795, !4780, !42}
!4814 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEj", scope: !4770, file: !3217, line: 273, type: !4815, isLocal: false, isDefinition: false, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!4795, !4780, !122}
!4817 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEl", scope: !4770, file: !3217, line: 274, type: !4818, isLocal: false, isDefinition: false, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!4795, !4780, !127}
!4820 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEm", scope: !4770, file: !3217, line: 275, type: !4821, isLocal: false, isDefinition: false, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: false)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!4795, !4780, !132}
!4823 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEx", scope: !4770, file: !3217, line: 276, type: !4824, isLocal: false, isDefinition: false, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!4795, !4780, !559}
!4826 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEy", scope: !4770, file: !3217, line: 277, type: !4827, isLocal: false, isDefinition: false, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: false)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!4795, !4780, !563}
!4829 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEDh", scope: !4770, file: !3217, line: 278, type: !4830, isLocal: false, isDefinition: false, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: false)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!4795, !4780, !3332}
!4832 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEf", scope: !4770, file: !3217, line: 279, type: !4833, isLocal: false, isDefinition: false, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!4795, !4780, !3336}
!4835 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEd", scope: !4770, file: !3217, line: 280, type: !4836, isLocal: false, isDefinition: false, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!4795, !4780, !3340}
!4838 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSEPKc", scope: !4770, file: !3217, line: 284, type: !4839, isLocal: false, isDefinition: false, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!4795, !4780, !84}
!4841 = !DISubprogram(name: "operator=", linkageName: "_ZN12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !4770, file: !3217, line: 325, type: !4842, isLocal: false, isDefinition: false, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: false)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!4795, !4780, !4781}
!4844 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", scope: !4770, file: !3217, line: 518, type: !4845, isLocal: false, isDefinition: false, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: false)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!440, !4847}
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4848 = !DISubprogram(name: "operator ap_int_base", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcv11ap_int_baseILi16ELb0EEEv", scope: !4770, file: !3217, line: 524, type: !4849, isLocal: false, isDefinition: false, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: false)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!4851, !4847}
!4851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<16, false>", file: !499, line: 108, size: 16, flags: DIFlagTypePassByValue, elements: !4852, templateParams: !5283, identifier: "_ZTS11ap_int_baseILi16ELb0EE")
!4852 = !{!4853, !4865, !4866, !4867, !4872, !4876, !4879, !4882, !4885, !4888, !4891, !4894, !4897, !4900, !4903, !4906, !4909, !4912, !4915, !4918, !4921, !4924, !4927, !4932, !4936, !4941, !4942, !4946, !4949, !4952, !4955, !4958, !4961, !4964, !4967, !4970, !4973, !4976, !4979, !4982, !4985, !4989, !4992, !4995, !4998, !5001, !5004, !5007, !5008, !5011, !5014, !5017, !5020, !5023, !5026, !5029, !5032, !5036, !5037, !5038, !5039, !5040, !5043, !5044, !5047, !5050, !5051, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5063, !5064, !5065, !5154, !5155, !5158, !5163, !5164, !5165, !5284, !5287, !5290, !5293, !5294, !5295, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5394}
!4853 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4851, baseType: !4854)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<16, false>", file: !451, line: 517, size: 16, flags: DIFlagTypePassByValue, elements: !4855, templateParams: !4864, identifier: "_ZTS8ssdm_intILi16ELb0EE")
!4855 = !{!4856, !4857, !4861}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !4854, file: !451, line: 519, baseType: !115, size: 16)
!4857 = !DISubprogram(name: "ssdm_int", scope: !4854, file: !451, line: 520, type: !4858, isLocal: false, isDefinition: false, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: false)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{null, !4860}
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4861 = !DISubprogram(name: "ssdm_int", scope: !4854, file: !451, line: 521, type: !4862, isLocal: false, isDefinition: false, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: false)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{null, !4860, !115}
!4864 = !{!37, !3368}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4851, file: !499, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 16)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !4851, file: !499, line: 131, baseType: !94, flags: DIFlagStaticMember, extraData: i1 false)
!4867 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi16ELb0EE16countLeadingOnesEv", scope: !4851, file: !499, line: 110, type: !4868, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!38, !4870}
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4851)
!4872 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 175, type: !4873, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{null, !4875}
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4876 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 208, type: !4877, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{null, !4875, !94}
!4879 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 209, type: !4880, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{null, !4875, !85}
!4882 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 210, type: !4883, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{null, !4875, !101}
!4885 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 211, type: !4886, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{null, !4875, !105}
!4888 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 212, type: !4889, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!4889 = !DISubroutineType(types: !4890)
!4890 = !{null, !4875, !110}
!4891 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 213, type: !4892, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{null, !4875, !114}
!4894 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 214, type: !4895, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{null, !4875, !42}
!4897 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 215, type: !4898, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{null, !4875, !122}
!4900 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 216, type: !4901, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{null, !4875, !127}
!4903 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 217, type: !4904, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{null, !4875, !132}
!4906 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 218, type: !4907, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{null, !4875, !559}
!4909 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 219, type: !4910, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{null, !4875, !563}
!4912 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 224, type: !4913, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{null, !4875, !450}
!4915 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 230, type: !4916, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{null, !4875, !153}
!4918 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 289, type: !4919, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!4919 = !DISubroutineType(types: !4920)
!4920 = !{null, !4875, !149}
!4921 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 385, type: !4922, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{null, !4875, !84}
!4924 = !DISubprogram(name: "ap_int_base", scope: !4851, file: !499, line: 391, type: !4925, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{null, !4875, !84, !90}
!4927 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi16ELb0EE4readEv", scope: !4851, file: !499, line: 413, type: !4928, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!4851, !4930}
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4931 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4851)
!4932 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi16ELb0EE5writeERKS0_", scope: !4851, file: !499, line: 420, type: !4933, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{null, !4930, !4935}
!4935 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4871, size: 64)
!4936 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi16ELb0EEaSERVKS0_", scope: !4851, file: !499, line: 432, type: !4937, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{null, !4930, !4939}
!4939 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4940, size: 64)
!4940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4931)
!4941 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi16ELb0EEaSERKS0_", scope: !4851, file: !499, line: 442, type: !4933, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!4942 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb0EEaSERVKS0_", scope: !4851, file: !499, line: 459, type: !4943, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!4945, !4875, !4939}
!4945 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4851, size: 64)
!4946 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb0EEaSERKS0_", scope: !4851, file: !499, line: 465, type: !4947, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{!4945, !4875, !4935}
!4949 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb0EEaSEb", scope: !4851, file: !499, line: 479, type: !4950, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!4945, !4875, !40}
!4952 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb0EEaSEc", scope: !4851, file: !499, line: 480, type: !4953, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!4945, !4875, !86}
!4955 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb0EEaSEa", scope: !4851, file: !499, line: 481, type: !4956, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!4945, !4875, !90}
!4958 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb0EEaSEh", scope: !4851, file: !499, line: 482, type: !4959, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!4945, !4875, !106}
!4961 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb0EEaSEs", scope: !4851, file: !499, line: 483, type: !4962, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!4945, !4875, !28}
!4964 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb0EEaSEt", scope: !4851, file: !499, line: 484, type: !4965, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!4945, !4875, !115}
!4967 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb0EEaSEi", scope: !4851, file: !499, line: 485, type: !4968, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!4945, !4875, !38}
!4970 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb0EEaSEj", scope: !4851, file: !499, line: 486, type: !4971, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!4945, !4875, !123}
!4973 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb0EEaSEl", scope: !4851, file: !499, line: 487, type: !4974, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!4945, !4875, !128}
!4976 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb0EEaSEm", scope: !4851, file: !499, line: 488, type: !4977, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!4945, !4875, !133}
!4979 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb0EEaSEx", scope: !4851, file: !499, line: 489, type: !4980, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!4945, !4875, !435}
!4982 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi16ELb0EEaSEy", scope: !4851, file: !499, line: 490, type: !4983, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!4945, !4875, !440}
!4985 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK11ap_int_baseILi16ELb0EEcvyEv", scope: !4851, file: !499, line: 541, type: !4986, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!4988, !4870}
!4988 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !4851, file: !499, line: 128, baseType: !3493)
!4989 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi16ELb0EE7to_boolEv", scope: !4851, file: !499, line: 546, type: !4990, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!4990 = !DISubroutineType(types: !4991)
!4991 = !{!40, !4870}
!4992 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi16ELb0EE7to_charEv", scope: !4851, file: !499, line: 547, type: !4993, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!4993 = !DISubroutineType(types: !4994)
!4994 = !{!86, !4870}
!4995 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi16ELb0EE8to_scharEv", scope: !4851, file: !499, line: 548, type: !4996, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!90, !4870}
!4998 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi16ELb0EE8to_ucharEv", scope: !4851, file: !499, line: 549, type: !4999, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!106, !4870}
!5001 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi16ELb0EE8to_shortEv", scope: !4851, file: !499, line: 550, type: !5002, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!28, !4870}
!5004 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi16ELb0EE9to_ushortEv", scope: !4851, file: !499, line: 551, type: !5005, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!115, !4870}
!5007 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi16ELb0EE6to_intEv", scope: !4851, file: !499, line: 552, type: !4868, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!5008 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi16ELb0EE7to_uintEv", scope: !4851, file: !499, line: 553, type: !5009, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!123, !4870}
!5011 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi16ELb0EE7to_longEv", scope: !4851, file: !499, line: 554, type: !5012, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!128, !4870}
!5014 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi16ELb0EE8to_ulongEv", scope: !4851, file: !499, line: 555, type: !5015, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!133, !4870}
!5017 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi16ELb0EE8to_int64Ev", scope: !4851, file: !499, line: 556, type: !5018, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{!435, !4870}
!5020 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi16ELb0EE9to_uint64Ev", scope: !4851, file: !499, line: 557, type: !5021, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!440, !4870}
!5023 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi16ELb0EE7to_halfEv", scope: !4851, file: !499, line: 558, type: !5024, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!450, !4870}
!5026 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi16ELb0EE8to_floatEv", scope: !4851, file: !499, line: 559, type: !5027, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!153, !4870}
!5029 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi16ELb0EE9to_doubleEv", scope: !4851, file: !499, line: 560, type: !5030, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{!149, !4870}
!5032 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi16ELb0EE6lengthEv", scope: !4851, file: !499, line: 584, type: !5033, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!38, !5035}
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5036 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi16ELb0EE6lengthEv", scope: !4851, file: !499, line: 585, type: !4868, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!5037 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi16ELb0EE6iszeroEv", scope: !4851, file: !499, line: 588, type: !4990, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!5038 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi16ELb0EE7is_zeroEv", scope: !4851, file: !499, line: 591, type: !4990, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!5039 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi16ELb0EE4signEv", scope: !4851, file: !499, line: 594, type: !4990, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!5040 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi16ELb0EE5clearEi", scope: !4851, file: !499, line: 603, type: !5041, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{null, !4875, !38}
!5043 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi16ELb0EE6invertEi", scope: !4851, file: !499, line: 609, type: !5041, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!5044 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi16ELb0EE4testEi", scope: !4851, file: !499, line: 618, type: !5045, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!40, !4870, !38}
!5047 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi16ELb0EE3getEv", scope: !4851, file: !499, line: 624, type: !5048, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{!4945, !4875}
!5050 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi16ELb0EE3setEi", scope: !4851, file: !499, line: 627, type: !5041, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!5051 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi16ELb0EE3setEib", scope: !4851, file: !499, line: 633, type: !5052, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{null, !4875, !38, !40}
!5054 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi16ELb0EE7lrotateEi", scope: !4851, file: !499, line: 640, type: !4968, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!5055 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi16ELb0EE7rrotateEi", scope: !4851, file: !499, line: 655, type: !4968, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!5056 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi16ELb0EE7reverseEv", scope: !4851, file: !499, line: 670, type: !5048, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!5057 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi16ELb0EE7set_bitEib", scope: !4851, file: !499, line: 676, type: !5052, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!5058 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi16ELb0EE7get_bitEi", scope: !4851, file: !499, line: 681, type: !5045, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!5059 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi16ELb0EE5b_notEv", scope: !4851, file: !499, line: 686, type: !4873, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!5060 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi16ELb0EE17checkOverflowCsimEibb", scope: !4851, file: !499, line: 760, type: !5061, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!5061 = !DISubroutineType(types: !5062)
!5062 = !{!40, !4870, !38, !40, !40}
!5063 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi16ELb0EEppEv", scope: !4851, file: !499, line: 865, type: !5048, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!5064 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi16ELb0EEmmEv", scope: !4851, file: !499, line: 869, type: !5048, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!5065 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi16ELb0EEppEi", scope: !4851, file: !499, line: 877, type: !5066, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!5068, !4875, !38}
!5068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5069)
!5069 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !5070, file: !499, line: 167, baseType: !5072)
!5070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<16, false>", scope: !4851, file: !499, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !5071, identifier: "_ZTSN11ap_int_baseILi16ELb0EE5RTypeILi16ELb0EEE")
!5071 = !{!387, !490}
!5072 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5073, file: !499, line: 105, baseType: !5074)
!5073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<16, false>", file: !499, line: 105, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !5071, identifier: "_ZTS15_ap_int_factoryILi16ELb0EE")
!5074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<16>", file: !392, line: 181, size: 16, flags: DIFlagTypePassByValue, elements: !5075, templateParams: !477, identifier: "_ZTS7ap_uintILi16EE")
!5075 = !{!5076, !5077, !5081, !5084, !5087, !5090, !5093, !5096, !5099, !5102, !5105, !5108, !5111, !5114, !5117, !5120, !5123, !5126, !5129, !5132, !5135, !5141, !5147, !5151}
!5076 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !5074, baseType: !4851)
!5077 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 184, type: !5078, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{null, !5080}
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5081 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 212, type: !5082, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{null, !5080, !115, !40}
!5084 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 281, type: !5085, isLocal: false, isDefinition: false, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: false)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{null, !5080, !40}
!5087 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 282, type: !5088, isLocal: false, isDefinition: false, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{null, !5080, !86}
!5090 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 283, type: !5091, isLocal: false, isDefinition: false, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{null, !5080, !90}
!5093 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 284, type: !5094, isLocal: false, isDefinition: false, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{null, !5080, !106}
!5096 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 285, type: !5097, isLocal: false, isDefinition: false, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{null, !5080, !28}
!5099 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 286, type: !5100, isLocal: false, isDefinition: false, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{null, !5080, !115}
!5102 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 287, type: !5103, isLocal: false, isDefinition: false, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{null, !5080, !38}
!5105 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 288, type: !5106, isLocal: false, isDefinition: false, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: false)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{null, !5080, !123}
!5108 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 289, type: !5109, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{null, !5080, !128}
!5111 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 290, type: !5112, isLocal: false, isDefinition: false, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: false)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{null, !5080, !133}
!5114 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 291, type: !5115, isLocal: false, isDefinition: false, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{null, !5080, !435}
!5117 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 292, type: !5118, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: false)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{null, !5080, !440}
!5120 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 294, type: !5121, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{null, !5080, !149}
!5123 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 295, type: !5124, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{null, !5080, !153}
!5126 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 296, type: !5127, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{null, !5080, !450}
!5129 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 299, type: !5130, isLocal: false, isDefinition: false, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false)
!5130 = !DISubroutineType(types: !5131)
!5131 = !{null, !5080, !84}
!5132 = !DISubprogram(name: "ap_uint", scope: !5074, file: !392, line: 301, type: !5133, isLocal: false, isDefinition: false, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: false)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{null, !5080, !84, !90}
!5135 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi16EEaSERKS0_", scope: !5074, file: !392, line: 307, type: !5136, isLocal: false, isDefinition: false, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{!5138, !5080, !5139}
!5138 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5074, size: 64)
!5139 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5140, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5074)
!5141 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi16EEaSERVKS0_", scope: !5074, file: !392, line: 317, type: !5142, isLocal: false, isDefinition: false, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: false)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!5138, !5080, !5144}
!5144 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5145, size: 64)
!5145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5146)
!5146 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5074)
!5147 = !DISubprogram(name: "operator=", linkageName: "_ZNV7ap_uintILi16EEaSERKS0_", scope: !5074, file: !392, line: 323, type: !5148, isLocal: false, isDefinition: false, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: false)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{null, !5150, !5139}
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5151 = !DISubprogram(name: "operator=", linkageName: "_ZNV7ap_uintILi16EEaSERVKS0_", scope: !5074, file: !392, line: 327, type: !5152, isLocal: false, isDefinition: false, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{null, !5150, !5144}
!5154 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi16ELb0EEmmEi", scope: !4851, file: !499, line: 882, type: !5066, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!5155 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi16ELb0EEpsEv", scope: !4851, file: !499, line: 891, type: !5156, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!5069, !4870}
!5158 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi16ELb0EEngEv", scope: !4851, file: !499, line: 894, type: !5159, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!5159 = !DISubroutineType(types: !5160)
!5160 = !{!5161, !4870}
!5161 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !5162, file: !499, line: 163, baseType: !724)
!5162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !4851, file: !499, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !488, identifier: "_ZTSN11ap_int_baseILi16ELb0EE5RTypeILi1ELb0EEE")
!5163 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi16ELb0EEntEv", scope: !4851, file: !499, line: 901, type: !4990, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!5164 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi16ELb0EEcoEv", scope: !4851, file: !499, line: 907, type: !5156, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!5165 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi16ELb0EE5rangeEii", scope: !4851, file: !499, line: 1045, type: !5166, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!5168, !4875, !38, !38}
!5168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<16, false>", file: !1467, line: 290, size: 128, flags: DIFlagTypePassByReference, elements: !5169, templateParams: !5283, identifier: "_ZTS12ap_range_refILi16ELb0EE")
!5169 = !{!5170, !5173, !5174, !5175, !5181, !5185, !5190, !5194, !5197, !5201, !5204, !5207, !5210, !5213, !5216, !5219, !5222, !5225, !5228, !5231, !5234, !5237, !5240, !5243, !5246, !5249, !5253, !5254, !5255, !5256, !5257, !5258, !5261, !5262, !5265, !5268, !5271, !5274, !5275, !5278, !5279, !5280}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !5168, file: !1467, line: 295, baseType: !5171, size: 64)
!5171 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5172, size: 64)
!5172 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !5168, file: !1467, line: 294, baseType: !4851)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "l_index", scope: !5168, file: !1467, line: 296, baseType: !38, size: 32, offset: 64)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "h_index", scope: !5168, file: !1467, line: 297, baseType: !38, size: 32, offset: 96)
!5175 = !DISubprogram(name: "ap_range_ref", scope: !5168, file: !1467, line: 300, type: !5176, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{null, !5178, !5179}
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5179 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5180, size: 64)
!5180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5168)
!5181 = !DISubprogram(name: "ap_range_ref", scope: !5168, file: !1467, line: 303, type: !5182, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: false)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{null, !5178, !5184, !38, !38}
!5184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5185 = !DISubprogram(name: "ap_range_ref", scope: !5168, file: !1467, line: 306, type: !5186, isLocal: false, isDefinition: false, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{null, !5178, !5188, !38, !38}
!5188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5189, size: 64)
!5189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5172)
!5190 = !DISubprogram(name: "operator ap_int_base", linkageName: "_ZNK12ap_range_refILi16ELb0EEcv11ap_int_baseILi16ELb0EEEv", scope: !5168, file: !1467, line: 309, type: !5191, isLocal: false, isDefinition: false, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: false)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!4851, !5193}
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5180, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5194 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK12ap_range_refILi16ELb0EEcvyEv", scope: !5168, file: !1467, line: 315, type: !5195, isLocal: false, isDefinition: false, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: false)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!440, !5193}
!5197 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSEb", scope: !5168, file: !1467, line: 339, type: !5198, isLocal: false, isDefinition: false, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: false)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!5200, !5178, !40}
!5200 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5168, size: 64)
!5201 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSEc", scope: !5168, file: !1467, line: 340, type: !5202, isLocal: false, isDefinition: false, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!5200, !5178, !86}
!5204 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSEa", scope: !5168, file: !1467, line: 341, type: !5205, isLocal: false, isDefinition: false, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false)
!5205 = !DISubroutineType(types: !5206)
!5206 = !{!5200, !5178, !90}
!5207 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSEh", scope: !5168, file: !1467, line: 342, type: !5208, isLocal: false, isDefinition: false, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!5200, !5178, !106}
!5210 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSEs", scope: !5168, file: !1467, line: 343, type: !5211, isLocal: false, isDefinition: false, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: false)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{!5200, !5178, !28}
!5213 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSEt", scope: !5168, file: !1467, line: 344, type: !5214, isLocal: false, isDefinition: false, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false)
!5214 = !DISubroutineType(types: !5215)
!5215 = !{!5200, !5178, !115}
!5216 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSEi", scope: !5168, file: !1467, line: 345, type: !5217, isLocal: false, isDefinition: false, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false)
!5217 = !DISubroutineType(types: !5218)
!5218 = !{!5200, !5178, !38}
!5219 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSEj", scope: !5168, file: !1467, line: 346, type: !5220, isLocal: false, isDefinition: false, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: false)
!5220 = !DISubroutineType(types: !5221)
!5221 = !{!5200, !5178, !123}
!5222 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSEl", scope: !5168, file: !1467, line: 347, type: !5223, isLocal: false, isDefinition: false, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!5200, !5178, !128}
!5225 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSEm", scope: !5168, file: !1467, line: 348, type: !5226, isLocal: false, isDefinition: false, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: false)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!5200, !5178, !133}
!5228 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSEx", scope: !5168, file: !1467, line: 349, type: !5229, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false)
!5229 = !DISubroutineType(types: !5230)
!5230 = !{!5200, !5178, !435}
!5231 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSEy", scope: !5168, file: !1467, line: 350, type: !5232, isLocal: false, isDefinition: false, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: false)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!5200, !5178, !440}
!5234 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSEDh", scope: !5168, file: !1467, line: 351, type: !5235, isLocal: false, isDefinition: false, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: false)
!5235 = !DISubroutineType(types: !5236)
!5236 = !{!5200, !5178, !450}
!5237 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSEf", scope: !5168, file: !1467, line: 352, type: !5238, isLocal: false, isDefinition: false, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!5200, !5178, !153}
!5240 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSEd", scope: !5168, file: !1467, line: 353, type: !5241, isLocal: false, isDefinition: false, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: false)
!5241 = !DISubroutineType(types: !5242)
!5242 = !{!5200, !5178, !149}
!5243 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSEPKc", scope: !5168, file: !1467, line: 358, type: !5244, isLocal: false, isDefinition: false, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false)
!5244 = !DISubroutineType(types: !5245)
!5245 = !{!5200, !5178, !84}
!5246 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi16ELb0EEaSERKS0_", scope: !5168, file: !1467, line: 375, type: !5247, isLocal: false, isDefinition: false, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: false)
!5247 = !DISubroutineType(types: !5248)
!5248 = !{!5200, !5178, !5179}
!5249 = !DISubprogram(name: "operator,", linkageName: "_ZN12ap_range_refILi16ELb0EEcmER11ap_int_baseILi16ELb0EE", scope: !5168, file: !1467, line: 443, type: !5250, isLocal: false, isDefinition: false, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: false)
!5250 = !DISubroutineType(types: !5251)
!5251 = !{!5252, !5178, !4945}
!5252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_concat_ref<16, ap_range_ref<16, false>, 16, ap_int_base<16, false> >", file: !1467, line: 28, flags: DIFlagFwdDecl, identifier: "_ZTS13ap_concat_refILi16E12ap_range_refILi16ELb0EELi16E11ap_int_baseILi16ELb0EEE")
!5253 = !DISubprogram(name: "operator~", linkageName: "_ZNK12ap_range_refILi16ELb0EEcoEv", scope: !5168, file: !1467, line: 601, type: !5191, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!5254 = !DISubprogram(name: "operator!", linkageName: "_ZNK12ap_range_refILi16ELb0EEntEv", scope: !5168, file: !1467, line: 607, type: !5191, isLocal: false, isDefinition: false, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: false)
!5255 = !DISubprogram(name: "operator+", linkageName: "_ZNK12ap_range_refILi16ELb0EEpsEv", scope: !5168, file: !1467, line: 613, type: !5191, isLocal: false, isDefinition: false, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: false)
!5256 = !DISubprogram(name: "operator-", linkageName: "_ZNK12ap_range_refILi16ELb0EEngEv", scope: !5168, file: !1467, line: 619, type: !5191, isLocal: false, isDefinition: false, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: false)
!5257 = !DISubprogram(name: "get", linkageName: "_ZNK12ap_range_refILi16ELb0EE3getEv", scope: !5168, file: !1467, line: 626, type: !5191, isLocal: false, isDefinition: false, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: false)
!5258 = !DISubprogram(name: "length", linkageName: "_ZNK12ap_range_refILi16ELb0EE6lengthEv", scope: !5168, file: !1467, line: 637, type: !5259, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!38, !5193}
!5261 = !DISubprogram(name: "to_int", linkageName: "_ZNK12ap_range_refILi16ELb0EE6to_intEv", scope: !5168, file: !1467, line: 641, type: !5259, isLocal: false, isDefinition: false, scopeLine: 641, flags: DIFlagPrototyped, isOptimized: false)
!5262 = !DISubprogram(name: "to_uint", linkageName: "_ZNK12ap_range_refILi16ELb0EE7to_uintEv", scope: !5168, file: !1467, line: 645, type: !5263, isLocal: false, isDefinition: false, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: false)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{!123, !5193}
!5265 = !DISubprogram(name: "to_long", linkageName: "_ZNK12ap_range_refILi16ELb0EE7to_longEv", scope: !5168, file: !1467, line: 651, type: !5266, isLocal: false, isDefinition: false, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: false)
!5266 = !DISubroutineType(types: !5267)
!5267 = !{!128, !5193}
!5268 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK12ap_range_refILi16ELb0EE8to_ulongEv", scope: !5168, file: !1467, line: 655, type: !5269, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!133, !5193}
!5271 = !DISubprogram(name: "to_int64", linkageName: "_ZNK12ap_range_refILi16ELb0EE8to_int64Ev", scope: !5168, file: !1467, line: 661, type: !5272, isLocal: false, isDefinition: false, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: false)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{!435, !5193}
!5274 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK12ap_range_refILi16ELb0EE9to_uint64Ev", scope: !5168, file: !1467, line: 665, type: !5195, isLocal: false, isDefinition: false, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: false)
!5275 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK12ap_range_refILi16ELb0EE10and_reduceEv", scope: !5168, file: !1467, line: 671, type: !5276, isLocal: false, isDefinition: false, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: false)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{!40, !5193}
!5278 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK12ap_range_refILi16ELb0EE9or_reduceEv", scope: !5168, file: !1467, line: 685, type: !5276, isLocal: false, isDefinition: false, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false)
!5279 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK12ap_range_refILi16ELb0EE10xor_reduceEv", scope: !5168, file: !1467, line: 699, type: !5276, isLocal: false, isDefinition: false, scopeLine: 699, flags: DIFlagPrototyped, isOptimized: false)
!5280 = !DISubprogram(name: "to_string", linkageName: "_ZNK12ap_range_refILi16ELb0EE9to_stringEa", scope: !5168, file: !1467, line: 720, type: !5281, isLocal: false, isDefinition: false, scopeLine: 720, flags: DIFlagPrototyped, isOptimized: false)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{!1249, !5193, !90}
!5283 = !{!478, !3368}
!5284 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi16ELb0EE5rangeEii", scope: !4851, file: !499, line: 1052, type: !5285, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!5285 = !DISubroutineType(types: !5286)
!5286 = !{!5168, !4870, !38, !38}
!5287 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi16ELb0EE5rangeEv", scope: !4851, file: !499, line: 1076, type: !5288, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!5168, !4875}
!5290 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi16ELb0EE5rangeEv", scope: !4851, file: !499, line: 1080, type: !5291, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!5291 = !DISubroutineType(types: !5292)
!5292 = !{!5168, !4870}
!5293 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi16ELb0EEclEii", scope: !4851, file: !499, line: 1084, type: !5166, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!5294 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi16ELb0EEclEii", scope: !4851, file: !499, line: 1088, type: !5285, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!5295 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi16ELb0EEixEi", scope: !4851, file: !499, line: 1126, type: !5296, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{!5298, !4875, !38}
!5298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<16, false>", file: !1467, line: 761, size: 128, flags: DIFlagTypePassByReference, elements: !5299, templateParams: !5283, identifier: "_ZTS10ap_bit_refILi16ELb0EE")
!5299 = !{!5300, !5303, !5304, !5310, !5314, !5319, !5323, !5324, !5328, !5331, !5334, !5337, !5340, !5343, !5346, !5349, !5352, !5355, !5358, !5361, !5364, !5367, !5370, !5373, !5374, !5377, !5378, !5381}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !5298, file: !1467, line: 766, baseType: !5301, size: 64)
!5301 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5302, size: 64)
!5302 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !5298, file: !1467, line: 765, baseType: !4851)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !5298, file: !1467, line: 767, baseType: !38, size: 32, offset: 64)
!5304 = !DISubprogram(name: "ap_bit_ref", scope: !5298, file: !1467, line: 771, type: !5305, isLocal: false, isDefinition: false, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: false)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{null, !5307, !5308}
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5298, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5308 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5309, size: 64)
!5309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5298)
!5310 = !DISubprogram(name: "ap_bit_ref", scope: !5298, file: !1467, line: 774, type: !5311, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false)
!5311 = !DISubroutineType(types: !5312)
!5312 = !{null, !5307, !5313, !38}
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5314 = !DISubprogram(name: "ap_bit_ref", scope: !5298, file: !1467, line: 776, type: !5315, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: false)
!5315 = !DISubroutineType(types: !5316)
!5316 = !{null, !5307, !5317, !38}
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5318, size: 64)
!5318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5302)
!5319 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi16ELb0EEcvbEv", scope: !5298, file: !1467, line: 779, type: !5320, isLocal: false, isDefinition: false, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false)
!5320 = !DISubroutineType(types: !5321)
!5321 = !{!40, !5322}
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5323 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi16ELb0EE7to_boolEv", scope: !5298, file: !1467, line: 780, type: !5320, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false)
!5324 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb0EEaSEb", scope: !5298, file: !1467, line: 798, type: !5325, isLocal: false, isDefinition: false, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false)
!5325 = !DISubroutineType(types: !5326)
!5326 = !{!5327, !5307, !40}
!5327 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5298, size: 64)
!5328 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb0EEaSEc", scope: !5298, file: !1467, line: 799, type: !5329, isLocal: false, isDefinition: false, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false)
!5329 = !DISubroutineType(types: !5330)
!5330 = !{!5327, !5307, !86}
!5331 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb0EEaSEa", scope: !5298, file: !1467, line: 800, type: !5332, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false)
!5332 = !DISubroutineType(types: !5333)
!5333 = !{!5327, !5307, !90}
!5334 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb0EEaSEh", scope: !5298, file: !1467, line: 801, type: !5335, isLocal: false, isDefinition: false, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: false)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!5327, !5307, !106}
!5337 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb0EEaSEs", scope: !5298, file: !1467, line: 802, type: !5338, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false)
!5338 = !DISubroutineType(types: !5339)
!5339 = !{!5327, !5307, !28}
!5340 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb0EEaSEt", scope: !5298, file: !1467, line: 803, type: !5341, isLocal: false, isDefinition: false, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: false)
!5341 = !DISubroutineType(types: !5342)
!5342 = !{!5327, !5307, !115}
!5343 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb0EEaSEi", scope: !5298, file: !1467, line: 804, type: !5344, isLocal: false, isDefinition: false, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{!5327, !5307, !38}
!5346 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb0EEaSEj", scope: !5298, file: !1467, line: 805, type: !5347, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{!5327, !5307, !123}
!5349 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb0EEaSEl", scope: !5298, file: !1467, line: 806, type: !5350, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!5350 = !DISubroutineType(types: !5351)
!5351 = !{!5327, !5307, !128}
!5352 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb0EEaSEm", scope: !5298, file: !1467, line: 807, type: !5353, isLocal: false, isDefinition: false, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: false)
!5353 = !DISubroutineType(types: !5354)
!5354 = !{!5327, !5307, !133}
!5355 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb0EEaSEx", scope: !5298, file: !1467, line: 808, type: !5356, isLocal: false, isDefinition: false, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: false)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{!5327, !5307, !435}
!5358 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb0EEaSEy", scope: !5298, file: !1467, line: 809, type: !5359, isLocal: false, isDefinition: false, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!5327, !5307, !440}
!5361 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb0EEaSEDh", scope: !5298, file: !1467, line: 820, type: !5362, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!5362 = !DISubroutineType(types: !5363)
!5363 = !{!5327, !5307, !450}
!5364 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb0EEaSEf", scope: !5298, file: !1467, line: 821, type: !5365, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false)
!5365 = !DISubroutineType(types: !5366)
!5366 = !{!5327, !5307, !153}
!5367 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb0EEaSEd", scope: !5298, file: !1467, line: 822, type: !5368, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!5368 = !DISubroutineType(types: !5369)
!5369 = !{!5327, !5307, !149}
!5370 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi16ELb0EEaSERKS0_", scope: !5298, file: !1467, line: 839, type: !5371, isLocal: false, isDefinition: false, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false)
!5371 = !DISubroutineType(types: !5372)
!5372 = !{!5327, !5307, !5308}
!5373 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi16ELb0EE3getEv", scope: !5298, file: !1467, line: 959, type: !5320, isLocal: false, isDefinition: false, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false)
!5374 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi16ELb0EE3getEv", scope: !5298, file: !1467, line: 961, type: !5375, isLocal: false, isDefinition: false, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false)
!5375 = !DISubroutineType(types: !5376)
!5376 = !{!40, !5307}
!5377 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi16ELb0EEcoEv", scope: !5298, file: !1467, line: 968, type: !5320, isLocal: false, isDefinition: false, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: false)
!5378 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi16ELb0EE6lengthEv", scope: !5298, file: !1467, line: 973, type: !5379, isLocal: false, isDefinition: false, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: false)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!38, !5322}
!5381 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi16ELb0EE9to_stringEv", scope: !5298, file: !1467, line: 979, type: !5382, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!1249, !5322}
!5384 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi16ELb0EEixEi", scope: !4851, file: !499, line: 1142, type: !5045, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!5385 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi16ELb0EE3bitEi", scope: !4851, file: !499, line: 1155, type: !5296, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!5386 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi16ELb0EE3bitEi", scope: !4851, file: !499, line: 1170, type: !5045, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!5387 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi16ELb0EE17countLeadingZerosEv", scope: !4851, file: !499, line: 1193, type: !4868, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!5388 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb0EE10and_reduceEv", scope: !4851, file: !499, line: 1413, type: !4990, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!5389 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb0EE11nand_reduceEv", scope: !4851, file: !499, line: 1414, type: !4990, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!5390 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb0EE9or_reduceEv", scope: !4851, file: !499, line: 1415, type: !4990, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!5391 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb0EE10nor_reduceEv", scope: !4851, file: !499, line: 1416, type: !4990, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!5392 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb0EE10xor_reduceEv", scope: !4851, file: !499, line: 1417, type: !4990, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!5393 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi16ELb0EE11xnor_reduceEv", scope: !4851, file: !499, line: 1418, type: !4990, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!5394 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi16ELb0EE9to_stringEab", scope: !4851, file: !499, line: 1433, type: !5395, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!1249, !4870, !90, !40}
!5397 = !DISubprogram(name: "to_ap_int_base", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEv", scope: !4770, file: !3217, line: 530, type: !4849, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!5398 = !DISubprogram(name: "to_char", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_charEv", scope: !4770, file: !3217, line: 537, type: !5399, isLocal: false, isDefinition: false, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: false)
!5399 = !DISubroutineType(types: !5400)
!5400 = !{!86, !4847}
!5401 = !DISubprogram(name: "to_int", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", scope: !4770, file: !3217, line: 541, type: !5402, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!5402 = !DISubroutineType(types: !5403)
!5403 = !{!38, !4847}
!5404 = !DISubprogram(name: "to_uint", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", scope: !4770, file: !3217, line: 545, type: !5405, isLocal: false, isDefinition: false, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: false)
!5405 = !DISubroutineType(types: !5406)
!5406 = !{!123, !4847}
!5407 = !DISubprogram(name: "to_long", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_longEv", scope: !4770, file: !3217, line: 549, type: !5408, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!5408 = !DISubroutineType(types: !5409)
!5409 = !{!128, !4847}
!5410 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_ulongEv", scope: !4770, file: !3217, line: 553, type: !5411, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!5411 = !DISubroutineType(types: !5412)
!5412 = !{!133, !4847}
!5413 = !DISubprogram(name: "to_int64", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", scope: !4770, file: !3217, line: 557, type: !5414, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{!435, !4847}
!5416 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", scope: !4770, file: !3217, line: 561, type: !4845, isLocal: false, isDefinition: false, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: false)
!5417 = !DISubprogram(name: "operator~", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", scope: !4770, file: !3217, line: 567, type: !4849, isLocal: false, isDefinition: false, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: false)
!5418 = !DISubprogram(name: "operator!", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", scope: !4770, file: !3217, line: 573, type: !4849, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: false)
!5419 = !DISubprogram(name: "operator+", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", scope: !4770, file: !3217, line: 579, type: !4849, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: false)
!5420 = !DISubprogram(name: "operator-", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", scope: !4770, file: !3217, line: 585, type: !4849, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!5421 = !DISubprogram(name: "get", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3getEv", scope: !4770, file: !3217, line: 592, type: !4849, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false)
!5422 = !DISubprogram(name: "length", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", scope: !4770, file: !3217, line: 603, type: !5402, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!5423 = !DISubprogram(name: "to_string", linkageName: "_ZNK12af_range_refILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", scope: !4770, file: !3217, line: 615, type: !5424, isLocal: false, isDefinition: false, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: false)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{!1249, !4847, !90}
!5426 = !DISubprogram(name: "range", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", scope: !20, file: !21, line: 1796, type: !5427, isLocal: false, isDefinition: false, scopeLine: 1796, flags: DIFlagPrototyped, isOptimized: false)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{!4770, !78, !38, !38}
!5429 = !DISubprogram(name: "range", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", scope: !20, file: !21, line: 1821, type: !5430, isLocal: false, isDefinition: false, scopeLine: 1821, flags: DIFlagPrototyped, isOptimized: false)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{!4770, !68}
!5432 = !DISubprogram(name: "range", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", scope: !20, file: !21, line: 1825, type: !5433, isLocal: false, isDefinition: false, scopeLine: 1825, flags: DIFlagPrototyped, isOptimized: false)
!5433 = !DISubroutineType(types: !5434)
!5434 = !{!4770, !78}
!5435 = !DISubprogram(name: "operator()", linkageName: "_ZN13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", scope: !20, file: !21, line: 1829, type: !4768, isLocal: false, isDefinition: false, scopeLine: 1829, flags: DIFlagPrototyped, isOptimized: false)
!5436 = !DISubprogram(name: "operator()", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", scope: !20, file: !21, line: 1834, type: !5427, isLocal: false, isDefinition: false, scopeLine: 1834, flags: DIFlagPrototyped, isOptimized: false)
!5437 = !DISubprogram(name: "is_zero", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", scope: !20, file: !21, line: 1857, type: !1800, isLocal: false, isDefinition: false, scopeLine: 1857, flags: DIFlagPrototyped, isOptimized: false)
!5438 = !DISubprogram(name: "is_neg", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", scope: !20, file: !21, line: 1859, type: !1800, isLocal: false, isDefinition: false, scopeLine: 1859, flags: DIFlagPrototyped, isOptimized: false)
!5439 = !DISubprogram(name: "wl", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", scope: !20, file: !21, line: 1864, type: !76, isLocal: false, isDefinition: false, scopeLine: 1864, flags: DIFlagPrototyped, isOptimized: false)
!5440 = !DISubprogram(name: "iwl", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", scope: !20, file: !21, line: 1866, type: !76, isLocal: false, isDefinition: false, scopeLine: 1866, flags: DIFlagPrototyped, isOptimized: false)
!5441 = !DISubprogram(name: "q_mode", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", scope: !20, file: !21, line: 1868, type: !5442, isLocal: false, isDefinition: false, scopeLine: 1868, flags: DIFlagPrototyped, isOptimized: false)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{!46, !78}
!5444 = !DISubprogram(name: "o_mode", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", scope: !20, file: !21, line: 1870, type: !5445, isLocal: false, isDefinition: false, scopeLine: 1870, flags: DIFlagPrototyped, isOptimized: false)
!5445 = !DISubroutineType(types: !5446)
!5446 = !{!58, !78}
!5447 = !DISubprogram(name: "n_bits", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", scope: !20, file: !21, line: 1872, type: !76, isLocal: false, isDefinition: false, scopeLine: 1872, flags: DIFlagPrototyped, isOptimized: false)
!5448 = !DISubprogram(name: "to_string", linkageName: "_ZNK13ap_fixed_baseILi16ELi16ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEhb", scope: !20, file: !21, line: 1964, type: !5449, isLocal: false, isDefinition: false, scopeLine: 1964, flags: DIFlagPrototyped, isOptimized: false)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{!1249, !78, !106, !40}
!5451 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 68, type: !5452, isLocal: false, isDefinition: false, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false)
!5452 = !DISubroutineType(types: !5453)
!5453 = !{null, !5454}
!5454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5455 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 121, type: !5456, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false)
!5456 = !DISubroutineType(types: !5457)
!5457 = !{null, !5454, !115, !40}
!5458 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 177, type: !5459, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false)
!5459 = !DISubroutineType(types: !5460)
!5460 = !{null, !5454, !40}
!5461 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 178, type: !5462, isLocal: false, isDefinition: false, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false)
!5462 = !DISubroutineType(types: !5463)
!5463 = !{null, !5454, !86}
!5464 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 179, type: !5465, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false)
!5465 = !DISubroutineType(types: !5466)
!5466 = !{null, !5454, !90}
!5467 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 180, type: !5468, isLocal: false, isDefinition: false, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false)
!5468 = !DISubroutineType(types: !5469)
!5469 = !{null, !5454, !106}
!5470 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 181, type: !5471, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{null, !5454, !28}
!5473 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 182, type: !5474, isLocal: false, isDefinition: false, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false)
!5474 = !DISubroutineType(types: !5475)
!5475 = !{null, !5454, !115}
!5476 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 183, type: !5477, isLocal: false, isDefinition: false, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: false)
!5477 = !DISubroutineType(types: !5478)
!5478 = !{null, !5454, !38}
!5479 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 184, type: !5480, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false)
!5480 = !DISubroutineType(types: !5481)
!5481 = !{null, !5454, !123}
!5482 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 185, type: !5483, isLocal: false, isDefinition: false, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false)
!5483 = !DISubroutineType(types: !5484)
!5484 = !{null, !5454, !128}
!5485 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 186, type: !5486, isLocal: false, isDefinition: false, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false)
!5486 = !DISubroutineType(types: !5487)
!5487 = !{null, !5454, !133}
!5488 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 187, type: !5489, isLocal: false, isDefinition: false, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false)
!5489 = !DISubroutineType(types: !5490)
!5490 = !{null, !5454, !138}
!5491 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 188, type: !5492, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false)
!5492 = !DISubroutineType(types: !5493)
!5493 = !{null, !5454, !144}
!5494 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 189, type: !5495, isLocal: false, isDefinition: false, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false)
!5495 = !DISubroutineType(types: !5496)
!5496 = !{null, !5454, !157}
!5497 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 190, type: !5498, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: false)
!5498 = !DISubroutineType(types: !5499)
!5499 = !{null, !5454, !153}
!5500 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 191, type: !5501, isLocal: false, isDefinition: false, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false)
!5501 = !DISubroutineType(types: !5502)
!5502 = !{null, !5454, !149}
!5503 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 194, type: !5504, isLocal: false, isDefinition: false, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false)
!5504 = !DISubroutineType(types: !5505)
!5505 = !{null, !5454, !84}
!5506 = !DISubprogram(name: "ap_fixed", scope: !16, file: !17, line: 196, type: !5507, isLocal: false, isDefinition: false, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{null, !5454, !84, !90}
!5509 = !DISubprogram(name: "operator=", linkageName: "_ZN8ap_fixedILi16ELi16EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !16, file: !17, line: 205, type: !5510, isLocal: false, isDefinition: false, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: false)
!5510 = !DISubroutineType(types: !5511)
!5511 = !{!5512, !5454, !5513}
!5512 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!5513 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5514, size: 64)
!5514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!5515 = !DISubprogram(name: "operator=", linkageName: "_ZNV8ap_fixedILi16ELi16EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !16, file: !17, line: 214, type: !5516, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!5516 = !DISubroutineType(types: !5517)
!5517 = !{null, !5518, !5513}
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5519 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!5520 = !DISubprogram(name: "operator=", linkageName: "_ZN8ap_fixedILi16ELi16EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", scope: !16, file: !17, line: 219, type: !5521, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!5521 = !DISubroutineType(types: !5522)
!5522 = !{!5512, !5454, !5523}
!5523 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5524, size: 64)
!5524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5519)
!5525 = !DISubprogram(name: "operator=", linkageName: "_ZNV8ap_fixedILi16ELi16EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", scope: !16, file: !17, line: 225, type: !5526, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false)
!5526 = !DISubroutineType(types: !5527)
!5527 = !{null, !5518, !5523}
!5528 = !{!478, !4758, !2794, !2795, !2796}
!5529 = !{!5530}
!5530 = !DISubrange(count: 4)
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5532, size: 64)
!5532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 96, elements: !5533)
!5533 = !{!5534}
!5534 = !DISubrange(count: 6)
!5535 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !5536, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !5537, retainedTypes: !5538)
!5536 = !DIFile(filename: "Z:/ECC/Desktop/Winter2023/ELEN226/Assignment3/mmul/solution3/.autopilot/db\5Cmmul.pp.0.cpp", directory: "Z:\5CECC\5CDesktop\5CWinter2023\5CELEN226\5CAssignment3")
!5537 = !{!46, !58}
!5538 = !{!5539, !133}
!5539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5540 = !DILocation(line: 9, column: 9, scope: !6)
