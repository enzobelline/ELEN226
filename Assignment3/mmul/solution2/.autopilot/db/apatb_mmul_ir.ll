; ModuleID = 'Z:/ECC/Desktop/Winter2023/ELEN226/Assignment3/mmul/solution2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 16, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 16, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: argmemonly noinline
define void @apatb_mmul_ir([4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" %a, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4" %b, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="3" %c) local_unnamed_addr #0 {
entry:
  %a_copy = alloca [3 x [4 x i16]], align 512
  %b_copy = alloca [4 x [6 x i16]], align 512
  %c_copy = alloca [3 x [6 x i16]], align 512
  %0 = bitcast [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %a to [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]*
  %1 = bitcast [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %b to [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]*
  %2 = bitcast [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %c to [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]*
  call fastcc void @copy_in([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* nonnull %0, [3 x [4 x i16]]* nonnull align 512 %a_copy, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* nonnull %1, [4 x [6 x i16]]* nonnull align 512 %b_copy, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* nonnull %2, [3 x [6 x i16]]* nonnull align 512 %c_copy)
  %3 = getelementptr [3 x [4 x i16]], [3 x [4 x i16]]* %a_copy, i32 0, i32 0
  %4 = getelementptr [4 x [6 x i16]], [4 x [6 x i16]]* %b_copy, i32 0, i32 0
  %5 = getelementptr [3 x [6 x i16]], [3 x [6 x i16]]* %c_copy, i32 0, i32 0
  call void @apatb_mmul_hw([4 x i16]* %3, [6 x i16]* %4, [6 x i16]* %5)
  call void @copy_back([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, [3 x [4 x i16]]* %a_copy, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %1, [4 x [6 x i16]]* %b_copy, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %2, [3 x [6 x i16]]* %c_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly, [3 x [4 x i16]]* noalias align 512, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly, [4 x [6 x i16]]* noalias align 512, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly, [3 x [6 x i16]]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a3a4struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"([3 x [4 x i16]]* align 512 %1, [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0)
  call fastcc void @"onebyonecpy_hls.p0a4a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.11"([4 x [6 x i16]]* align 512 %3, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %2)
  call fastcc void @"onebyonecpy_hls.p0a3a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"([3 x [6 x i16]]* align 512 %5, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a3a4struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"([3 x [4 x i16]]* noalias align 512, [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [3 x [4 x i16]]* %0, null
  %3 = icmp eq [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %src.addr6.0.0.013 = getelementptr [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]], [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %5 = getelementptr [3 x [4 x i16]], [3 x [4 x i16]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315
  %6 = load i16, i16* %src.addr6.0.0.013, align 2
  store i16 %6, i16* %5, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a4a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"([4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias, [4 x [6 x i16]]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, null
  %3 = icmp eq [4 x [6 x i16]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %5 = getelementptr [4 x [6 x i16]], [4 x [6 x i16]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315
  %dst.addr5.0.0.014 = getelementptr [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]], [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* %dst.addr5.0.0.014, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 6
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
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

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias, [3 x [4 x i16]]* noalias readonly align 512, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias, [4 x [6 x i16]]* noalias readonly align 512, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias, [3 x [6 x i16]]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a3a4struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.18"([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, [3 x [4 x i16]]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a4a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"([4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %2, [4 x [6 x i16]]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a3a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.5"([3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %4, [3 x [6 x i16]]* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a3a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.5"([3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias, [3 x [6 x i16]]* noalias readonly align 512) unnamed_addr #2 {
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

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a4a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.11"([4 x [6 x i16]]* noalias align 512, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4 x [6 x i16]]* %0, null
  %3 = icmp eq [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %src.addr6.0.0.013 = getelementptr [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]], [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %5 = getelementptr [4 x [6 x i16]], [4 x [6 x i16]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315
  %6 = load i16, i16* %src.addr6.0.0.013, align 2
  store i16 %6, i16* %5, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 6
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a3a4struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.18"([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias, [3 x [4 x i16]]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, null
  %3 = icmp eq [3 x [4 x i16]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %5 = getelementptr [3 x [4 x i16]], [3 x [4 x i16]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315
  %dst.addr5.0.0.014 = getelementptr [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]], [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* %dst.addr5.0.0.014, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

declare void @apatb_mmul_hw([4 x i16]*, [6 x i16]*, [6 x i16]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias, [3 x [4 x i16]]* noalias readonly align 512, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias, [4 x [6 x i16]]* noalias readonly align 512, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* noalias, [3 x [6 x i16]]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a3a6struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>.5"([3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %4, [3 x [6 x i16]]* align 512 %5)
  ret void
}

define void @mmul_hw_stub_wrapper([4 x i16]*, [6 x i16]*, [6 x i16]*) #4 {
entry:
  %3 = alloca [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]
  %4 = alloca [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]
  %5 = alloca [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]
  %6 = bitcast [4 x i16]* %0 to [3 x [4 x i16]]*
  %7 = bitcast [6 x i16]* %1 to [4 x [6 x i16]]*
  %8 = bitcast [6 x i16]* %2 to [3 x [6 x i16]]*
  call void @copy_out([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %3, [3 x [4 x i16]]* %6, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %4, [4 x [6 x i16]]* %7, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %5, [3 x [6 x i16]]* %8)
  %9 = bitcast [3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %3 to [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*
  %10 = bitcast [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %4 to [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*
  %11 = bitcast [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %5 to [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*
  call void @mmul_hw_stub([4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %9, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %10, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]* %11)
  call void @copy_in([3 x [4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %3, [3 x [4 x i16]]* %6, [4 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %4, [4 x [6 x i16]]* %7, [3 x [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]]* %5, [3 x [6 x i16]]* %8)
  ret void
}

declare void @mmul_hw_stub([4 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*, [6 x %"struct.ap_fixed<16, 16, AP_TRN, AP_WRAP, 0>"]*)

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
