; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@cosf_solutions = dso_local global float 0.000000e+00, align 4, !dbg !0
@basicmath_bp = internal constant [2 x float] [float 1.000000e+00, float 1.500000e+00], align 4, !dbg !7
@basicmath_dp_l = internal constant [2 x float] [float 0.000000e+00, float 0x3EBA39FB80000000], align 4, !dbg !142
@basicmath_dp_h = internal constant [2 x float] [float 0.000000e+00, float 0x3FE2B80000000000], align 4, !dbg !147
@basicmath_npio2_hw = internal constant [32 x i32] [i32 1070141184, i32 1078529792, i32 1083624192, i32 1086918400, i32 1090212608, i32 1092012800, i32 1093659904, i32 1095307008, i32 1096954112, i32 1098601216, i32 1099577856, i32 1100401408, i32 1101224960, i32 1102048512, i32 1102872064, i32 1103695616, i32 1104519168, i32 1105342720, i32 1106166272, i32 1106989824, i32 1107554816, i32 1107966464, i32 1108378368, i32 1108790016, i32 1109201920, i32 1109613568, i32 1110025472, i32 1110437120, i32 1110849024, i32 1111260672, i32 1111672576, i32 1112084224], align 4, !dbg !149
@.str = private unnamed_addr constant [13 x i8] c"../absvdi2.c\00", align 1
@__func__.__absvdi2 = private unnamed_addr constant [10 x i8] c"__absvdi2\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"../absvsi2.c\00", align 1
@__func__.__absvsi2 = private unnamed_addr constant [10 x i8] c"__absvsi2\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"../addvdi3.c\00", align 1
@__func__.__addvdi3 = private unnamed_addr constant [10 x i8] c"__addvdi3\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"../addvsi3.c\00", align 1
@__func__.__addvsi3 = private unnamed_addr constant [10 x i8] c"__addvsi3\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"../mulvdi3.c\00", align 1
@__func__.__mulvdi3 = private unnamed_addr constant [10 x i8] c"__mulvdi3\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"../mulvsi3.c\00", align 1
@__func__.__mulvsi3 = private unnamed_addr constant [10 x i8] c"__mulvsi3\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"../subvdi3.c\00", align 1
@__func__.__subvdi3 = private unnamed_addr constant [10 x i8] c"__subvdi3\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"../subvsi3.c\00", align 1
@__func__.__subvsi3 = private unnamed_addr constant [10 x i8] c"__subvsi3\00", align 1

@__aeabi_llsl = dso_local alias void (...), bitcast (i64 (i64, i32)* @__ashldi3 to void (...)*)
@__aeabi_lasr = dso_local alias void (...), bitcast (i64 (i64, i32)* @__ashrdi3 to void (...)*)
@__aeabi_idiv = dso_local alias void (...), bitcast (i32 (i32, i32)* @__divsi3 to void (...)*)
@__aeabi_llsr = dso_local alias void (...), bitcast (i64 (i64, i32)* @__lshrdi3 to void (...)*)
@__aeabi_uidiv = dso_local alias void (...), bitcast (i32 (i32, i32)* @__udivsi3 to void (...)*)

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cosf_init() #0 !dbg !278 {
entry:
  store float 0.000000e+00, float* @cosf_solutions, align 4, !dbg !282
  ret void, !dbg !283
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cosf_return() #0 !dbg !284 {
entry:
  %0 = load float, float* @cosf_solutions, align 4, !dbg !287
  %conv = fptosi float %0 to i32, !dbg !287
  call void @llvm.dbg.value(metadata i32 %conv, metadata !288, metadata !DIExpression()), !dbg !289
  %cmp = icmp eq i32 %conv, -4, !dbg !290
  br i1 %cmp, label %if.then, label %if.else, !dbg !292

if.then:                                          ; preds = %entry
  br label %return, !dbg !293

if.else:                                          ; preds = %entry
  br label %return, !dbg !294

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.else ], !dbg !295
  ret i32 %retval.0, !dbg !296
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cosf_main() #0 !dbg !297 {
entry:
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !298, metadata !DIExpression()), !dbg !299
  br label %for.cond, !dbg !300

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi float [ 0.000000e+00, %entry ], [ %add1, %for.inc ], !dbg !302
  call void @llvm.dbg.value(metadata float %i.0, metadata !298, metadata !DIExpression()), !dbg !299
  %cmp = fcmp olt float %i.0, 0x3FC99999A0000000, !dbg !303
  br i1 %cmp, label %for.body, label %for.end, !dbg !305

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc float @basicmath___cosf(float noundef %i.0) #4, !dbg !306
  %0 = load float, float* @cosf_solutions, align 4, !dbg !307
  %add = fadd float %0, %call, !dbg !307
  store float %add, float* @cosf_solutions, align 4, !dbg !307
  br label %for.inc, !dbg !308

for.inc:                                          ; preds = %for.body
  %add1 = fadd float %i.0, 0x3FB99999A0000000, !dbg !309
  call void @llvm.dbg.value(metadata float %add1, metadata !298, metadata !DIExpression()), !dbg !299
  br label %for.cond, !dbg !310, !llvm.loop !311

for.end:                                          ; preds = %for.cond
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !315 {
entry:
  call arm_aapcs_vfpcc void @cosf_init() #4, !dbg !316
  call arm_aapcs_vfpcc void @cosf_main() #4, !dbg !317
  %call = call arm_aapcs_vfpcc i32 @cosf_return() #4, !dbg !318
  ret i32 %call, !dbg !319
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___ieee754_acosf(float noundef %x) #0 !dbg !320 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !323, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata float %x, metadata !325, metadata !DIExpression()), !dbg !333
  %.cast = bitcast float %x to i32, !dbg !334
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !335, metadata !DIExpression()), !dbg !324
  %and = and i32 %.cast, 2147483647, !dbg !336
  call void @llvm.dbg.value(metadata i32 %and, metadata !337, metadata !DIExpression()), !dbg !324
  %cmp = icmp eq i32 %and, 1065353216, !dbg !338
  br i1 %cmp, label %if.then, label %if.else3, !dbg !340

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %.cast, 0, !dbg !341
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !344

if.then2:                                         ; preds = %if.then
  br label %return, !dbg !345

if.else:                                          ; preds = %if.then
  br label %return, !dbg !346

if.else3:                                         ; preds = %entry
  %cmp4 = icmp ugt i32 %and, 1065353216, !dbg !347
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !349

if.then5:                                         ; preds = %if.else3
  %sub = fsub float %x, %x, !dbg !350
  %sub6 = fsub float %x, %x, !dbg !352
  %div = fdiv float %sub, %sub6, !dbg !353
  br label %return, !dbg !354

if.end:                                           ; preds = %if.else3
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp ult i32 %and, 1056964608, !dbg !355
  br i1 %cmp8, label %if.then9, label %if.else27, !dbg !357

if.then9:                                         ; preds = %if.end7
  %cmp10 = icmp ult i32 %and, 587202561, !dbg !358
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !361

if.then11:                                        ; preds = %if.then9
  br label %return, !dbg !362

if.end12:                                         ; preds = %if.then9
  %mul = fmul float %x, %x, !dbg !363
  call void @llvm.dbg.value(metadata float %mul, metadata !364, metadata !DIExpression()), !dbg !324
  %0 = call float @llvm.fmuladd.f32(float %mul, float 0x3F023DE100000000, float 0x3F49EFE080000000), !dbg !365
  %1 = call float @llvm.fmuladd.f32(float %mul, float %0, float 0xBFA48228C0000000), !dbg !366
  %2 = call float @llvm.fmuladd.f32(float %mul, float %1, float 0x3FC9C15500000000), !dbg !367
  %3 = call float @llvm.fmuladd.f32(float %mul, float %2, float 0xBFD4D61200000000), !dbg !368
  %4 = call float @llvm.fmuladd.f32(float %mul, float %3, float 0x3FC5555560000000), !dbg !369
  %mul18 = fmul float %mul, %4, !dbg !370
  call void @llvm.dbg.value(metadata float %mul18, metadata !371, metadata !DIExpression()), !dbg !324
  %5 = call float @llvm.fmuladd.f32(float %mul, float 0x3FB3B8C5C0000000, float 0xBFE6066C20000000), !dbg !372
  %6 = call float @llvm.fmuladd.f32(float %mul, float %5, float 0x40002AE5A0000000), !dbg !373
  %7 = call float @llvm.fmuladd.f32(float %mul, float %6, float 0xC0033A2720000000), !dbg !374
  %8 = call float @llvm.fmuladd.f32(float %mul, float %7, float 1.000000e+00), !dbg !375
  call void @llvm.dbg.value(metadata float %8, metadata !376, metadata !DIExpression()), !dbg !324
  %div23 = fdiv float %mul18, %8, !dbg !377
  call void @llvm.dbg.value(metadata float %div23, metadata !378, metadata !DIExpression()), !dbg !324
  %neg = fneg float %x, !dbg !379
  %9 = call float @llvm.fmuladd.f32(float %neg, float %div23, float 0x3E74442D00000000), !dbg !379
  %10 = fsub float %9, %x, !dbg !380
  %sub26 = fadd float %10, 0x3FF921FB40000000, !dbg !380
  br label %return, !dbg !381

if.else27:                                        ; preds = %if.end7
  %cmp28 = icmp slt i32 %.cast, 0, !dbg !382
  br i1 %cmp28, label %if.then29, label %if.else45, !dbg !384

if.then29:                                        ; preds = %if.else27
  %add = fadd float %x, 1.000000e+00, !dbg !385
  %mul30 = fmul float %add, 5.000000e-01, !dbg !387
  call void @llvm.dbg.value(metadata float %mul30, metadata !364, metadata !DIExpression()), !dbg !324
  %11 = call float @llvm.fmuladd.f32(float %mul30, float 0x3F023DE100000000, float 0x3F49EFE080000000), !dbg !388
  %12 = call float @llvm.fmuladd.f32(float %mul30, float %11, float 0xBFA48228C0000000), !dbg !389
  %13 = call float @llvm.fmuladd.f32(float %mul30, float %12, float 0x3FC9C15500000000), !dbg !390
  %14 = call float @llvm.fmuladd.f32(float %mul30, float %13, float 0xBFD4D61200000000), !dbg !391
  %15 = call float @llvm.fmuladd.f32(float %mul30, float %14, float 0x3FC5555560000000), !dbg !392
  %mul36 = fmul float %mul30, %15, !dbg !393
  call void @llvm.dbg.value(metadata float %mul36, metadata !371, metadata !DIExpression()), !dbg !324
  %16 = call float @llvm.fmuladd.f32(float %mul30, float 0x3FB3B8C5C0000000, float 0xBFE6066C20000000), !dbg !394
  %17 = call float @llvm.fmuladd.f32(float %mul30, float %16, float 0x40002AE5A0000000), !dbg !395
  %18 = call float @llvm.fmuladd.f32(float %mul30, float %17, float 0xC0033A2720000000), !dbg !396
  %19 = call float @llvm.fmuladd.f32(float %mul30, float %18, float 1.000000e+00), !dbg !397
  call void @llvm.dbg.value(metadata float %19, metadata !376, metadata !DIExpression()), !dbg !324
  %call = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %mul30) #4, !dbg !398
  call void @llvm.dbg.value(metadata float %call, metadata !399, metadata !DIExpression()), !dbg !324
  %div41 = fdiv float %mul36, %19, !dbg !400
  call void @llvm.dbg.value(metadata float %div41, metadata !378, metadata !DIExpression()), !dbg !324
  %20 = call float @llvm.fmuladd.f32(float %div41, float %call, float 0xBE74442D00000000), !dbg !401
  call void @llvm.dbg.value(metadata float %20, metadata !402, metadata !DIExpression()), !dbg !324
  %add43 = fadd float %call, %20, !dbg !403
  %21 = call float @llvm.fmuladd.f32(float %add43, float -2.000000e+00, float 0x400921FB40000000), !dbg !404
  br label %return, !dbg !405

if.else45:                                        ; preds = %if.else27
  %sub46 = fsub float 1.000000e+00, %x, !dbg !406
  %mul47 = fmul float %sub46, 5.000000e-01, !dbg !408
  call void @llvm.dbg.value(metadata float %mul47, metadata !364, metadata !DIExpression()), !dbg !324
  %call48 = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %mul47) #4, !dbg !409
  call void @llvm.dbg.value(metadata float %call48, metadata !399, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata float %call48, metadata !410, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata float %call48, metadata !411, metadata !DIExpression()), !dbg !413
  %.cast1 = bitcast float %call48 to i32, !dbg !414
  call void @llvm.dbg.value(metadata i32 %.cast1, metadata !415, metadata !DIExpression()), !dbg !416
  %and52 = and i32 %.cast1, -4096, !dbg !417
  call void @llvm.dbg.value(metadata i32 %and52, metadata !419, metadata !DIExpression()), !dbg !420
  %.cast2 = bitcast i32 %and52 to float, !dbg !417
  call void @llvm.dbg.value(metadata float %.cast2, metadata !410, metadata !DIExpression()), !dbg !324
  %neg56 = fneg float %.cast2, !dbg !421
  %22 = call float @llvm.fmuladd.f32(float %neg56, float %.cast2, float %mul47), !dbg !421
  %add57 = fadd float %call48, %.cast2, !dbg !422
  %div58 = fdiv float %22, %add57, !dbg !423
  call void @llvm.dbg.value(metadata float %div58, metadata !424, metadata !DIExpression()), !dbg !324
  %23 = call float @llvm.fmuladd.f32(float %mul47, float 0x3F023DE100000000, float 0x3F49EFE080000000), !dbg !425
  %24 = call float @llvm.fmuladd.f32(float %mul47, float %23, float 0xBFA48228C0000000), !dbg !426
  %25 = call float @llvm.fmuladd.f32(float %mul47, float %24, float 0x3FC9C15500000000), !dbg !427
  %26 = call float @llvm.fmuladd.f32(float %mul47, float %25, float 0xBFD4D61200000000), !dbg !428
  %27 = call float @llvm.fmuladd.f32(float %mul47, float %26, float 0x3FC5555560000000), !dbg !429
  %mul64 = fmul float %mul47, %27, !dbg !430
  call void @llvm.dbg.value(metadata float %mul64, metadata !371, metadata !DIExpression()), !dbg !324
  %28 = call float @llvm.fmuladd.f32(float %mul47, float 0x3FB3B8C5C0000000, float 0xBFE6066C20000000), !dbg !431
  %29 = call float @llvm.fmuladd.f32(float %mul47, float %28, float 0x40002AE5A0000000), !dbg !432
  %30 = call float @llvm.fmuladd.f32(float %mul47, float %29, float 0xC0033A2720000000), !dbg !433
  %31 = call float @llvm.fmuladd.f32(float %mul47, float %30, float 1.000000e+00), !dbg !434
  call void @llvm.dbg.value(metadata float %31, metadata !376, metadata !DIExpression()), !dbg !324
  %div69 = fdiv float %mul64, %31, !dbg !435
  call void @llvm.dbg.value(metadata float %div69, metadata !378, metadata !DIExpression()), !dbg !324
  %32 = call float @llvm.fmuladd.f32(float %div69, float %call48, float %div58), !dbg !436
  call void @llvm.dbg.value(metadata float %32, metadata !402, metadata !DIExpression()), !dbg !324
  %add71 = fadd float %32, %.cast2, !dbg !437
  %mul72 = fmul float %add71, 2.000000e+00, !dbg !438
  br label %return, !dbg !439

return:                                           ; preds = %if.else45, %if.then29, %if.end12, %if.then11, %if.then5, %if.else, %if.then2
  %retval.0 = phi float [ 0.000000e+00, %if.then2 ], [ 0x400921FB60000000, %if.else ], [ %div, %if.then5 ], [ 0x3FF921FB60000000, %if.then11 ], [ %sub26, %if.end12 ], [ %21, %if.then29 ], [ %mul72, %if.else45 ], !dbg !324
  ret float %retval.0, !dbg !440
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %x) #0 !dbg !441 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !442, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i32 -2147483648, metadata !444, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata float %x, metadata !445, metadata !DIExpression()), !dbg !447
  %.cast = bitcast float %x to i32, !dbg !448
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !449, metadata !DIExpression()), !dbg !443
  %and = and i32 %.cast, 2139095040, !dbg !450
  %cmp = icmp eq i32 %and, 2139095040, !dbg !452
  br i1 %cmp, label %if.then, label %if.end, !dbg !453

if.then:                                          ; preds = %entry
  %0 = call float @llvm.fmuladd.f32(float %x, float %x, float %x), !dbg !454
  br label %return, !dbg !456

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %.cast, 1, !dbg !457
  br i1 %cmp1, label %if.then2, label %if.end11, !dbg !459

if.then2:                                         ; preds = %if.end
  %and3 = and i32 %.cast, 2147483647, !dbg !460
  %cmp4 = icmp eq i32 %and3, 0, !dbg !463
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !464

if.then5:                                         ; preds = %if.then2
  br label %return, !dbg !465

if.else:                                          ; preds = %if.then2
  %cmp6 = icmp slt i32 %.cast, 0, !dbg !466
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !468

if.then7:                                         ; preds = %if.else
  %sub = fsub float %x, %x, !dbg !469
  %sub8 = fsub float %x, %x, !dbg !470
  %div = fdiv float %sub, %sub8, !dbg !471
  br label %return, !dbg !472

if.end9:                                          ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9
  br label %if.end11, !dbg !473

if.end11:                                         ; preds = %if.end10, %if.end
  %shr = ashr i32 %.cast, 23, !dbg !474
  call void @llvm.dbg.value(metadata i32 %shr, metadata !475, metadata !DIExpression()), !dbg !443
  %cmp12 = icmp ult i32 %.cast, 8388608, !dbg !476
  br i1 %cmp12, label %if.then13, label %if.end18, !dbg !478

if.then13:                                        ; preds = %if.end11
  call void @llvm.dbg.value(metadata i32 0, metadata !479, metadata !DIExpression()), !dbg !443
  br label %for.cond, !dbg !480

for.cond:                                         ; preds = %for.inc, %if.then13
  %ix.0 = phi i32 [ %.cast, %if.then13 ], [ %shl, %for.inc ], !dbg !443
  %i.0 = phi i32 [ 0, %if.then13 ], [ %inc, %for.inc ], !dbg !483
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !479, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !449, metadata !DIExpression()), !dbg !443
  %and14 = and i32 %ix.0, 8388608, !dbg !484
  %cmp15 = icmp eq i32 %and14, 0, !dbg !486
  br i1 %cmp15, label %for.body, label %for.end, !dbg !487

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !449, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !443
  br label %for.inc, !dbg !488

for.inc:                                          ; preds = %for.body
  %shl = shl i32 %ix.0, 1, !dbg !489
  call void @llvm.dbg.value(metadata i32 %shl, metadata !449, metadata !DIExpression()), !dbg !443
  %inc = add nuw nsw i32 %i.0, 1, !dbg !490
  call void @llvm.dbg.value(metadata i32 %inc, metadata !479, metadata !DIExpression()), !dbg !443
  br label %for.cond, !dbg !491, !llvm.loop !492

for.end:                                          ; preds = %for.cond
  %sub16 = add nsw i32 %i.0, -1, !dbg !494
  %sub17 = sub nsw i32 %shr, %sub16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %sub17, metadata !475, metadata !DIExpression()), !dbg !443
  br label %if.end18, !dbg !496

if.end18:                                         ; preds = %for.end, %if.end11
  %m.0 = phi i32 [ %sub17, %for.end ], [ %shr, %if.end11 ], !dbg !443
  %ix.1 = phi i32 [ %ix.0, %for.end ], [ %.cast, %if.end11 ], !dbg !448
  call void @llvm.dbg.value(metadata i32 %ix.1, metadata !449, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i32 %m.0, metadata !475, metadata !DIExpression()), !dbg !443
  %sub19 = add nsw i32 %m.0, -127, !dbg !497
  call void @llvm.dbg.value(metadata i32 %sub19, metadata !475, metadata !DIExpression()), !dbg !443
  %and20 = and i32 %ix.1, 8388607, !dbg !498
  %or = or i32 %and20, 8388608, !dbg !499
  call void @llvm.dbg.value(metadata i32 %or, metadata !449, metadata !DIExpression()), !dbg !443
  %and21 = and i32 %sub19, 1, !dbg !500
  %tobool.not = icmp eq i32 %and21, 0, !dbg !500
  br i1 %tobool.not, label %if.end23, label %if.then22, !dbg !502

if.then22:                                        ; preds = %if.end18
  %add = shl nuw nsw i32 %or, 1, !dbg !503
  call void @llvm.dbg.value(metadata i32 %add, metadata !449, metadata !DIExpression()), !dbg !443
  br label %if.end23, !dbg !504

if.end23:                                         ; preds = %if.then22, %if.end18
  %ix.2 = phi i32 [ %add, %if.then22 ], [ %or, %if.end18 ], !dbg !443
  call void @llvm.dbg.value(metadata i32 %ix.2, metadata !449, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i32 %sub19, metadata !475, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shra, DW_OP_stack_value)), !dbg !443
  call void @llvm.dbg.value(metadata i32 %ix.2, metadata !449, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !443
  call void @llvm.dbg.value(metadata i32 0, metadata !505, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i32 16777216, metadata !507, metadata !DIExpression()), !dbg !443
  br label %while.cond, !dbg !508

while.cond:                                       ; preds = %while.body, %if.end23
  %s.0 = phi i32 [ 0, %if.end23 ], [ %add28, %while.body ], !dbg !443
  %ix.3.in = phi i32 [ %ix.2, %if.end23 ], [ %sub29, %while.body ]
  %r.0 = phi i32 [ 16777216, %if.end23 ], [ %shr32, %while.body ], !dbg !443
  call void @llvm.dbg.value(metadata i32 %r.0, metadata !507, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i32 %ix.3.in, metadata !449, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !443
  call void @llvm.dbg.value(metadata i32 %s.0, metadata !505, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i32 undef, metadata !506, metadata !DIExpression()), !dbg !443
  %cmp26.not = icmp eq i32 %r.0, 0, !dbg !509
  br i1 %cmp26.not, label %while.end, label %while.body, !dbg !508

while.body:                                       ; preds = %while.cond
  %ix.3 = shl nsw i32 %ix.3.in, 1, !dbg !443
  call void @llvm.dbg.value(metadata i32 %ix.3, metadata !449, metadata !DIExpression()), !dbg !443
  %add27 = add i32 %s.0, %r.0, !dbg !510
  call void @llvm.dbg.value(metadata i32 %add27, metadata !512, metadata !DIExpression()), !dbg !443
  %add28 = add i32 %add27, %r.0, !dbg !513
  call void @llvm.dbg.value(metadata i32 %add28, metadata !505, metadata !DIExpression()), !dbg !443
  %sub29 = sub nsw i32 %ix.3, %add27, !dbg !514
  call void @llvm.dbg.value(metadata i32 %sub29, metadata !449, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i32 %r.0), metadata !506, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !443
  call void @llvm.dbg.value(metadata i32 %sub29, metadata !449, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !443
  %shr32 = lshr i32 %r.0, 1, !dbg !515
  call void @llvm.dbg.value(metadata i32 %shr32, metadata !507, metadata !DIExpression()), !dbg !443
  br label %while.cond, !dbg !508, !llvm.loop !516

while.end:                                        ; preds = %while.cond
  %cmp33.not = icmp eq i32 %ix.3.in, 0, !dbg !518
  br i1 %cmp33.not, label %if.end45, label %if.then34, !dbg !520

if.then34:                                        ; preds = %while.end
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !521, metadata !DIExpression()), !dbg !443
  br i1 true, label %if.then36, label %if.end44, !dbg !522

if.then36:                                        ; preds = %if.then34
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !521, metadata !DIExpression()), !dbg !443
  br i1 false, label %if.then38, label %if.else40, !dbg !524

if.then38:                                        ; preds = %if.then36
  br label %if.end43, !dbg !527

if.else40:                                        ; preds = %if.then36
  call void @llvm.dbg.value(metadata i32 33554432, metadata !506, metadata !DIExpression()), !dbg !443
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.then38
  call void @llvm.dbg.value(metadata i32 33554432, metadata !506, metadata !DIExpression()), !dbg !443
  br label %if.end44, !dbg !529

if.end44:                                         ; preds = %if.end43, %if.then34
  %q.2 = phi i32 [ 33554432, %if.end43 ], [ 33554431, %if.then34 ], !dbg !443
  call void @llvm.dbg.value(metadata i32 %q.2, metadata !506, metadata !DIExpression()), !dbg !443
  br label %if.end45, !dbg !530

if.end45:                                         ; preds = %if.end44, %while.end
  %q.3 = phi i32 [ %q.2, %if.end44 ], [ 33554431, %while.end ], !dbg !443
  call void @llvm.dbg.value(metadata i32 %q.3, metadata !506, metadata !DIExpression()), !dbg !443
  %shr46 = ashr i32 %q.3, 1, !dbg !531
  %add47 = add nsw i32 %shr46, 1056964608, !dbg !532
  call void @llvm.dbg.value(metadata i32 %add47, metadata !449, metadata !DIExpression()), !dbg !443
  %1 = shl i32 %sub19, 22, !dbg !533
  %shl48 = and i32 %1, -8388608, !dbg !533
  %add49 = add nsw i32 %add47, %shl48, !dbg !534
  call void @llvm.dbg.value(metadata i32 %add49, metadata !449, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i32 %add49, metadata !535, metadata !DIExpression()), !dbg !537
  %.cast1 = bitcast i32 %add49 to float, !dbg !538
  call void @llvm.dbg.value(metadata float %.cast1, metadata !521, metadata !DIExpression()), !dbg !443
  br label %return, !dbg !539

return:                                           ; preds = %if.end45, %if.then7, %if.then5, %if.then
  %retval.0 = phi float [ %0, %if.then ], [ %x, %if.then5 ], [ %div, %if.then7 ], [ %.cast1, %if.end45 ], !dbg !443
  ret float %retval.0, !dbg !540
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___ieee754_powf(float noundef %x, float noundef %y) #0 !dbg !541 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !544, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata float %y, metadata !546, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata float %x, metadata !547, metadata !DIExpression()), !dbg !549
  %.cast = bitcast float %x to i32, !dbg !550
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !551, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata float %y, metadata !552, metadata !DIExpression()), !dbg !554
  %.cast1 = bitcast float %y to i32, !dbg !555
  call void @llvm.dbg.value(metadata i32 %.cast1, metadata !556, metadata !DIExpression()), !dbg !545
  %and = and i32 %.cast, 2147483647, !dbg !557
  call void @llvm.dbg.value(metadata i32 %and, metadata !558, metadata !DIExpression()), !dbg !545
  %and4 = and i32 %.cast1, 2147483647, !dbg !559
  call void @llvm.dbg.value(metadata i32 %and4, metadata !560, metadata !DIExpression()), !dbg !545
  %cmp = icmp eq i32 %and4, 0, !dbg !561
  br i1 %cmp, label %if.then, label %if.end, !dbg !563

if.then:                                          ; preds = %entry
  br label %return, !dbg !564

if.end:                                           ; preds = %entry
  %cmp5 = fcmp oeq float %x, 1.000000e+00, !dbg !565
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !567

if.then6:                                         ; preds = %if.end
  br label %return, !dbg !568

if.end7:                                          ; preds = %if.end
  %cmp8 = fcmp oeq float %x, -1.000000e+00, !dbg !569
  br i1 %cmp8, label %land.lhs.true, label %if.end10, !dbg !571

land.lhs.true:                                    ; preds = %if.end7
  %call = call arm_aapcs_vfpcc i32 @basicmath___isinff(float noundef %y) #4, !dbg !572
  %tobool.not = icmp eq i32 %call, 0, !dbg !572
  br i1 %tobool.not, label %if.end10, label %if.then9, !dbg !573

if.then9:                                         ; preds = %land.lhs.true
  br label %return, !dbg !574

if.end10:                                         ; preds = %land.lhs.true, %if.end7
  %cmp11 = icmp ugt i32 %and, 2139095040, !dbg !575
  br i1 %cmp11, label %if.then13, label %lor.lhs.false, !dbg !577

lor.lhs.false:                                    ; preds = %if.end10
  %cmp12 = icmp ugt i32 %and4, 2139095040, !dbg !578
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !579

if.then13:                                        ; preds = %lor.lhs.false, %if.end10
  %add = fadd float %x, %y, !dbg !580
  br label %return, !dbg !581

if.end14:                                         ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i32 0, metadata !582, metadata !DIExpression()), !dbg !545
  %cmp15 = icmp slt i32 %.cast, 0, !dbg !583
  br i1 %cmp15, label %if.then16, label %if.end31, !dbg !585

if.then16:                                        ; preds = %if.end14
  %cmp17 = icmp ugt i32 %and4, 1266679807, !dbg !586
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !589

if.then18:                                        ; preds = %if.then16
  call void @llvm.dbg.value(metadata i32 2, metadata !582, metadata !DIExpression()), !dbg !545
  br label %if.end30, !dbg !590

if.else:                                          ; preds = %if.then16
  %cmp19 = icmp ugt i32 %and4, 1065353215, !dbg !591
  br i1 %cmp19, label %if.then20, label %if.end29, !dbg !593

if.then20:                                        ; preds = %if.else
  %0 = lshr i32 %and4, 23, !dbg !594
  call void @llvm.dbg.value(metadata i32 %0, metadata !596, metadata !DIExpression(DW_OP_constu, 127, DW_OP_minus, DW_OP_stack_value)), !dbg !545
  %sub21 = sub nsw i32 150, %0, !dbg !597
  %shr22 = lshr i32 %and4, %sub21, !dbg !598
  call void @llvm.dbg.value(metadata i32 %shr22, metadata !599, metadata !DIExpression()), !dbg !545
  %sub23 = sub nsw i32 150, %0, !dbg !600
  %shl = shl i32 %shr22, %sub23, !dbg !602
  %cmp24 = icmp eq i32 %shl, %and4, !dbg !603
  br i1 %cmp24, label %if.then25, label %if.end28, !dbg !604

if.then25:                                        ; preds = %if.then20
  %and26 = and i32 %shr22, 1, !dbg !605
  %sub27 = sub nuw nsw i32 2, %and26, !dbg !606
  call void @llvm.dbg.value(metadata i32 %sub27, metadata !582, metadata !DIExpression()), !dbg !545
  br label %if.end28, !dbg !607

if.end28:                                         ; preds = %if.then25, %if.then20
  %yisint.0 = phi i32 [ %sub27, %if.then25 ], [ 0, %if.then20 ], !dbg !545
  call void @llvm.dbg.value(metadata i32 %yisint.0, metadata !582, metadata !DIExpression()), !dbg !545
  br label %if.end29, !dbg !608

if.end29:                                         ; preds = %if.end28, %if.else
  %yisint.1 = phi i32 [ %yisint.0, %if.end28 ], [ 0, %if.else ], !dbg !545
  call void @llvm.dbg.value(metadata i32 %yisint.1, metadata !582, metadata !DIExpression()), !dbg !545
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then18
  %yisint.2 = phi i32 [ 2, %if.then18 ], [ %yisint.1, %if.end29 ], !dbg !609
  call void @llvm.dbg.value(metadata i32 %yisint.2, metadata !582, metadata !DIExpression()), !dbg !545
  br label %if.end31, !dbg !610

if.end31:                                         ; preds = %if.end30, %if.end14
  %yisint.3 = phi i32 [ %yisint.2, %if.end30 ], [ 0, %if.end14 ], !dbg !545
  call void @llvm.dbg.value(metadata i32 %yisint.3, metadata !582, metadata !DIExpression()), !dbg !545
  %cmp32 = icmp eq i32 %and4, 2139095040, !dbg !611
  br i1 %cmp32, label %if.then33, label %if.end47, !dbg !613

if.then33:                                        ; preds = %if.end31
  %cmp34 = icmp eq i32 %and, 1065353216, !dbg !614
  br i1 %cmp34, label %if.then35, label %if.else37, !dbg !617

if.then35:                                        ; preds = %if.then33
  %sub36 = fsub float %y, %y, !dbg !618
  br label %return, !dbg !619

if.else37:                                        ; preds = %if.then33
  %cmp38 = icmp ugt i32 %and, 1065353216, !dbg !620
  br i1 %cmp38, label %if.then39, label %if.else41, !dbg !622

if.then39:                                        ; preds = %if.else37
  %cmp40 = icmp sgt i32 %.cast1, -1, !dbg !623
  br i1 %cmp40, label %cond.true, label %cond.false, !dbg !624

cond.true:                                        ; preds = %if.then39
  br label %cond.end, !dbg !624

cond.false:                                       ; preds = %if.then39
  br label %cond.end, !dbg !624

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %y, %cond.true ], [ 0.000000e+00, %cond.false ], !dbg !624
  br label %return, !dbg !625

if.else41:                                        ; preds = %if.else37
  %cmp42 = icmp slt i32 %.cast1, 0, !dbg !626
  br i1 %cmp42, label %cond.true43, label %cond.false44, !dbg !627

cond.true43:                                      ; preds = %if.else41
  %fneg = fneg float %y, !dbg !628
  br label %cond.end45, !dbg !627

cond.false44:                                     ; preds = %if.else41
  br label %cond.end45, !dbg !627

cond.end45:                                       ; preds = %cond.false44, %cond.true43
  %cond46 = phi float [ %fneg, %cond.true43 ], [ 0.000000e+00, %cond.false44 ], !dbg !627
  br label %return, !dbg !629

if.end47:                                         ; preds = %if.end31
  %cmp48 = icmp eq i32 %and4, 1065353216, !dbg !630
  br i1 %cmp48, label %if.then49, label %if.end53, !dbg !632

if.then49:                                        ; preds = %if.end47
  %cmp50 = icmp slt i32 %.cast1, 0, !dbg !633
  br i1 %cmp50, label %if.then51, label %if.else52, !dbg !636

if.then51:                                        ; preds = %if.then49
  %div = fdiv float 1.000000e+00, %x, !dbg !637
  br label %return, !dbg !638

if.else52:                                        ; preds = %if.then49
  br label %return, !dbg !639

if.end53:                                         ; preds = %if.end47
  %cmp54 = icmp eq i32 %.cast1, 1073741824, !dbg !640
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !642

if.then55:                                        ; preds = %if.end53
  %mul = fmul float %x, %x, !dbg !643
  br label %return, !dbg !644

if.end56:                                         ; preds = %if.end53
  %cmp57 = icmp eq i32 %.cast1, 1056964608, !dbg !645
  br i1 %cmp57, label %if.then58, label %if.end63, !dbg !647

if.then58:                                        ; preds = %if.end56
  %cmp59 = icmp sgt i32 %.cast, -1, !dbg !648
  br i1 %cmp59, label %if.then60, label %if.end62, !dbg !651

if.then60:                                        ; preds = %if.then58
  %call61 = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %x) #4, !dbg !652
  br label %return, !dbg !653

if.end62:                                         ; preds = %if.then58
  br label %if.end63, !dbg !654

if.end63:                                         ; preds = %if.end62, %if.end56
  %call64 = call arm_aapcs_vfpcc float @basicmath___fabsf(float noundef %x) #4, !dbg !655
  call void @llvm.dbg.value(metadata float %call64, metadata !656, metadata !DIExpression()), !dbg !545
  %cmp65 = icmp eq i32 %and, 2139095040, !dbg !657
  br i1 %cmp65, label %if.then70, label %lor.lhs.false66, !dbg !659

lor.lhs.false66:                                  ; preds = %if.end63
  %cmp67 = icmp eq i32 %and, 0, !dbg !660
  br i1 %cmp67, label %if.then70, label %lor.lhs.false68, !dbg !661

lor.lhs.false68:                                  ; preds = %lor.lhs.false66
  %cmp69 = icmp eq i32 %and, 1065353216, !dbg !662
  br i1 %cmp69, label %if.then70, label %if.end90, !dbg !663

if.then70:                                        ; preds = %lor.lhs.false68, %lor.lhs.false66, %if.end63
  call void @llvm.dbg.value(metadata float %call64, metadata !664, metadata !DIExpression()), !dbg !545
  %cmp71 = icmp slt i32 %.cast1, 0, !dbg !665
  br i1 %cmp71, label %if.then72, label %if.end74, !dbg !668

if.then72:                                        ; preds = %if.then70
  %div73 = fdiv float 1.000000e+00, %call64, !dbg !669
  call void @llvm.dbg.value(metadata float %div73, metadata !664, metadata !DIExpression()), !dbg !545
  br label %if.end74, !dbg !670

if.end74:                                         ; preds = %if.then72, %if.then70
  %z.0 = phi float [ %div73, %if.then72 ], [ %call64, %if.then70 ], !dbg !671
  call void @llvm.dbg.value(metadata float %z.0, metadata !664, metadata !DIExpression()), !dbg !545
  %cmp75 = icmp slt i32 %.cast, 0, !dbg !672
  br i1 %cmp75, label %if.then76, label %if.end89, !dbg !674

if.then76:                                        ; preds = %if.end74
  %sub77 = add nsw i32 %and, -1065353216, !dbg !675
  %or = or i32 %sub77, %yisint.3, !dbg !678
  %cmp78 = icmp eq i32 %or, 0, !dbg !679
  br i1 %cmp78, label %if.then79, label %if.else83, !dbg !680

if.then79:                                        ; preds = %if.then76
  %sub80 = fsub float %z.0, %z.0, !dbg !681
  %sub81 = fsub float %z.0, %z.0, !dbg !683
  %div82 = fdiv float %sub80, %sub81, !dbg !684
  call void @llvm.dbg.value(metadata float %div82, metadata !664, metadata !DIExpression()), !dbg !545
  br label %if.end88, !dbg !685

if.else83:                                        ; preds = %if.then76
  %cmp84 = icmp eq i32 %yisint.3, 1, !dbg !686
  br i1 %cmp84, label %if.then85, label %if.end87, !dbg !688

if.then85:                                        ; preds = %if.else83
  %fneg86 = fneg float %z.0, !dbg !689
  call void @llvm.dbg.value(metadata float %fneg86, metadata !664, metadata !DIExpression()), !dbg !545
  br label %if.end87, !dbg !690

if.end87:                                         ; preds = %if.then85, %if.else83
  %z.1 = phi float [ %fneg86, %if.then85 ], [ %z.0, %if.else83 ], !dbg !671
  call void @llvm.dbg.value(metadata float %z.1, metadata !664, metadata !DIExpression()), !dbg !545
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then79
  %z.2 = phi float [ %div82, %if.then79 ], [ %z.1, %if.end87 ], !dbg !691
  call void @llvm.dbg.value(metadata float %z.2, metadata !664, metadata !DIExpression()), !dbg !545
  br label %if.end89, !dbg !692

if.end89:                                         ; preds = %if.end88, %if.end74
  %z.3 = phi float [ %z.2, %if.end88 ], [ %z.0, %if.end74 ], !dbg !671
  call void @llvm.dbg.value(metadata float %z.3, metadata !664, metadata !DIExpression()), !dbg !545
  br label %return, !dbg !693

if.end90:                                         ; preds = %lor.lhs.false68
  %shr91 = lshr i32 %.cast, 31, !dbg !694
  %sub92 = add nsw i32 %shr91, -1, !dbg !696
  %or93 = or i32 %sub92, %yisint.3, !dbg !697
  %cmp94 = icmp eq i32 %or93, 0, !dbg !698
  br i1 %cmp94, label %if.then95, label %if.end99, !dbg !699

if.then95:                                        ; preds = %if.end90
  %sub96 = fsub float %x, %x, !dbg !700
  %sub97 = fsub float %x, %x, !dbg !701
  %div98 = fdiv float %sub96, %sub97, !dbg !702
  br label %return, !dbg !703

if.end99:                                         ; preds = %if.end90
  %cmp100 = icmp ugt i32 %and4, 1291845632, !dbg !704
  br i1 %cmp100, label %if.then101, label %if.else131, !dbg !706

if.then101:                                       ; preds = %if.end99
  %cmp102 = icmp ult i32 %and, 1065353208, !dbg !707
  br i1 %cmp102, label %if.then103, label %if.end106, !dbg !710

if.then103:                                       ; preds = %if.then101
  %cmp104 = icmp slt i32 %.cast1, 0, !dbg !711
  %cond105 = select i1 %cmp104, float 0x7FF0000000000000, float 0.000000e+00, !dbg !712
  br label %return, !dbg !713

if.end106:                                        ; preds = %if.then101
  %cmp107 = icmp ugt i32 %and, 1065353223, !dbg !714
  br i1 %cmp107, label %if.then108, label %if.end111, !dbg !716

if.then108:                                       ; preds = %if.end106
  %cmp109 = icmp sgt i32 %.cast1, 0, !dbg !717
  %cond110 = select i1 %cmp109, float 0x7FF0000000000000, float 0.000000e+00, !dbg !718
  br label %return, !dbg !719

if.end111:                                        ; preds = %if.end106
  %sub112 = fadd float %x, -1.000000e+00, !dbg !720
  call void @llvm.dbg.value(metadata float %sub112, metadata !721, metadata !DIExpression()), !dbg !545
  %mul113 = fmul float %sub112, %sub112, !dbg !722
  %neg = fneg float %sub112, !dbg !723
  %1 = call float @llvm.fmuladd.f32(float %neg, float 2.500000e-01, float 0x3FD5555560000000), !dbg !723
  %neg116 = fneg float %sub112, !dbg !724
  %2 = call float @llvm.fmuladd.f32(float %neg116, float %1, float 5.000000e-01), !dbg !724
  %mul117 = fmul float %mul113, %2, !dbg !725
  call void @llvm.dbg.value(metadata float %mul117, metadata !726, metadata !DIExpression()), !dbg !545
  %mul118 = fmul float %sub112, 0x3FF7154000000000, !dbg !727
  call void @llvm.dbg.value(metadata float %mul118, metadata !728, metadata !DIExpression()), !dbg !545
  %neg121 = fmul float %mul117, 0xBFF7154760000000, !dbg !729
  %3 = call float @llvm.fmuladd.f32(float %sub112, float 0x3EDD94AE00000000, float %neg121), !dbg !729
  call void @llvm.dbg.value(metadata float %3, metadata !730, metadata !DIExpression()), !dbg !545
  %add122 = fadd float %mul118, %3, !dbg !731
  call void @llvm.dbg.value(metadata float %add122, metadata !732, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata float %add122, metadata !733, metadata !DIExpression()), !dbg !735
  %.cast21 = bitcast float %add122 to i32, !dbg !736
  call void @llvm.dbg.value(metadata i32 %.cast21, metadata !737, metadata !DIExpression()), !dbg !545
  %and126 = and i32 %.cast21, -4096, !dbg !738
  call void @llvm.dbg.value(metadata i32 %and126, metadata !740, metadata !DIExpression()), !dbg !741
  %.cast22 = bitcast i32 %and126 to float, !dbg !738
  call void @llvm.dbg.value(metadata float %.cast22, metadata !732, metadata !DIExpression()), !dbg !545
  %sub129 = fsub float %.cast22, %mul118, !dbg !742
  %sub130 = fsub float %3, %sub129, !dbg !743
  call void @llvm.dbg.value(metadata float %sub130, metadata !744, metadata !DIExpression()), !dbg !545
  br label %if.end243, !dbg !745

if.else131:                                       ; preds = %if.end99
  call void @llvm.dbg.value(metadata i32 0, metadata !746, metadata !DIExpression()), !dbg !545
  %cmp132 = icmp ult i32 %and, 8388608, !dbg !747
  br i1 %cmp132, label %if.then133, label %if.end139, !dbg !750

if.then133:                                       ; preds = %if.else131
  %mul134 = fmul float %call64, 0x4170000000000000, !dbg !751
  call void @llvm.dbg.value(metadata float %mul134, metadata !656, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 -24, metadata !746, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata float %mul134, metadata !753, metadata !DIExpression()), !dbg !755
  %.cast20 = bitcast float %mul134 to i32, !dbg !756
  call void @llvm.dbg.value(metadata i32 %.cast20, metadata !558, metadata !DIExpression()), !dbg !545
  br label %if.end139, !dbg !757

if.end139:                                        ; preds = %if.then133, %if.else131
  %n.0 = phi i32 [ -24, %if.then133 ], [ 0, %if.else131 ], !dbg !758
  %ix.0 = phi i32 [ %.cast20, %if.then133 ], [ %and, %if.else131 ], !dbg !545
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !558, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !746, metadata !DIExpression()), !dbg !545
  %shr140 = ashr i32 %ix.0, 23, !dbg !759
  %sub141 = add nsw i32 %shr140, -127, !dbg !760
  %add142 = add nsw i32 %n.0, %sub141, !dbg !761
  call void @llvm.dbg.value(metadata i32 %add142, metadata !746, metadata !DIExpression()), !dbg !545
  %and143 = and i32 %ix.0, 8388607, !dbg !762
  call void @llvm.dbg.value(metadata i32 %and143, metadata !599, metadata !DIExpression()), !dbg !545
  %or144 = or i32 %and143, 1065353216, !dbg !763
  call void @llvm.dbg.value(metadata i32 %or144, metadata !558, metadata !DIExpression()), !dbg !545
  %cmp145 = icmp ult i32 %and143, 1885298, !dbg !764
  br i1 %cmp145, label %if.then146, label %if.else147, !dbg !766

if.then146:                                       ; preds = %if.end139
  call void @llvm.dbg.value(metadata i32 0, metadata !596, metadata !DIExpression()), !dbg !545
  br label %if.end154, !dbg !767

if.else147:                                       ; preds = %if.end139
  %cmp148 = icmp ult i32 %and143, 6140887, !dbg !768
  br i1 %cmp148, label %if.then149, label %if.else150, !dbg !770

if.then149:                                       ; preds = %if.else147
  call void @llvm.dbg.value(metadata i32 1, metadata !596, metadata !DIExpression()), !dbg !545
  br label %if.end153, !dbg !771

if.else150:                                       ; preds = %if.else147
  call void @llvm.dbg.value(metadata i32 0, metadata !596, metadata !DIExpression()), !dbg !545
  %add151 = add nsw i32 %add142, 1, !dbg !772
  call void @llvm.dbg.value(metadata i32 %add151, metadata !746, metadata !DIExpression()), !dbg !545
  %sub152 = or i32 %and143, 1056964608, !dbg !774
  call void @llvm.dbg.value(metadata i32 %sub152, metadata !558, metadata !DIExpression()), !dbg !545
  br label %if.end153

if.end153:                                        ; preds = %if.else150, %if.then149
  %k.0 = phi i32 [ 1, %if.then149 ], [ 0, %if.else150 ], !dbg !775
  %n.1 = phi i32 [ %add142, %if.then149 ], [ %add151, %if.else150 ], !dbg !758
  %ix.1 = phi i32 [ %or144, %if.then149 ], [ %sub152, %if.else150 ], !dbg !758
  call void @llvm.dbg.value(metadata i32 %ix.1, metadata !558, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 %n.1, metadata !746, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !596, metadata !DIExpression()), !dbg !545
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.then146
  %k.1 = phi i32 [ 0, %if.then146 ], [ %k.0, %if.end153 ], !dbg !776
  %n.2 = phi i32 [ %add142, %if.then146 ], [ %n.1, %if.end153 ], !dbg !761
  %ix.2 = phi i32 [ %or144, %if.then146 ], [ %ix.1, %if.end153 ], !dbg !777
  call void @llvm.dbg.value(metadata i32 %ix.2, metadata !558, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 %n.2, metadata !746, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 %k.1, metadata !596, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 %ix.2, metadata !778, metadata !DIExpression()), !dbg !780
  %.cast2 = bitcast i32 %ix.2 to float, !dbg !781
  call void @llvm.dbg.value(metadata float %.cast2, metadata !656, metadata !DIExpression()), !dbg !545
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* @basicmath_bp, i32 0, i32 %k.1, !dbg !782
  %4 = load float, float* %arrayidx, align 4, !dbg !782
  %sub158 = fsub float %.cast2, %4, !dbg !783
  call void @llvm.dbg.value(metadata float %sub158, metadata !728, metadata !DIExpression()), !dbg !545
  %add160 = fadd float %4, %.cast2, !dbg !784
  %div161 = fdiv float 1.000000e+00, %add160, !dbg !785
  call void @llvm.dbg.value(metadata float %div161, metadata !730, metadata !DIExpression()), !dbg !545
  %mul162 = fmul float %sub158, %div161, !dbg !786
  call void @llvm.dbg.value(metadata float %mul162, metadata !787, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata float %mul162, metadata !788, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata float %mul162, metadata !789, metadata !DIExpression()), !dbg !791
  %.cast3 = bitcast float %mul162 to i32, !dbg !792
  call void @llvm.dbg.value(metadata i32 %.cast3, metadata !737, metadata !DIExpression()), !dbg !545
  %and167 = and i32 %.cast3, -4096, !dbg !793
  call void @llvm.dbg.value(metadata i32 %and167, metadata !795, metadata !DIExpression()), !dbg !796
  %.cast4 = bitcast i32 %and167 to float, !dbg !793
  call void @llvm.dbg.value(metadata float %.cast4, metadata !788, metadata !DIExpression()), !dbg !758
  %shr171 = ashr i32 %ix.2, 1, !dbg !797
  %or172 = or i32 %shr171, 536870912, !dbg !797
  %add173 = add nsw i32 %or172, 262144, !dbg !797
  %shl174 = shl nsw i32 %k.1, 21, !dbg !797
  %add175 = add nsw i32 %add173, %shl174, !dbg !797
  call void @llvm.dbg.value(metadata i32 %add175, metadata !799, metadata !DIExpression()), !dbg !800
  %.cast5 = bitcast i32 %add175 to float, !dbg !797
  call void @llvm.dbg.value(metadata float %.cast5, metadata !801, metadata !DIExpression()), !dbg !758
  %arrayidx178 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_bp, i32 0, i32 %k.1, !dbg !802
  %5 = load float, float* %arrayidx178, align 4, !dbg !802
  %sub179 = fsub float %.cast5, %5, !dbg !803
  %sub180 = fsub float %.cast2, %sub179, !dbg !804
  call void @llvm.dbg.value(metadata float %sub180, metadata !805, metadata !DIExpression()), !dbg !758
  %neg182 = fneg float %.cast4, !dbg !806
  %6 = call float @llvm.fmuladd.f32(float %neg182, float %.cast5, float %sub158), !dbg !806
  %neg184 = fneg float %.cast4, !dbg !807
  %7 = call float @llvm.fmuladd.f32(float %neg184, float %sub180, float %6), !dbg !807
  %mul185 = fmul float %div161, %7, !dbg !808
  call void @llvm.dbg.value(metadata float %mul185, metadata !809, metadata !DIExpression()), !dbg !758
  %mul186 = fmul float %mul162, %mul162, !dbg !810
  call void @llvm.dbg.value(metadata float %mul186, metadata !811, metadata !DIExpression()), !dbg !758
  %mul187 = fmul float %mul186, %mul186, !dbg !812
  %8 = call float @llvm.fmuladd.f32(float %mul186, float 0x3FCA7E2840000000, float 0x3FCD864AA0000000), !dbg !813
  %9 = call float @llvm.fmuladd.f32(float %mul186, float %8, float 0x3FD17460A0000000), !dbg !814
  %10 = call float @llvm.fmuladd.f32(float %mul186, float %9, float 0x3FD5555560000000), !dbg !815
  %11 = call float @llvm.fmuladd.f32(float %mul186, float %10, float 0x3FDB6DB6E0000000), !dbg !816
  %12 = call float @llvm.fmuladd.f32(float %mul186, float %11, float 0x3FE3333340000000), !dbg !817
  %mul193 = fmul float %mul187, %12, !dbg !818
  call void @llvm.dbg.value(metadata float %mul193, metadata !819, metadata !DIExpression()), !dbg !545
  %add194 = fadd float %mul162, %.cast4, !dbg !820
  %13 = call float @llvm.fmuladd.f32(float %mul185, float %add194, float %mul193), !dbg !821
  call void @llvm.dbg.value(metadata float %13, metadata !819, metadata !DIExpression()), !dbg !545
  %mul196 = fmul float %.cast4, %.cast4, !dbg !822
  call void @llvm.dbg.value(metadata float %mul196, metadata !811, metadata !DIExpression()), !dbg !758
  %add197 = fadd float %mul196, 3.000000e+00, !dbg !823
  %add198 = fadd float %add197, %13, !dbg !824
  call void @llvm.dbg.value(metadata float %add198, metadata !801, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata float %add198, metadata !825, metadata !DIExpression()), !dbg !827
  %.cast6 = bitcast float %add198 to i32, !dbg !828
  call void @llvm.dbg.value(metadata i32 %.cast6, metadata !737, metadata !DIExpression()), !dbg !545
  %and203 = and i32 %.cast6, -4096, !dbg !829
  call void @llvm.dbg.value(metadata i32 %and203, metadata !831, metadata !DIExpression()), !dbg !832
  %.cast7 = bitcast i32 %and203 to float, !dbg !829
  call void @llvm.dbg.value(metadata float %.cast7, metadata !801, metadata !DIExpression()), !dbg !758
  %sub206 = fadd float %.cast7, -3.000000e+00, !dbg !833
  %sub207 = fsub float %sub206, %mul196, !dbg !834
  %sub208 = fsub float %13, %sub207, !dbg !835
  call void @llvm.dbg.value(metadata float %sub208, metadata !805, metadata !DIExpression()), !dbg !758
  %mul209 = fmul float %.cast4, %.cast7, !dbg !836
  call void @llvm.dbg.value(metadata float %mul209, metadata !728, metadata !DIExpression()), !dbg !545
  %mul211 = fmul float %sub208, %mul162, !dbg !837
  %14 = call float @llvm.fmuladd.f32(float %mul185, float %.cast7, float %mul211), !dbg !838
  call void @llvm.dbg.value(metadata float %14, metadata !730, metadata !DIExpression()), !dbg !545
  %add212 = fadd float %mul209, %14, !dbg !839
  call void @llvm.dbg.value(metadata float %add212, metadata !840, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata float %add212, metadata !841, metadata !DIExpression()), !dbg !843
  %.cast8 = bitcast float %add212 to i32, !dbg !844
  call void @llvm.dbg.value(metadata i32 %.cast8, metadata !737, metadata !DIExpression()), !dbg !545
  %and217 = and i32 %.cast8, -4096, !dbg !845
  call void @llvm.dbg.value(metadata i32 %and217, metadata !847, metadata !DIExpression()), !dbg !848
  %.cast9 = bitcast i32 %and217 to float, !dbg !845
  call void @llvm.dbg.value(metadata float %.cast9, metadata !840, metadata !DIExpression()), !dbg !545
  %sub220 = fsub float %.cast9, %mul209, !dbg !849
  %sub221 = fsub float %14, %sub220, !dbg !850
  call void @llvm.dbg.value(metadata float %sub221, metadata !851, metadata !DIExpression()), !dbg !545
  %mul222 = fmul float %.cast9, 0x3FEEC70000000000, !dbg !852
  call void @llvm.dbg.value(metadata float %mul222, metadata !853, metadata !DIExpression()), !dbg !545
  %mul224 = fmul float %sub221, 0x3FEEC709E0000000, !dbg !854
  %15 = call float @llvm.fmuladd.f32(float %.cast9, float 0x3ED3B87400000000, float %mul224), !dbg !855
  %arrayidx225 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_dp_l, i32 0, i32 %k.1, !dbg !856
  %16 = load float, float* %arrayidx225, align 4, !dbg !856
  %add226 = fadd float %15, %16, !dbg !857
  call void @llvm.dbg.value(metadata float %add226, metadata !858, metadata !DIExpression()), !dbg !545
  %conv = sitofp i32 %n.2 to float, !dbg !859
  call void @llvm.dbg.value(metadata float %conv, metadata !721, metadata !DIExpression()), !dbg !545
  %add227 = fadd float %mul222, %add226, !dbg !860
  %arrayidx228 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_dp_h, i32 0, i32 %k.1, !dbg !861
  %17 = load float, float* %arrayidx228, align 4, !dbg !861
  %add229 = fadd float %add227, %17, !dbg !862
  %add230 = fadd float %add229, %conv, !dbg !863
  call void @llvm.dbg.value(metadata float %add230, metadata !732, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata float %add230, metadata !864, metadata !DIExpression()), !dbg !866
  %.cast10 = bitcast float %add230 to i32, !dbg !867
  call void @llvm.dbg.value(metadata i32 %.cast10, metadata !737, metadata !DIExpression()), !dbg !545
  %and235 = and i32 %.cast10, -4096, !dbg !868
  call void @llvm.dbg.value(metadata i32 %and235, metadata !870, metadata !DIExpression()), !dbg !871
  %.cast11 = bitcast i32 %and235 to float, !dbg !868
  call void @llvm.dbg.value(metadata float %.cast11, metadata !732, metadata !DIExpression()), !dbg !545
  %sub238 = fsub float %.cast11, %conv, !dbg !872
  %arrayidx239 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_dp_h, i32 0, i32 %k.1, !dbg !873
  %18 = load float, float* %arrayidx239, align 4, !dbg !873
  %sub240 = fsub float %sub238, %18, !dbg !874
  %sub241 = fsub float %sub240, %mul222, !dbg !875
  %sub242 = fsub float %add226, %sub241, !dbg !876
  call void @llvm.dbg.value(metadata float %sub242, metadata !744, metadata !DIExpression()), !dbg !545
  br label %if.end243

if.end243:                                        ; preds = %if.end154, %if.end111
  %t2.0 = phi float [ %sub130, %if.end111 ], [ %sub242, %if.end154 ], !dbg !877
  %t1.0 = phi float [ %.cast22, %if.end111 ], [ %.cast11, %if.end154 ], !dbg !877
  call void @llvm.dbg.value(metadata float %t1.0, metadata !732, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata float %t2.0, metadata !744, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !787, metadata !DIExpression()), !dbg !545
  %shr244 = lshr i32 %.cast, 31, !dbg !878
  %sub245 = add nsw i32 %shr244, -1, !dbg !880
  %sub246 = add nsw i32 %yisint.3, -1, !dbg !881
  %or247 = or i32 %sub245, %sub246, !dbg !882
  %cmp248 = icmp eq i32 %or247, 0, !dbg !883
  br i1 %cmp248, label %if.then250, label %if.end251, !dbg !884

if.then250:                                       ; preds = %if.end243
  call void @llvm.dbg.value(metadata float -1.000000e+00, metadata !787, metadata !DIExpression()), !dbg !545
  br label %if.end251, !dbg !885

if.end251:                                        ; preds = %if.then250, %if.end243
  %s.0 = phi float [ -1.000000e+00, %if.then250 ], [ 1.000000e+00, %if.end243 ], !dbg !545
  call void @llvm.dbg.value(metadata float %s.0, metadata !787, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata float %y, metadata !886, metadata !DIExpression()), !dbg !888
  %.cast12 = bitcast float %y to i32, !dbg !889
  call void @llvm.dbg.value(metadata i32 %.cast12, metadata !737, metadata !DIExpression()), !dbg !545
  %and256 = and i32 %.cast12, -4096, !dbg !890
  call void @llvm.dbg.value(metadata i32 %and256, metadata !892, metadata !DIExpression()), !dbg !893
  %.cast13 = bitcast i32 %and256 to float, !dbg !890
  call void @llvm.dbg.value(metadata float %.cast13, metadata !894, metadata !DIExpression()), !dbg !545
  %sub259 = fsub float %y, %.cast13, !dbg !895
  %mul261 = fmul float %t2.0, %y, !dbg !896
  %19 = call float @llvm.fmuladd.f32(float %sub259, float %t1.0, float %mul261), !dbg !897
  call void @llvm.dbg.value(metadata float %19, metadata !851, metadata !DIExpression()), !dbg !545
  %mul262 = fmul float %t1.0, %.cast13, !dbg !898
  call void @llvm.dbg.value(metadata float %mul262, metadata !840, metadata !DIExpression()), !dbg !545
  %add263 = fadd float %19, %mul262, !dbg !899
  call void @llvm.dbg.value(metadata float %add263, metadata !664, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata float %add263, metadata !900, metadata !DIExpression()), !dbg !902
  %.cast14 = bitcast float %add263 to i32, !dbg !903
  call void @llvm.dbg.value(metadata i32 %.cast14, metadata !599, metadata !DIExpression()), !dbg !545
  %cmp267 = icmp sgt i32 %.cast14, 1124073472, !dbg !904
  br i1 %cmp267, label %if.then269, label %if.else272, !dbg !906

if.then269:                                       ; preds = %if.end251
  %mul270 = fmul float %s.0, 0x46293E5940000000, !dbg !907
  %mul271 = fmul float %mul270, 0x46293E5940000000, !dbg !908
  br label %return, !dbg !909

if.else272:                                       ; preds = %if.end251
  %cmp273 = icmp eq i32 %.cast14, 1124073472, !dbg !910
  br i1 %cmp273, label %if.then275, label %if.else284, !dbg !912

if.then275:                                       ; preds = %if.else272
  %add276 = fadd float %19, 0x3E67154780000000, !dbg !913
  %sub277 = fsub float %add263, %mul262, !dbg !916
  %cmp278 = fcmp ogt float %add276, %sub277, !dbg !917
  br i1 %cmp278, label %if.then280, label %if.end283, !dbg !918

if.then280:                                       ; preds = %if.then275
  %mul281 = fmul float %s.0, 0x46293E5940000000, !dbg !919
  %mul282 = fmul float %mul281, 0x46293E5940000000, !dbg !920
  br label %return, !dbg !921

if.end283:                                        ; preds = %if.then275
  br label %if.end304, !dbg !922

if.else284:                                       ; preds = %if.else272
  %and285 = and i32 %.cast14, 2147483647, !dbg !923
  %cmp286 = icmp ugt i32 %and285, 1125515264, !dbg !925
  br i1 %cmp286, label %if.then288, label %if.else291, !dbg !926

if.then288:                                       ; preds = %if.else284
  %mul289 = fmul float %s.0, 0x39B4484C00000000, !dbg !927
  %mul290 = fmul float %mul289, 0x39B4484C00000000, !dbg !928
  br label %return, !dbg !929

if.else291:                                       ; preds = %if.else284
  %cmp292 = icmp eq i32 %.cast14, -1021968384, !dbg !930
  br i1 %cmp292, label %if.then294, label %if.end302, !dbg !932

if.then294:                                       ; preds = %if.else291
  %sub295 = fsub float %add263, %mul262, !dbg !933
  %cmp296 = fcmp ugt float %19, %sub295, !dbg !936
  br i1 %cmp296, label %if.end301, label %if.then298, !dbg !937

if.then298:                                       ; preds = %if.then294
  %mul299 = fmul float %s.0, 0x39B4484C00000000, !dbg !938
  %mul300 = fmul float %mul299, 0x39B4484C00000000, !dbg !939
  br label %return, !dbg !940

if.end301:                                        ; preds = %if.then294
  br label %if.end302, !dbg !941

if.end302:                                        ; preds = %if.end301, %if.else291
  br label %if.end303

if.end303:                                        ; preds = %if.end302
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %if.end283
  br label %if.end305

if.end305:                                        ; preds = %if.end304
  %and306 = and i32 %.cast14, 2147483647, !dbg !942
  call void @llvm.dbg.value(metadata i32 %and306, metadata !943, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 %and306, metadata !596, metadata !DIExpression(DW_OP_constu, 23, DW_OP_shr, DW_OP_constu, 127, DW_OP_minus, DW_OP_stack_value)), !dbg !545
  call void @llvm.dbg.value(metadata i32 0, metadata !746, metadata !DIExpression()), !dbg !545
  %cmp309 = icmp ugt i32 %and306, 1056964608, !dbg !944
  br i1 %cmp309, label %if.then311, label %if.end334, !dbg !946

if.then311:                                       ; preds = %if.end305
  %20 = lshr i32 %and306, 23, !dbg !947
  call void @llvm.dbg.value(metadata i32 %20, metadata !596, metadata !DIExpression(DW_OP_constu, 127, DW_OP_minus, DW_OP_stack_value)), !dbg !545
  call void @llvm.dbg.value(metadata i32 %20, metadata !596, metadata !DIExpression(DW_OP_constu, 127, DW_OP_minus, DW_OP_stack_value)), !dbg !545
  %add312 = add nsw i32 %20, -126, !dbg !948
  %shr313 = lshr i32 8388608, %add312, !dbg !950
  %add314 = add nsw i32 %shr313, %.cast14, !dbg !951
  call void @llvm.dbg.value(metadata i32 %add314, metadata !746, metadata !DIExpression()), !dbg !545
  %and315 = lshr i32 %add314, 23, !dbg !952
  %21 = and i32 %and315, 255, !dbg !952
  %sub317 = add nsw i32 %21, -127, !dbg !953
  call void @llvm.dbg.value(metadata i32 %sub317, metadata !596, metadata !DIExpression()), !dbg !545
  %neg320 = ashr i32 -8388608, %sub317, !dbg !954
  %and321 = and i32 %add314, %neg320, !dbg !954
  call void @llvm.dbg.value(metadata i32 %and321, metadata !956, metadata !DIExpression()), !dbg !957
  %.cast19 = bitcast i32 %and321 to float, !dbg !954
  call void @llvm.dbg.value(metadata float %.cast19, metadata !721, metadata !DIExpression()), !dbg !545
  %and324 = and i32 %add314, 8388607, !dbg !958
  %or325 = or i32 %and324, 8388608, !dbg !959
  %sub326 = sub nsw i32 150, %21, !dbg !960
  %shr327 = lshr i32 %or325, %sub326, !dbg !961
  call void @llvm.dbg.value(metadata i32 %shr327, metadata !746, metadata !DIExpression()), !dbg !545
  %cmp328 = icmp slt i32 %.cast14, 0, !dbg !962
  br i1 %cmp328, label %if.then330, label %if.end332, !dbg !964

if.then330:                                       ; preds = %if.then311
  %sub331 = sub nsw i32 0, %shr327, !dbg !965
  call void @llvm.dbg.value(metadata i32 %sub331, metadata !746, metadata !DIExpression()), !dbg !545
  br label %if.end332, !dbg !966

if.end332:                                        ; preds = %if.then330, %if.then311
  %n.3 = phi i32 [ %sub331, %if.then330 ], [ %shr327, %if.then311 ], !dbg !967
  call void @llvm.dbg.value(metadata i32 %n.3, metadata !746, metadata !DIExpression()), !dbg !545
  %sub333 = fsub float %mul262, %.cast19, !dbg !968
  call void @llvm.dbg.value(metadata float %sub333, metadata !840, metadata !DIExpression()), !dbg !545
  br label %if.end334, !dbg !969

if.end334:                                        ; preds = %if.end332, %if.end305
  %p_h.0 = phi float [ %sub333, %if.end332 ], [ %mul262, %if.end305 ], !dbg !545
  %n.4 = phi i32 [ %n.3, %if.end332 ], [ 0, %if.end305 ], !dbg !545
  call void @llvm.dbg.value(metadata i32 %n.4, metadata !746, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata float %p_h.0, metadata !840, metadata !DIExpression()), !dbg !545
  %add335 = fadd float %19, %p_h.0, !dbg !970
  call void @llvm.dbg.value(metadata float %add335, metadata !721, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata float %add335, metadata !971, metadata !DIExpression()), !dbg !973
  %.cast15 = bitcast float %add335 to i32, !dbg !974
  call void @llvm.dbg.value(metadata i32 %.cast15, metadata !737, metadata !DIExpression()), !dbg !545
  %and340 = and i32 %.cast15, -4096, !dbg !975
  call void @llvm.dbg.value(metadata i32 %and340, metadata !977, metadata !DIExpression()), !dbg !978
  %.cast16 = bitcast i32 %and340 to float, !dbg !975
  call void @llvm.dbg.value(metadata float %.cast16, metadata !721, metadata !DIExpression()), !dbg !545
  %mul343 = fmul float %.cast16, 0x3FE62E4000000000, !dbg !979
  call void @llvm.dbg.value(metadata float %mul343, metadata !728, metadata !DIExpression()), !dbg !545
  %sub344 = fsub float %.cast16, %p_h.0, !dbg !980
  %sub345 = fsub float %19, %sub344, !dbg !981
  %mul347 = fmul float %.cast16, 0x3EB7F7D180000000, !dbg !982
  %22 = call float @llvm.fmuladd.f32(float %sub345, float 0x3FE62E4300000000, float %mul347), !dbg !983
  call void @llvm.dbg.value(metadata float %22, metadata !730, metadata !DIExpression()), !dbg !545
  %add348 = fadd float %mul343, %22, !dbg !984
  call void @llvm.dbg.value(metadata float %add348, metadata !664, metadata !DIExpression()), !dbg !545
  %sub349 = fsub float %add348, %mul343, !dbg !985
  %sub350 = fsub float %22, %sub349, !dbg !986
  call void @llvm.dbg.value(metadata float %sub350, metadata !726, metadata !DIExpression()), !dbg !545
  %mul351 = fmul float %add348, %add348, !dbg !987
  call void @llvm.dbg.value(metadata float %mul351, metadata !721, metadata !DIExpression()), !dbg !545
  %23 = call float @llvm.fmuladd.f32(float %mul351, float 0x3E66376980000000, float 0xBEBBBD41C0000000), !dbg !988
  %24 = call float @llvm.fmuladd.f32(float %mul351, float %23, float 0x3F11566AA0000000), !dbg !989
  %25 = call float @llvm.fmuladd.f32(float %mul351, float %24, float 0xBF66C16C20000000), !dbg !990
  %26 = call float @llvm.fmuladd.f32(float %mul351, float %25, float 0x3FC5555560000000), !dbg !991
  %neg357 = fneg float %mul351, !dbg !992
  %27 = call float @llvm.fmuladd.f32(float %neg357, float %26, float %add348), !dbg !992
  call void @llvm.dbg.value(metadata float %27, metadata !732, metadata !DIExpression()), !dbg !545
  %mul358 = fmul float %add348, %27, !dbg !993
  %sub359 = fadd float %27, -2.000000e+00, !dbg !994
  %div360 = fdiv float %mul358, %sub359, !dbg !995
  %28 = call float @llvm.fmuladd.f32(float %add348, float %sub350, float %sub350), !dbg !996
  %sub362 = fsub float %div360, %28, !dbg !997
  call void @llvm.dbg.value(metadata float %sub362, metadata !819, metadata !DIExpression()), !dbg !545
  %29 = fsub float %add348, %sub362, !dbg !998
  %sub364 = fadd float %29, 1.000000e+00, !dbg !998
  call void @llvm.dbg.value(metadata float %sub364, metadata !664, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata float %sub364, metadata !999, metadata !DIExpression()), !dbg !1001
  %.cast17 = bitcast float %sub364 to i32, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %.cast17, metadata !599, metadata !DIExpression()), !dbg !545
  %shl368 = shl i32 %n.4, 23, !dbg !1003
  %add369 = add nsw i32 %shl368, %.cast17, !dbg !1004
  call void @llvm.dbg.value(metadata i32 %add369, metadata !599, metadata !DIExpression()), !dbg !545
  %cmp371 = icmp slt i32 %add369, 8388608, !dbg !1005
  br i1 %cmp371, label %if.then373, label %if.else375, !dbg !1007

if.then373:                                       ; preds = %if.end334
  %call374 = call arm_aapcs_vfpcc float @basicmath___scalbnf(float noundef %sub364, i32 noundef %n.4) #4, !dbg !1008
  call void @llvm.dbg.value(metadata float %call374, metadata !664, metadata !DIExpression()), !dbg !545
  br label %if.end379, !dbg !1009

if.else375:                                       ; preds = %if.end334
  call void @llvm.dbg.value(metadata i32 %add369, metadata !1010, metadata !DIExpression()), !dbg !1012
  %.cast18 = bitcast i32 %add369 to float, !dbg !1013
  call void @llvm.dbg.value(metadata float %.cast18, metadata !664, metadata !DIExpression()), !dbg !545
  br label %if.end379

if.end379:                                        ; preds = %if.else375, %if.then373
  %z.4 = phi float [ %call374, %if.then373 ], [ %.cast18, %if.else375 ], !dbg !1014
  call void @llvm.dbg.value(metadata float %z.4, metadata !664, metadata !DIExpression()), !dbg !545
  %mul380 = fmul float %s.0, %z.4, !dbg !1015
  br label %return, !dbg !1016

return:                                           ; preds = %if.end379, %if.then298, %if.then288, %if.then280, %if.then269, %if.then108, %if.then103, %if.then95, %if.end89, %if.then60, %if.then55, %if.else52, %if.then51, %cond.end45, %cond.end, %if.then35, %if.then13, %if.then9, %if.then6, %if.then
  %retval.0 = phi float [ 1.000000e+00, %if.then ], [ 1.000000e+00, %if.then6 ], [ 1.000000e+00, %if.then9 ], [ %add, %if.then13 ], [ %sub36, %if.then35 ], [ %cond, %cond.end ], [ %cond46, %cond.end45 ], [ %div, %if.then51 ], [ %x, %if.else52 ], [ %mul, %if.then55 ], [ %call61, %if.then60 ], [ %z.3, %if.end89 ], [ %div98, %if.then95 ], [ %cond105, %if.then103 ], [ %cond110, %if.then108 ], [ %mul271, %if.then269 ], [ %mul282, %if.then280 ], [ %mul380, %if.end379 ], [ %mul290, %if.then288 ], [ %mul300, %if.then298 ], !dbg !545
  ret float %retval.0, !dbg !1017
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @basicmath___isinff(float noundef %x) #0 !dbg !1018 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1021, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata float %x, metadata !1023, metadata !DIExpression()), !dbg !1025
  %.cast = bitcast float %x to i32, !dbg !1026
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1027, metadata !DIExpression()), !dbg !1022
  %and = and i32 %.cast, 2147483647, !dbg !1028
  call void @llvm.dbg.value(metadata i32 %and, metadata !1029, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata i32 %and, metadata !1029, metadata !DIExpression(DW_OP_constu, 2139095040, DW_OP_xor, DW_OP_stack_value)), !dbg !1022
  call void @llvm.dbg.value(metadata !DIArgList(i32 0, i32 %and), metadata !1029, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744071570456575, DW_OP_xor, DW_OP_plus_uconst, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1022
  %shr1 = ashr i32 %.cast, 30, !dbg !1030
  %isneg.not = icmp eq i32 %and, 2139095040, !dbg !1031
  %and2 = select i1 %isneg.not, i32 %shr1, i32 0, !dbg !1031
  ret i32 %and2, !dbg !1032
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___fabsf(float noundef %x) #0 !dbg !1033 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1034, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata float %x, metadata !1036, metadata !DIExpression()), !dbg !1038
  %.cast = bitcast float %x to i32, !dbg !1039
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1040, metadata !DIExpression()), !dbg !1035
  %and = and i32 %.cast, 2147483647, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %and, metadata !1043, metadata !DIExpression()), !dbg !1044
  %.cast1 = bitcast i32 %and to float, !dbg !1041
  call void @llvm.dbg.value(metadata float %.cast1, metadata !1034, metadata !DIExpression()), !dbg !1035
  ret float %.cast1, !dbg !1045
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___scalbnf(float noundef %x, i32 noundef %n) #0 !dbg !1046 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1049, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i32 %n, metadata !1051, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata float %x, metadata !1052, metadata !DIExpression()), !dbg !1054
  %.cast = bitcast float %x to i32, !dbg !1055
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1056, metadata !DIExpression()), !dbg !1050
  %and = lshr i32 %.cast, 23, !dbg !1057
  %0 = and i32 %and, 255, !dbg !1057
  call void @llvm.dbg.value(metadata i32 %0, metadata !1058, metadata !DIExpression()), !dbg !1050
  %cmp = icmp eq i32 %0, 0, !dbg !1059
  br i1 %cmp, label %if.then, label %if.end9, !dbg !1061

if.then:                                          ; preds = %entry
  %and1 = and i32 %.cast, 2147483647, !dbg !1062
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1065
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1066

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !1067

if.end:                                           ; preds = %if.then
  %mul = fmul float %x, 0x4180000000000000, !dbg !1068
  call void @llvm.dbg.value(metadata float %mul, metadata !1049, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata float %mul, metadata !1069, metadata !DIExpression()), !dbg !1071
  %.cast3 = bitcast float %mul to i32, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %.cast3, metadata !1056, metadata !DIExpression()), !dbg !1050
  %and7 = lshr i32 %.cast3, 23, !dbg !1073
  %1 = and i32 %and7, 255, !dbg !1073
  %sub = add nsw i32 %1, -25, !dbg !1074
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1058, metadata !DIExpression()), !dbg !1050
  br label %if.end9, !dbg !1075

if.end9:                                          ; preds = %if.end, %entry
  %k.0 = phi i32 [ %sub, %if.end ], [ %0, %entry ], !dbg !1050
  %ix.0 = phi i32 [ %.cast3, %if.end ], [ %.cast, %entry ], !dbg !1050
  %x.addr.0 = phi float [ %mul, %if.end ], [ %x, %entry ]
  call void @llvm.dbg.value(metadata float %x.addr.0, metadata !1049, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !1056, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !1058, metadata !DIExpression()), !dbg !1050
  %cmp10 = icmp eq i32 %k.0, 255, !dbg !1076
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1078

if.then11:                                        ; preds = %if.end9
  %add = fadd float %x.addr.0, %x.addr.0, !dbg !1079
  br label %return, !dbg !1080

if.end12:                                         ; preds = %if.end9
  %add13 = add nsw i32 %k.0, %n, !dbg !1081
  call void @llvm.dbg.value(metadata i32 %add13, metadata !1058, metadata !DIExpression()), !dbg !1050
  %cmp14 = icmp sgt i32 %n, 50000, !dbg !1082
  br i1 %cmp14, label %if.then16, label %lor.lhs.false, !dbg !1084

lor.lhs.false:                                    ; preds = %if.end12
  %cmp15 = icmp sgt i32 %add13, 254, !dbg !1085
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !1086

if.then16:                                        ; preds = %lor.lhs.false, %if.end12
  %call = call arm_aapcs_vfpcc float @basicmath___copysignf(float noundef 0x46293E5940000000, float noundef %x.addr.0) #4, !dbg !1087
  %mul17 = fmul float %call, 0x46293E5940000000, !dbg !1088
  br label %return, !dbg !1089

if.end18:                                         ; preds = %lor.lhs.false
  %cmp19 = icmp slt i32 %n, -50000, !dbg !1090
  br i1 %cmp19, label %if.then20, label %if.end23, !dbg !1092

if.then20:                                        ; preds = %if.end18
  %call21 = call arm_aapcs_vfpcc float @basicmath___copysignf(float noundef 0x39B4484C00000000, float noundef %x.addr.0) #4, !dbg !1093
  %mul22 = fmul float %call21, 0x39B4484C00000000, !dbg !1094
  br label %return, !dbg !1095

if.end23:                                         ; preds = %if.end18
  %cmp24 = icmp sgt i32 %add13, 0, !dbg !1096
  br i1 %cmp24, label %if.then25, label %if.end29, !dbg !1098

if.then25:                                        ; preds = %if.end23
  %and26 = and i32 %ix.0, -2139095041, !dbg !1099
  %shl = shl i32 %add13, 23, !dbg !1099
  %or = or i32 %and26, %shl, !dbg !1099
  call void @llvm.dbg.value(metadata i32 %or, metadata !1102, metadata !DIExpression()), !dbg !1103
  %.cast2 = bitcast i32 %or to float, !dbg !1099
  call void @llvm.dbg.value(metadata float %.cast2, metadata !1049, metadata !DIExpression()), !dbg !1050
  br label %return, !dbg !1104

if.end29:                                         ; preds = %if.end23
  %cmp30 = icmp slt i32 %add13, -24, !dbg !1105
  br i1 %cmp30, label %if.then31, label %if.end34, !dbg !1107

if.then31:                                        ; preds = %if.end29
  %call32 = call arm_aapcs_vfpcc float @basicmath___copysignf(float noundef 0x39B4484C00000000, float noundef %x.addr.0) #4, !dbg !1108
  %mul33 = fmul float %call32, 0x39B4484C00000000, !dbg !1109
  br label %return, !dbg !1110

if.end34:                                         ; preds = %if.end29
  call void @llvm.dbg.value(metadata i32 %add13, metadata !1058, metadata !DIExpression(DW_OP_plus_uconst, 25, DW_OP_stack_value)), !dbg !1050
  %and37 = and i32 %ix.0, -2139095041, !dbg !1111
  %add35 = shl i32 %add13, 23, !dbg !1111
  %shl38 = add i32 %add35, 209715200, !dbg !1111
  %or39 = or i32 %and37, %shl38, !dbg !1111
  call void @llvm.dbg.value(metadata i32 %or39, metadata !1113, metadata !DIExpression()), !dbg !1114
  %.cast1 = bitcast i32 %or39 to float, !dbg !1111
  call void @llvm.dbg.value(metadata float %.cast1, metadata !1049, metadata !DIExpression()), !dbg !1050
  %mul42 = fmul float %.cast1, 0x3E60000000000000, !dbg !1115
  br label %return, !dbg !1116

return:                                           ; preds = %if.end34, %if.then31, %if.then25, %if.then20, %if.then16, %if.then11, %if.then3
  %retval.0 = phi float [ %x, %if.then3 ], [ %add, %if.then11 ], [ %mul17, %if.then16 ], [ %mul22, %if.then20 ], [ %.cast2, %if.then25 ], [ %mul33, %if.then31 ], [ %mul42, %if.end34 ], !dbg !1050
  ret float %retval.0, !dbg !1117
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___copysignf(float noundef %x, float noundef %y) #0 !dbg !1118 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1119, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata float %y, metadata !1121, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata float %x, metadata !1122, metadata !DIExpression()), !dbg !1124
  %.cast = bitcast float %x to i32, !dbg !1125
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1126, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata float %y, metadata !1127, metadata !DIExpression()), !dbg !1129
  %.cast1 = bitcast float %y to i32, !dbg !1130
  call void @llvm.dbg.value(metadata i32 %.cast1, metadata !1131, metadata !DIExpression()), !dbg !1120
  %and = and i32 %.cast, 2147483647, !dbg !1132
  %and4 = and i32 %.cast1, -2147483648, !dbg !1132
  %or = or i32 %and, %and4, !dbg !1132
  call void @llvm.dbg.value(metadata i32 %or, metadata !1134, metadata !DIExpression()), !dbg !1135
  %.cast2 = bitcast i32 %or to float, !dbg !1132
  call void @llvm.dbg.value(metadata float %.cast2, metadata !1119, metadata !DIExpression()), !dbg !1120
  ret float %.cast2, !dbg !1136
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @basicmath___ieee754_rem_pio2f(float noundef %x, float* noundef %y) #0 !dbg !1137 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1141, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata float* %y, metadata !1143, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata float %x, metadata !1144, metadata !DIExpression()), !dbg !1146
  %.cast = bitcast float %x to i32, !dbg !1147
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1148, metadata !DIExpression()), !dbg !1142
  %and = and i32 %.cast, 2147483647, !dbg !1149
  call void @llvm.dbg.value(metadata i32 %and, metadata !1150, metadata !DIExpression()), !dbg !1142
  %cmp = icmp ult i32 %and, 1061752793, !dbg !1151
  br i1 %cmp, label %if.then, label %if.end, !dbg !1153

if.then:                                          ; preds = %entry
  store float %x, float* %y, align 4, !dbg !1154
  %arrayidx1 = getelementptr inbounds float, float* %y, i32 1, !dbg !1156
  store float 0.000000e+00, float* %arrayidx1, align 4, !dbg !1157
  br label %return, !dbg !1158

if.end:                                           ; preds = %entry
  %cmp2 = icmp ult i32 %and, 1075235812, !dbg !1159
  br i1 %cmp2, label %if.then3, label %if.end42, !dbg !1161

if.then3:                                         ; preds = %if.end
  %cmp4 = icmp sgt i32 %.cast, 0, !dbg !1162
  br i1 %cmp4, label %if.then5, label %if.else23, !dbg !1165

if.then5:                                         ; preds = %if.then3
  %sub = fadd float %x, 0xBFF921F000000000, !dbg !1166
  call void @llvm.dbg.value(metadata float %sub, metadata !1168, metadata !DIExpression()), !dbg !1142
  %and6 = and i32 %.cast, 2147483632, !dbg !1169
  %cmp7.not = icmp eq i32 %and6, 1070141392, !dbg !1171
  br i1 %cmp7.not, label %if.else, label %if.then8, !dbg !1172

if.then8:                                         ; preds = %if.then5
  %sub9 = fadd float %sub, 0xBEE6A88860000000, !dbg !1173
  store float %sub9, float* %y, align 4, !dbg !1175
  %sub12 = fsub float %sub, %sub9, !dbg !1176
  %sub13 = fadd float %sub12, 0xBEE6A88860000000, !dbg !1177
  %arrayidx14 = getelementptr inbounds float, float* %y, i32 1, !dbg !1178
  store float %sub13, float* %arrayidx14, align 4, !dbg !1179
  br label %if.end22, !dbg !1180

if.else:                                          ; preds = %if.then5
  %sub15 = fadd float %sub, 0xBEE6A88000000000, !dbg !1181
  call void @llvm.dbg.value(metadata float %sub15, metadata !1168, metadata !DIExpression()), !dbg !1142
  %sub16 = fadd float %sub15, 0xBDD0B46100000000, !dbg !1183
  store float %sub16, float* %y, align 4, !dbg !1184
  %sub19 = fsub float %sub15, %sub16, !dbg !1185
  %sub20 = fadd float %sub19, 0xBDD0B46100000000, !dbg !1186
  %arrayidx21 = getelementptr inbounds float, float* %y, i32 1, !dbg !1187
  store float %sub20, float* %arrayidx21, align 4, !dbg !1188
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then8
  br label %return, !dbg !1189

if.else23:                                        ; preds = %if.then3
  %add = fadd float %x, 0x3FF921F000000000, !dbg !1190
  call void @llvm.dbg.value(metadata float %add, metadata !1168, metadata !DIExpression()), !dbg !1142
  %and24 = and i32 %.cast, 2147483632, !dbg !1192
  %cmp25.not = icmp eq i32 %and24, 1070141392, !dbg !1194
  br i1 %cmp25.not, label %if.else33, label %if.then26, !dbg !1195

if.then26:                                        ; preds = %if.else23
  %add27 = fadd float %add, 0x3EE6A88860000000, !dbg !1196
  store float %add27, float* %y, align 4, !dbg !1198
  %sub30 = fsub float %add, %add27, !dbg !1199
  %add31 = fadd float %sub30, 0x3EE6A88860000000, !dbg !1200
  %arrayidx32 = getelementptr inbounds float, float* %y, i32 1, !dbg !1201
  store float %add31, float* %arrayidx32, align 4, !dbg !1202
  br label %if.end41, !dbg !1203

if.else33:                                        ; preds = %if.else23
  %add34 = fadd float %add, 0x3EE6A88000000000, !dbg !1204
  call void @llvm.dbg.value(metadata float %add34, metadata !1168, metadata !DIExpression()), !dbg !1142
  %add35 = fadd float %add34, 0x3DD0B46100000000, !dbg !1206
  store float %add35, float* %y, align 4, !dbg !1207
  %sub38 = fsub float %add34, %add35, !dbg !1208
  %add39 = fadd float %sub38, 0x3DD0B46100000000, !dbg !1209
  %arrayidx40 = getelementptr inbounds float, float* %y, i32 1, !dbg !1210
  store float %add39, float* %arrayidx40, align 4, !dbg !1211
  br label %if.end41

if.end41:                                         ; preds = %if.else33, %if.then26
  br label %return, !dbg !1212

if.end42:                                         ; preds = %if.end
  %cmp43 = icmp ult i32 %and, 1128861569, !dbg !1213
  br i1 %cmp43, label %if.then44, label %if.end112, !dbg !1215

if.then44:                                        ; preds = %if.end42
  %call = call arm_aapcs_vfpcc float @basicmath___fabsf(float noundef %x) #4, !dbg !1216
  call void @llvm.dbg.value(metadata float %call, metadata !1218, metadata !DIExpression()), !dbg !1142
  %0 = call float @llvm.fmuladd.f32(float %call, float 0x3FE45F3080000000, float 5.000000e-01), !dbg !1219
  %conv = fptosi float %0 to i32, !dbg !1220
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1221, metadata !DIExpression()), !dbg !1142
  %conv45 = sitofp i32 %conv to float, !dbg !1222
  call void @llvm.dbg.value(metadata float %conv45, metadata !1223, metadata !DIExpression()), !dbg !1142
  %neg = fneg float %conv45, !dbg !1224
  %1 = call float @llvm.fmuladd.f32(float %neg, float 0x3FF921F000000000, float %call), !dbg !1224
  call void @llvm.dbg.value(metadata float %1, metadata !1225, metadata !DIExpression()), !dbg !1142
  %mul = fmul float %conv45, 0x3EE6A88860000000, !dbg !1226
  call void @llvm.dbg.value(metadata float %mul, metadata !1227, metadata !DIExpression()), !dbg !1142
  %cmp46 = icmp slt i32 %conv, 32, !dbg !1228
  br i1 %cmp46, label %land.lhs.true, label %if.else56, !dbg !1230

land.lhs.true:                                    ; preds = %if.then44
  %and48 = and i32 %.cast, 2147483392, !dbg !1231
  %sub49 = add nsw i32 %conv, -1, !dbg !1232
  %arrayidx50 = getelementptr inbounds [32 x i32], [32 x i32]* @basicmath_npio2_hw, i32 0, i32 %sub49, !dbg !1233
  %2 = load i32, i32* %arrayidx50, align 4, !dbg !1233
  %cmp51.not = icmp eq i32 %and48, %2, !dbg !1234
  br i1 %cmp51.not, label %if.else56, label %if.then53, !dbg !1235

if.then53:                                        ; preds = %land.lhs.true
  %sub54 = fsub float %1, %mul, !dbg !1236
  store float %sub54, float* %y, align 4, !dbg !1238
  br label %if.end97, !dbg !1239

if.else56:                                        ; preds = %land.lhs.true, %if.then44
  %3 = lshr i32 %and, 23, !dbg !1240
  call void @llvm.dbg.value(metadata i32 %3, metadata !1242, metadata !DIExpression()), !dbg !1142
  %sub57 = fsub float %1, %mul, !dbg !1243
  store float %sub57, float* %y, align 4, !dbg !1244
  call void @llvm.dbg.value(metadata float %sub57, metadata !1245, metadata !DIExpression()), !dbg !1247
  %.cast1 = bitcast float %sub57 to i32, !dbg !1248
  call void @llvm.dbg.value(metadata i32 %.cast1, metadata !1249, metadata !DIExpression()), !dbg !1250
  %shr63 = lshr i32 %.cast1, 23, !dbg !1251
  %and64 = and i32 %shr63, 255, !dbg !1252
  %sub65 = sub nsw i32 %3, %and64, !dbg !1253
  call void @llvm.dbg.value(metadata i32 %sub65, metadata !1254, metadata !DIExpression()), !dbg !1142
  %cmp66 = icmp sgt i32 %sub65, 8, !dbg !1255
  br i1 %cmp66, label %if.then68, label %if.end96, !dbg !1257

if.then68:                                        ; preds = %if.else56
  call void @llvm.dbg.value(metadata float %1, metadata !1218, metadata !DIExpression()), !dbg !1142
  %mul69 = fmul float %conv45, 0x3EE6A88000000000, !dbg !1258
  call void @llvm.dbg.value(metadata float %mul69, metadata !1227, metadata !DIExpression()), !dbg !1142
  %sub70 = fsub float %1, %mul69, !dbg !1260
  call void @llvm.dbg.value(metadata float %sub70, metadata !1225, metadata !DIExpression()), !dbg !1142
  %sub72 = fsub float %1, %sub70, !dbg !1261
  %sub73 = fsub float %sub72, %mul69, !dbg !1262
  %neg74 = fneg float %sub73, !dbg !1263
  %4 = call float @llvm.fmuladd.f32(float %conv45, float 0x3DD0B46100000000, float %neg74), !dbg !1263
  call void @llvm.dbg.value(metadata float %4, metadata !1227, metadata !DIExpression()), !dbg !1142
  %sub75 = fsub float %sub70, %4, !dbg !1264
  call void @llvm.dbg.value(metadata float %sub75, metadata !1265, metadata !DIExpression()), !dbg !1267
  %.cast2 = bitcast float %sub75 to i32, !dbg !1268
  call void @llvm.dbg.value(metadata i32 %.cast2, metadata !1249, metadata !DIExpression()), !dbg !1250
  %shr81 = lshr i32 %.cast2, 23, !dbg !1269
  %and82 = and i32 %shr81, 255, !dbg !1270
  %sub83 = sub nsw i32 %3, %and82, !dbg !1271
  call void @llvm.dbg.value(metadata i32 %sub83, metadata !1254, metadata !DIExpression()), !dbg !1142
  %cmp84 = icmp sgt i32 %sub83, 25, !dbg !1272
  br i1 %cmp84, label %if.then86, label %if.end95, !dbg !1274

if.then86:                                        ; preds = %if.then68
  call void @llvm.dbg.value(metadata float %sub70, metadata !1218, metadata !DIExpression()), !dbg !1142
  %mul87 = fmul float %conv45, 0x3DD0B46000000000, !dbg !1275
  call void @llvm.dbg.value(metadata float %mul87, metadata !1227, metadata !DIExpression()), !dbg !1142
  %sub88 = fsub float %sub70, %mul87, !dbg !1277
  call void @llvm.dbg.value(metadata float %sub88, metadata !1225, metadata !DIExpression()), !dbg !1142
  %sub90 = fsub float %sub70, %sub88, !dbg !1278
  %sub91 = fsub float %sub90, %mul87, !dbg !1279
  %neg92 = fneg float %sub91, !dbg !1280
  %5 = call float @llvm.fmuladd.f32(float %conv45, float 0x3C91A62640000000, float %neg92), !dbg !1280
  call void @llvm.dbg.value(metadata float %5, metadata !1227, metadata !DIExpression()), !dbg !1142
  %sub93 = fsub float %sub88, %5, !dbg !1281
  br label %if.end95, !dbg !1282

if.end95:                                         ; preds = %if.then86, %if.then68
  %storemerge = phi float [ %sub93, %if.then86 ], [ %sub75, %if.then68 ], !dbg !1283
  %r.0 = phi float [ %sub88, %if.then86 ], [ %sub70, %if.then68 ], !dbg !1283
  %w.0 = phi float [ %5, %if.then86 ], [ %4, %if.then68 ], !dbg !1283
  store float %storemerge, float* %y, align 4, !dbg !1283
  call void @llvm.dbg.value(metadata float %w.0, metadata !1227, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata float %r.0, metadata !1225, metadata !DIExpression()), !dbg !1142
  br label %if.end96, !dbg !1284

if.end96:                                         ; preds = %if.end95, %if.else56
  %r.1 = phi float [ %r.0, %if.end95 ], [ %1, %if.else56 ], !dbg !1285
  %w.1 = phi float [ %w.0, %if.end95 ], [ %mul, %if.else56 ], !dbg !1285
  call void @llvm.dbg.value(metadata float %w.1, metadata !1227, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata float %r.1, metadata !1225, metadata !DIExpression()), !dbg !1142
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then53
  %r.2 = phi float [ %1, %if.then53 ], [ %r.1, %if.end96 ], !dbg !1285
  %w.2 = phi float [ %mul, %if.then53 ], [ %w.1, %if.end96 ], !dbg !1285
  call void @llvm.dbg.value(metadata float %w.2, metadata !1227, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata float %r.2, metadata !1225, metadata !DIExpression()), !dbg !1142
  %6 = load float, float* %y, align 4, !dbg !1286
  %sub99 = fsub float %r.2, %6, !dbg !1287
  %sub100 = fsub float %sub99, %w.2, !dbg !1288
  %arrayidx101 = getelementptr inbounds float, float* %y, i32 1, !dbg !1289
  store float %sub100, float* %arrayidx101, align 4, !dbg !1290
  %cmp102 = icmp slt i32 %.cast, 0, !dbg !1291
  br i1 %cmp102, label %if.then104, label %if.else111, !dbg !1293

if.then104:                                       ; preds = %if.end97
  %7 = load float, float* %y, align 4, !dbg !1294
  %fneg = fneg float %7, !dbg !1296
  store float %fneg, float* %y, align 4, !dbg !1297
  %arrayidx107 = getelementptr inbounds float, float* %y, i32 1, !dbg !1298
  %8 = load float, float* %arrayidx107, align 4, !dbg !1298
  %fneg108 = fneg float %8, !dbg !1299
  %arrayidx109 = getelementptr inbounds float, float* %y, i32 1, !dbg !1300
  store float %fneg108, float* %arrayidx109, align 4, !dbg !1301
  %sub110 = sub nsw i32 0, %conv, !dbg !1302
  br label %return, !dbg !1303

if.else111:                                       ; preds = %if.end97
  br label %return, !dbg !1304

if.end112:                                        ; preds = %if.end42
  %cmp113 = icmp ugt i32 %and, 2139095039, !dbg !1305
  br i1 %cmp113, label %if.then115, label %if.end119, !dbg !1307

if.then115:                                       ; preds = %if.end112
  %sub116 = fsub float %x, %x, !dbg !1308
  %arrayidx117 = getelementptr inbounds float, float* %y, i32 1, !dbg !1310
  store float %sub116, float* %arrayidx117, align 4, !dbg !1311
  store float %sub116, float* %y, align 4, !dbg !1312
  br label %return, !dbg !1313

if.end119:                                        ; preds = %if.end112
  %sub120 = fsub float %x, %x, !dbg !1314
  %arrayidx121 = getelementptr inbounds float, float* %y, i32 1, !dbg !1315
  store float %sub120, float* %arrayidx121, align 4, !dbg !1316
  store float %sub120, float* %y, align 4, !dbg !1317
  br label %return, !dbg !1318

return:                                           ; preds = %if.end119, %if.then115, %if.else111, %if.then104, %if.end41, %if.end22, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end22 ], [ -1, %if.end41 ], [ %sub110, %if.then104 ], [ %conv, %if.else111 ], [ 0, %if.then115 ], [ 0, %if.end119 ], !dbg !1142
  ret i32 %retval.0, !dbg !1319
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___kernel_cosf(float noundef %x, float noundef %y) #0 !dbg !1320 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1321, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata float %y, metadata !1323, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata float %x, metadata !1324, metadata !DIExpression()), !dbg !1326
  %.cast = bitcast float %x to i32, !dbg !1327
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1328, metadata !DIExpression()), !dbg !1322
  %and = and i32 %.cast, 2147483647, !dbg !1329
  call void @llvm.dbg.value(metadata i32 %and, metadata !1328, metadata !DIExpression()), !dbg !1322
  %cmp = icmp ult i32 %and, 838860800, !dbg !1330
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1332

if.then:                                          ; preds = %entry
  %conv = fptosi float %x to i32, !dbg !1333
  %cmp1 = icmp eq i32 %conv, 0, !dbg !1336
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !1337

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !1338

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !1339

if.end4:                                          ; preds = %if.end, %entry
  %mul = fmul float %x, %x, !dbg !1340
  call void @llvm.dbg.value(metadata float %mul, metadata !1341, metadata !DIExpression()), !dbg !1322
  %0 = call float @llvm.fmuladd.f32(float %mul, float 0xBDA8FAE9C0000000, float 0x3E21EE9EC0000000), !dbg !1342
  %1 = call float @llvm.fmuladd.f32(float %mul, float %0, float 0xBE927E4F80000000), !dbg !1343
  %2 = call float @llvm.fmuladd.f32(float %mul, float %1, float 0x3EFA01A020000000), !dbg !1344
  %3 = call float @llvm.fmuladd.f32(float %mul, float %2, float 0xBF56C16C20000000), !dbg !1345
  %4 = call float @llvm.fmuladd.f32(float %mul, float %3, float 0x3FA5555560000000), !dbg !1346
  %mul10 = fmul float %mul, %4, !dbg !1347
  call void @llvm.dbg.value(metadata float %mul10, metadata !1348, metadata !DIExpression()), !dbg !1322
  %cmp11 = icmp ult i32 %and, 1050253722, !dbg !1349
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !1351

if.then13:                                        ; preds = %if.end4
  %5 = fneg float %x, !dbg !1352
  %neg = fmul float %5, %y, !dbg !1352
  %6 = call float @llvm.fmuladd.f32(float %mul, float %mul10, float %neg), !dbg !1352
  %neg17 = fneg float %6, !dbg !1353
  %7 = call float @llvm.fmuladd.f32(float %mul, float 5.000000e-01, float %neg17), !dbg !1353
  %sub = fsub float 1.000000e+00, %7, !dbg !1354
  br label %return, !dbg !1355

if.else:                                          ; preds = %if.end4
  %cmp18 = icmp ugt i32 %and, 1061683200, !dbg !1356
  br i1 %cmp18, label %if.then20, label %if.else21, !dbg !1359

if.then20:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata float 2.812500e-01, metadata !1360, metadata !DIExpression()), !dbg !1322
  br label %if.end25, !dbg !1361

if.else21:                                        ; preds = %if.else
  %sub22 = add nsw i32 %and, -16777216, !dbg !1362
  call void @llvm.dbg.value(metadata i32 %sub22, metadata !1365, metadata !DIExpression()), !dbg !1366
  %.cast1 = bitcast i32 %sub22 to float, !dbg !1362
  call void @llvm.dbg.value(metadata float %.cast1, metadata !1360, metadata !DIExpression()), !dbg !1322
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then20
  %qx.0 = phi float [ 2.812500e-01, %if.then20 ], [ %.cast1, %if.else21 ], !dbg !1367
  call void @llvm.dbg.value(metadata float %qx.0, metadata !1360, metadata !DIExpression()), !dbg !1322
  %neg27 = fneg float %qx.0, !dbg !1368
  %8 = call float @llvm.fmuladd.f32(float %mul, float 5.000000e-01, float %neg27), !dbg !1368
  call void @llvm.dbg.value(metadata float %8, metadata !1369, metadata !DIExpression()), !dbg !1322
  %sub28 = fsub float 1.000000e+00, %qx.0, !dbg !1370
  call void @llvm.dbg.value(metadata float %sub28, metadata !1371, metadata !DIExpression()), !dbg !1322
  %9 = fneg float %x, !dbg !1372
  %neg31 = fmul float %9, %y, !dbg !1372
  %10 = call float @llvm.fmuladd.f32(float %mul, float %mul10, float %neg31), !dbg !1372
  %sub32 = fsub float %8, %10, !dbg !1373
  %sub33 = fsub float %sub28, %sub32, !dbg !1374
  br label %return, !dbg !1375

return:                                           ; preds = %if.end25, %if.then13, %if.then3
  %retval.0 = phi float [ 1.000000e+00, %if.then3 ], [ %sub, %if.then13 ], [ %sub33, %if.end25 ], !dbg !1322
  ret float %retval.0, !dbg !1376
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___kernel_sinf(float noundef %x, float noundef %y, i32 noundef %iy) #0 !dbg !1377 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1380, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata float %y, metadata !1382, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %iy, metadata !1383, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata float %x, metadata !1384, metadata !DIExpression()), !dbg !1386
  %.cast = bitcast float %x to i32, !dbg !1387
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1388, metadata !DIExpression()), !dbg !1381
  %and = and i32 %.cast, 2113929216, !dbg !1389
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1388, metadata !DIExpression(DW_OP_constu, 2113929216, DW_OP_and, DW_OP_stack_value)), !dbg !1381
  %cmp = icmp ult i32 %and, 838860800, !dbg !1390
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1392

if.then:                                          ; preds = %entry
  %conv = fptosi float %x to i32, !dbg !1393
  %cmp1 = icmp eq i32 %conv, 0, !dbg !1396
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !1397

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !1398

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !1399

if.end4:                                          ; preds = %if.end, %entry
  %mul = fmul float %x, %x, !dbg !1400
  call void @llvm.dbg.value(metadata float %mul, metadata !1401, metadata !DIExpression()), !dbg !1381
  %mul5 = fmul float %mul, %x, !dbg !1402
  call void @llvm.dbg.value(metadata float %mul5, metadata !1403, metadata !DIExpression()), !dbg !1381
  %0 = call float @llvm.fmuladd.f32(float %mul, float 0x3DE5D93A60000000, float 0xBE5AE5E680000000), !dbg !1404
  %1 = call float @llvm.fmuladd.f32(float %mul, float %0, float 0x3EC71DE360000000), !dbg !1405
  %2 = call float @llvm.fmuladd.f32(float %mul, float %1, float 0xBF2A01A020000000), !dbg !1406
  %3 = call float @llvm.fmuladd.f32(float %mul, float %2, float 0x3F81111120000000), !dbg !1407
  call void @llvm.dbg.value(metadata float %3, metadata !1408, metadata !DIExpression()), !dbg !1381
  %cmp10 = icmp eq i32 %iy, 0, !dbg !1409
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !1411

if.then12:                                        ; preds = %if.end4
  %4 = call float @llvm.fmuladd.f32(float %mul, float %3, float 0xBFC5555560000000), !dbg !1412
  %5 = call float @llvm.fmuladd.f32(float %mul5, float %4, float %x), !dbg !1413
  br label %return, !dbg !1414

if.else:                                          ; preds = %if.end4
  %6 = fneg float %mul5, !dbg !1415
  %neg = fmul float %3, %6, !dbg !1415
  %7 = call float @llvm.fmuladd.f32(float %y, float 5.000000e-01, float %neg), !dbg !1415
  %neg18 = fneg float %y, !dbg !1416
  %8 = call float @llvm.fmuladd.f32(float %mul, float %7, float %neg18), !dbg !1416
  %neg20 = fneg float %mul5, !dbg !1417
  %9 = call float @llvm.fmuladd.f32(float %neg20, float 0xBFC5555560000000, float %8), !dbg !1417
  %sub = fsub float %x, %9, !dbg !1418
  br label %return, !dbg !1419

return:                                           ; preds = %if.else, %if.then12, %if.then3
  %retval.0 = phi float [ %x, %if.then3 ], [ %5, %if.then12 ], [ %sub, %if.else ], !dbg !1381
  ret float %retval.0, !dbg !1420
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___cosf(float noundef %x) #0 !dbg !1421 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1422, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.declare(metadata [2 x float]* undef, metadata !1424, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1427, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.declare(metadata i32* undef, metadata !1428, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata float %x, metadata !1430, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata i32 undef, metadata !1433, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i32 undef, metadata !1433, metadata !DIExpression(DW_OP_constu, 2147483647, DW_OP_and, DW_OP_stack_value)), !dbg !1423
  %sub = fsub float %x, %x, !dbg !1434
  ret float %sub, !dbg !1435
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #2 !dbg !1436 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !1438
  br i1 %cmp, label %if.then, label %if.end, !dbg !1439

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !1440
  unreachable, !dbg !1440

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !1441
  ret i64 %0, !dbg !1442
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #3 !dbg !1443 {
entry:
  unreachable, !dbg !1444
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #2 !dbg !1445 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1446
  br i1 %cmp, label %if.then, label %if.end, !dbg !1447

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !1448
  unreachable, !dbg !1448

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !1449
  ret i32 %0, !dbg !1450
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1451 {
entry:
  %add = add i64 %a, %b, !dbg !1452
  %cmp = icmp sgt i64 %b, -1, !dbg !1453
  br i1 %cmp, label %if.then, label %if.else, !dbg !1454

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !1455
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1456

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !1457
  unreachable, !dbg !1457

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1458

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !1459
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1460

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !1461
  unreachable, !dbg !1461

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !1462
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1463 {
entry:
  %add = add i32 %a, %b, !dbg !1464
  %cmp = icmp sgt i32 %b, -1, !dbg !1465
  br i1 %cmp, label %if.then, label %if.else, !dbg !1466

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !1467
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1468

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !1469
  unreachable, !dbg !1469

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1470

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !1471
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1472

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !1473
  unreachable, !dbg !1473

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !1474
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #2 !dbg !1475 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1476
  store i64 %a, i64* %all, align 8, !dbg !1477
  %and = and i32 %b, 32, !dbg !1478
  %tobool.not = icmp eq i32 %and, 0, !dbg !1478
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1479

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !1480
  store i32 0, i32* %low, align 8, !dbg !1481
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !1482
  %0 = load i32, i32* %low2, align 8, !dbg !1482
  %sub = add nsw i32 %b, -32, !dbg !1483
  %shl = shl i32 %0, %sub, !dbg !1484
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1485
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !1486
  store i32 %shl, i32* %high, align 4, !dbg !1487
  br label %if.end18, !dbg !1488

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1489
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1490

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !1491

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !1492
  %1 = load i32, i32* %low6, align 8, !dbg !1492
  %shl7 = shl i32 %1, %b, !dbg !1493
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !1494
  store i32 %shl7, i32* %low9, align 8, !dbg !1495
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1496
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !1497
  %2 = load i32, i32* %high11, align 4, !dbg !1497
  %shl12 = shl i32 %2, %b, !dbg !1498
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !1499
  %3 = load i32, i32* %low14, align 8, !dbg !1499
  %sub15 = sub nsw i32 32, %b, !dbg !1500
  %shr = lshr i32 %3, %sub15, !dbg !1501
  %or = or i32 %shl12, %shr, !dbg !1502
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1503
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !1504
  store i32 %or, i32* %high17, align 4, !dbg !1505
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1506
  %4 = load i64, i64* %all19, align 8, !dbg !1506
  br label %return, !dbg !1507

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !1508
  ret i64 %retval.0, !dbg !1509
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !1510 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1511
  store i64 %a, i64* %all, align 8, !dbg !1512
  %and = and i32 %b, 32, !dbg !1513
  %tobool.not = icmp eq i32 %and, 0, !dbg !1513
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1514

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !1515
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1516
  %0 = load i32, i32* %high, align 4, !dbg !1516
  %shr = ashr i32 %0, 31, !dbg !1517
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1518
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1519
  store i32 %shr, i32* %high2, align 4, !dbg !1520
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1521
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !1522
  %1 = load i32, i32* %high4, align 4, !dbg !1522
  %sub = add nsw i32 %b, -32, !dbg !1523
  %shr5 = ashr i32 %1, %sub, !dbg !1524
  %low = bitcast %union.dwords* %result to i32*, !dbg !1525
  store i32 %shr5, i32* %low, align 8, !dbg !1526
  br label %if.end21, !dbg !1527

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1528
  br i1 %cmp, label %if.then7, label %if.end, !dbg !1529

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !1530

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1531
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !1532
  %2 = load i32, i32* %high9, align 4, !dbg !1532
  %shr10 = ashr i32 %2, %b, !dbg !1533
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1534
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !1535
  store i32 %shr10, i32* %high12, align 4, !dbg !1536
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1537
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !1538
  %3 = load i32, i32* %high14, align 4, !dbg !1538
  %sub15 = sub nsw i32 32, %b, !dbg !1539
  %shl = shl i32 %3, %sub15, !dbg !1540
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !1541
  %4 = load i32, i32* %low17, align 8, !dbg !1541
  %shr18 = lshr i32 %4, %b, !dbg !1542
  %or = or i32 %shl, %shr18, !dbg !1543
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !1544
  store i32 %or, i32* %low20, align 8, !dbg !1545
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1546
  %5 = load i64, i64* %all22, align 8, !dbg !1546
  br label %return, !dbg !1547

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !1548
  ret i64 %retval.0, !dbg !1549
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #2 !dbg !1550 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1551
  store i64 %a, i64* %all, align 8, !dbg !1552
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1553
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1554
  %0 = load i32, i32* %high, align 4, !dbg !1554
  %cmp = icmp eq i32 %0, 0, !dbg !1555
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1556
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1557
  %1 = load i32, i32* %high2, align 4, !dbg !1557
  %low = bitcast %union.dwords* %x to i32*, !dbg !1558
  %2 = load i32, i32* %low, align 8, !dbg !1558
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !1559
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !1560, !range !1561
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !1562
  %add = add nuw nsw i32 %4, %and5, !dbg !1563
  ret i32 %add, !dbg !1564
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #2 !dbg !1565 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !1566
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !1567
  %sub = sub nuw nsw i32 16, %shl, !dbg !1568
  %shr = lshr i32 %a, %sub, !dbg !1569
  %and1 = and i32 %shr, 65280, !dbg !1570
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1571
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !1572
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !1573
  %shr6 = lshr i32 %shr, %sub5, !dbg !1574
  %add = or i32 %shl, %shl4, !dbg !1575
  %and7 = and i32 %shr6, 240, !dbg !1576
  %cmp8 = icmp eq i32 %and7, 0, !dbg !1577
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !1578
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !1579
  %shr12 = lshr i32 %shr6, %sub11, !dbg !1580
  %add13 = or i32 %add, %shl10, !dbg !1581
  %and14 = and i32 %shr12, 12, !dbg !1582
  %cmp15 = icmp eq i32 %and14, 0, !dbg !1583
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !1584
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !1585
  %shr19 = lshr i32 %shr12, %sub18, !dbg !1586
  %add20 = or i32 %add13, %shl17, !dbg !1587
  %sub21 = sub i32 2, %shr19, !dbg !1588
  %and22 = lshr i32 %shr19, 1, !dbg !1589
  %0 = or i32 %and22, -2, !dbg !1589
  %.neg = add nsw i32 %0, 1, !dbg !1589
  %and26 = and i32 %sub21, %.neg, !dbg !1590
  %add27 = add i32 %add20, %and26, !dbg !1591
  ret i32 %add27, !dbg !1592
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !1593 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1594
  store i64 %a, i64* %all, align 8, !dbg !1595
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1596
  store i64 %b, i64* %all1, align 8, !dbg !1597
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1598
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1599
  %0 = load i32, i32* %high, align 4, !dbg !1599
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1600
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1601
  %1 = load i32, i32* %high3, align 4, !dbg !1601
  %cmp = icmp slt i32 %0, %1, !dbg !1602
  br i1 %cmp, label %if.then, label %if.end, !dbg !1603

if.then:                                          ; preds = %entry
  br label %return, !dbg !1604

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1605
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1606
  %2 = load i32, i32* %high5, align 4, !dbg !1606
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1607
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1608
  %3 = load i32, i32* %high7, align 4, !dbg !1608
  %cmp8 = icmp sgt i32 %2, %3, !dbg !1609
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1610

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1611

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1612
  %4 = load i32, i32* %low, align 8, !dbg !1612
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1613
  %5 = load i32, i32* %low13, align 8, !dbg !1613
  %cmp14 = icmp ult i32 %4, %5, !dbg !1614
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1615

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1616

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1617
  %6 = load i32, i32* %low18, align 8, !dbg !1617
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1618
  %7 = load i32, i32* %low20, align 8, !dbg !1618
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1619
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1620

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1621

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1622

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1623
  ret i32 %retval.0, !dbg !1624
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !1625 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1626
  %sub = add nsw i32 %call, -1, !dbg !1627
  ret i32 %sub, !dbg !1628
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #2 !dbg !1629 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1630
  store i64 %a, i64* %all, align 8, !dbg !1631
  %low = bitcast %union.dwords* %x to i32*, !dbg !1632
  %0 = load i32, i32* %low, align 8, !dbg !1632
  %cmp = icmp eq i32 %0, 0, !dbg !1633
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1634
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1635
  %1 = load i32, i32* %high, align 4, !dbg !1635
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !1636
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !1637, !range !1561
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !1638
  %add = add nuw nsw i32 %3, %and5, !dbg !1639
  ret i32 %add, !dbg !1640
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #2 !dbg !1641 {
entry:
  %and = and i32 %a, 65535, !dbg !1642
  %cmp = icmp eq i32 %and, 0, !dbg !1643
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !1644
  %shr = lshr i32 %a, %shl, !dbg !1645
  %and1 = and i32 %shr, 255, !dbg !1646
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1647
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !1648
  %shr5 = lshr i32 %shr, %shl4, !dbg !1649
  %add = or i32 %shl, %shl4, !dbg !1650
  %and6 = and i32 %shr5, 15, !dbg !1651
  %cmp7 = icmp eq i32 %and6, 0, !dbg !1652
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !1653
  %shr10 = lshr i32 %shr5, %shl9, !dbg !1654
  %add11 = or i32 %add, %shl9, !dbg !1655
  %and12 = and i32 %shr10, 3, !dbg !1656
  %cmp13 = icmp eq i32 %and12, 0, !dbg !1657
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !1658
  %shr16 = lshr i32 %shr10, %shl15, !dbg !1659
  %add18 = or i32 %add11, %shl15, !dbg !1660
  %and17 = lshr i32 %shr16, 1, !dbg !1661
  %shr19 = and i32 %and17, 1, !dbg !1661
  %sub = sub nuw nsw i32 2, %shr19, !dbg !1662
  %0 = or i32 %shr16, -2, !dbg !1663
  %.neg = add nsw i32 %0, 1, !dbg !1663
  %and24 = and i32 %sub, %.neg, !dbg !1664
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !1665
  ret i32 %add25, !dbg !1666
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1667 {
entry:
  %shr = ashr i64 %a, 63, !dbg !1668
  %shr1 = ashr i64 %b, 63, !dbg !1669
  %xor = xor i64 %shr, %a, !dbg !1670
  %sub = sub nsw i64 %xor, %shr, !dbg !1671
  %xor2 = xor i64 %shr1, %b, !dbg !1672
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !1673
  %xor4 = xor i64 %shr, %shr1, !dbg !1674
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !1675
  %xor5 = xor i64 %call, %xor4, !dbg !1676
  %sub6 = sub i64 %xor5, %xor4, !dbg !1677
  ret i64 %sub6, !dbg !1678
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !1679 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1680
  store i64 %a, i64* %all, align 8, !dbg !1681
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1682
  store i64 %b, i64* %all1, align 8, !dbg !1683
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !1684
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1685
  %0 = load i32, i32* %high, align 4, !dbg !1685
  %cmp = icmp eq i32 %0, 0, !dbg !1686
  br i1 %cmp, label %if.then, label %if.end23, !dbg !1687

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1688
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1689
  %1 = load i32, i32* %high3, align 4, !dbg !1689
  %cmp4 = icmp eq i32 %1, 0, !dbg !1690
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !1691

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !1692
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !1692

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !1693
  %2 = load i32, i32* %low, align 8, !dbg !1693
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !1694
  %3 = load i32, i32* %low9, align 8, !dbg !1694
  %rem10 = urem i32 %2, %3, !dbg !1695
  %conv = zext i32 %rem10 to i64, !dbg !1696
  store i64 %conv, i64* %rem, align 8, !dbg !1697
  br label %if.end, !dbg !1698

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !1699
  %4 = load i32, i32* %low12, align 8, !dbg !1699
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !1700
  %5 = load i32, i32* %low14, align 8, !dbg !1700
  %div = udiv i32 %4, %5, !dbg !1701
  %conv15 = zext i32 %div to i64, !dbg !1702
  br label %return, !dbg !1703

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !1704
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !1704

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !1705
  %6 = load i32, i32* %low20, align 8, !dbg !1705
  %conv21 = zext i32 %6 to i64, !dbg !1706
  store i64 %conv21, i64* %rem, align 8, !dbg !1707
  br label %if.end22, !dbg !1708

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !1709

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !1710
  %7 = load i32, i32* %low25, align 8, !dbg !1710
  %cmp26 = icmp eq i32 %7, 0, !dbg !1711
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !1712

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1713
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !1714
  %8 = load i32, i32* %high30, align 4, !dbg !1714
  %cmp31 = icmp eq i32 %8, 0, !dbg !1715
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !1716

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !1717
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !1717

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1718
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !1719
  %9 = load i32, i32* %high37, align 4, !dbg !1719
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !1720
  %10 = load i32, i32* %low39, align 8, !dbg !1720
  %rem40 = urem i32 %9, %10, !dbg !1721
  %conv41 = zext i32 %rem40 to i64, !dbg !1722
  store i64 %conv41, i64* %rem, align 8, !dbg !1723
  br label %if.end42, !dbg !1724

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1725
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !1726
  %11 = load i32, i32* %high44, align 4, !dbg !1726
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !1727
  %12 = load i32, i32* %low46, align 8, !dbg !1727
  %div47 = udiv i32 %11, %12, !dbg !1728
  %conv48 = zext i32 %div47 to i64, !dbg !1729
  br label %return, !dbg !1730

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !1731
  %13 = load i32, i32* %low51, align 8, !dbg !1731
  %cmp52 = icmp eq i32 %13, 0, !dbg !1732
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !1733

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !1734
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !1734

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1735
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !1736
  %14 = load i32, i32* %high58, align 4, !dbg !1736
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1737
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !1738
  %15 = load i32, i32* %high60, align 4, !dbg !1738
  %rem61 = urem i32 %14, %15, !dbg !1739
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1740
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !1741
  store i32 %rem61, i32* %high63, align 4, !dbg !1742
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !1743
  store i32 0, i32* %low65, align 8, !dbg !1744
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1745
  %16 = load i64, i64* %all66, align 8, !dbg !1745
  store i64 %16, i64* %rem, align 8, !dbg !1746
  br label %if.end67, !dbg !1747

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1748
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !1749
  %17 = load i32, i32* %high69, align 4, !dbg !1749
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1750
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !1751
  %18 = load i32, i32* %high71, align 4, !dbg !1751
  %div72 = udiv i32 %17, %18, !dbg !1752
  %conv73 = zext i32 %div72 to i64, !dbg !1753
  br label %return, !dbg !1754

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1755
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !1756
  %19 = load i32, i32* %high76, align 4, !dbg !1756
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1757
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !1758
  %20 = load i32, i32* %high78, align 4, !dbg !1758
  %sub = add i32 %20, -1, !dbg !1759
  %and = and i32 %19, %sub, !dbg !1760
  %cmp79 = icmp eq i32 %and, 0, !dbg !1761
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !1762

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !1763
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !1763

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !1764
  %21 = load i32, i32* %low85, align 8, !dbg !1764
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !1765
  store i32 %21, i32* %low87, align 8, !dbg !1766
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1767
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !1768
  %22 = load i32, i32* %high89, align 4, !dbg !1768
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1769
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !1770
  %23 = load i32, i32* %high91, align 4, !dbg !1770
  %sub92 = add i32 %23, -1, !dbg !1771
  %and93 = and i32 %22, %sub92, !dbg !1772
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1773
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !1774
  store i32 %and93, i32* %high95, align 4, !dbg !1775
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1776
  %24 = load i64, i64* %all96, align 8, !dbg !1776
  store i64 %24, i64* %rem, align 8, !dbg !1777
  br label %if.end97, !dbg !1778

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1779
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !1780
  %25 = load i32, i32* %high99, align 4, !dbg !1780
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1781
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !1782
  %26 = load i32, i32* %high101, align 4, !dbg !1782
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !1783, !range !1561
  %shr = lshr i32 %25, %27, !dbg !1784
  %conv102 = zext i32 %shr to i64, !dbg !1785
  br label %return, !dbg !1786

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1787
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !1788
  %28 = load i32, i32* %high105, align 4, !dbg !1788
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !1789, !range !1561
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1790
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !1791
  %30 = load i32, i32* %high107, align 4, !dbg !1791
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !1792, !range !1561
  %sub108 = sub nsw i32 %29, %31, !dbg !1793
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !1794
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !1795

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !1796
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !1796

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1797
  %32 = load i64, i64* %all114, align 8, !dbg !1797
  store i64 %32, i64* %rem, align 8, !dbg !1798
  br label %if.end115, !dbg !1799

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !1800

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !1801
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !1802
  store i32 0, i32* %low118, align 8, !dbg !1803
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !1804
  %33 = load i32, i32* %low120, align 8, !dbg !1804
  %sub121 = sub nsw i32 31, %sub108, !dbg !1805
  %shl = shl i32 %33, %sub121, !dbg !1806
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1807
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !1808
  store i32 %shl, i32* %high123, align 4, !dbg !1809
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1810
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !1811
  %34 = load i32, i32* %high125, align 4, !dbg !1811
  %shr126 = lshr i32 %34, %inc, !dbg !1812
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1813
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !1814
  store i32 %shr126, i32* %high128, align 4, !dbg !1815
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1816
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !1817
  %35 = load i32, i32* %high130, align 4, !dbg !1817
  %sub131 = sub nsw i32 31, %sub108, !dbg !1818
  %shl132 = shl i32 %35, %sub131, !dbg !1819
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !1820
  %36 = load i32, i32* %low134, align 8, !dbg !1820
  %shr135 = lshr i32 %36, %inc, !dbg !1821
  %or = or i32 %shl132, %shr135, !dbg !1822
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !1823
  store i32 %or, i32* %low137, align 8, !dbg !1824
  br label %if.end317, !dbg !1825

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1826
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !1827
  %37 = load i32, i32* %high139, align 4, !dbg !1827
  %cmp140 = icmp eq i32 %37, 0, !dbg !1828
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !1829

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !1830
  %38 = load i32, i32* %low144, align 8, !dbg !1830
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !1831, !range !1561
  %cmp149 = icmp ult i32 %39, 2, !dbg !1831
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !1832

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !1833
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !1833

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !1834
  %40 = load i32, i32* %low155, align 8, !dbg !1834
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !1835
  %41 = load i32, i32* %low157, align 8, !dbg !1835
  %sub158 = add i32 %41, -1, !dbg !1836
  %and159 = and i32 %40, %sub158, !dbg !1837
  %conv160 = zext i32 %and159 to i64, !dbg !1838
  store i64 %conv160, i64* %rem, align 8, !dbg !1839
  br label %if.end161, !dbg !1840

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !1841
  %42 = load i32, i32* %low163, align 8, !dbg !1841
  %cmp164 = icmp eq i32 %42, 1, !dbg !1842
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !1843

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1844
  %43 = load i64, i64* %all167, align 8, !dbg !1844
  br label %return, !dbg !1845

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !1846
  %44 = load i32, i32* %low170, align 8, !dbg !1846
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !1847, !range !1561
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1848
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !1849
  %46 = load i32, i32* %high172, align 4, !dbg !1849
  %shr173 = lshr i32 %46, %45, !dbg !1850
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1851
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !1852
  store i32 %shr173, i32* %high175, align 4, !dbg !1853
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1854
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !1855
  %47 = load i32, i32* %high177, align 4, !dbg !1855
  %sub178 = sub nuw nsw i32 32, %45, !dbg !1856
  %shl179 = shl i32 %47, %sub178, !dbg !1857
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !1858
  %48 = load i32, i32* %low181, align 8, !dbg !1858
  %shr182 = lshr i32 %48, %45, !dbg !1859
  %or183 = or i32 %shl179, %shr182, !dbg !1860
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !1861
  store i32 %or183, i32* %low185, align 8, !dbg !1862
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1863
  %49 = load i64, i64* %all186, align 8, !dbg !1863
  br label %return, !dbg !1864

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !1865
  %50 = load i32, i32* %low189, align 8, !dbg !1865
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !1866, !range !1561
  %add = add nuw nsw i32 %51, 33, !dbg !1867
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1868
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !1869
  %52 = load i32, i32* %high191, align 4, !dbg !1869
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !1870, !range !1561
  %sub192 = sub nsw i32 %add, %53, !dbg !1871
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !1872
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !1873

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !1874
  store i32 0, i32* %low197, align 8, !dbg !1875
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !1876
  %54 = load i32, i32* %low199, align 8, !dbg !1876
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1877
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !1878
  store i32 %54, i32* %high201, align 4, !dbg !1879
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1880
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !1881
  store i32 0, i32* %high203, align 4, !dbg !1882
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1883
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !1884
  %55 = load i32, i32* %high205, align 4, !dbg !1884
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !1885
  store i32 %55, i32* %low207, align 8, !dbg !1886
  br label %if.end262, !dbg !1887

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !1888
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !1889

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !1890
  store i32 0, i32* %low213, align 8, !dbg !1891
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !1892
  %56 = load i32, i32* %low215, align 8, !dbg !1892
  %sub216 = sub nsw i32 32, %sub192, !dbg !1893
  %shl217 = shl i32 %56, %sub216, !dbg !1894
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1895
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !1896
  store i32 %shl217, i32* %high219, align 4, !dbg !1897
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1898
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !1899
  %57 = load i32, i32* %high221, align 4, !dbg !1899
  %shr222 = lshr i32 %57, %sub192, !dbg !1900
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1901
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !1902
  store i32 %shr222, i32* %high224, align 4, !dbg !1903
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1904
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !1905
  %58 = load i32, i32* %high226, align 4, !dbg !1905
  %sub227 = sub nsw i32 32, %sub192, !dbg !1906
  %shl228 = shl i32 %58, %sub227, !dbg !1907
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !1908
  %59 = load i32, i32* %low230, align 8, !dbg !1908
  %shr231 = lshr i32 %59, %sub192, !dbg !1909
  %or232 = or i32 %shl228, %shr231, !dbg !1910
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !1911
  store i32 %or232, i32* %low234, align 8, !dbg !1912
  br label %if.end261, !dbg !1913

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !1914
  %60 = load i32, i32* %low237, align 8, !dbg !1914
  %sub238 = sub nsw i32 64, %sub192, !dbg !1915
  %shl239 = shl i32 %60, %sub238, !dbg !1916
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !1917
  store i32 %shl239, i32* %low241, align 8, !dbg !1918
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1919
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !1920
  %61 = load i32, i32* %high243, align 4, !dbg !1920
  %sub244 = sub nsw i32 64, %sub192, !dbg !1921
  %shl245 = shl i32 %61, %sub244, !dbg !1922
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !1923
  %62 = load i32, i32* %low247, align 8, !dbg !1923
  %sub248 = add nsw i32 %sub192, -32, !dbg !1924
  %shr249 = lshr i32 %62, %sub248, !dbg !1925
  %or250 = or i32 %shl245, %shr249, !dbg !1926
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1927
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !1928
  store i32 %or250, i32* %high252, align 4, !dbg !1929
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1930
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !1931
  store i32 0, i32* %high254, align 4, !dbg !1932
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1933
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !1934
  %63 = load i32, i32* %high256, align 4, !dbg !1934
  %sub257 = add nsw i32 %sub192, -32, !dbg !1935
  %shr258 = lshr i32 %63, %sub257, !dbg !1936
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !1937
  store i32 %shr258, i32* %low260, align 8, !dbg !1938
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !1939

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1940
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !1941
  %64 = load i32, i32* %high265, align 4, !dbg !1941
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !1942, !range !1561
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1943
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !1944
  %66 = load i32, i32* %high267, align 4, !dbg !1944
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !1945, !range !1561
  %sub268 = sub nsw i32 %65, %67, !dbg !1946
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !1947
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !1948

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !1949
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !1949

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1950
  %68 = load i64, i64* %all274, align 8, !dbg !1950
  store i64 %68, i64* %rem, align 8, !dbg !1951
  br label %if.end275, !dbg !1952

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !1953

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !1954
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !1955
  store i32 0, i32* %low279, align 8, !dbg !1956
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !1957
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !1958

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !1959
  %69 = load i32, i32* %low284, align 8, !dbg !1959
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1960
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !1961
  store i32 %69, i32* %high286, align 4, !dbg !1962
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1963
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !1964
  store i32 0, i32* %high288, align 4, !dbg !1965
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1966
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !1967
  %70 = load i32, i32* %high290, align 4, !dbg !1967
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !1968
  store i32 %70, i32* %low292, align 8, !dbg !1969
  br label %if.end315, !dbg !1970

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !1971
  %71 = load i32, i32* %low295, align 8, !dbg !1971
  %sub296 = sub nsw i32 31, %sub268, !dbg !1972
  %shl297 = shl i32 %71, %sub296, !dbg !1973
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1974
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !1975
  store i32 %shl297, i32* %high299, align 4, !dbg !1976
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1977
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !1978
  %72 = load i32, i32* %high301, align 4, !dbg !1978
  %shr302 = lshr i32 %72, %inc277, !dbg !1979
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1980
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !1981
  store i32 %shr302, i32* %high304, align 4, !dbg !1982
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1983
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !1984
  %73 = load i32, i32* %high306, align 4, !dbg !1984
  %sub307 = sub nsw i32 31, %sub268, !dbg !1985
  %shl308 = shl i32 %73, %sub307, !dbg !1986
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !1987
  %74 = load i32, i32* %low310, align 8, !dbg !1987
  %shr311 = lshr i32 %74, %inc277, !dbg !1988
  %or312 = or i32 %shl308, %shr311, !dbg !1989
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !1990
  store i32 %or312, i32* %low314, align 8, !dbg !1991
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !1992
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !1992
  br label %for.cond, !dbg !1993

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !1992
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !1992
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !1994
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !1993

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1995
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !1996
  %75 = load i32, i32* %high321, align 4, !dbg !1996
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !1997
  %76 = load i32, i32* %low324, align 8, !dbg !1997
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !1998
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1999
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !2000
  store i32 %or326, i32* %high328, align 4, !dbg !2001
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !2002
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !2003
  %77 = load i32, i32* %high333, align 4, !dbg !2003
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !2004
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !2005
  store i32 %or335, i32* %low337, align 8, !dbg !2006
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !2007
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !2008
  %78 = load i32, i32* %high339, align 4, !dbg !2008
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !2009
  %79 = load i32, i32* %low342, align 8, !dbg !2009
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !2010
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !2011
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !2012
  store i32 %or344, i32* %high346, align 4, !dbg !2013
  %shl349 = shl i32 %79, 1, !dbg !2014
  %or350 = or i32 %shl349, %carry.0, !dbg !2015
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !2016
  store i32 %or350, i32* %low352, align 8, !dbg !2017
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !2018
  %80 = load i64, i64* %all354, align 8, !dbg !2018
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !2019
  %81 = load i64, i64* %all355, align 8, !dbg !2019
  %82 = xor i64 %81, -1, !dbg !2020
  %sub357 = add i64 %80, %82, !dbg !2020
  %isneg = icmp slt i64 %sub357, 0, !dbg !2021
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !2021
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !2022
  %sub364 = sub i64 %81, %and362, !dbg !2023
  store i64 %sub364, i64* %all363, align 8, !dbg !2023
  br label %for.inc, !dbg !2024

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !2025
  %conv360 = trunc i64 %and359 to i32, !dbg !2026
  %dec = add i32 %sr.2, -1, !dbg !2027
  br label %for.cond, !dbg !1993, !llvm.loop !2028

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !2029
  %83 = load i64, i64* %all365, align 8, !dbg !2029
  %shl366 = shl i64 %83, 1, !dbg !2030
  %conv367 = zext i32 %carry.0 to i64, !dbg !2031
  %or368 = or i64 %shl366, %conv367, !dbg !2032
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !2033
  store i64 %or368, i64* %all369, align 8, !dbg !2034
  %tobool370.not = icmp eq i64* %rem, null, !dbg !2035
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !2035

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !2036
  %84 = load i64, i64* %all372, align 8, !dbg !2036
  store i64 %84, i64* %rem, align 8, !dbg !2037
  br label %if.end373, !dbg !2038

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !2039
  %85 = load i64, i64* %all374, align 8, !dbg !2039
  br label %return, !dbg !2040

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !1992
  ret i64 %retval.0, !dbg !2041
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !2042 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !2043
  %mul = mul nsw i64 %call, %b, !dbg !2044
  %sub = sub nsw i64 %a, %mul, !dbg !2045
  store i64 %sub, i64* %rem, align 8, !dbg !2046
  ret i64 %call, !dbg !2047
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !2048 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !2049
  %mul = mul nsw i32 %call, %b, !dbg !2050
  %sub = sub nsw i32 %a, %mul, !dbg !2051
  store i32 %sub, i32* %rem, align 4, !dbg !2052
  ret i32 %call, !dbg !2053
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !2054 {
entry:
  %shr = ashr i32 %a, 31, !dbg !2055
  %shr1 = ashr i32 %b, 31, !dbg !2056
  %xor = xor i32 %shr, %a, !dbg !2057
  %sub = sub nsw i32 %xor, %shr, !dbg !2058
  %xor2 = xor i32 %shr1, %b, !dbg !2059
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !2060
  %xor4 = xor i32 %shr, %shr1, !dbg !2061
  %div = udiv i32 %sub, %sub3, !dbg !2062
  %xor5 = xor i32 %div, %xor4, !dbg !2063
  %sub6 = sub i32 %xor5, %xor4, !dbg !2064
  ret i32 %sub6, !dbg !2065
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #2 !dbg !2066 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !2067
  store i64 %a, i64* %all, align 8, !dbg !2068
  %low = bitcast %union.dwords* %x to i32*, !dbg !2069
  %0 = load i32, i32* %low, align 8, !dbg !2069
  %cmp = icmp eq i32 %0, 0, !dbg !2070
  br i1 %cmp, label %if.then, label %if.end6, !dbg !2071

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !2072
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !2073
  %1 = load i32, i32* %high, align 4, !dbg !2073
  %cmp2 = icmp eq i32 %1, 0, !dbg !2074
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2075

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !2076

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !2077
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !2078
  %2 = load i32, i32* %high5, align 4, !dbg !2078
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !2079, !range !1561
  %add = add nuw nsw i32 %3, 33, !dbg !2080
  br label %return, !dbg !2081

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !2082
  %4 = load i32, i32* %low8, align 8, !dbg !2082
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !2083, !range !1561
  %add9 = add nuw nsw i32 %5, 1, !dbg !2084
  br label %return, !dbg !2085

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !2086
  ret i32 %retval.0, !dbg !2087
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #2 !dbg !2088 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !2089
  br i1 %cmp, label %if.then, label %if.end, !dbg !2090

if.then:                                          ; preds = %entry
  br label %return, !dbg !2091

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !2092, !range !1561
  %add = add nuw nsw i32 %0, 1, !dbg !2093
  br label %return, !dbg !2094

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !2095
  ret i32 %retval.0, !dbg !2096
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !2097 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !2098
  store i64 %a, i64* %all, align 8, !dbg !2099
  %and = and i32 %b, 32, !dbg !2100
  %tobool.not = icmp eq i32 %and, 0, !dbg !2100
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !2101

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !2102
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !2103
  store i32 0, i32* %high, align 4, !dbg !2104
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !2105
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !2106
  %0 = load i32, i32* %high2, align 4, !dbg !2106
  %sub = add nsw i32 %b, -32, !dbg !2107
  %shr = lshr i32 %0, %sub, !dbg !2108
  %low = bitcast %union.dwords* %result to i32*, !dbg !2109
  store i32 %shr, i32* %low, align 8, !dbg !2110
  br label %if.end18, !dbg !2111

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !2112
  br i1 %cmp, label %if.then4, label %if.end, !dbg !2113

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !2114

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !2115
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !2116
  %1 = load i32, i32* %high6, align 4, !dbg !2116
  %shr7 = lshr i32 %1, %b, !dbg !2117
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !2118
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !2119
  store i32 %shr7, i32* %high9, align 4, !dbg !2120
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !2121
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !2122
  %2 = load i32, i32* %high11, align 4, !dbg !2122
  %sub12 = sub nsw i32 32, %b, !dbg !2123
  %shl = shl i32 %2, %sub12, !dbg !2124
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !2125
  %3 = load i32, i32* %low14, align 8, !dbg !2125
  %shr15 = lshr i32 %3, %b, !dbg !2126
  %or = or i32 %shl, %shr15, !dbg !2127
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !2128
  store i32 %or, i32* %low17, align 8, !dbg !2129
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !2130
  %4 = load i64, i64* %all19, align 8, !dbg !2130
  br label %return, !dbg !2131

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !2132
  ret i64 %retval.0, !dbg !2133
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !2134 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !2135
  %shr1 = ashr i64 %a, 63, !dbg !2136
  %xor2 = xor i64 %shr1, %a, !dbg !2137
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !2138
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !2139
  %1 = load i64, i64* %r, align 8, !dbg !2140
  %xor4 = xor i64 %1, %shr1, !dbg !2141
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !2142
  ret i64 %sub5, !dbg !2143
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !2144 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !2145
  %mul = mul nsw i32 %call, %b, !dbg !2146
  %sub = sub nsw i32 %a, %mul, !dbg !2147
  ret i32 %sub, !dbg !2148
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !2149 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !2150
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2151

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !2152
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !2153

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !2154
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2155

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !2156

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !2157
  unreachable, !dbg !2157

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !2158
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !2159

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !2160
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !2161

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !2162
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !2163

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !2164

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !2165
  unreachable, !dbg !2165

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !2166
  %xor = xor i64 %shr, %a, !dbg !2167
  %sub = sub nsw i64 %xor, %shr, !dbg !2168
  %shr14 = ashr i64 %b, 63, !dbg !2169
  %xor15 = xor i64 %shr14, %b, !dbg !2170
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !2171
  %cmp17 = icmp slt i64 %sub, 2, !dbg !2172
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !2173

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !2174
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !2175

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !2176

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !2177
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !2178

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !2179
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !2180
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !2181

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !2182
  unreachable, !dbg !2182

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !2183

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !2184
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !2185
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !2186
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2187

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !2188
  unreachable, !dbg !2188

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !2189

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !2190
  ret i64 %retval.0, !dbg !2191
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !2192 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !2193
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2194

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !2195
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !2196

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !2197
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2198

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !2199

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !2200
  unreachable, !dbg !2200

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !2201
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !2202

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !2203
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !2204

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !2205
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !2206

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !2207

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !2208
  unreachable, !dbg !2208

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !2209
  %xor = xor i32 %shr, %a, !dbg !2210
  %sub = sub nsw i32 %xor, %shr, !dbg !2211
  %shr14 = ashr i32 %b, 31, !dbg !2212
  %xor15 = xor i32 %shr14, %b, !dbg !2213
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !2214
  %cmp17 = icmp slt i32 %sub, 2, !dbg !2215
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !2216

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !2217
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !2218

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !2219

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !2220
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !2221

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !2222
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !2223
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !2224

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !2225
  unreachable, !dbg !2225

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !2226

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !2227
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !2228
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !2229
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2230

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !2231
  unreachable, !dbg !2231

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !2232

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !2233
  ret i32 %retval.0, !dbg !2234
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #2 !dbg !2235 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !2236
  store i64 %a, i64* %all, align 8, !dbg !2237
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !2238
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !2239
  %0 = load i32, i32* %high, align 4, !dbg !2239
  %low = bitcast %union.dwords* %x to i32*, !dbg !2240
  %1 = load i32, i32* %low, align 8, !dbg !2240
  %xor = xor i32 %0, %1, !dbg !2241
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !2242
  ret i32 %call, !dbg !2243
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #2 !dbg !2244 {
entry:
  %shr = lshr i32 %a, 16, !dbg !2245
  %xor = xor i32 %shr, %a, !dbg !2246
  %shr1 = lshr i32 %xor, 8, !dbg !2247
  %xor2 = xor i32 %xor, %shr1, !dbg !2248
  %shr3 = lshr i32 %xor2, 4, !dbg !2249
  %xor4 = xor i32 %xor2, %shr3, !dbg !2250
  %and = and i32 %xor4, 15, !dbg !2251
  %shr5 = lshr i32 27030, %and, !dbg !2252
  %and6 = and i32 %shr5, 1, !dbg !2253
  ret i32 %and6, !dbg !2254
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #2 !dbg !2255 {
entry:
  %shr = lshr i64 %a, 1, !dbg !2256
  %and = and i64 %shr, 6148914691236517205, !dbg !2257
  %sub = sub i64 %a, %and, !dbg !2258
  %shr1 = lshr i64 %sub, 2, !dbg !2259
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !2260
  %and3 = and i64 %sub, 3689348814741910323, !dbg !2261
  %add = add nuw nsw i64 %and2, %and3, !dbg !2262
  %shr4 = lshr i64 %add, 4, !dbg !2263
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !2264
  %and6 = and i64 %add5, 1085102592571150095, !dbg !2265
  %shr7 = lshr i64 %and6, 32, !dbg !2266
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !2267
  %conv = trunc i64 %add8 to i32, !dbg !2268
  %shr9 = lshr i32 %conv, 16, !dbg !2269
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !2270
  %shr11 = lshr i32 %add10, 8, !dbg !2271
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !2272
  %and13 = and i32 %add12, 127, !dbg !2273
  ret i32 %and13, !dbg !2274
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #2 !dbg !2275 {
entry:
  %shr = lshr i32 %a, 1, !dbg !2276
  %and = and i32 %shr, 1431655765, !dbg !2277
  %sub = sub i32 %a, %and, !dbg !2278
  %shr1 = lshr i32 %sub, 2, !dbg !2279
  %and2 = and i32 %shr1, 858993459, !dbg !2280
  %and3 = and i32 %sub, 858993459, !dbg !2281
  %add = add nuw nsw i32 %and2, %and3, !dbg !2282
  %shr4 = lshr i32 %add, 4, !dbg !2283
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !2284
  %and6 = and i32 %add5, 252645135, !dbg !2285
  %shr7 = lshr i32 %and6, 16, !dbg !2286
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !2287
  %shr9 = lshr i32 %add8, 8, !dbg !2288
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !2289
  %and11 = and i32 %add10, 63, !dbg !2290
  ret i32 %and11, !dbg !2291
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !2292 {
entry:
  %sub = sub i64 %a, %b, !dbg !2293
  %cmp = icmp sgt i64 %b, -1, !dbg !2294
  br i1 %cmp, label %if.then, label %if.else, !dbg !2295

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !2296
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2297

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !2298
  unreachable, !dbg !2298

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !2299

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !2300
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !2301

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !2302
  unreachable, !dbg !2302

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !2303
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !2304 {
entry:
  %sub = sub i32 %a, %b, !dbg !2305
  %cmp = icmp sgt i32 %b, -1, !dbg !2306
  br i1 %cmp, label %if.then, label %if.else, !dbg !2307

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !2308
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2309

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !2310
  unreachable, !dbg !2310

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !2311

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !2312
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !2313

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !2314
  unreachable, !dbg !2314

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !2315
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !2316 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !2317
  store i64 %a, i64* %all, align 8, !dbg !2318
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !2319
  store i64 %b, i64* %all1, align 8, !dbg !2320
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !2321
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !2322
  %0 = load i32, i32* %high, align 4, !dbg !2322
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !2323
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !2324
  %1 = load i32, i32* %high3, align 4, !dbg !2324
  %cmp = icmp ult i32 %0, %1, !dbg !2325
  br i1 %cmp, label %if.then, label %if.end, !dbg !2326

if.then:                                          ; preds = %entry
  br label %return, !dbg !2327

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !2328
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !2329
  %2 = load i32, i32* %high5, align 4, !dbg !2329
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !2330
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !2331
  %3 = load i32, i32* %high7, align 4, !dbg !2331
  %cmp8 = icmp ugt i32 %2, %3, !dbg !2332
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2333

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !2334

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !2335
  %4 = load i32, i32* %low, align 8, !dbg !2335
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !2336
  %5 = load i32, i32* %low13, align 8, !dbg !2336
  %cmp14 = icmp ult i32 %4, %5, !dbg !2337
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2338

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !2339

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !2340
  %6 = load i32, i32* %low18, align 8, !dbg !2340
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !2341
  %7 = load i32, i32* %low20, align 8, !dbg !2341
  %cmp21 = icmp ugt i32 %6, %7, !dbg !2342
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2343

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !2344

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !2345

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !2346
  ret i32 %retval.0, !dbg !2347
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !2348 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !2349
  %sub = add nsw i32 %call, -1, !dbg !2350
  ret i32 %sub, !dbg !2351
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !2352 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !2353
  ret i64 %call, !dbg !2354
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !2355 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !2356
  %mul = mul i32 %call, %b, !dbg !2357
  %sub = sub i32 %a, %mul, !dbg !2358
  store i32 %sub, i32* %rem, align 4, !dbg !2359
  ret i32 %call, !dbg !2360
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #2 !dbg !2361 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !2362
  br i1 %cmp, label %if.then, label %if.end, !dbg !2363

if.then:                                          ; preds = %entry
  br label %return, !dbg !2364

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !2365
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2366

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !2367

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !2368, !range !1561
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !2369, !range !1561
  %sub = sub nsw i32 %0, %1, !dbg !2370
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !2371
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2372

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !2373

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !2374
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2375

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !2376

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !2377
  %sub10 = sub nsw i32 31, %sub, !dbg !2378
  %shl = shl i32 %n, %sub10, !dbg !2379
  %shr = lshr i32 %n, %inc, !dbg !2380
  br label %for.cond, !dbg !2381

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !2382
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !2382
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !2382
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !2382
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !2383
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !2381

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !2384
  %2 = xor i32 %or, -1, !dbg !2385
  %sub17 = add i32 %2, %d, !dbg !2385
  br label %for.inc, !dbg !2386

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !2387
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !2387
  %sub20 = sub i32 %or, %and19, !dbg !2388
  %and = lshr i32 %sub17, 31, !dbg !2389
  %shl14 = shl i32 %q.0, 1, !dbg !2390
  %or15 = or i32 %shl14, %carry.0, !dbg !2391
  %dec = add i32 %sr.0, -1, !dbg !2392
  br label %for.cond, !dbg !2381, !llvm.loop !2393

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !2394
  %or22 = or i32 %shl21, %carry.0, !dbg !2395
  br label %return, !dbg !2396

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !2382
  ret i32 %retval.0, !dbg !2397
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !2398 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !2399
  %0 = load i64, i64* %r, align 8, !dbg !2400
  ret i64 %0, !dbg !2401
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !2402 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !2403
  %mul = mul i32 %call, %b, !dbg !2404
  %sub = sub i32 %a, %mul, !dbg !2405
  ret i32 %sub, !dbg !2406
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #2 !dbg !2407 {
entry:
  br label %for.cond, !dbg !2408

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !2409
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !2410
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2411

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !2412
  %0 = load i8, i8* %arrayidx, align 1, !dbg !2412
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !2413
  store i8 %0, i8* %arrayidx1, align 1, !dbg !2414
  br label %for.inc, !dbg !2415

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !2416
  br label %for.cond, !dbg !2411, !llvm.loop !2417

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !2418
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #2 !dbg !2419 {
entry:
  br label %for.cond, !dbg !2420

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !2421
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !2422
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2423

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !2424
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !2425
  store i8 %conv, i8* %arrayidx, align 1, !dbg !2426
  br label %for.inc, !dbg !2427

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !2428
  br label %for.cond, !dbg !2423, !llvm.loop !2429

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !2430
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #1

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin noreturn "no-builtins" }

!llvm.dbg.cu = !{!2, !9, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265}
!llvm.ident = !{!267, !267, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268, !268}
!llvm.module.flags = !{!269, !270, !271, !272, !273, !274, !275, !276, !277}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cosf_solutions", scope: !2, file: !5, line: 37, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/cosf/cosf.c", directory: "/workspaces/llvmta/testcases/batchtest/complex_updates")
!4 = !{!0}
!5 = !DIFile(filename: "cosf/cosf.c", directory: "/workspaces/llvmta/testcases/batchtest")
!6 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "basicmath_bp", scope: !9, file: !17, line: 115, type: !144, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !14, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/cosf/wcclibm.c", directory: "/workspaces/llvmta/testcases/batchtest/complex_updates")
!11 = !{!6, !12, !13}
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !19, !21, !23, !25, !27, !29, !31, !33, !35, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !7, !142, !147, !149}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression(DW_OP_constu, 1078530010, DW_OP_stack_value))
!16 = distinct !DIGlobalVariable(name: "basicmath_pi", scope: !9, file: !17, line: 41, type: !18, isLocal: true, isDefinition: true)
!17 = !DIFile(filename: "cosf/wcclibm.c", directory: "/workspaces/llvmta/testcases/batchtest")
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression(DW_OP_constu, 866263400, DW_OP_stack_value))
!20 = distinct !DIGlobalVariable(name: "basicmath_pio2_lo", scope: !9, file: !17, line: 43, type: !18, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression(DW_OP_constu, 1070141402, DW_OP_stack_value))
!22 = distinct !DIGlobalVariable(name: "basicmath_pio2_hi", scope: !9, file: !17, line: 42, type: !18, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression(DW_OP_constu, 1042983595, DW_OP_stack_value))
!24 = distinct !DIGlobalVariable(name: "basicmath_pS0", scope: !9, file: !17, line: 44, type: !18, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression(DW_OP_constu, 3198595216, DW_OP_stack_value))
!26 = distinct !DIGlobalVariable(name: "basicmath_pS1", scope: !9, file: !17, line: 45, type: !18, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression(DW_OP_constu, 1045301928, DW_OP_stack_value))
!28 = distinct !DIGlobalVariable(name: "basicmath_pS2", scope: !9, file: !17, line: 46, type: !18, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression(DW_OP_constu, 3173257542, DW_OP_stack_value))
!30 = distinct !DIGlobalVariable(name: "basicmath_pS3", scope: !9, file: !17, line: 47, type: !18, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression(DW_OP_constu, 978288388, DW_OP_stack_value))
!32 = distinct !DIGlobalVariable(name: "basicmath_pS4", scope: !9, file: !17, line: 48, type: !18, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression(DW_OP_constu, 940699400, DW_OP_stack_value))
!34 = distinct !DIGlobalVariable(name: "basicmath_pS5", scope: !9, file: !17, line: 49, type: !18, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!36 = distinct !DIGlobalVariable(name: "basicmath_one", scope: !9, file: !37, line: 41, type: !18, isLocal: true, isDefinition: true)
!37 = !DIFile(filename: "cosf/wcclibm.h", directory: "/workspaces/llvmta/testcases/batchtest")
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression(DW_OP_constu, 3222917433, DW_OP_stack_value))
!39 = distinct !DIGlobalVariable(name: "basicmath_qS1", scope: !9, file: !17, line: 50, type: !18, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression(DW_OP_constu, 1073829677, DW_OP_stack_value))
!41 = distinct !DIGlobalVariable(name: "basicmath_qS2", scope: !9, file: !17, line: 51, type: !18, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression(DW_OP_constu, 3207607137, DW_OP_stack_value))
!43 = distinct !DIGlobalVariable(name: "basicmath_qS3", scope: !9, file: !17, line: 52, type: !18, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression(DW_OP_constu, 1033750062, DW_OP_stack_value))
!45 = distinct !DIGlobalVariable(name: "basicmath_qS4", scope: !9, file: !17, line: 53, type: !18, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!47 = distinct !DIGlobalVariable(name: "basicmath_zero", scope: !9, file: !37, line: 47, type: !18, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression(DW_OP_constu, 1900671690, DW_OP_stack_value))
!49 = distinct !DIGlobalVariable(name: "basicmath_huge", scope: !9, file: !37, line: 44, type: !18, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression(DW_OP_constu, 228737632, DW_OP_stack_value))
!51 = distinct !DIGlobalVariable(name: "basicmath_tiny", scope: !9, file: !37, line: 42, type: !18, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression(DW_OP_constu, 1069066752, DW_OP_stack_value))
!53 = distinct !DIGlobalVariable(name: "basicmath_ivln2_h", scope: !9, file: !17, line: 138, type: !18, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression(DW_OP_constu, 921478512, DW_OP_stack_value))
!55 = distinct !DIGlobalVariable(name: "basicmath_ivln2_l", scope: !9, file: !17, line: 139, type: !18, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression(DW_OP_constu, 1069066811, DW_OP_stack_value))
!57 = distinct !DIGlobalVariable(name: "basicmath_ivln2", scope: !9, file: !17, line: 137, type: !18, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression(DW_OP_constu, 1266679808, DW_OP_stack_value))
!59 = distinct !DIGlobalVariable(name: "basicmath_two24", scope: !9, file: !37, line: 46, type: !18, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression(DW_OP_constu, 1058642330, DW_OP_stack_value))
!61 = distinct !DIGlobalVariable(name: "basicmath_L1", scope: !9, file: !17, line: 119, type: !18, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression(DW_OP_constu, 1054567863, DW_OP_stack_value))
!63 = distinct !DIGlobalVariable(name: "basicmath_L2", scope: !9, file: !17, line: 120, type: !18, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression(DW_OP_constu, 1051372203, DW_OP_stack_value))
!65 = distinct !DIGlobalVariable(name: "basicmath_L3", scope: !9, file: !17, line: 121, type: !18, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression(DW_OP_constu, 1049338629, DW_OP_stack_value))
!67 = distinct !DIGlobalVariable(name: "basicmath_L4", scope: !9, file: !17, line: 122, type: !18, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression(DW_OP_constu, 1047278165, DW_OP_stack_value))
!69 = distinct !DIGlobalVariable(name: "basicmath_L5", scope: !9, file: !17, line: 123, type: !18, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression(DW_OP_constu, 1045688642, DW_OP_stack_value))
!71 = distinct !DIGlobalVariable(name: "basicmath_L6", scope: !9, file: !17, line: 124, type: !18, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression(DW_OP_constu, 1064712192, DW_OP_stack_value))
!73 = distinct !DIGlobalVariable(name: "basicmath_cp_h", scope: !9, file: !17, line: 135, type: !18, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression(DW_OP_constu, 916308896, DW_OP_stack_value))
!75 = distinct !DIGlobalVariable(name: "basicmath_cp_l", scope: !9, file: !17, line: 136, type: !18, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression(DW_OP_constu, 1064712271, DW_OP_stack_value))
!77 = distinct !DIGlobalVariable(name: "basicmath_cp", scope: !9, file: !17, line: 134, type: !18, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression(DW_OP_constu, 859351612, DW_OP_stack_value))
!79 = distinct !DIGlobalVariable(name: "basicmath_ovt", scope: !9, file: !17, line: 133, type: !18, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression(DW_OP_constu, 1060205056, DW_OP_stack_value))
!81 = distinct !DIGlobalVariable(name: "basicmath_lg2_h", scope: !9, file: !17, line: 131, type: !18, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression(DW_OP_constu, 1060205080, DW_OP_stack_value))
!83 = distinct !DIGlobalVariable(name: "basicmath_lg2", scope: !9, file: !17, line: 130, type: !18, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression(DW_OP_constu, 901758604, DW_OP_stack_value))
!85 = distinct !DIGlobalVariable(name: "basicmath_lg2_l", scope: !9, file: !17, line: 132, type: !18, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression(DW_OP_constu, 1042983595, DW_OP_stack_value))
!87 = distinct !DIGlobalVariable(name: "basicmath_P1", scope: !9, file: !17, line: 125, type: !18, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression(DW_OP_constu, 3140881249, DW_OP_stack_value))
!89 = distinct !DIGlobalVariable(name: "basicmath_P2", scope: !9, file: !17, line: 126, type: !18, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression(DW_OP_constu, 948613973, DW_OP_stack_value))
!91 = distinct !DIGlobalVariable(name: "basicmath_P3", scope: !9, file: !17, line: 127, type: !18, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression(DW_OP_constu, 3051219470, DW_OP_stack_value))
!93 = distinct !DIGlobalVariable(name: "basicmath_P4", scope: !9, file: !17, line: 128, type: !18, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression(DW_OP_constu, 858897228, DW_OP_stack_value))
!95 = distinct !DIGlobalVariable(name: "basicmath_P5", scope: !9, file: !17, line: 129, type: !18, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression(DW_OP_constu, 1073741824, DW_OP_stack_value))
!97 = distinct !DIGlobalVariable(name: "basicmath_two", scope: !9, file: !37, line: 45, type: !18, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression(DW_OP_constu, 1070141312, DW_OP_stack_value))
!99 = distinct !DIGlobalVariable(name: "basicmath_pio2_1", scope: !9, file: !17, line: 391, type: !18, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression(DW_OP_constu, 926237763, DW_OP_stack_value))
!101 = distinct !DIGlobalVariable(name: "basicmath_pio2_1t", scope: !9, file: !17, line: 392, type: !18, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression(DW_OP_constu, 926237696, DW_OP_stack_value))
!103 = distinct !DIGlobalVariable(name: "basicmath_pio2_2", scope: !9, file: !17, line: 393, type: !18, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression(DW_OP_constu, 780509960, DW_OP_stack_value))
!105 = distinct !DIGlobalVariable(name: "basicmath_pio2_2t", scope: !9, file: !17, line: 394, type: !18, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression(DW_OP_constu, 1059256708, DW_OP_stack_value))
!107 = distinct !DIGlobalVariable(name: "basicmath_invpio2", scope: !9, file: !17, line: 390, type: !18, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression(DW_OP_constu, 1056964608, DW_OP_stack_value))
!109 = distinct !DIGlobalVariable(name: "basicmath_half", scope: !9, file: !37, line: 43, type: !18, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression(DW_OP_constu, 780509952, DW_OP_stack_value))
!111 = distinct !DIGlobalVariable(name: "basicmath_pio2_3", scope: !9, file: !17, line: 395, type: !18, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression(DW_OP_constu, 613232946, DW_OP_stack_value))
!113 = distinct !DIGlobalVariable(name: "basicmath_pio2_3t", scope: !9, file: !17, line: 396, type: !18, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression(DW_OP_constu, 1026206379, DW_OP_stack_value))
!115 = distinct !DIGlobalVariable(name: "basicmath_C1", scope: !9, file: !17, line: 567, type: !18, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression(DW_OP_constu, 3132492641, DW_OP_stack_value))
!117 = distinct !DIGlobalVariable(name: "basicmath_C2", scope: !9, file: !17, line: 568, type: !18, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression(DW_OP_constu, 936381697, DW_OP_stack_value))
!119 = distinct !DIGlobalVariable(name: "basicmath_C3", scope: !9, file: !17, line: 569, type: !18, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression(DW_OP_constu, 3029594748, DW_OP_stack_value))
!121 = distinct !DIGlobalVariable(name: "basicmath_C4", scope: !9, file: !17, line: 570, type: !18, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression(DW_OP_constu, 823096566, DW_OP_stack_value))
!123 = distinct !DIGlobalVariable(name: "basicmath_C5", scope: !9, file: !17, line: 571, type: !18, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression(DW_OP_constu, 2907166542, DW_OP_stack_value))
!125 = distinct !DIGlobalVariable(name: "basicmath_C6", scope: !9, file: !17, line: 572, type: !18, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression(DW_OP_constu, 1007192201, DW_OP_stack_value))
!127 = distinct !DIGlobalVariable(name: "basicmath_S2", scope: !9, file: !17, line: 606, type: !18, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression(DW_OP_constu, 3109031169, DW_OP_stack_value))
!129 = distinct !DIGlobalVariable(name: "basicmath_S3", scope: !9, file: !17, line: 607, type: !18, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression(DW_OP_constu, 909700891, DW_OP_stack_value))
!131 = distinct !DIGlobalVariable(name: "basicmath_S4", scope: !9, file: !17, line: 608, type: !18, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression(DW_OP_constu, 3000446772, DW_OP_stack_value))
!133 = distinct !DIGlobalVariable(name: "basicmath_S5", scope: !9, file: !17, line: 609, type: !18, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression(DW_OP_constu, 791595475, DW_OP_stack_value))
!135 = distinct !DIGlobalVariable(name: "basicmath_S6", scope: !9, file: !17, line: 610, type: !18, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression(DW_OP_constu, 3190467243, DW_OP_stack_value))
!137 = distinct !DIGlobalVariable(name: "basicmath_S1", scope: !9, file: !17, line: 605, type: !18, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression(DW_OP_constu, 1275068416, DW_OP_stack_value))
!139 = distinct !DIGlobalVariable(name: "basicmath_two25", scope: !9, file: !17, line: 726, type: !18, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression(DW_OP_constu, 855638016, DW_OP_stack_value))
!141 = distinct !DIGlobalVariable(name: "basicmath_twom25", scope: !9, file: !17, line: 727, type: !18, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "basicmath_dp_l", scope: !9, file: !17, line: 117, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 2)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "basicmath_dp_h", scope: !9, file: !17, line: 116, type: !144, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "basicmath_npio2_hw", scope: !9, file: !17, line: 371, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 1024, elements: !153)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!153 = !{!154}
!154 = !DISubrange(count: 32)
!155 = distinct !DICompileUnit(language: DW_LANG_C99, file: !156, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!156 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!158 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!159 = distinct !DICompileUnit(language: DW_LANG_C99, file: !160, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!160 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!161 = distinct !DICompileUnit(language: DW_LANG_C99, file: !162, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!162 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!163 = distinct !DICompileUnit(language: DW_LANG_C99, file: !164, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!164 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!166 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!168 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!170 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!172 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!174 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!176 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!178 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!179 = distinct !DICompileUnit(language: DW_LANG_C99, file: !180, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!180 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!182 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!184 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!186 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!188 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!190 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!192 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!194 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!196 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!198 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!200 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!202 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!208 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!210 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!212 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!216 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!217 = distinct !DICompileUnit(language: DW_LANG_C99, file: !218, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!218 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!220 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!222 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!224 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!229 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!230 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!231 = distinct !DICompileUnit(language: DW_LANG_C99, file: !232, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!232 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!234 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!236 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!237 = distinct !DICompileUnit(language: DW_LANG_C99, file: !238, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!238 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!239 = distinct !DICompileUnit(language: DW_LANG_C99, file: !240, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!240 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!242 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!244 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!245 = distinct !DICompileUnit(language: DW_LANG_C99, file: !246, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!246 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!250 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!252 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!254 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!262 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!264 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !266, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!266 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!267 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)"}
!268 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!269 = !{i32 7, !"Dwarf Version", i32 5}
!270 = !{i32 2, !"Debug Info Version", i32 3}
!271 = !{i32 1, !"wchar_size", i32 4}
!272 = !{i32 1, !"min_enum_size", i32 4}
!273 = !{i32 1, !"branch-target-enforcement", i32 0}
!274 = !{i32 1, !"sign-return-address", i32 0}
!275 = !{i32 1, !"sign-return-address-all", i32 0}
!276 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!277 = !{i32 7, !"frame-pointer", i32 2}
!278 = distinct !DISubprogram(name: "cosf_init", scope: !5, file: !5, line: 43, type: !279, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !281)
!279 = !DISubroutineType(types: !280)
!280 = !{null}
!281 = !{}
!282 = !DILocation(line: 43, column: 39, scope: !278)
!283 = !DILocation(line: 43, column: 47, scope: !278)
!284 = distinct !DISubprogram(name: "cosf_return", scope: !5, file: !5, line: 49, type: !285, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !281)
!285 = !DISubroutineType(types: !286)
!286 = !{!13}
!287 = !DILocation(line: 50, column: 14, scope: !284)
!288 = !DILocalVariable(name: "temp", scope: !284, file: !5, line: 50, type: !13)
!289 = !DILocation(line: 0, scope: !284)
!290 = !DILocation(line: 52, column: 12, scope: !291)
!291 = distinct !DILexicalBlock(scope: !284, file: !5, line: 52, column: 7)
!292 = !DILocation(line: 52, column: 7, scope: !284)
!293 = !DILocation(line: 53, column: 5, scope: !291)
!294 = !DILocation(line: 55, column: 5, scope: !291)
!295 = !DILocation(line: 0, scope: !291)
!296 = !DILocation(line: 56, column: 1, scope: !284)
!297 = distinct !DISubprogram(name: "cosf_main", scope: !5, file: !5, line: 62, type: !279, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !281)
!298 = !DILocalVariable(name: "i", scope: !297, file: !5, line: 63, type: !6)
!299 = !DILocation(line: 0, scope: !297)
!300 = !DILocation(line: 64, column: 45, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !5, line: 64, column: 40)
!302 = !DILocation(line: 0, scope: !301)
!303 = !DILocation(line: 64, column: 57, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !5, line: 64, column: 40)
!305 = !DILocation(line: 64, column: 40, scope: !301)
!306 = !DILocation(line: 65, column: 25, scope: !304)
!307 = !DILocation(line: 65, column: 22, scope: !304)
!308 = !DILocation(line: 65, column: 7, scope: !304)
!309 = !DILocation(line: 64, column: 67, scope: !304)
!310 = !DILocation(line: 64, column: 40, scope: !304)
!311 = distinct !{!311, !305, !312, !313}
!312 = !DILocation(line: 65, column: 43, scope: !301)
!313 = !{!"llvm.loop.mustprogress"}
!314 = !DILocation(line: 66, column: 1, scope: !297)
!315 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 68, type: !285, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !281)
!316 = !DILocation(line: 69, column: 3, scope: !315)
!317 = !DILocation(line: 70, column: 3, scope: !315)
!318 = !DILocation(line: 71, column: 10, scope: !315)
!319 = !DILocation(line: 71, column: 3, scope: !315)
!320 = distinct !DISubprogram(name: "basicmath___ieee754_acosf", scope: !17, file: !17, line: 55, type: !321, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !281)
!321 = !DISubroutineType(types: !322)
!322 = !{!6, !6}
!323 = !DILocalVariable(name: "x", arg: 1, scope: !320, file: !17, line: 55, type: !6)
!324 = !DILocation(line: 0, scope: !320)
!325 = !DILocalVariable(name: "gf_u", scope: !326, file: !17, line: 59, type: !327)
!326 = distinct !DILexicalBlock(scope: !320, file: !17, line: 59, column: 3)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !328, line: 48, baseType: !329)
!328 = !DIFile(filename: "cosf/math_private.h", directory: "/workspaces/llvmta/testcases/batchtest")
!329 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !328, line: 45, size: 32, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !329, file: !328, line: 46, baseType: !6, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !329, file: !328, line: 47, baseType: !12, size: 32)
!333 = !DILocation(line: 0, scope: !326)
!334 = !DILocation(line: 59, column: 3, scope: !326)
!335 = !DILocalVariable(name: "hx", scope: !320, file: !17, line: 58, type: !13)
!336 = !DILocation(line: 60, column: 11, scope: !320)
!337 = !DILocalVariable(name: "ix", scope: !320, file: !17, line: 58, type: !13)
!338 = !DILocation(line: 61, column: 11, scope: !339)
!339 = distinct !DILexicalBlock(scope: !320, file: !17, line: 61, column: 8)
!340 = !DILocation(line: 61, column: 8, scope: !320)
!341 = !DILocation(line: 62, column: 13, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !17, line: 62, column: 10)
!343 = distinct !DILexicalBlock(scope: !339, file: !17, line: 61, column: 27)
!344 = !DILocation(line: 62, column: 10, scope: !343)
!345 = !DILocation(line: 62, column: 19, scope: !342)
!346 = !DILocation(line: 63, column: 10, scope: !342)
!347 = !DILocation(line: 65, column: 13, scope: !348)
!348 = distinct !DILexicalBlock(scope: !339, file: !17, line: 65, column: 10)
!349 = !DILocation(line: 65, column: 10, scope: !339)
!350 = !DILocation(line: 66, column: 18, scope: !351)
!351 = distinct !DILexicalBlock(scope: !348, file: !17, line: 65, column: 28)
!352 = !DILocation(line: 66, column: 30, scope: !351)
!353 = !DILocation(line: 66, column: 24, scope: !351)
!354 = !DILocation(line: 66, column: 7, scope: !351)
!355 = !DILocation(line: 68, column: 11, scope: !356)
!356 = distinct !DILexicalBlock(scope: !320, file: !17, line: 68, column: 8)
!357 = !DILocation(line: 68, column: 8, scope: !320)
!358 = !DILocation(line: 69, column: 13, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !17, line: 69, column: 10)
!360 = distinct !DILexicalBlock(scope: !356, file: !17, line: 68, column: 26)
!361 = !DILocation(line: 69, column: 10, scope: !360)
!362 = !DILocation(line: 69, column: 29, scope: !359)
!363 = !DILocation(line: 71, column: 11, scope: !360)
!364 = !DILocalVariable(name: "z", scope: !320, file: !17, line: 57, type: !6)
!365 = !DILocation(line: 74, column: 55, scope: !360)
!366 = !DILocation(line: 73, column: 53, scope: !360)
!367 = !DILocation(line: 72, column: 73, scope: !360)
!368 = !DILocation(line: 72, column: 51, scope: !360)
!369 = !DILocation(line: 72, column: 29, scope: !360)
!370 = !DILocation(line: 72, column: 11, scope: !360)
!371 = !DILocalVariable(name: "p", scope: !320, file: !17, line: 57, type: !6)
!372 = !DILocation(line: 76, column: 47, scope: !360)
!373 = !DILocation(line: 75, column: 67, scope: !360)
!374 = !DILocation(line: 75, column: 45, scope: !360)
!375 = !DILocation(line: 75, column: 23, scope: !360)
!376 = !DILocalVariable(name: "q", scope: !320, file: !17, line: 57, type: !6)
!377 = !DILocation(line: 77, column: 11, scope: !360)
!378 = !DILocalVariable(name: "r", scope: !320, file: !17, line: 57, type: !6)
!379 = !DILocation(line: 78, column: 58, scope: !360)
!380 = !DILocation(line: 78, column: 30, scope: !360)
!381 = !DILocation(line: 78, column: 5, scope: !360)
!382 = !DILocation(line: 80, column: 13, scope: !383)
!383 = distinct !DILexicalBlock(scope: !356, file: !17, line: 80, column: 10)
!384 = !DILocation(line: 80, column: 10, scope: !356)
!385 = !DILocation(line: 81, column: 27, scope: !386)
!386 = distinct !DILexicalBlock(scope: !383, file: !17, line: 80, column: 19)
!387 = !DILocation(line: 81, column: 33, scope: !386)
!388 = !DILocation(line: 84, column: 57, scope: !386)
!389 = !DILocation(line: 83, column: 55, scope: !386)
!390 = !DILocation(line: 82, column: 75, scope: !386)
!391 = !DILocation(line: 82, column: 53, scope: !386)
!392 = !DILocation(line: 82, column: 31, scope: !386)
!393 = !DILocation(line: 82, column: 13, scope: !386)
!394 = !DILocation(line: 86, column: 49, scope: !386)
!395 = !DILocation(line: 85, column: 69, scope: !386)
!396 = !DILocation(line: 85, column: 47, scope: !386)
!397 = !DILocation(line: 85, column: 25, scope: !386)
!398 = !DILocation(line: 87, column: 11, scope: !386)
!399 = !DILocalVariable(name: "s", scope: !320, file: !17, line: 57, type: !6)
!400 = !DILocation(line: 88, column: 13, scope: !386)
!401 = !DILocation(line: 89, column: 17, scope: !386)
!402 = !DILocalVariable(name: "w", scope: !320, file: !17, line: 57, type: !6)
!403 = !DILocation(line: 90, column: 49, scope: !386)
!404 = !DILocation(line: 90, column: 27, scope: !386)
!405 = !DILocation(line: 90, column: 7, scope: !386)
!406 = !DILocation(line: 93, column: 27, scope: !407)
!407 = distinct !DILexicalBlock(scope: !383, file: !17, line: 91, column: 12)
!408 = !DILocation(line: 93, column: 33, scope: !407)
!409 = !DILocation(line: 94, column: 11, scope: !407)
!410 = !DILocalVariable(name: "df", scope: !320, file: !17, line: 57, type: !6)
!411 = !DILocalVariable(name: "gf_u", scope: !412, file: !17, line: 96, type: !327)
!412 = distinct !DILexicalBlock(scope: !407, file: !17, line: 96, column: 7)
!413 = !DILocation(line: 0, scope: !412)
!414 = !DILocation(line: 96, column: 7, scope: !412)
!415 = !DILocalVariable(name: "idf", scope: !407, file: !17, line: 92, type: !13)
!416 = !DILocation(line: 0, scope: !407)
!417 = !DILocation(line: 97, column: 7, scope: !418)
!418 = distinct !DILexicalBlock(scope: !407, file: !17, line: 97, column: 7)
!419 = !DILocalVariable(name: "sf_u", scope: !418, file: !17, line: 97, type: !327)
!420 = !DILocation(line: 0, scope: !418)
!421 = !DILocation(line: 98, column: 16, scope: !407)
!422 = !DILocation(line: 98, column: 34, scope: !407)
!423 = !DILocation(line: 98, column: 28, scope: !407)
!424 = !DILocalVariable(name: "c", scope: !320, file: !17, line: 57, type: !6)
!425 = !DILocation(line: 101, column: 57, scope: !407)
!426 = !DILocation(line: 100, column: 55, scope: !407)
!427 = !DILocation(line: 99, column: 75, scope: !407)
!428 = !DILocation(line: 99, column: 53, scope: !407)
!429 = !DILocation(line: 99, column: 31, scope: !407)
!430 = !DILocation(line: 99, column: 13, scope: !407)
!431 = !DILocation(line: 103, column: 49, scope: !407)
!432 = !DILocation(line: 102, column: 69, scope: !407)
!433 = !DILocation(line: 102, column: 47, scope: !407)
!434 = !DILocation(line: 102, column: 25, scope: !407)
!435 = !DILocation(line: 104, column: 13, scope: !407)
!436 = !DILocation(line: 105, column: 17, scope: !407)
!437 = !DILocation(line: 106, column: 35, scope: !407)
!438 = !DILocation(line: 106, column: 28, scope: !407)
!439 = !DILocation(line: 106, column: 7, scope: !407)
!440 = !DILocation(line: 108, column: 1, scope: !320)
!441 = distinct !DISubprogram(name: "basicmath___ieee754_sqrtf", scope: !17, file: !17, line: 493, type: !321, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !281)
!442 = !DILocalVariable(name: "x", arg: 1, scope: !441, file: !17, line: 493, type: !6)
!443 = !DILocation(line: 0, scope: !441)
!444 = !DILocalVariable(name: "sign", scope: !441, file: !17, line: 496, type: !13)
!445 = !DILocalVariable(name: "gf_u", scope: !446, file: !17, line: 500, type: !327)
!446 = distinct !DILexicalBlock(scope: !441, file: !17, line: 500, column: 3)
!447 = !DILocation(line: 0, scope: !446)
!448 = !DILocation(line: 500, column: 3, scope: !446)
!449 = !DILocalVariable(name: "ix", scope: !441, file: !17, line: 497, type: !13)
!450 = !DILocation(line: 503, column: 13, scope: !451)
!451 = distinct !DILexicalBlock(scope: !441, file: !17, line: 503, column: 8)
!452 = !DILocation(line: 503, column: 28, scope: !451)
!453 = !DILocation(line: 503, column: 8, scope: !441)
!454 = !DILocation(line: 504, column: 18, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !17, line: 503, column: 44)
!456 = !DILocation(line: 504, column: 5, scope: !455)
!457 = !DILocation(line: 508, column: 11, scope: !458)
!458 = distinct !DILexicalBlock(scope: !441, file: !17, line: 508, column: 8)
!459 = !DILocation(line: 508, column: 8, scope: !441)
!460 = !DILocation(line: 509, column: 15, scope: !461)
!461 = distinct !DILexicalBlock(scope: !462, file: !17, line: 509, column: 10)
!462 = distinct !DILexicalBlock(scope: !458, file: !17, line: 508, column: 18)
!463 = !DILocation(line: 509, column: 29, scope: !461)
!464 = !DILocation(line: 509, column: 10, scope: !462)
!465 = !DILocation(line: 509, column: 36, scope: !461)
!466 = !DILocation(line: 511, column: 15, scope: !467)
!467 = distinct !DILexicalBlock(scope: !461, file: !17, line: 511, column: 12)
!468 = !DILocation(line: 511, column: 12, scope: !461)
!469 = !DILocation(line: 512, column: 20, scope: !467)
!470 = !DILocation(line: 512, column: 32, scope: !467)
!471 = !DILocation(line: 512, column: 26, scope: !467)
!472 = !DILocation(line: 512, column: 9, scope: !467)
!473 = !DILocation(line: 513, column: 3, scope: !462)
!474 = !DILocation(line: 515, column: 12, scope: !441)
!475 = !DILocalVariable(name: "m", scope: !441, file: !17, line: 497, type: !13)
!476 = !DILocation(line: 516, column: 10, scope: !477)
!477 = distinct !DILexicalBlock(scope: !441, file: !17, line: 516, column: 8)
!478 = !DILocation(line: 516, column: 8, scope: !441)
!479 = !DILocalVariable(name: "i", scope: !441, file: !17, line: 497, type: !13)
!480 = !DILocation(line: 518, column: 11, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !17, line: 518, column: 5)
!482 = distinct !DILexicalBlock(scope: !477, file: !17, line: 516, column: 17)
!483 = !DILocation(line: 0, scope: !481)
!484 = !DILocation(line: 518, column: 23, scope: !485)
!485 = distinct !DILexicalBlock(scope: !481, file: !17, line: 518, column: 5)
!486 = !DILocation(line: 518, column: 38, scope: !485)
!487 = !DILocation(line: 518, column: 5, scope: !481)
!488 = !DILocation(line: 519, column: 7, scope: !485)
!489 = !DILocation(line: 519, column: 10, scope: !485)
!490 = !DILocation(line: 518, column: 45, scope: !485)
!491 = !DILocation(line: 518, column: 5, scope: !485)
!492 = distinct !{!492, !487, !493, !313}
!493 = !DILocation(line: 519, column: 14, scope: !481)
!494 = !DILocation(line: 520, column: 12, scope: !482)
!495 = !DILocation(line: 520, column: 7, scope: !482)
!496 = !DILocation(line: 521, column: 3, scope: !482)
!497 = !DILocation(line: 522, column: 5, scope: !441)
!498 = !DILocation(line: 523, column: 13, scope: !441)
!499 = !DILocation(line: 523, column: 28, scope: !441)
!500 = !DILocation(line: 524, column: 10, scope: !501)
!501 = distinct !DILexicalBlock(scope: !441, file: !17, line: 524, column: 8)
!502 = !DILocation(line: 524, column: 8, scope: !441)
!503 = !DILocation(line: 525, column: 8, scope: !501)
!504 = !DILocation(line: 525, column: 5, scope: !501)
!505 = !DILocalVariable(name: "s", scope: !441, file: !17, line: 497, type: !13)
!506 = !DILocalVariable(name: "q", scope: !441, file: !17, line: 497, type: !13)
!507 = !DILocalVariable(name: "r", scope: !441, file: !17, line: 498, type: !12)
!508 = !DILocation(line: 534, column: 3, scope: !441)
!509 = !DILocation(line: 534, column: 13, scope: !441)
!510 = !DILocation(line: 535, column: 11, scope: !511)
!511 = distinct !DILexicalBlock(scope: !441, file: !17, line: 534, column: 20)
!512 = !DILocalVariable(name: "t", scope: !441, file: !17, line: 497, type: !13)
!513 = !DILocation(line: 537, column: 16, scope: !511)
!514 = !DILocation(line: 538, column: 11, scope: !511)
!515 = !DILocation(line: 542, column: 7, scope: !511)
!516 = distinct !{!516, !508, !517, !313}
!517 = !DILocation(line: 543, column: 3, scope: !441)
!518 = !DILocation(line: 546, column: 11, scope: !519)
!519 = distinct !DILexicalBlock(scope: !441, file: !17, line: 546, column: 8)
!520 = !DILocation(line: 546, column: 8, scope: !441)
!521 = !DILocalVariable(name: "z", scope: !441, file: !17, line: 495, type: !6)
!522 = !DILocation(line: 548, column: 10, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !17, line: 546, column: 18)
!524 = !DILocation(line: 550, column: 12, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !17, line: 548, column: 31)
!526 = distinct !DILexicalBlock(scope: !523, file: !17, line: 548, column: 10)
!527 = !DILocation(line: 551, column: 9, scope: !528)
!528 = distinct !DILexicalBlock(scope: !525, file: !17, line: 550, column: 12)
!529 = !DILocation(line: 554, column: 5, scope: !525)
!530 = !DILocation(line: 555, column: 3, scope: !523)
!531 = !DILocation(line: 556, column: 12, scope: !441)
!532 = !DILocation(line: 556, column: 19, scope: !441)
!533 = !DILocation(line: 557, column: 13, scope: !441)
!534 = !DILocation(line: 557, column: 6, scope: !441)
!535 = !DILocalVariable(name: "sf_u", scope: !536, file: !17, line: 558, type: !327)
!536 = distinct !DILexicalBlock(scope: !441, file: !17, line: 558, column: 3)
!537 = !DILocation(line: 0, scope: !536)
!538 = !DILocation(line: 558, column: 3, scope: !536)
!539 = !DILocation(line: 559, column: 3, scope: !441)
!540 = !DILocation(line: 560, column: 1, scope: !441)
!541 = distinct !DISubprogram(name: "basicmath___ieee754_powf", scope: !17, file: !17, line: 141, type: !542, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !281)
!542 = !DISubroutineType(types: !543)
!543 = !{!6, !6, !6}
!544 = !DILocalVariable(name: "x", arg: 1, scope: !541, file: !17, line: 141, type: !6)
!545 = !DILocation(line: 0, scope: !541)
!546 = !DILocalVariable(name: "y", arg: 2, scope: !541, file: !17, line: 141, type: !6)
!547 = !DILocalVariable(name: "gf_u", scope: !548, file: !17, line: 148, type: !327)
!548 = distinct !DILexicalBlock(scope: !541, file: !17, line: 148, column: 3)
!549 = !DILocation(line: 0, scope: !548)
!550 = !DILocation(line: 148, column: 3, scope: !548)
!551 = !DILocalVariable(name: "hx", scope: !541, file: !17, line: 146, type: !13)
!552 = !DILocalVariable(name: "gf_u", scope: !553, file: !17, line: 149, type: !327)
!553 = distinct !DILexicalBlock(scope: !541, file: !17, line: 149, column: 3)
!554 = !DILocation(line: 0, scope: !553)
!555 = !DILocation(line: 149, column: 3, scope: !553)
!556 = !DILocalVariable(name: "hy", scope: !541, file: !17, line: 146, type: !13)
!557 = !DILocation(line: 150, column: 11, scope: !541)
!558 = !DILocalVariable(name: "ix", scope: !541, file: !17, line: 146, type: !13)
!559 = !DILocation(line: 151, column: 11, scope: !541)
!560 = !DILocalVariable(name: "iy", scope: !541, file: !17, line: 146, type: !13)
!561 = !DILocation(line: 154, column: 11, scope: !562)
!562 = distinct !DILexicalBlock(scope: !541, file: !17, line: 154, column: 8)
!563 = !DILocation(line: 154, column: 8, scope: !541)
!564 = !DILocation(line: 154, column: 18, scope: !562)
!565 = !DILocation(line: 157, column: 10, scope: !566)
!566 = distinct !DILexicalBlock(scope: !541, file: !17, line: 157, column: 8)
!567 = !DILocation(line: 157, column: 8, scope: !541)
!568 = !DILocation(line: 157, column: 20, scope: !566)
!569 = !DILocation(line: 158, column: 10, scope: !570)
!570 = distinct !DILexicalBlock(scope: !541, file: !17, line: 158, column: 8)
!571 = !DILocation(line: 158, column: 19, scope: !570)
!572 = !DILocation(line: 158, column: 22, scope: !570)
!573 = !DILocation(line: 158, column: 8, scope: !541)
!574 = !DILocation(line: 158, column: 48, scope: !570)
!575 = !DILocation(line: 161, column: 11, scope: !576)
!576 = distinct !DILexicalBlock(scope: !541, file: !17, line: 161, column: 8)
!577 = !DILocation(line: 161, column: 24, scope: !576)
!578 = !DILocation(line: 162, column: 11, scope: !576)
!579 = !DILocation(line: 161, column: 8, scope: !541)
!580 = !DILocation(line: 163, column: 14, scope: !576)
!581 = !DILocation(line: 163, column: 5, scope: !576)
!582 = !DILocalVariable(name: "yisint", scope: !541, file: !17, line: 145, type: !13)
!583 = !DILocation(line: 171, column: 11, scope: !584)
!584 = distinct !DILexicalBlock(scope: !541, file: !17, line: 171, column: 8)
!585 = !DILocation(line: 171, column: 8, scope: !541)
!586 = !DILocation(line: 172, column: 13, scope: !587)
!587 = distinct !DILexicalBlock(scope: !588, file: !17, line: 172, column: 10)
!588 = distinct !DILexicalBlock(scope: !584, file: !17, line: 171, column: 17)
!589 = !DILocation(line: 172, column: 10, scope: !588)
!590 = !DILocation(line: 172, column: 29, scope: !587)
!591 = !DILocation(line: 174, column: 15, scope: !592)
!592 = distinct !DILexicalBlock(scope: !587, file: !17, line: 174, column: 12)
!593 = !DILocation(line: 174, column: 12, scope: !587)
!594 = !DILocation(line: 175, column: 18, scope: !595)
!595 = distinct !DILexicalBlock(scope: !592, file: !17, line: 174, column: 31)
!596 = !DILocalVariable(name: "k", scope: !541, file: !17, line: 145, type: !13)
!597 = !DILocation(line: 176, column: 24, scope: !595)
!598 = !DILocation(line: 176, column: 16, scope: !595)
!599 = !DILocalVariable(name: "j", scope: !541, file: !17, line: 145, type: !13)
!600 = !DILocation(line: 177, column: 26, scope: !601)
!601 = distinct !DILexicalBlock(scope: !595, file: !17, line: 177, column: 14)
!602 = !DILocation(line: 177, column: 18, scope: !601)
!603 = !DILocation(line: 177, column: 34, scope: !601)
!604 = !DILocation(line: 177, column: 14, scope: !595)
!605 = !DILocation(line: 177, column: 59, scope: !601)
!606 = !DILocation(line: 177, column: 53, scope: !601)
!607 = !DILocation(line: 177, column: 42, scope: !601)
!608 = !DILocation(line: 178, column: 7, scope: !595)
!609 = !DILocation(line: 0, scope: !587)
!610 = !DILocation(line: 179, column: 3, scope: !588)
!611 = !DILocation(line: 182, column: 11, scope: !612)
!612 = distinct !DILexicalBlock(scope: !541, file: !17, line: 182, column: 8)
!613 = !DILocation(line: 182, column: 8, scope: !541)
!614 = !DILocation(line: 183, column: 13, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !17, line: 183, column: 10)
!616 = distinct !DILexicalBlock(scope: !612, file: !17, line: 182, column: 27)
!617 = !DILocation(line: 183, column: 10, scope: !616)
!618 = !DILocation(line: 184, column: 17, scope: !615)
!619 = !DILocation(line: 184, column: 7, scope: !615)
!620 = !DILocation(line: 186, column: 15, scope: !621)
!621 = distinct !DILexicalBlock(scope: !615, file: !17, line: 186, column: 12)
!622 = !DILocation(line: 186, column: 12, scope: !615)
!623 = !DILocation(line: 187, column: 21, scope: !621)
!624 = !DILocation(line: 187, column: 16, scope: !621)
!625 = !DILocation(line: 187, column: 9, scope: !621)
!626 = !DILocation(line: 189, column: 21, scope: !621)
!627 = !DILocation(line: 189, column: 16, scope: !621)
!628 = !DILocation(line: 189, column: 29, scope: !621)
!629 = !DILocation(line: 189, column: 9, scope: !621)
!630 = !DILocation(line: 191, column: 11, scope: !631)
!631 = distinct !DILexicalBlock(scope: !541, file: !17, line: 191, column: 8)
!632 = !DILocation(line: 191, column: 8, scope: !541)
!633 = !DILocation(line: 192, column: 13, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !17, line: 192, column: 10)
!635 = distinct !DILexicalBlock(scope: !631, file: !17, line: 191, column: 27)
!636 = !DILocation(line: 192, column: 10, scope: !635)
!637 = !DILocation(line: 192, column: 40, scope: !634)
!638 = !DILocation(line: 192, column: 19, scope: !634)
!639 = !DILocation(line: 193, column: 10, scope: !634)
!640 = !DILocation(line: 195, column: 11, scope: !641)
!641 = distinct !DILexicalBlock(scope: !541, file: !17, line: 195, column: 8)
!642 = !DILocation(line: 195, column: 8, scope: !541)
!643 = !DILocation(line: 195, column: 36, scope: !641)
!644 = !DILocation(line: 195, column: 27, scope: !641)
!645 = !DILocation(line: 196, column: 11, scope: !646)
!646 = distinct !DILexicalBlock(scope: !541, file: !17, line: 196, column: 8)
!647 = !DILocation(line: 196, column: 8, scope: !541)
!648 = !DILocation(line: 197, column: 13, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !17, line: 197, column: 10)
!650 = distinct !DILexicalBlock(scope: !646, file: !17, line: 196, column: 27)
!651 = !DILocation(line: 197, column: 10, scope: !650)
!652 = !DILocation(line: 198, column: 14, scope: !649)
!653 = !DILocation(line: 198, column: 7, scope: !649)
!654 = !DILocation(line: 199, column: 3, scope: !650)
!655 = !DILocation(line: 201, column: 10, scope: !541)
!656 = !DILocalVariable(name: "ax", scope: !541, file: !17, line: 143, type: !6)
!657 = !DILocation(line: 203, column: 11, scope: !658)
!658 = distinct !DILexicalBlock(scope: !541, file: !17, line: 203, column: 8)
!659 = !DILocation(line: 203, column: 25, scope: !658)
!660 = !DILocation(line: 203, column: 31, scope: !658)
!661 = !DILocation(line: 203, column: 36, scope: !658)
!662 = !DILocation(line: 203, column: 42, scope: !658)
!663 = !DILocation(line: 203, column: 8, scope: !541)
!664 = !DILocalVariable(name: "z", scope: !541, file: !17, line: 143, type: !6)
!665 = !DILocation(line: 205, column: 13, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !17, line: 205, column: 10)
!667 = distinct !DILexicalBlock(scope: !658, file: !17, line: 203, column: 58)
!668 = !DILocation(line: 205, column: 10, scope: !667)
!669 = !DILocation(line: 205, column: 37, scope: !666)
!670 = !DILocation(line: 205, column: 19, scope: !666)
!671 = !DILocation(line: 0, scope: !667)
!672 = !DILocation(line: 206, column: 13, scope: !673)
!673 = distinct !DILexicalBlock(scope: !667, file: !17, line: 206, column: 10)
!674 = !DILocation(line: 206, column: 10, scope: !667)
!675 = !DILocation(line: 207, column: 19, scope: !676)
!676 = distinct !DILexicalBlock(scope: !677, file: !17, line: 207, column: 12)
!677 = distinct !DILexicalBlock(scope: !673, file: !17, line: 206, column: 19)
!678 = !DILocation(line: 207, column: 34, scope: !676)
!679 = !DILocation(line: 207, column: 45, scope: !676)
!680 = !DILocation(line: 207, column: 12, scope: !677)
!681 = !DILocation(line: 208, column: 17, scope: !682)
!682 = distinct !DILexicalBlock(scope: !676, file: !17, line: 207, column: 52)
!683 = !DILocation(line: 208, column: 29, scope: !682)
!684 = !DILocation(line: 208, column: 23, scope: !682)
!685 = !DILocation(line: 209, column: 7, scope: !682)
!686 = !DILocation(line: 210, column: 21, scope: !687)
!687 = distinct !DILexicalBlock(scope: !676, file: !17, line: 210, column: 14)
!688 = !DILocation(line: 210, column: 14, scope: !676)
!689 = !DILocation(line: 211, column: 15, scope: !687)
!690 = !DILocation(line: 211, column: 11, scope: !687)
!691 = !DILocation(line: 0, scope: !676)
!692 = !DILocation(line: 212, column: 5, scope: !677)
!693 = !DILocation(line: 213, column: 5, scope: !667)
!694 = !DILocation(line: 217, column: 30, scope: !695)
!695 = distinct !DILexicalBlock(scope: !541, file: !17, line: 217, column: 8)
!696 = !DILocation(line: 217, column: 38, scope: !695)
!697 = !DILocation(line: 217, column: 44, scope: !695)
!698 = !DILocation(line: 217, column: 55, scope: !695)
!699 = !DILocation(line: 217, column: 8, scope: !541)
!700 = !DILocation(line: 217, column: 73, scope: !695)
!701 = !DILocation(line: 218, column: 13, scope: !695)
!702 = !DILocation(line: 217, column: 79, scope: !695)
!703 = !DILocation(line: 217, column: 62, scope: !695)
!704 = !DILocation(line: 221, column: 11, scope: !705)
!705 = distinct !DILexicalBlock(scope: !541, file: !17, line: 221, column: 8)
!706 = !DILocation(line: 221, column: 8, scope: !541)
!707 = !DILocation(line: 223, column: 13, scope: !708)
!708 = distinct !DILexicalBlock(scope: !709, file: !17, line: 223, column: 10)
!709 = distinct !DILexicalBlock(scope: !705, file: !17, line: 221, column: 26)
!710 = !DILocation(line: 223, column: 10, scope: !709)
!711 = !DILocation(line: 223, column: 40, scope: !708)
!712 = !DILocation(line: 223, column: 35, scope: !708)
!713 = !DILocation(line: 223, column: 28, scope: !708)
!714 = !DILocation(line: 225, column: 13, scope: !715)
!715 = distinct !DILexicalBlock(scope: !709, file: !17, line: 225, column: 10)
!716 = !DILocation(line: 225, column: 10, scope: !709)
!717 = !DILocation(line: 225, column: 40, scope: !715)
!718 = !DILocation(line: 225, column: 35, scope: !715)
!719 = !DILocation(line: 225, column: 28, scope: !715)
!720 = !DILocation(line: 229, column: 11, scope: !709)
!721 = !DILocalVariable(name: "t", scope: !541, file: !17, line: 144, type: !6)
!722 = !DILocation(line: 230, column: 13, scope: !709)
!723 = !DILocation(line: 230, column: 70, scope: !709)
!724 = !DILocation(line: 230, column: 37, scope: !709)
!725 = !DILocation(line: 230, column: 19, scope: !709)
!726 = !DILocalVariable(name: "w", scope: !541, file: !17, line: 144, type: !6)
!727 = !DILocation(line: 232, column: 27, scope: !709)
!728 = !DILocalVariable(name: "u", scope: !541, file: !17, line: 144, type: !6)
!729 = !DILocation(line: 233, column: 31, scope: !709)
!730 = !DILocalVariable(name: "v", scope: !541, file: !17, line: 144, type: !6)
!731 = !DILocation(line: 234, column: 12, scope: !709)
!732 = !DILocalVariable(name: "t1", scope: !541, file: !17, line: 144, type: !6)
!733 = !DILocalVariable(name: "gf_u", scope: !734, file: !17, line: 235, type: !327)
!734 = distinct !DILexicalBlock(scope: !709, file: !17, line: 235, column: 5)
!735 = !DILocation(line: 0, scope: !734)
!736 = !DILocation(line: 235, column: 5, scope: !734)
!737 = !DILocalVariable(name: "is", scope: !541, file: !17, line: 146, type: !13)
!738 = !DILocation(line: 236, column: 5, scope: !739)
!739 = distinct !DILexicalBlock(scope: !709, file: !17, line: 236, column: 5)
!740 = !DILocalVariable(name: "sf_u", scope: !739, file: !17, line: 236, type: !327)
!741 = !DILocation(line: 0, scope: !739)
!742 = !DILocation(line: 237, column: 19, scope: !709)
!743 = !DILocation(line: 237, column: 12, scope: !709)
!744 = !DILocalVariable(name: "t2", scope: !541, file: !17, line: 144, type: !6)
!745 = !DILocation(line: 238, column: 3, scope: !709)
!746 = !DILocalVariable(name: "n", scope: !541, file: !17, line: 145, type: !13)
!747 = !DILocation(line: 242, column: 13, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !17, line: 242, column: 10)
!749 = distinct !DILexicalBlock(scope: !705, file: !17, line: 238, column: 10)
!750 = !DILocation(line: 242, column: 10, scope: !749)
!751 = !DILocation(line: 243, column: 10, scope: !752)
!752 = distinct !DILexicalBlock(scope: !748, file: !17, line: 242, column: 28)
!753 = !DILocalVariable(name: "gf_u", scope: !754, file: !17, line: 245, type: !327)
!754 = distinct !DILexicalBlock(scope: !752, file: !17, line: 245, column: 7)
!755 = !DILocation(line: 0, scope: !754)
!756 = !DILocation(line: 245, column: 7, scope: !754)
!757 = !DILocation(line: 246, column: 5, scope: !752)
!758 = !DILocation(line: 0, scope: !749)
!759 = !DILocation(line: 247, column: 20, scope: !749)
!760 = !DILocation(line: 247, column: 28, scope: !749)
!761 = !DILocation(line: 247, column: 8, scope: !749)
!762 = !DILocation(line: 248, column: 13, scope: !749)
!763 = !DILocation(line: 250, column: 12, scope: !749)
!764 = !DILocation(line: 251, column: 12, scope: !765)
!765 = distinct !DILexicalBlock(scope: !749, file: !17, line: 251, column: 10)
!766 = !DILocation(line: 251, column: 10, scope: !749)
!767 = !DILocation(line: 251, column: 26, scope: !765)
!768 = !DILocation(line: 253, column: 14, scope: !769)
!769 = distinct !DILexicalBlock(scope: !765, file: !17, line: 253, column: 12)
!770 = !DILocation(line: 253, column: 12, scope: !765)
!771 = !DILocation(line: 253, column: 27, scope: !769)
!772 = !DILocation(line: 256, column: 11, scope: !773)
!773 = distinct !DILexicalBlock(scope: !769, file: !17, line: 254, column: 12)
!774 = !DILocation(line: 257, column: 12, scope: !773)
!775 = !DILocation(line: 0, scope: !769)
!776 = !DILocation(line: 0, scope: !765)
!777 = !DILocation(line: 250, column: 8, scope: !749)
!778 = !DILocalVariable(name: "sf_u", scope: !779, file: !17, line: 259, type: !327)
!779 = distinct !DILexicalBlock(scope: !749, file: !17, line: 259, column: 5)
!780 = !DILocation(line: 0, scope: !779)
!781 = !DILocation(line: 259, column: 5, scope: !779)
!782 = !DILocation(line: 262, column: 14, scope: !749)
!783 = !DILocation(line: 262, column: 12, scope: !749)
!784 = !DILocation(line: 263, column: 30, scope: !749)
!785 = !DILocation(line: 263, column: 23, scope: !749)
!786 = !DILocation(line: 264, column: 11, scope: !749)
!787 = !DILocalVariable(name: "s", scope: !541, file: !17, line: 144, type: !6)
!788 = !DILocalVariable(name: "s_h", scope: !749, file: !17, line: 239, type: !6)
!789 = !DILocalVariable(name: "gf_u", scope: !790, file: !17, line: 266, type: !327)
!790 = distinct !DILexicalBlock(scope: !749, file: !17, line: 266, column: 5)
!791 = !DILocation(line: 0, scope: !790)
!792 = !DILocation(line: 266, column: 5, scope: !790)
!793 = !DILocation(line: 267, column: 5, scope: !794)
!794 = distinct !DILexicalBlock(scope: !749, file: !17, line: 267, column: 5)
!795 = !DILocalVariable(name: "sf_u", scope: !794, file: !17, line: 267, type: !327)
!796 = !DILocation(line: 0, scope: !794)
!797 = !DILocation(line: 269, column: 5, scope: !798)
!798 = distinct !DILexicalBlock(scope: !749, file: !17, line: 269, column: 5)
!799 = !DILocalVariable(name: "sf_u", scope: !798, file: !17, line: 269, type: !327)
!800 = !DILocation(line: 0, scope: !798)
!801 = !DILocalVariable(name: "t_h", scope: !749, file: !17, line: 239, type: !6)
!802 = !DILocation(line: 270, column: 24, scope: !749)
!803 = !DILocation(line: 270, column: 22, scope: !749)
!804 = !DILocation(line: 270, column: 14, scope: !749)
!805 = !DILocalVariable(name: "t_l", scope: !749, file: !17, line: 239, type: !6)
!806 = !DILocation(line: 271, column: 21, scope: !749)
!807 = !DILocation(line: 271, column: 35, scope: !749)
!808 = !DILocation(line: 271, column: 13, scope: !749)
!809 = !DILocalVariable(name: "s_l", scope: !749, file: !17, line: 239, type: !6)
!810 = !DILocation(line: 273, column: 12, scope: !749)
!811 = !DILocalVariable(name: "s2", scope: !749, file: !17, line: 239, type: !6)
!812 = !DILocation(line: 274, column: 12, scope: !749)
!813 = !DILocation(line: 276, column: 62, scope: !749)
!814 = !DILocation(line: 275, column: 80, scope: !749)
!815 = !DILocation(line: 275, column: 58, scope: !749)
!816 = !DILocation(line: 274, column: 56, scope: !749)
!817 = !DILocation(line: 274, column: 34, scope: !749)
!818 = !DILocation(line: 274, column: 17, scope: !749)
!819 = !DILocalVariable(name: "r", scope: !541, file: !17, line: 144, type: !6)
!820 = !DILocation(line: 277, column: 22, scope: !749)
!821 = !DILocation(line: 277, column: 7, scope: !749)
!822 = !DILocation(line: 278, column: 15, scope: !749)
!823 = !DILocation(line: 279, column: 25, scope: !749)
!824 = !DILocation(line: 279, column: 30, scope: !749)
!825 = !DILocalVariable(name: "gf_u", scope: !826, file: !17, line: 280, type: !327)
!826 = distinct !DILexicalBlock(scope: !749, file: !17, line: 280, column: 5)
!827 = !DILocation(line: 0, scope: !826)
!828 = !DILocation(line: 280, column: 5, scope: !826)
!829 = !DILocation(line: 281, column: 5, scope: !830)
!830 = distinct !DILexicalBlock(scope: !749, file: !17, line: 281, column: 5)
!831 = !DILocalVariable(name: "sf_u", scope: !830, file: !17, line: 281, type: !327)
!832 = !DILocation(line: 0, scope: !830)
!833 = !DILocation(line: 282, column: 23, scope: !749)
!834 = !DILocation(line: 282, column: 41, scope: !749)
!835 = !DILocation(line: 282, column: 13, scope: !749)
!836 = !DILocation(line: 284, column: 13, scope: !749)
!837 = !DILocation(line: 285, column: 25, scope: !749)
!838 = !DILocation(line: 285, column: 19, scope: !749)
!839 = !DILocation(line: 287, column: 13, scope: !749)
!840 = !DILocalVariable(name: "p_h", scope: !541, file: !17, line: 143, type: !6)
!841 = !DILocalVariable(name: "gf_u", scope: !842, file: !17, line: 288, type: !327)
!842 = distinct !DILexicalBlock(scope: !749, file: !17, line: 288, column: 5)
!843 = !DILocation(line: 0, scope: !842)
!844 = !DILocation(line: 288, column: 5, scope: !842)
!845 = !DILocation(line: 289, column: 5, scope: !846)
!846 = distinct !DILexicalBlock(scope: !749, file: !17, line: 289, column: 5)
!847 = !DILocalVariable(name: "sf_u", scope: !846, file: !17, line: 289, type: !327)
!848 = !DILocation(line: 0, scope: !846)
!849 = !DILocation(line: 290, column: 21, scope: !749)
!850 = !DILocation(line: 290, column: 13, scope: !749)
!851 = !DILocalVariable(name: "p_l", scope: !541, file: !17, line: 143, type: !6)
!852 = !DILocation(line: 291, column: 26, scope: !749)
!853 = !DILocalVariable(name: "z_h", scope: !541, file: !17, line: 143, type: !6)
!854 = !DILocation(line: 292, column: 38, scope: !749)
!855 = !DILocation(line: 292, column: 32, scope: !749)
!856 = !DILocation(line: 292, column: 55, scope: !749)
!857 = !DILocation(line: 292, column: 53, scope: !749)
!858 = !DILocalVariable(name: "z_l", scope: !541, file: !17, line: 143, type: !6)
!859 = !DILocation(line: 294, column: 9, scope: !749)
!860 = !DILocation(line: 295, column: 20, scope: !749)
!861 = !DILocation(line: 295, column: 30, scope: !749)
!862 = !DILocation(line: 295, column: 28, scope: !749)
!863 = !DILocation(line: 295, column: 52, scope: !749)
!864 = !DILocalVariable(name: "gf_u", scope: !865, file: !17, line: 296, type: !327)
!865 = distinct !DILexicalBlock(scope: !749, file: !17, line: 296, column: 5)
!866 = !DILocation(line: 0, scope: !865)
!867 = !DILocation(line: 296, column: 5, scope: !865)
!868 = !DILocation(line: 297, column: 5, scope: !869)
!869 = distinct !DILexicalBlock(scope: !749, file: !17, line: 297, column: 5)
!870 = !DILocalVariable(name: "sf_u", scope: !869, file: !17, line: 297, type: !327)
!871 = !DILocation(line: 0, scope: !869)
!872 = !DILocation(line: 298, column: 25, scope: !749)
!873 = !DILocation(line: 298, column: 33, scope: !749)
!874 = !DILocation(line: 298, column: 31, scope: !749)
!875 = !DILocation(line: 298, column: 55, scope: !749)
!876 = !DILocation(line: 298, column: 14, scope: !749)
!877 = !DILocation(line: 0, scope: !705)
!878 = !DILocation(line: 302, column: 30, scope: !879)
!879 = distinct !DILexicalBlock(scope: !541, file: !17, line: 302, column: 8)
!880 = !DILocation(line: 302, column: 38, scope: !879)
!881 = !DILocation(line: 302, column: 55, scope: !879)
!882 = !DILocation(line: 302, column: 44, scope: !879)
!883 = !DILocation(line: 302, column: 63, scope: !879)
!884 = !DILocation(line: 302, column: 8, scope: !541)
!885 = !DILocation(line: 303, column: 5, scope: !879)
!886 = !DILocalVariable(name: "gf_u", scope: !887, file: !17, line: 306, type: !327)
!887 = distinct !DILexicalBlock(scope: !541, file: !17, line: 306, column: 3)
!888 = !DILocation(line: 0, scope: !887)
!889 = !DILocation(line: 306, column: 3, scope: !887)
!890 = !DILocation(line: 307, column: 3, scope: !891)
!891 = distinct !DILexicalBlock(scope: !541, file: !17, line: 307, column: 3)
!892 = !DILocalVariable(name: "sf_u", scope: !891, file: !17, line: 307, type: !327)
!893 = !DILocation(line: 0, scope: !891)
!894 = !DILocalVariable(name: "y1", scope: !541, file: !17, line: 144, type: !6)
!895 = !DILocation(line: 308, column: 13, scope: !541)
!896 = !DILocation(line: 308, column: 29, scope: !541)
!897 = !DILocation(line: 308, column: 25, scope: !541)
!898 = !DILocation(line: 309, column: 12, scope: !541)
!899 = !DILocation(line: 310, column: 11, scope: !541)
!900 = !DILocalVariable(name: "gf_u", scope: !901, file: !17, line: 311, type: !327)
!901 = distinct !DILexicalBlock(scope: !541, file: !17, line: 311, column: 3)
!902 = !DILocation(line: 0, scope: !901)
!903 = !DILocation(line: 311, column: 3, scope: !901)
!904 = !DILocation(line: 312, column: 10, scope: !905)
!905 = distinct !DILexicalBlock(scope: !541, file: !17, line: 312, column: 8)
!906 = !DILocation(line: 312, column: 8, scope: !541)
!907 = !DILocation(line: 313, column: 14, scope: !905)
!908 = !DILocation(line: 313, column: 31, scope: !905)
!909 = !DILocation(line: 313, column: 5, scope: !905)
!910 = !DILocation(line: 315, column: 12, scope: !911)
!911 = distinct !DILexicalBlock(scope: !905, file: !17, line: 315, column: 10)
!912 = !DILocation(line: 315, column: 10, scope: !905)
!913 = !DILocation(line: 316, column: 16, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !17, line: 316, column: 12)
!915 = distinct !DILexicalBlock(scope: !911, file: !17, line: 315, column: 28)
!916 = !DILocation(line: 316, column: 36, scope: !914)
!917 = !DILocation(line: 316, column: 32, scope: !914)
!918 = !DILocation(line: 316, column: 12, scope: !915)
!919 = !DILocation(line: 316, column: 53, scope: !914)
!920 = !DILocation(line: 316, column: 70, scope: !914)
!921 = !DILocation(line: 316, column: 44, scope: !914)
!922 = !DILocation(line: 318, column: 5, scope: !915)
!923 = !DILocation(line: 319, column: 16, scope: !924)
!924 = distinct !DILexicalBlock(scope: !911, file: !17, line: 319, column: 12)
!925 = !DILocation(line: 319, column: 31, scope: !924)
!926 = !DILocation(line: 319, column: 12, scope: !911)
!927 = !DILocation(line: 320, column: 18, scope: !924)
!928 = !DILocation(line: 320, column: 35, scope: !924)
!929 = !DILocation(line: 320, column: 9, scope: !924)
!930 = !DILocation(line: 322, column: 30, scope: !931)
!931 = distinct !DILexicalBlock(scope: !924, file: !17, line: 322, column: 14)
!932 = !DILocation(line: 322, column: 14, scope: !924)
!933 = !DILocation(line: 323, column: 25, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !17, line: 323, column: 16)
!935 = distinct !DILexicalBlock(scope: !931, file: !17, line: 322, column: 46)
!936 = !DILocation(line: 323, column: 20, scope: !934)
!937 = !DILocation(line: 323, column: 16, scope: !935)
!938 = !DILocation(line: 323, column: 42, scope: !934)
!939 = !DILocation(line: 323, column: 59, scope: !934)
!940 = !DILocation(line: 323, column: 33, scope: !934)
!941 = !DILocation(line: 325, column: 9, scope: !935)
!942 = !DILocation(line: 329, column: 9, scope: !541)
!943 = !DILocalVariable(name: "i", scope: !541, file: !17, line: 145, type: !13)
!944 = !DILocation(line: 332, column: 10, scope: !945)
!945 = distinct !DILexicalBlock(scope: !541, file: !17, line: 332, column: 8)
!946 = !DILocation(line: 332, column: 8, scope: !541)
!947 = !DILocation(line: 330, column: 11, scope: !541)
!948 = !DILocation(line: 333, column: 33, scope: !949)
!949 = distinct !DILexicalBlock(scope: !945, file: !17, line: 332, column: 25)
!950 = !DILocation(line: 333, column: 26, scope: !949)
!951 = !DILocation(line: 333, column: 11, scope: !949)
!952 = !DILocation(line: 334, column: 30, scope: !949)
!953 = !DILocation(line: 334, column: 38, scope: !949)
!954 = !DILocation(line: 335, column: 5, scope: !955)
!955 = distinct !DILexicalBlock(scope: !949, file: !17, line: 335, column: 5)
!956 = !DILocalVariable(name: "sf_u", scope: !955, file: !17, line: 335, type: !327)
!957 = !DILocation(line: 0, scope: !955)
!958 = !DILocation(line: 336, column: 15, scope: !949)
!959 = !DILocation(line: 336, column: 30, scope: !949)
!960 = !DILocation(line: 336, column: 53, scope: !949)
!961 = !DILocation(line: 336, column: 45, scope: !949)
!962 = !DILocation(line: 337, column: 12, scope: !963)
!963 = distinct !DILexicalBlock(scope: !949, file: !17, line: 337, column: 10)
!964 = !DILocation(line: 337, column: 10, scope: !949)
!965 = !DILocation(line: 337, column: 22, scope: !963)
!966 = !DILocation(line: 337, column: 18, scope: !963)
!967 = !DILocation(line: 0, scope: !949)
!968 = !DILocation(line: 338, column: 9, scope: !949)
!969 = !DILocation(line: 339, column: 3, scope: !949)
!970 = !DILocation(line: 340, column: 11, scope: !541)
!971 = !DILocalVariable(name: "gf_u", scope: !972, file: !17, line: 341, type: !327)
!972 = distinct !DILexicalBlock(scope: !541, file: !17, line: 341, column: 3)
!973 = !DILocation(line: 0, scope: !972)
!974 = !DILocation(line: 341, column: 3, scope: !972)
!975 = !DILocation(line: 342, column: 3, scope: !976)
!976 = distinct !DILexicalBlock(scope: !541, file: !17, line: 342, column: 3)
!977 = !DILocalVariable(name: "sf_u", scope: !976, file: !17, line: 342, type: !327)
!978 = !DILocation(line: 0, scope: !976)
!979 = !DILocation(line: 343, column: 9, scope: !541)
!980 = !DILocation(line: 344, column: 19, scope: !541)
!981 = !DILocation(line: 344, column: 13, scope: !541)
!982 = !DILocation(line: 344, column: 49, scope: !541)
!983 = !DILocation(line: 344, column: 45, scope: !541)
!984 = !DILocation(line: 345, column: 9, scope: !541)
!985 = !DILocation(line: 346, column: 15, scope: !541)
!986 = !DILocation(line: 346, column: 9, scope: !541)
!987 = !DILocation(line: 347, column: 10, scope: !541)
!988 = !DILocation(line: 349, column: 55, scope: !541)
!989 = !DILocation(line: 348, column: 74, scope: !541)
!990 = !DILocation(line: 348, column: 53, scope: !541)
!991 = !DILocation(line: 348, column: 32, scope: !541)
!992 = !DILocation(line: 348, column: 11, scope: !541)
!993 = !DILocation(line: 350, column: 12, scope: !541)
!994 = !DILocation(line: 350, column: 26, scope: !541)
!995 = !DILocation(line: 350, column: 19, scope: !541)
!996 = !DILocation(line: 350, column: 50, scope: !541)
!997 = !DILocation(line: 350, column: 44, scope: !541)
!998 = !DILocation(line: 351, column: 22, scope: !541)
!999 = !DILocalVariable(name: "gf_u", scope: !1000, file: !17, line: 352, type: !327)
!1000 = distinct !DILexicalBlock(scope: !541, file: !17, line: 352, column: 3)
!1001 = !DILocation(line: 0, scope: !1000)
!1002 = !DILocation(line: 352, column: 3, scope: !1000)
!1003 = !DILocation(line: 353, column: 12, scope: !541)
!1004 = !DILocation(line: 353, column: 5, scope: !541)
!1005 = !DILocation(line: 354, column: 20, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !541, file: !17, line: 354, column: 8)
!1007 = !DILocation(line: 354, column: 8, scope: !541)
!1008 = !DILocation(line: 354, column: 31, scope: !1006)
!1009 = !DILocation(line: 354, column: 27, scope: !1006)
!1010 = !DILocalVariable(name: "sf_u", scope: !1011, file: !17, line: 355, type: !327)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !17, line: 355, column: 8)
!1012 = !DILocation(line: 0, scope: !1011)
!1013 = !DILocation(line: 355, column: 8, scope: !1011)
!1014 = !DILocation(line: 0, scope: !1006)
!1015 = !DILocation(line: 356, column: 12, scope: !541)
!1016 = !DILocation(line: 356, column: 3, scope: !541)
!1017 = !DILocation(line: 357, column: 1, scope: !541)
!1018 = distinct !DISubprogram(name: "basicmath___isinff", scope: !17, file: !17, line: 711, type: !1019, scopeLine: 712, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !281)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!13, !6}
!1021 = !DILocalVariable(name: "x", arg: 1, scope: !1018, file: !17, line: 711, type: !6)
!1022 = !DILocation(line: 0, scope: !1018)
!1023 = !DILocalVariable(name: "gf_u", scope: !1024, file: !17, line: 714, type: !327)
!1024 = distinct !DILexicalBlock(scope: !1018, file: !17, line: 714, column: 3)
!1025 = !DILocation(line: 0, scope: !1024)
!1026 = !DILocation(line: 714, column: 3, scope: !1024)
!1027 = !DILocalVariable(name: "ix", scope: !1018, file: !17, line: 713, type: !13)
!1028 = !DILocation(line: 715, column: 10, scope: !1018)
!1029 = !DILocalVariable(name: "t", scope: !1018, file: !17, line: 713, type: !13)
!1030 = !DILocation(line: 718, column: 30, scope: !1018)
!1031 = !DILocation(line: 718, column: 23, scope: !1018)
!1032 = !DILocation(line: 718, column: 3, scope: !1018)
!1033 = distinct !DISubprogram(name: "basicmath___fabsf", scope: !17, file: !17, line: 697, type: !321, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !281)
!1034 = !DILocalVariable(name: "x", arg: 1, scope: !1033, file: !17, line: 697, type: !6)
!1035 = !DILocation(line: 0, scope: !1033)
!1036 = !DILocalVariable(name: "gf_u", scope: !1037, file: !17, line: 700, type: !327)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !17, line: 700, column: 3)
!1038 = !DILocation(line: 0, scope: !1037)
!1039 = !DILocation(line: 700, column: 3, scope: !1037)
!1040 = !DILocalVariable(name: "ix", scope: !1033, file: !17, line: 699, type: !12)
!1041 = !DILocation(line: 701, column: 3, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1033, file: !17, line: 701, column: 3)
!1043 = !DILocalVariable(name: "sf_u", scope: !1042, file: !17, line: 701, type: !327)
!1044 = !DILocation(line: 0, scope: !1042)
!1045 = !DILocation(line: 702, column: 3, scope: !1033)
!1046 = distinct !DISubprogram(name: "basicmath___scalbnf", scope: !17, file: !17, line: 729, type: !1047, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !281)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!6, !6, !13}
!1049 = !DILocalVariable(name: "x", arg: 1, scope: !1046, file: !17, line: 729, type: !6)
!1050 = !DILocation(line: 0, scope: !1046)
!1051 = !DILocalVariable(name: "n", arg: 2, scope: !1046, file: !17, line: 729, type: !13)
!1052 = !DILocalVariable(name: "gf_u", scope: !1053, file: !17, line: 732, type: !327)
!1053 = distinct !DILexicalBlock(scope: !1046, file: !17, line: 732, column: 3)
!1054 = !DILocation(line: 0, scope: !1053)
!1055 = !DILocation(line: 732, column: 3, scope: !1053)
!1056 = !DILocalVariable(name: "ix", scope: !1046, file: !17, line: 731, type: !13)
!1057 = !DILocation(line: 733, column: 27, scope: !1046)
!1058 = !DILocalVariable(name: "k", scope: !1046, file: !17, line: 731, type: !13)
!1059 = !DILocation(line: 734, column: 10, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1046, file: !17, line: 734, column: 8)
!1061 = !DILocation(line: 734, column: 8, scope: !1046)
!1062 = !DILocation(line: 735, column: 15, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !17, line: 735, column: 10)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !17, line: 734, column: 17)
!1065 = !DILocation(line: 735, column: 30, scope: !1063)
!1066 = !DILocation(line: 735, column: 10, scope: !1064)
!1067 = !DILocation(line: 735, column: 37, scope: !1063)
!1068 = !DILocation(line: 736, column: 7, scope: !1064)
!1069 = !DILocalVariable(name: "gf_u", scope: !1070, file: !17, line: 737, type: !327)
!1070 = distinct !DILexicalBlock(scope: !1064, file: !17, line: 737, column: 5)
!1071 = !DILocation(line: 0, scope: !1070)
!1072 = !DILocation(line: 737, column: 5, scope: !1070)
!1073 = !DILocation(line: 738, column: 31, scope: !1064)
!1074 = !DILocation(line: 738, column: 39, scope: !1064)
!1075 = !DILocation(line: 739, column: 3, scope: !1064)
!1076 = !DILocation(line: 740, column: 10, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1046, file: !17, line: 740, column: 8)
!1078 = !DILocation(line: 740, column: 8, scope: !1046)
!1079 = !DILocation(line: 740, column: 29, scope: !1077)
!1080 = !DILocation(line: 740, column: 20, scope: !1077)
!1081 = !DILocation(line: 741, column: 9, scope: !1046)
!1082 = !DILocation(line: 742, column: 10, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1046, file: !17, line: 742, column: 8)
!1084 = !DILocation(line: 742, column: 18, scope: !1083)
!1085 = !DILocation(line: 742, column: 23, scope: !1083)
!1086 = !DILocation(line: 742, column: 8, scope: !1046)
!1087 = !DILocation(line: 743, column: 29, scope: !1083)
!1088 = !DILocation(line: 743, column: 27, scope: !1083)
!1089 = !DILocation(line: 743, column: 5, scope: !1083)
!1090 = !DILocation(line: 745, column: 10, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1046, file: !17, line: 745, column: 8)
!1092 = !DILocation(line: 745, column: 8, scope: !1046)
!1093 = !DILocation(line: 746, column: 29, scope: !1091)
!1094 = !DILocation(line: 746, column: 27, scope: !1091)
!1095 = !DILocation(line: 746, column: 5, scope: !1091)
!1096 = !DILocation(line: 748, column: 10, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1046, file: !17, line: 748, column: 8)
!1098 = !DILocation(line: 748, column: 8, scope: !1046)
!1099 = !DILocation(line: 749, column: 5, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !17, line: 749, column: 5)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !17, line: 748, column: 16)
!1102 = !DILocalVariable(name: "sf_u", scope: !1100, file: !17, line: 749, type: !327)
!1103 = !DILocation(line: 0, scope: !1100)
!1104 = !DILocation(line: 750, column: 5, scope: !1101)
!1105 = !DILocation(line: 752, column: 10, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1046, file: !17, line: 752, column: 8)
!1107 = !DILocation(line: 752, column: 8, scope: !1046)
!1108 = !DILocation(line: 753, column: 29, scope: !1106)
!1109 = !DILocation(line: 753, column: 27, scope: !1106)
!1110 = !DILocation(line: 753, column: 5, scope: !1106)
!1111 = !DILocation(line: 756, column: 3, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1046, file: !17, line: 756, column: 3)
!1113 = !DILocalVariable(name: "sf_u", scope: !1112, file: !17, line: 756, type: !327)
!1114 = !DILocation(line: 0, scope: !1112)
!1115 = !DILocation(line: 757, column: 12, scope: !1046)
!1116 = !DILocation(line: 757, column: 3, scope: !1046)
!1117 = !DILocation(line: 758, column: 1, scope: !1046)
!1118 = distinct !DISubprogram(name: "basicmath___copysignf", scope: !17, file: !17, line: 642, type: !542, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !281)
!1119 = !DILocalVariable(name: "x", arg: 1, scope: !1118, file: !17, line: 642, type: !6)
!1120 = !DILocation(line: 0, scope: !1118)
!1121 = !DILocalVariable(name: "y", arg: 2, scope: !1118, file: !17, line: 642, type: !6)
!1122 = !DILocalVariable(name: "gf_u", scope: !1123, file: !17, line: 645, type: !327)
!1123 = distinct !DILexicalBlock(scope: !1118, file: !17, line: 645, column: 3)
!1124 = !DILocation(line: 0, scope: !1123)
!1125 = !DILocation(line: 645, column: 3, scope: !1123)
!1126 = !DILocalVariable(name: "ix", scope: !1118, file: !17, line: 644, type: !12)
!1127 = !DILocalVariable(name: "gf_u", scope: !1128, file: !17, line: 646, type: !327)
!1128 = distinct !DILexicalBlock(scope: !1118, file: !17, line: 646, column: 3)
!1129 = !DILocation(line: 0, scope: !1128)
!1130 = !DILocation(line: 646, column: 3, scope: !1128)
!1131 = !DILocalVariable(name: "iy", scope: !1118, file: !17, line: 644, type: !12)
!1132 = !DILocation(line: 647, column: 3, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1118, file: !17, line: 647, column: 3)
!1134 = !DILocalVariable(name: "sf_u", scope: !1133, file: !17, line: 647, type: !327)
!1135 = !DILocation(line: 0, scope: !1133)
!1136 = !DILocation(line: 648, column: 3, scope: !1118)
!1137 = distinct !DISubprogram(name: "basicmath___ieee754_rem_pio2f", scope: !17, file: !17, line: 398, type: !1138, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !281)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!13, !6, !1140}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!1141 = !DILocalVariable(name: "x", arg: 1, scope: !1137, file: !17, line: 398, type: !6)
!1142 = !DILocation(line: 0, scope: !1137)
!1143 = !DILocalVariable(name: "y", arg: 2, scope: !1137, file: !17, line: 398, type: !1140)
!1144 = !DILocalVariable(name: "gf_u", scope: !1145, file: !17, line: 403, type: !327)
!1145 = distinct !DILexicalBlock(scope: !1137, file: !17, line: 403, column: 3)
!1146 = !DILocation(line: 0, scope: !1145)
!1147 = !DILocation(line: 403, column: 3, scope: !1145)
!1148 = !DILocalVariable(name: "hx", scope: !1137, file: !17, line: 401, type: !13)
!1149 = !DILocation(line: 404, column: 11, scope: !1137)
!1150 = !DILocalVariable(name: "ix", scope: !1137, file: !17, line: 401, type: !13)
!1151 = !DILocation(line: 405, column: 11, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1137, file: !17, line: 405, column: 8)
!1153 = !DILocation(line: 405, column: 8, scope: !1137)
!1154 = !DILocation(line: 406, column: 12, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !17, line: 405, column: 27)
!1156 = !DILocation(line: 407, column: 5, scope: !1155)
!1157 = !DILocation(line: 407, column: 12, scope: !1155)
!1158 = !DILocation(line: 408, column: 5, scope: !1155)
!1159 = !DILocation(line: 410, column: 11, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1137, file: !17, line: 410, column: 8)
!1161 = !DILocation(line: 410, column: 8, scope: !1137)
!1162 = !DILocation(line: 411, column: 13, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !17, line: 411, column: 10)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !17, line: 410, column: 26)
!1165 = !DILocation(line: 411, column: 10, scope: !1164)
!1166 = !DILocation(line: 412, column: 13, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !17, line: 411, column: 19)
!1168 = !DILocalVariable(name: "z", scope: !1137, file: !17, line: 400, type: !6)
!1169 = !DILocation(line: 413, column: 17, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !17, line: 413, column: 12)
!1171 = !DILocation(line: 413, column: 32, scope: !1170)
!1172 = !DILocation(line: 413, column: 12, scope: !1167)
!1173 = !DILocation(line: 414, column: 20, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !17, line: 413, column: 48)
!1175 = !DILocation(line: 414, column: 16, scope: !1174)
!1176 = !DILocation(line: 415, column: 22, scope: !1174)
!1177 = !DILocation(line: 415, column: 33, scope: !1174)
!1178 = !DILocation(line: 415, column: 9, scope: !1174)
!1179 = !DILocation(line: 415, column: 16, scope: !1174)
!1180 = !DILocation(line: 416, column: 7, scope: !1174)
!1181 = !DILocation(line: 417, column: 11, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1170, file: !17, line: 416, column: 14)
!1183 = !DILocation(line: 418, column: 20, scope: !1182)
!1184 = !DILocation(line: 418, column: 16, scope: !1182)
!1185 = !DILocation(line: 419, column: 22, scope: !1182)
!1186 = !DILocation(line: 419, column: 33, scope: !1182)
!1187 = !DILocation(line: 419, column: 9, scope: !1182)
!1188 = !DILocation(line: 419, column: 16, scope: !1182)
!1189 = !DILocation(line: 421, column: 7, scope: !1167)
!1190 = !DILocation(line: 423, column: 13, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1163, file: !17, line: 422, column: 12)
!1192 = !DILocation(line: 424, column: 17, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1191, file: !17, line: 424, column: 12)
!1194 = !DILocation(line: 424, column: 32, scope: !1193)
!1195 = !DILocation(line: 424, column: 12, scope: !1191)
!1196 = !DILocation(line: 425, column: 20, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !17, line: 424, column: 48)
!1198 = !DILocation(line: 425, column: 16, scope: !1197)
!1199 = !DILocation(line: 426, column: 22, scope: !1197)
!1200 = !DILocation(line: 426, column: 33, scope: !1197)
!1201 = !DILocation(line: 426, column: 9, scope: !1197)
!1202 = !DILocation(line: 426, column: 16, scope: !1197)
!1203 = !DILocation(line: 427, column: 7, scope: !1197)
!1204 = !DILocation(line: 428, column: 11, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1193, file: !17, line: 427, column: 14)
!1206 = !DILocation(line: 429, column: 20, scope: !1205)
!1207 = !DILocation(line: 429, column: 16, scope: !1205)
!1208 = !DILocation(line: 430, column: 22, scope: !1205)
!1209 = !DILocation(line: 430, column: 33, scope: !1205)
!1210 = !DILocation(line: 430, column: 9, scope: !1205)
!1211 = !DILocation(line: 430, column: 16, scope: !1205)
!1212 = !DILocation(line: 432, column: 7, scope: !1191)
!1213 = !DILocation(line: 435, column: 11, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1137, file: !17, line: 435, column: 8)
!1215 = !DILocation(line: 435, column: 8, scope: !1137)
!1216 = !DILocation(line: 436, column: 10, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !17, line: 435, column: 27)
!1218 = !DILocalVariable(name: "t", scope: !1137, file: !17, line: 400, type: !6)
!1219 = !DILocation(line: 437, column: 46, scope: !1217)
!1220 = !DILocation(line: 437, column: 10, scope: !1217)
!1221 = !DILocalVariable(name: "n", scope: !1137, file: !17, line: 401, type: !13)
!1222 = !DILocation(line: 438, column: 10, scope: !1217)
!1223 = !DILocalVariable(name: "fn", scope: !1137, file: !17, line: 400, type: !6)
!1224 = !DILocation(line: 439, column: 12, scope: !1217)
!1225 = !DILocalVariable(name: "r", scope: !1137, file: !17, line: 400, type: !6)
!1226 = !DILocation(line: 440, column: 13, scope: !1217)
!1227 = !DILocalVariable(name: "w", scope: !1137, file: !17, line: 400, type: !6)
!1228 = !DILocation(line: 441, column: 12, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1217, file: !17, line: 441, column: 10)
!1230 = !DILocation(line: 441, column: 17, scope: !1229)
!1231 = !DILocation(line: 441, column: 36, scope: !1229)
!1232 = !DILocation(line: 441, column: 75, scope: !1229)
!1233 = !DILocation(line: 441, column: 54, scope: !1229)
!1234 = !DILocation(line: 441, column: 51, scope: !1229)
!1235 = !DILocation(line: 441, column: 10, scope: !1217)
!1236 = !DILocation(line: 442, column: 18, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1229, file: !17, line: 441, column: 82)
!1238 = !DILocation(line: 442, column: 14, scope: !1237)
!1239 = !DILocation(line: 443, column: 5, scope: !1237)
!1240 = !DILocation(line: 445, column: 15, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1229, file: !17, line: 443, column: 12)
!1242 = !DILocalVariable(name: "j", scope: !1137, file: !17, line: 401, type: !13)
!1243 = !DILocation(line: 446, column: 18, scope: !1241)
!1244 = !DILocation(line: 446, column: 14, scope: !1241)
!1245 = !DILocalVariable(name: "gf_u", scope: !1246, file: !17, line: 447, type: !327)
!1246 = distinct !DILexicalBlock(scope: !1241, file: !17, line: 447, column: 7)
!1247 = !DILocation(line: 0, scope: !1246)
!1248 = !DILocation(line: 447, column: 7, scope: !1246)
!1249 = !DILocalVariable(name: "high", scope: !1241, file: !17, line: 444, type: !12)
!1250 = !DILocation(line: 0, scope: !1241)
!1251 = !DILocation(line: 448, column: 24, scope: !1241)
!1252 = !DILocation(line: 448, column: 32, scope: !1241)
!1253 = !DILocation(line: 448, column: 13, scope: !1241)
!1254 = !DILocalVariable(name: "i", scope: !1137, file: !17, line: 401, type: !13)
!1255 = !DILocation(line: 449, column: 14, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1241, file: !17, line: 449, column: 12)
!1257 = !DILocation(line: 449, column: 12, scope: !1241)
!1258 = !DILocation(line: 451, column: 17, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !17, line: 449, column: 20)
!1260 = !DILocation(line: 452, column: 16, scope: !1259)
!1261 = !DILocation(line: 453, column: 45, scope: !1259)
!1262 = !DILocation(line: 453, column: 51, scope: !1259)
!1263 = !DILocation(line: 453, column: 37, scope: !1259)
!1264 = !DILocation(line: 454, column: 20, scope: !1259)
!1265 = !DILocalVariable(name: "gf_u", scope: !1266, file: !17, line: 455, type: !327)
!1266 = distinct !DILexicalBlock(scope: !1259, file: !17, line: 455, column: 9)
!1267 = !DILocation(line: 0, scope: !1266)
!1268 = !DILocation(line: 455, column: 9, scope: !1266)
!1269 = !DILocation(line: 456, column: 26, scope: !1259)
!1270 = !DILocation(line: 456, column: 34, scope: !1259)
!1271 = !DILocation(line: 456, column: 15, scope: !1259)
!1272 = !DILocation(line: 457, column: 16, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1259, file: !17, line: 457, column: 14)
!1274 = !DILocation(line: 457, column: 14, scope: !1259)
!1275 = !DILocation(line: 459, column: 19, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1273, file: !17, line: 457, column: 24)
!1277 = !DILocation(line: 460, column: 18, scope: !1276)
!1278 = !DILocation(line: 461, column: 47, scope: !1276)
!1279 = !DILocation(line: 461, column: 53, scope: !1276)
!1280 = !DILocation(line: 461, column: 39, scope: !1276)
!1281 = !DILocation(line: 462, column: 22, scope: !1276)
!1282 = !DILocation(line: 463, column: 9, scope: !1276)
!1283 = !DILocation(line: 0, scope: !1259)
!1284 = !DILocation(line: 464, column: 7, scope: !1259)
!1285 = !DILocation(line: 0, scope: !1217)
!1286 = !DILocation(line: 466, column: 20, scope: !1217)
!1287 = !DILocation(line: 466, column: 18, scope: !1217)
!1288 = !DILocation(line: 466, column: 29, scope: !1217)
!1289 = !DILocation(line: 466, column: 5, scope: !1217)
!1290 = !DILocation(line: 466, column: 12, scope: !1217)
!1291 = !DILocation(line: 467, column: 13, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1217, file: !17, line: 467, column: 10)
!1293 = !DILocation(line: 467, column: 10, scope: !1217)
!1294 = !DILocation(line: 468, column: 17, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !17, line: 467, column: 20)
!1296 = !DILocation(line: 468, column: 16, scope: !1295)
!1297 = !DILocation(line: 468, column: 14, scope: !1295)
!1298 = !DILocation(line: 469, column: 17, scope: !1295)
!1299 = !DILocation(line: 469, column: 16, scope: !1295)
!1300 = !DILocation(line: 469, column: 7, scope: !1295)
!1301 = !DILocation(line: 469, column: 14, scope: !1295)
!1302 = !DILocation(line: 470, column: 14, scope: !1295)
!1303 = !DILocation(line: 470, column: 7, scope: !1295)
!1304 = !DILocation(line: 471, column: 14, scope: !1292)
!1305 = !DILocation(line: 476, column: 11, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1137, file: !17, line: 476, column: 8)
!1307 = !DILocation(line: 476, column: 8, scope: !1137)
!1308 = !DILocation(line: 477, column: 25, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1306, file: !17, line: 476, column: 27)
!1310 = !DILocation(line: 477, column: 14, scope: !1309)
!1311 = !DILocation(line: 477, column: 21, scope: !1309)
!1312 = !DILocation(line: 477, column: 12, scope: !1309)
!1313 = !DILocation(line: 478, column: 5, scope: !1309)
!1314 = !DILocation(line: 484, column: 23, scope: !1137)
!1315 = !DILocation(line: 484, column: 12, scope: !1137)
!1316 = !DILocation(line: 484, column: 19, scope: !1137)
!1317 = !DILocation(line: 484, column: 10, scope: !1137)
!1318 = !DILocation(line: 485, column: 3, scope: !1137)
!1319 = !DILocation(line: 486, column: 1, scope: !1137)
!1320 = distinct !DISubprogram(name: "basicmath___kernel_cosf", scope: !17, file: !17, line: 574, type: !542, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !281)
!1321 = !DILocalVariable(name: "x", arg: 1, scope: !1320, file: !17, line: 574, type: !6)
!1322 = !DILocation(line: 0, scope: !1320)
!1323 = !DILocalVariable(name: "y", arg: 2, scope: !1320, file: !17, line: 574, type: !6)
!1324 = !DILocalVariable(name: "gf_u", scope: !1325, file: !17, line: 578, type: !327)
!1325 = distinct !DILexicalBlock(scope: !1320, file: !17, line: 578, column: 3)
!1326 = !DILocation(line: 0, scope: !1325)
!1327 = !DILocation(line: 578, column: 3, scope: !1325)
!1328 = !DILocalVariable(name: "ix", scope: !1320, file: !17, line: 577, type: !13)
!1329 = !DILocation(line: 579, column: 6, scope: !1320)
!1330 = !DILocation(line: 580, column: 11, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1320, file: !17, line: 580, column: 8)
!1332 = !DILocation(line: 580, column: 8, scope: !1320)
!1333 = !DILocation(line: 581, column: 12, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !17, line: 581, column: 10)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !17, line: 580, column: 26)
!1336 = !DILocation(line: 581, column: 23, scope: !1334)
!1337 = !DILocation(line: 581, column: 10, scope: !1335)
!1338 = !DILocation(line: 581, column: 30, scope: !1334)
!1339 = !DILocation(line: 582, column: 3, scope: !1335)
!1340 = !DILocation(line: 583, column: 10, scope: !1320)
!1341 = !DILocalVariable(name: "z", scope: !1320, file: !17, line: 576, type: !6)
!1342 = !DILocation(line: 585, column: 71, scope: !1320)
!1343 = !DILocation(line: 585, column: 50, scope: !1320)
!1344 = !DILocation(line: 584, column: 69, scope: !1320)
!1345 = !DILocation(line: 584, column: 48, scope: !1320)
!1346 = !DILocation(line: 584, column: 27, scope: !1320)
!1347 = !DILocation(line: 584, column: 10, scope: !1320)
!1348 = !DILocalVariable(name: "r", scope: !1320, file: !17, line: 576, type: !6)
!1349 = !DILocation(line: 586, column: 11, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1320, file: !17, line: 586, column: 8)
!1351 = !DILocation(line: 586, column: 8, scope: !1320)
!1352 = !DILocation(line: 587, column: 58, scope: !1350)
!1353 = !DILocation(line: 587, column: 48, scope: !1350)
!1354 = !DILocation(line: 587, column: 26, scope: !1350)
!1355 = !DILocation(line: 587, column: 5, scope: !1350)
!1356 = !DILocation(line: 589, column: 13, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !17, line: 589, column: 10)
!1358 = distinct !DILexicalBlock(scope: !1350, file: !17, line: 588, column: 8)
!1359 = !DILocation(line: 589, column: 10, scope: !1358)
!1360 = !DILocalVariable(name: "qx", scope: !1320, file: !17, line: 576, type: !6)
!1361 = !DILocation(line: 590, column: 7, scope: !1357)
!1362 = !DILocation(line: 592, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !17, line: 592, column: 7)
!1364 = distinct !DILexicalBlock(scope: !1357, file: !17, line: 591, column: 10)
!1365 = !DILocalVariable(name: "sf_u", scope: !1363, file: !17, line: 592, type: !327)
!1366 = !DILocation(line: 0, scope: !1363)
!1367 = !DILocation(line: 0, scope: !1357)
!1368 = !DILocation(line: 594, column: 28, scope: !1358)
!1369 = !DILocalVariable(name: "hz", scope: !1320, file: !17, line: 576, type: !6)
!1370 = !DILocation(line: 595, column: 24, scope: !1358)
!1371 = !DILocalVariable(name: "a", scope: !1320, file: !17, line: 576, type: !6)
!1372 = !DILocation(line: 596, column: 31, scope: !1358)
!1373 = !DILocation(line: 596, column: 21, scope: !1358)
!1374 = !DILocation(line: 596, column: 14, scope: !1358)
!1375 = !DILocation(line: 596, column: 5, scope: !1358)
!1376 = !DILocation(line: 598, column: 1, scope: !1320)
!1377 = distinct !DISubprogram(name: "basicmath___kernel_sinf", scope: !17, file: !17, line: 612, type: !1378, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !281)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!6, !6, !6, !13}
!1380 = !DILocalVariable(name: "x", arg: 1, scope: !1377, file: !17, line: 612, type: !6)
!1381 = !DILocation(line: 0, scope: !1377)
!1382 = !DILocalVariable(name: "y", arg: 2, scope: !1377, file: !17, line: 612, type: !6)
!1383 = !DILocalVariable(name: "iy", arg: 3, scope: !1377, file: !17, line: 612, type: !13)
!1384 = !DILocalVariable(name: "gf_u", scope: !1385, file: !17, line: 616, type: !327)
!1385 = distinct !DILexicalBlock(scope: !1377, file: !17, line: 616, column: 3)
!1386 = !DILocation(line: 0, scope: !1385)
!1387 = !DILocation(line: 616, column: 3, scope: !1385)
!1388 = !DILocalVariable(name: "ix", scope: !1377, file: !17, line: 615, type: !13)
!1389 = !DILocation(line: 617, column: 6, scope: !1377)
!1390 = !DILocation(line: 618, column: 11, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1377, file: !17, line: 618, column: 8)
!1392 = !DILocation(line: 618, column: 8, scope: !1377)
!1393 = !DILocation(line: 619, column: 10, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !17, line: 619, column: 10)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !17, line: 618, column: 26)
!1396 = !DILocation(line: 619, column: 19, scope: !1394)
!1397 = !DILocation(line: 619, column: 10, scope: !1395)
!1398 = !DILocation(line: 619, column: 26, scope: !1394)
!1399 = !DILocation(line: 620, column: 3, scope: !1395)
!1400 = !DILocation(line: 621, column: 10, scope: !1377)
!1401 = !DILocalVariable(name: "z", scope: !1377, file: !17, line: 614, type: !6)
!1402 = !DILocation(line: 622, column: 10, scope: !1377)
!1403 = !DILocalVariable(name: "v", scope: !1377, file: !17, line: 614, type: !6)
!1404 = !DILocation(line: 624, column: 44, scope: !1377)
!1405 = !DILocation(line: 623, column: 63, scope: !1377)
!1406 = !DILocation(line: 623, column: 42, scope: !1377)
!1407 = !DILocation(line: 623, column: 21, scope: !1377)
!1408 = !DILocalVariable(name: "r", scope: !1377, file: !17, line: 614, type: !6)
!1409 = !DILocation(line: 625, column: 11, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1377, file: !17, line: 625, column: 8)
!1411 = !DILocation(line: 625, column: 8, scope: !1377)
!1412 = !DILocation(line: 625, column: 48, scope: !1410)
!1413 = !DILocation(line: 625, column: 27, scope: !1410)
!1414 = !DILocation(line: 625, column: 18, scope: !1410)
!1415 = !DILocation(line: 626, column: 53, scope: !1410)
!1416 = !DILocation(line: 626, column: 63, scope: !1410)
!1417 = !DILocation(line: 626, column: 69, scope: !1410)
!1418 = !DILocation(line: 626, column: 22, scope: !1410)
!1419 = !DILocation(line: 626, column: 13, scope: !1410)
!1420 = !DILocation(line: 628, column: 1, scope: !1377)
!1421 = distinct !DISubprogram(name: "basicmath___cosf", scope: !17, file: !17, line: 656, type: !321, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !281)
!1422 = !DILocalVariable(name: "x", arg: 1, scope: !1421, file: !17, line: 656, type: !6)
!1423 = !DILocation(line: 0, scope: !1421)
!1424 = !DILocalVariable(name: "y", scope: !1421, file: !17, line: 658, type: !1425)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !145)
!1426 = !DILocation(line: 658, column: 9, scope: !1421)
!1427 = !DILocalVariable(name: "z", scope: !1421, file: !17, line: 658, type: !6)
!1428 = !DILocalVariable(name: "n", scope: !1421, file: !17, line: 659, type: !13)
!1429 = !DILocation(line: 659, column: 11, scope: !1421)
!1430 = !DILocalVariable(name: "gf_u", scope: !1431, file: !17, line: 661, type: !327)
!1431 = distinct !DILexicalBlock(scope: !1421, file: !17, line: 661, column: 3)
!1432 = !DILocation(line: 0, scope: !1431)
!1433 = !DILocalVariable(name: "ix", scope: !1421, file: !17, line: 659, type: !13)
!1434 = !DILocation(line: 665, column: 12, scope: !1421)
!1435 = !DILocation(line: 665, column: 3, scope: !1421)
!1436 = distinct !DISubprogram(name: "__absvdi2", scope: !156, file: !156, line: 22, type: !1437, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !155, retainedNodes: !281)
!1437 = !DISubroutineType(types: !281)
!1438 = !DILocation(line: 25, column: 11, scope: !1436)
!1439 = !DILocation(line: 25, column: 9, scope: !1436)
!1440 = !DILocation(line: 26, column: 9, scope: !1436)
!1441 = !DILocation(line: 28, column: 20, scope: !1436)
!1442 = !DILocation(line: 28, column: 5, scope: !1436)
!1443 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !208, file: !208, line: 57, type: !1437, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !207, retainedNodes: !281)
!1444 = !DILocation(line: 59, column: 1, scope: !1443)
!1445 = distinct !DISubprogram(name: "__absvsi2", scope: !158, file: !158, line: 22, type: !1437, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !157, retainedNodes: !281)
!1446 = !DILocation(line: 25, column: 11, scope: !1445)
!1447 = !DILocation(line: 25, column: 9, scope: !1445)
!1448 = !DILocation(line: 26, column: 9, scope: !1445)
!1449 = !DILocation(line: 28, column: 20, scope: !1445)
!1450 = !DILocation(line: 28, column: 5, scope: !1445)
!1451 = distinct !DISubprogram(name: "__addvdi3", scope: !162, file: !162, line: 22, type: !1437, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !161, retainedNodes: !281)
!1452 = !DILocation(line: 24, column: 27, scope: !1451)
!1453 = !DILocation(line: 25, column: 11, scope: !1451)
!1454 = !DILocation(line: 25, column: 9, scope: !1451)
!1455 = !DILocation(line: 27, column: 15, scope: !1451)
!1456 = !DILocation(line: 27, column: 13, scope: !1451)
!1457 = !DILocation(line: 28, column: 13, scope: !1451)
!1458 = !DILocation(line: 29, column: 5, scope: !1451)
!1459 = !DILocation(line: 32, column: 15, scope: !1451)
!1460 = !DILocation(line: 32, column: 13, scope: !1451)
!1461 = !DILocation(line: 33, column: 13, scope: !1451)
!1462 = !DILocation(line: 35, column: 5, scope: !1451)
!1463 = distinct !DISubprogram(name: "__addvsi3", scope: !164, file: !164, line: 22, type: !1437, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !163, retainedNodes: !281)
!1464 = !DILocation(line: 24, column: 27, scope: !1463)
!1465 = !DILocation(line: 25, column: 11, scope: !1463)
!1466 = !DILocation(line: 25, column: 9, scope: !1463)
!1467 = !DILocation(line: 27, column: 15, scope: !1463)
!1468 = !DILocation(line: 27, column: 13, scope: !1463)
!1469 = !DILocation(line: 28, column: 13, scope: !1463)
!1470 = !DILocation(line: 29, column: 5, scope: !1463)
!1471 = !DILocation(line: 32, column: 15, scope: !1463)
!1472 = !DILocation(line: 32, column: 13, scope: !1463)
!1473 = !DILocation(line: 33, column: 13, scope: !1463)
!1474 = !DILocation(line: 35, column: 5, scope: !1463)
!1475 = distinct !DISubprogram(name: "__ashldi3", scope: !168, file: !168, line: 24, type: !1437, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !167, retainedNodes: !281)
!1476 = !DILocation(line: 29, column: 11, scope: !1475)
!1477 = !DILocation(line: 29, column: 15, scope: !1475)
!1478 = !DILocation(line: 30, column: 11, scope: !1475)
!1479 = !DILocation(line: 30, column: 9, scope: !1475)
!1480 = !DILocation(line: 32, column: 18, scope: !1475)
!1481 = !DILocation(line: 32, column: 22, scope: !1475)
!1482 = !DILocation(line: 33, column: 33, scope: !1475)
!1483 = !DILocation(line: 33, column: 43, scope: !1475)
!1484 = !DILocation(line: 33, column: 37, scope: !1475)
!1485 = !DILocation(line: 33, column: 16, scope: !1475)
!1486 = !DILocation(line: 33, column: 18, scope: !1475)
!1487 = !DILocation(line: 33, column: 23, scope: !1475)
!1488 = !DILocation(line: 34, column: 5, scope: !1475)
!1489 = !DILocation(line: 37, column: 15, scope: !1475)
!1490 = !DILocation(line: 37, column: 13, scope: !1475)
!1491 = !DILocation(line: 38, column: 13, scope: !1475)
!1492 = !DILocation(line: 39, column: 33, scope: !1475)
!1493 = !DILocation(line: 39, column: 37, scope: !1475)
!1494 = !DILocation(line: 39, column: 18, scope: !1475)
!1495 = !DILocation(line: 39, column: 23, scope: !1475)
!1496 = !DILocation(line: 40, column: 32, scope: !1475)
!1497 = !DILocation(line: 40, column: 34, scope: !1475)
!1498 = !DILocation(line: 40, column: 39, scope: !1475)
!1499 = !DILocation(line: 40, column: 56, scope: !1475)
!1500 = !DILocation(line: 40, column: 77, scope: !1475)
!1501 = !DILocation(line: 40, column: 60, scope: !1475)
!1502 = !DILocation(line: 40, column: 45, scope: !1475)
!1503 = !DILocation(line: 40, column: 16, scope: !1475)
!1504 = !DILocation(line: 40, column: 18, scope: !1475)
!1505 = !DILocation(line: 40, column: 23, scope: !1475)
!1506 = !DILocation(line: 42, column: 19, scope: !1475)
!1507 = !DILocation(line: 42, column: 5, scope: !1475)
!1508 = !DILocation(line: 0, scope: !1475)
!1509 = !DILocation(line: 43, column: 1, scope: !1475)
!1510 = distinct !DISubprogram(name: "__ashrdi3", scope: !172, file: !172, line: 24, type: !1437, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !281)
!1511 = !DILocation(line: 29, column: 11, scope: !1510)
!1512 = !DILocation(line: 29, column: 15, scope: !1510)
!1513 = !DILocation(line: 30, column: 11, scope: !1510)
!1514 = !DILocation(line: 30, column: 9, scope: !1510)
!1515 = !DILocation(line: 33, column: 31, scope: !1510)
!1516 = !DILocation(line: 33, column: 33, scope: !1510)
!1517 = !DILocation(line: 33, column: 38, scope: !1510)
!1518 = !DILocation(line: 33, column: 16, scope: !1510)
!1519 = !DILocation(line: 33, column: 18, scope: !1510)
!1520 = !DILocation(line: 33, column: 23, scope: !1510)
!1521 = !DILocation(line: 34, column: 30, scope: !1510)
!1522 = !DILocation(line: 34, column: 32, scope: !1510)
!1523 = !DILocation(line: 34, column: 43, scope: !1510)
!1524 = !DILocation(line: 34, column: 37, scope: !1510)
!1525 = !DILocation(line: 34, column: 18, scope: !1510)
!1526 = !DILocation(line: 34, column: 22, scope: !1510)
!1527 = !DILocation(line: 35, column: 5, scope: !1510)
!1528 = !DILocation(line: 38, column: 15, scope: !1510)
!1529 = !DILocation(line: 38, column: 13, scope: !1510)
!1530 = !DILocation(line: 39, column: 13, scope: !1510)
!1531 = !DILocation(line: 40, column: 32, scope: !1510)
!1532 = !DILocation(line: 40, column: 34, scope: !1510)
!1533 = !DILocation(line: 40, column: 39, scope: !1510)
!1534 = !DILocation(line: 40, column: 16, scope: !1510)
!1535 = !DILocation(line: 40, column: 18, scope: !1510)
!1536 = !DILocation(line: 40, column: 24, scope: !1510)
!1537 = !DILocation(line: 41, column: 31, scope: !1510)
!1538 = !DILocation(line: 41, column: 33, scope: !1510)
!1539 = !DILocation(line: 41, column: 55, scope: !1510)
!1540 = !DILocation(line: 41, column: 38, scope: !1510)
!1541 = !DILocation(line: 41, column: 72, scope: !1510)
!1542 = !DILocation(line: 41, column: 76, scope: !1510)
!1543 = !DILocation(line: 41, column: 61, scope: !1510)
!1544 = !DILocation(line: 41, column: 18, scope: !1510)
!1545 = !DILocation(line: 41, column: 22, scope: !1510)
!1546 = !DILocation(line: 43, column: 19, scope: !1510)
!1547 = !DILocation(line: 43, column: 5, scope: !1510)
!1548 = !DILocation(line: 0, scope: !1510)
!1549 = !DILocation(line: 44, column: 1, scope: !1510)
!1550 = distinct !DISubprogram(name: "__clzdi2", scope: !176, file: !176, line: 22, type: !1437, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !175, retainedNodes: !281)
!1551 = !DILocation(line: 25, column: 7, scope: !1550)
!1552 = !DILocation(line: 25, column: 11, scope: !1550)
!1553 = !DILocation(line: 26, column: 26, scope: !1550)
!1554 = !DILocation(line: 26, column: 28, scope: !1550)
!1555 = !DILocation(line: 26, column: 33, scope: !1550)
!1556 = !DILocation(line: 27, column: 29, scope: !1550)
!1557 = !DILocation(line: 27, column: 31, scope: !1550)
!1558 = !DILocation(line: 27, column: 49, scope: !1550)
!1559 = !DILocation(line: 27, column: 42, scope: !1550)
!1560 = !DILocation(line: 27, column: 12, scope: !1550)
!1561 = !{i32 0, i32 33}
!1562 = !DILocation(line: 28, column: 15, scope: !1550)
!1563 = !DILocation(line: 27, column: 59, scope: !1550)
!1564 = !DILocation(line: 27, column: 5, scope: !1550)
!1565 = distinct !DISubprogram(name: "__clzsi2", scope: !178, file: !178, line: 22, type: !1437, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !177, retainedNodes: !281)
!1566 = !DILocation(line: 25, column: 34, scope: !1565)
!1567 = !DILocation(line: 25, column: 40, scope: !1565)
!1568 = !DILocation(line: 26, column: 14, scope: !1565)
!1569 = !DILocation(line: 26, column: 7, scope: !1565)
!1570 = !DILocation(line: 29, column: 13, scope: !1565)
!1571 = !DILocation(line: 29, column: 23, scope: !1565)
!1572 = !DILocation(line: 29, column: 29, scope: !1565)
!1573 = !DILocation(line: 30, column: 13, scope: !1565)
!1574 = !DILocation(line: 30, column: 7, scope: !1565)
!1575 = !DILocation(line: 31, column: 7, scope: !1565)
!1576 = !DILocation(line: 33, column: 13, scope: !1565)
!1577 = !DILocation(line: 33, column: 21, scope: !1565)
!1578 = !DILocation(line: 33, column: 27, scope: !1565)
!1579 = !DILocation(line: 34, column: 13, scope: !1565)
!1580 = !DILocation(line: 34, column: 7, scope: !1565)
!1581 = !DILocation(line: 35, column: 7, scope: !1565)
!1582 = !DILocation(line: 37, column: 13, scope: !1565)
!1583 = !DILocation(line: 37, column: 20, scope: !1565)
!1584 = !DILocation(line: 37, column: 26, scope: !1565)
!1585 = !DILocation(line: 38, column: 13, scope: !1565)
!1586 = !DILocation(line: 38, column: 7, scope: !1565)
!1587 = !DILocation(line: 39, column: 7, scope: !1565)
!1588 = !DILocation(line: 52, column: 20, scope: !1565)
!1589 = !DILocation(line: 52, column: 37, scope: !1565)
!1590 = !DILocation(line: 52, column: 25, scope: !1565)
!1591 = !DILocation(line: 52, column: 14, scope: !1565)
!1592 = !DILocation(line: 52, column: 5, scope: !1565)
!1593 = distinct !DISubprogram(name: "__cmpdi2", scope: !182, file: !182, line: 23, type: !1437, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !181, retainedNodes: !281)
!1594 = !DILocation(line: 26, column: 7, scope: !1593)
!1595 = !DILocation(line: 26, column: 11, scope: !1593)
!1596 = !DILocation(line: 28, column: 7, scope: !1593)
!1597 = !DILocation(line: 28, column: 11, scope: !1593)
!1598 = !DILocation(line: 29, column: 11, scope: !1593)
!1599 = !DILocation(line: 29, column: 13, scope: !1593)
!1600 = !DILocation(line: 29, column: 22, scope: !1593)
!1601 = !DILocation(line: 29, column: 24, scope: !1593)
!1602 = !DILocation(line: 29, column: 18, scope: !1593)
!1603 = !DILocation(line: 29, column: 9, scope: !1593)
!1604 = !DILocation(line: 30, column: 9, scope: !1593)
!1605 = !DILocation(line: 31, column: 11, scope: !1593)
!1606 = !DILocation(line: 31, column: 13, scope: !1593)
!1607 = !DILocation(line: 31, column: 22, scope: !1593)
!1608 = !DILocation(line: 31, column: 24, scope: !1593)
!1609 = !DILocation(line: 31, column: 18, scope: !1593)
!1610 = !DILocation(line: 31, column: 9, scope: !1593)
!1611 = !DILocation(line: 32, column: 9, scope: !1593)
!1612 = !DILocation(line: 33, column: 13, scope: !1593)
!1613 = !DILocation(line: 33, column: 23, scope: !1593)
!1614 = !DILocation(line: 33, column: 17, scope: !1593)
!1615 = !DILocation(line: 33, column: 9, scope: !1593)
!1616 = !DILocation(line: 34, column: 9, scope: !1593)
!1617 = !DILocation(line: 35, column: 13, scope: !1593)
!1618 = !DILocation(line: 35, column: 23, scope: !1593)
!1619 = !DILocation(line: 35, column: 17, scope: !1593)
!1620 = !DILocation(line: 35, column: 9, scope: !1593)
!1621 = !DILocation(line: 36, column: 9, scope: !1593)
!1622 = !DILocation(line: 37, column: 5, scope: !1593)
!1623 = !DILocation(line: 0, scope: !1593)
!1624 = !DILocation(line: 38, column: 1, scope: !1593)
!1625 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !182, file: !182, line: 46, type: !1437, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !181, retainedNodes: !281)
!1626 = !DILocation(line: 48, column: 9, scope: !1625)
!1627 = !DILocation(line: 48, column: 24, scope: !1625)
!1628 = !DILocation(line: 48, column: 2, scope: !1625)
!1629 = distinct !DISubprogram(name: "__ctzdi2", scope: !186, file: !186, line: 22, type: !1437, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !185, retainedNodes: !281)
!1630 = !DILocation(line: 25, column: 7, scope: !1629)
!1631 = !DILocation(line: 25, column: 11, scope: !1629)
!1632 = !DILocation(line: 26, column: 28, scope: !1629)
!1633 = !DILocation(line: 26, column: 32, scope: !1629)
!1634 = !DILocation(line: 27, column: 29, scope: !1629)
!1635 = !DILocation(line: 27, column: 31, scope: !1629)
!1636 = !DILocation(line: 27, column: 41, scope: !1629)
!1637 = !DILocation(line: 27, column: 12, scope: !1629)
!1638 = !DILocation(line: 28, column: 18, scope: !1629)
!1639 = !DILocation(line: 27, column: 59, scope: !1629)
!1640 = !DILocation(line: 27, column: 5, scope: !1629)
!1641 = distinct !DISubprogram(name: "__ctzsi2", scope: !188, file: !188, line: 22, type: !1437, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !187, retainedNodes: !281)
!1642 = !DILocation(line: 25, column: 20, scope: !1641)
!1643 = !DILocation(line: 25, column: 34, scope: !1641)
!1644 = !DILocation(line: 25, column: 40, scope: !1641)
!1645 = !DILocation(line: 26, column: 7, scope: !1641)
!1646 = !DILocation(line: 29, column: 13, scope: !1641)
!1647 = !DILocation(line: 29, column: 23, scope: !1641)
!1648 = !DILocation(line: 29, column: 29, scope: !1641)
!1649 = !DILocation(line: 30, column: 7, scope: !1641)
!1650 = !DILocation(line: 31, column: 7, scope: !1641)
!1651 = !DILocation(line: 33, column: 13, scope: !1641)
!1652 = !DILocation(line: 33, column: 21, scope: !1641)
!1653 = !DILocation(line: 33, column: 27, scope: !1641)
!1654 = !DILocation(line: 34, column: 7, scope: !1641)
!1655 = !DILocation(line: 35, column: 7, scope: !1641)
!1656 = !DILocation(line: 37, column: 13, scope: !1641)
!1657 = !DILocation(line: 37, column: 20, scope: !1641)
!1658 = !DILocation(line: 37, column: 26, scope: !1641)
!1659 = !DILocation(line: 38, column: 7, scope: !1641)
!1660 = !DILocation(line: 40, column: 7, scope: !1641)
!1661 = !DILocation(line: 56, column: 25, scope: !1641)
!1662 = !DILocation(line: 56, column: 20, scope: !1641)
!1663 = !DILocation(line: 56, column: 44, scope: !1641)
!1664 = !DILocation(line: 56, column: 32, scope: !1641)
!1665 = !DILocation(line: 56, column: 14, scope: !1641)
!1666 = !DILocation(line: 56, column: 5, scope: !1641)
!1667 = distinct !DISubprogram(name: "__divdi3", scope: !192, file: !192, line: 20, type: !1437, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !191, retainedNodes: !281)
!1668 = !DILocation(line: 23, column: 20, scope: !1667)
!1669 = !DILocation(line: 24, column: 20, scope: !1667)
!1670 = !DILocation(line: 25, column: 12, scope: !1667)
!1671 = !DILocation(line: 25, column: 19, scope: !1667)
!1672 = !DILocation(line: 26, column: 12, scope: !1667)
!1673 = !DILocation(line: 26, column: 19, scope: !1667)
!1674 = !DILocation(line: 27, column: 9, scope: !1667)
!1675 = !DILocation(line: 28, column: 13, scope: !1667)
!1676 = !DILocation(line: 28, column: 44, scope: !1667)
!1677 = !DILocation(line: 28, column: 51, scope: !1667)
!1678 = !DILocation(line: 28, column: 5, scope: !1667)
!1679 = distinct !DISubprogram(name: "__udivmoddi4", scope: !250, file: !250, line: 24, type: !1437, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !281)
!1680 = !DILocation(line: 29, column: 7, scope: !1679)
!1681 = !DILocation(line: 29, column: 11, scope: !1679)
!1682 = !DILocation(line: 31, column: 7, scope: !1679)
!1683 = !DILocation(line: 31, column: 11, scope: !1679)
!1684 = !DILocation(line: 36, column: 11, scope: !1679)
!1685 = !DILocation(line: 36, column: 13, scope: !1679)
!1686 = !DILocation(line: 36, column: 18, scope: !1679)
!1687 = !DILocation(line: 36, column: 9, scope: !1679)
!1688 = !DILocation(line: 38, column: 15, scope: !1679)
!1689 = !DILocation(line: 38, column: 17, scope: !1679)
!1690 = !DILocation(line: 38, column: 22, scope: !1679)
!1691 = !DILocation(line: 38, column: 13, scope: !1679)
!1692 = !DILocation(line: 44, column: 17, scope: !1679)
!1693 = !DILocation(line: 45, column: 28, scope: !1679)
!1694 = !DILocation(line: 45, column: 38, scope: !1679)
!1695 = !DILocation(line: 45, column: 32, scope: !1679)
!1696 = !DILocation(line: 45, column: 24, scope: !1679)
!1697 = !DILocation(line: 45, column: 22, scope: !1679)
!1698 = !DILocation(line: 45, column: 17, scope: !1679)
!1699 = !DILocation(line: 46, column: 24, scope: !1679)
!1700 = !DILocation(line: 46, column: 34, scope: !1679)
!1701 = !DILocation(line: 46, column: 28, scope: !1679)
!1702 = !DILocation(line: 46, column: 20, scope: !1679)
!1703 = !DILocation(line: 46, column: 13, scope: !1679)
!1704 = !DILocation(line: 52, column: 13, scope: !1679)
!1705 = !DILocation(line: 53, column: 24, scope: !1679)
!1706 = !DILocation(line: 53, column: 20, scope: !1679)
!1707 = !DILocation(line: 53, column: 18, scope: !1679)
!1708 = !DILocation(line: 53, column: 13, scope: !1679)
!1709 = !DILocation(line: 54, column: 9, scope: !1679)
!1710 = !DILocation(line: 57, column: 13, scope: !1679)
!1711 = !DILocation(line: 57, column: 17, scope: !1679)
!1712 = !DILocation(line: 57, column: 9, scope: !1679)
!1713 = !DILocation(line: 59, column: 15, scope: !1679)
!1714 = !DILocation(line: 59, column: 17, scope: !1679)
!1715 = !DILocation(line: 59, column: 22, scope: !1679)
!1716 = !DILocation(line: 59, column: 13, scope: !1679)
!1717 = !DILocation(line: 65, column: 17, scope: !1679)
!1718 = !DILocation(line: 66, column: 26, scope: !1679)
!1719 = !DILocation(line: 66, column: 28, scope: !1679)
!1720 = !DILocation(line: 66, column: 39, scope: !1679)
!1721 = !DILocation(line: 66, column: 33, scope: !1679)
!1722 = !DILocation(line: 66, column: 24, scope: !1679)
!1723 = !DILocation(line: 66, column: 22, scope: !1679)
!1724 = !DILocation(line: 66, column: 17, scope: !1679)
!1725 = !DILocation(line: 67, column: 22, scope: !1679)
!1726 = !DILocation(line: 67, column: 24, scope: !1679)
!1727 = !DILocation(line: 67, column: 35, scope: !1679)
!1728 = !DILocation(line: 67, column: 29, scope: !1679)
!1729 = !DILocation(line: 67, column: 20, scope: !1679)
!1730 = !DILocation(line: 67, column: 13, scope: !1679)
!1731 = !DILocation(line: 70, column: 17, scope: !1679)
!1732 = !DILocation(line: 70, column: 21, scope: !1679)
!1733 = !DILocation(line: 70, column: 13, scope: !1679)
!1734 = !DILocation(line: 76, column: 17, scope: !1679)
!1735 = !DILocation(line: 78, column: 30, scope: !1679)
!1736 = !DILocation(line: 78, column: 32, scope: !1679)
!1737 = !DILocation(line: 78, column: 41, scope: !1679)
!1738 = !DILocation(line: 78, column: 43, scope: !1679)
!1739 = !DILocation(line: 78, column: 37, scope: !1679)
!1740 = !DILocation(line: 78, column: 19, scope: !1679)
!1741 = !DILocation(line: 78, column: 21, scope: !1679)
!1742 = !DILocation(line: 78, column: 26, scope: !1679)
!1743 = !DILocation(line: 79, column: 21, scope: !1679)
!1744 = !DILocation(line: 79, column: 25, scope: !1679)
!1745 = !DILocation(line: 80, column: 26, scope: !1679)
!1746 = !DILocation(line: 80, column: 22, scope: !1679)
!1747 = !DILocation(line: 81, column: 13, scope: !1679)
!1748 = !DILocation(line: 82, column: 22, scope: !1679)
!1749 = !DILocation(line: 82, column: 24, scope: !1679)
!1750 = !DILocation(line: 82, column: 33, scope: !1679)
!1751 = !DILocation(line: 82, column: 35, scope: !1679)
!1752 = !DILocation(line: 82, column: 29, scope: !1679)
!1753 = !DILocation(line: 82, column: 20, scope: !1679)
!1754 = !DILocation(line: 82, column: 13, scope: !1679)
!1755 = !DILocation(line: 88, column: 16, scope: !1679)
!1756 = !DILocation(line: 88, column: 18, scope: !1679)
!1757 = !DILocation(line: 88, column: 28, scope: !1679)
!1758 = !DILocation(line: 88, column: 30, scope: !1679)
!1759 = !DILocation(line: 88, column: 35, scope: !1679)
!1760 = !DILocation(line: 88, column: 23, scope: !1679)
!1761 = !DILocation(line: 88, column: 41, scope: !1679)
!1762 = !DILocation(line: 88, column: 13, scope: !1679)
!1763 = !DILocation(line: 90, column: 17, scope: !1679)
!1764 = !DILocation(line: 92, column: 31, scope: !1679)
!1765 = !DILocation(line: 92, column: 21, scope: !1679)
!1766 = !DILocation(line: 92, column: 25, scope: !1679)
!1767 = !DILocation(line: 93, column: 30, scope: !1679)
!1768 = !DILocation(line: 93, column: 32, scope: !1679)
!1769 = !DILocation(line: 93, column: 42, scope: !1679)
!1770 = !DILocation(line: 93, column: 44, scope: !1679)
!1771 = !DILocation(line: 93, column: 49, scope: !1679)
!1772 = !DILocation(line: 93, column: 37, scope: !1679)
!1773 = !DILocation(line: 93, column: 19, scope: !1679)
!1774 = !DILocation(line: 93, column: 21, scope: !1679)
!1775 = !DILocation(line: 93, column: 26, scope: !1679)
!1776 = !DILocation(line: 94, column: 26, scope: !1679)
!1777 = !DILocation(line: 94, column: 22, scope: !1679)
!1778 = !DILocation(line: 95, column: 13, scope: !1679)
!1779 = !DILocation(line: 96, column: 22, scope: !1679)
!1780 = !DILocation(line: 96, column: 24, scope: !1679)
!1781 = !DILocation(line: 96, column: 48, scope: !1679)
!1782 = !DILocation(line: 96, column: 50, scope: !1679)
!1783 = !DILocation(line: 96, column: 32, scope: !1679)
!1784 = !DILocation(line: 96, column: 29, scope: !1679)
!1785 = !DILocation(line: 96, column: 20, scope: !1679)
!1786 = !DILocation(line: 96, column: 13, scope: !1679)
!1787 = !DILocation(line: 102, column: 30, scope: !1679)
!1788 = !DILocation(line: 102, column: 32, scope: !1679)
!1789 = !DILocation(line: 102, column: 14, scope: !1679)
!1790 = !DILocation(line: 102, column: 56, scope: !1679)
!1791 = !DILocation(line: 102, column: 58, scope: !1679)
!1792 = !DILocation(line: 102, column: 40, scope: !1679)
!1793 = !DILocation(line: 102, column: 38, scope: !1679)
!1794 = !DILocation(line: 104, column: 16, scope: !1679)
!1795 = !DILocation(line: 104, column: 13, scope: !1679)
!1796 = !DILocation(line: 106, column: 16, scope: !1679)
!1797 = !DILocation(line: 107, column: 26, scope: !1679)
!1798 = !DILocation(line: 107, column: 22, scope: !1679)
!1799 = !DILocation(line: 107, column: 17, scope: !1679)
!1800 = !DILocation(line: 108, column: 13, scope: !1679)
!1801 = !DILocation(line: 110, column: 9, scope: !1679)
!1802 = !DILocation(line: 113, column: 13, scope: !1679)
!1803 = !DILocation(line: 113, column: 17, scope: !1679)
!1804 = !DILocation(line: 114, column: 24, scope: !1679)
!1805 = !DILocation(line: 114, column: 45, scope: !1679)
!1806 = !DILocation(line: 114, column: 28, scope: !1679)
!1807 = !DILocation(line: 114, column: 11, scope: !1679)
!1808 = !DILocation(line: 114, column: 13, scope: !1679)
!1809 = !DILocation(line: 114, column: 18, scope: !1679)
!1810 = !DILocation(line: 116, column: 22, scope: !1679)
!1811 = !DILocation(line: 116, column: 24, scope: !1679)
!1812 = !DILocation(line: 116, column: 29, scope: !1679)
!1813 = !DILocation(line: 116, column: 11, scope: !1679)
!1814 = !DILocation(line: 116, column: 13, scope: !1679)
!1815 = !DILocation(line: 116, column: 18, scope: !1679)
!1816 = !DILocation(line: 117, column: 22, scope: !1679)
!1817 = !DILocation(line: 117, column: 24, scope: !1679)
!1818 = !DILocation(line: 117, column: 46, scope: !1679)
!1819 = !DILocation(line: 117, column: 29, scope: !1679)
!1820 = !DILocation(line: 117, column: 60, scope: !1679)
!1821 = !DILocation(line: 117, column: 64, scope: !1679)
!1822 = !DILocation(line: 117, column: 53, scope: !1679)
!1823 = !DILocation(line: 117, column: 13, scope: !1679)
!1824 = !DILocation(line: 117, column: 17, scope: !1679)
!1825 = !DILocation(line: 118, column: 5, scope: !1679)
!1826 = !DILocation(line: 121, column: 15, scope: !1679)
!1827 = !DILocation(line: 121, column: 17, scope: !1679)
!1828 = !DILocation(line: 121, column: 22, scope: !1679)
!1829 = !DILocation(line: 121, column: 13, scope: !1679)
!1830 = !DILocation(line: 127, column: 22, scope: !1679)
!1831 = !DILocation(line: 127, column: 43, scope: !1679)
!1832 = !DILocation(line: 127, column: 17, scope: !1679)
!1833 = !DILocation(line: 129, column: 21, scope: !1679)
!1834 = !DILocation(line: 130, column: 32, scope: !1679)
!1835 = !DILocation(line: 130, column: 43, scope: !1679)
!1836 = !DILocation(line: 130, column: 47, scope: !1679)
!1837 = !DILocation(line: 130, column: 36, scope: !1679)
!1838 = !DILocation(line: 130, column: 28, scope: !1679)
!1839 = !DILocation(line: 130, column: 26, scope: !1679)
!1840 = !DILocation(line: 130, column: 21, scope: !1679)
!1841 = !DILocation(line: 131, column: 25, scope: !1679)
!1842 = !DILocation(line: 131, column: 29, scope: !1679)
!1843 = !DILocation(line: 131, column: 21, scope: !1679)
!1844 = !DILocation(line: 132, column: 30, scope: !1679)
!1845 = !DILocation(line: 132, column: 21, scope: !1679)
!1846 = !DILocation(line: 133, column: 40, scope: !1679)
!1847 = !DILocation(line: 133, column: 22, scope: !1679)
!1848 = !DILocation(line: 134, column: 30, scope: !1679)
!1849 = !DILocation(line: 134, column: 32, scope: !1679)
!1850 = !DILocation(line: 134, column: 37, scope: !1679)
!1851 = !DILocation(line: 134, column: 19, scope: !1679)
!1852 = !DILocation(line: 134, column: 21, scope: !1679)
!1853 = !DILocation(line: 134, column: 26, scope: !1679)
!1854 = !DILocation(line: 135, column: 30, scope: !1679)
!1855 = !DILocation(line: 135, column: 32, scope: !1679)
!1856 = !DILocation(line: 135, column: 54, scope: !1679)
!1857 = !DILocation(line: 135, column: 37, scope: !1679)
!1858 = !DILocation(line: 135, column: 68, scope: !1679)
!1859 = !DILocation(line: 135, column: 72, scope: !1679)
!1860 = !DILocation(line: 135, column: 61, scope: !1679)
!1861 = !DILocation(line: 135, column: 21, scope: !1679)
!1862 = !DILocation(line: 135, column: 25, scope: !1679)
!1863 = !DILocation(line: 136, column: 26, scope: !1679)
!1864 = !DILocation(line: 136, column: 17, scope: !1679)
!1865 = !DILocation(line: 142, column: 55, scope: !1679)
!1866 = !DILocation(line: 142, column: 37, scope: !1679)
!1867 = !DILocation(line: 142, column: 35, scope: !1679)
!1868 = !DILocation(line: 142, column: 78, scope: !1679)
!1869 = !DILocation(line: 142, column: 80, scope: !1679)
!1870 = !DILocation(line: 142, column: 62, scope: !1679)
!1871 = !DILocation(line: 142, column: 60, scope: !1679)
!1872 = !DILocation(line: 147, column: 20, scope: !1679)
!1873 = !DILocation(line: 147, column: 17, scope: !1679)
!1874 = !DILocation(line: 149, column: 21, scope: !1679)
!1875 = !DILocation(line: 149, column: 25, scope: !1679)
!1876 = !DILocation(line: 150, column: 32, scope: !1679)
!1877 = !DILocation(line: 150, column: 19, scope: !1679)
!1878 = !DILocation(line: 150, column: 21, scope: !1679)
!1879 = !DILocation(line: 150, column: 26, scope: !1679)
!1880 = !DILocation(line: 151, column: 19, scope: !1679)
!1881 = !DILocation(line: 151, column: 21, scope: !1679)
!1882 = !DILocation(line: 151, column: 26, scope: !1679)
!1883 = !DILocation(line: 152, column: 29, scope: !1679)
!1884 = !DILocation(line: 152, column: 31, scope: !1679)
!1885 = !DILocation(line: 152, column: 21, scope: !1679)
!1886 = !DILocation(line: 152, column: 25, scope: !1679)
!1887 = !DILocation(line: 153, column: 13, scope: !1679)
!1888 = !DILocation(line: 154, column: 25, scope: !1679)
!1889 = !DILocation(line: 154, column: 22, scope: !1679)
!1890 = !DILocation(line: 156, column: 21, scope: !1679)
!1891 = !DILocation(line: 156, column: 25, scope: !1679)
!1892 = !DILocation(line: 157, column: 32, scope: !1679)
!1893 = !DILocation(line: 157, column: 53, scope: !1679)
!1894 = !DILocation(line: 157, column: 36, scope: !1679)
!1895 = !DILocation(line: 157, column: 19, scope: !1679)
!1896 = !DILocation(line: 157, column: 21, scope: !1679)
!1897 = !DILocation(line: 157, column: 26, scope: !1679)
!1898 = !DILocation(line: 158, column: 30, scope: !1679)
!1899 = !DILocation(line: 158, column: 32, scope: !1679)
!1900 = !DILocation(line: 158, column: 37, scope: !1679)
!1901 = !DILocation(line: 158, column: 19, scope: !1679)
!1902 = !DILocation(line: 158, column: 21, scope: !1679)
!1903 = !DILocation(line: 158, column: 26, scope: !1679)
!1904 = !DILocation(line: 159, column: 30, scope: !1679)
!1905 = !DILocation(line: 159, column: 32, scope: !1679)
!1906 = !DILocation(line: 159, column: 54, scope: !1679)
!1907 = !DILocation(line: 159, column: 37, scope: !1679)
!1908 = !DILocation(line: 159, column: 68, scope: !1679)
!1909 = !DILocation(line: 159, column: 72, scope: !1679)
!1910 = !DILocation(line: 159, column: 61, scope: !1679)
!1911 = !DILocation(line: 159, column: 21, scope: !1679)
!1912 = !DILocation(line: 159, column: 25, scope: !1679)
!1913 = !DILocation(line: 160, column: 13, scope: !1679)
!1914 = !DILocation(line: 163, column: 31, scope: !1679)
!1915 = !DILocation(line: 163, column: 53, scope: !1679)
!1916 = !DILocation(line: 163, column: 35, scope: !1679)
!1917 = !DILocation(line: 163, column: 21, scope: !1679)
!1918 = !DILocation(line: 163, column: 25, scope: !1679)
!1919 = !DILocation(line: 164, column: 31, scope: !1679)
!1920 = !DILocation(line: 164, column: 33, scope: !1679)
!1921 = !DILocation(line: 164, column: 56, scope: !1679)
!1922 = !DILocation(line: 164, column: 38, scope: !1679)
!1923 = !DILocation(line: 165, column: 33, scope: !1679)
!1924 = !DILocation(line: 165, column: 44, scope: !1679)
!1925 = !DILocation(line: 165, column: 37, scope: !1679)
!1926 = !DILocation(line: 164, column: 63, scope: !1679)
!1927 = !DILocation(line: 164, column: 19, scope: !1679)
!1928 = !DILocation(line: 164, column: 21, scope: !1679)
!1929 = !DILocation(line: 164, column: 26, scope: !1679)
!1930 = !DILocation(line: 166, column: 19, scope: !1679)
!1931 = !DILocation(line: 166, column: 21, scope: !1679)
!1932 = !DILocation(line: 166, column: 26, scope: !1679)
!1933 = !DILocation(line: 167, column: 29, scope: !1679)
!1934 = !DILocation(line: 167, column: 31, scope: !1679)
!1935 = !DILocation(line: 167, column: 43, scope: !1679)
!1936 = !DILocation(line: 167, column: 36, scope: !1679)
!1937 = !DILocation(line: 167, column: 21, scope: !1679)
!1938 = !DILocation(line: 167, column: 25, scope: !1679)
!1939 = !DILocation(line: 169, column: 9, scope: !1679)
!1940 = !DILocation(line: 176, column: 34, scope: !1679)
!1941 = !DILocation(line: 176, column: 36, scope: !1679)
!1942 = !DILocation(line: 176, column: 18, scope: !1679)
!1943 = !DILocation(line: 176, column: 60, scope: !1679)
!1944 = !DILocation(line: 176, column: 62, scope: !1679)
!1945 = !DILocation(line: 176, column: 44, scope: !1679)
!1946 = !DILocation(line: 176, column: 42, scope: !1679)
!1947 = !DILocation(line: 178, column: 20, scope: !1679)
!1948 = !DILocation(line: 178, column: 17, scope: !1679)
!1949 = !DILocation(line: 180, column: 21, scope: !1679)
!1950 = !DILocation(line: 181, column: 30, scope: !1679)
!1951 = !DILocation(line: 181, column: 26, scope: !1679)
!1952 = !DILocation(line: 181, column: 21, scope: !1679)
!1953 = !DILocation(line: 182, column: 17, scope: !1679)
!1954 = !DILocation(line: 184, column: 13, scope: !1679)
!1955 = !DILocation(line: 187, column: 17, scope: !1679)
!1956 = !DILocation(line: 187, column: 21, scope: !1679)
!1957 = !DILocation(line: 188, column: 20, scope: !1679)
!1958 = !DILocation(line: 188, column: 17, scope: !1679)
!1959 = !DILocation(line: 190, column: 32, scope: !1679)
!1960 = !DILocation(line: 190, column: 19, scope: !1679)
!1961 = !DILocation(line: 190, column: 21, scope: !1679)
!1962 = !DILocation(line: 190, column: 26, scope: !1679)
!1963 = !DILocation(line: 191, column: 19, scope: !1679)
!1964 = !DILocation(line: 191, column: 21, scope: !1679)
!1965 = !DILocation(line: 191, column: 26, scope: !1679)
!1966 = !DILocation(line: 192, column: 29, scope: !1679)
!1967 = !DILocation(line: 192, column: 31, scope: !1679)
!1968 = !DILocation(line: 192, column: 21, scope: !1679)
!1969 = !DILocation(line: 192, column: 25, scope: !1679)
!1970 = !DILocation(line: 193, column: 13, scope: !1679)
!1971 = !DILocation(line: 196, column: 32, scope: !1679)
!1972 = !DILocation(line: 196, column: 53, scope: !1679)
!1973 = !DILocation(line: 196, column: 36, scope: !1679)
!1974 = !DILocation(line: 196, column: 19, scope: !1679)
!1975 = !DILocation(line: 196, column: 21, scope: !1679)
!1976 = !DILocation(line: 196, column: 26, scope: !1679)
!1977 = !DILocation(line: 197, column: 30, scope: !1679)
!1978 = !DILocation(line: 197, column: 32, scope: !1679)
!1979 = !DILocation(line: 197, column: 37, scope: !1679)
!1980 = !DILocation(line: 197, column: 19, scope: !1679)
!1981 = !DILocation(line: 197, column: 21, scope: !1679)
!1982 = !DILocation(line: 197, column: 26, scope: !1679)
!1983 = !DILocation(line: 198, column: 30, scope: !1679)
!1984 = !DILocation(line: 198, column: 32, scope: !1679)
!1985 = !DILocation(line: 198, column: 54, scope: !1679)
!1986 = !DILocation(line: 198, column: 37, scope: !1679)
!1987 = !DILocation(line: 198, column: 68, scope: !1679)
!1988 = !DILocation(line: 198, column: 72, scope: !1679)
!1989 = !DILocation(line: 198, column: 61, scope: !1679)
!1990 = !DILocation(line: 198, column: 21, scope: !1679)
!1991 = !DILocation(line: 198, column: 25, scope: !1679)
!1992 = !DILocation(line: 0, scope: !1679)
!1993 = !DILocation(line: 209, column: 5, scope: !1679)
!1994 = !DILocation(line: 209, column: 15, scope: !1679)
!1995 = !DILocation(line: 212, column: 23, scope: !1679)
!1996 = !DILocation(line: 212, column: 25, scope: !1679)
!1997 = !DILocation(line: 212, column: 43, scope: !1679)
!1998 = !DILocation(line: 212, column: 36, scope: !1679)
!1999 = !DILocation(line: 212, column: 11, scope: !1679)
!2000 = !DILocation(line: 212, column: 13, scope: !1679)
!2001 = !DILocation(line: 212, column: 18, scope: !1679)
!2002 = !DILocation(line: 213, column: 41, scope: !1679)
!2003 = !DILocation(line: 213, column: 43, scope: !1679)
!2004 = !DILocation(line: 213, column: 36, scope: !1679)
!2005 = !DILocation(line: 213, column: 13, scope: !1679)
!2006 = !DILocation(line: 213, column: 18, scope: !1679)
!2007 = !DILocation(line: 214, column: 23, scope: !1679)
!2008 = !DILocation(line: 214, column: 25, scope: !1679)
!2009 = !DILocation(line: 214, column: 43, scope: !1679)
!2010 = !DILocation(line: 214, column: 36, scope: !1679)
!2011 = !DILocation(line: 214, column: 11, scope: !1679)
!2012 = !DILocation(line: 214, column: 13, scope: !1679)
!2013 = !DILocation(line: 214, column: 18, scope: !1679)
!2014 = !DILocation(line: 215, column: 30, scope: !1679)
!2015 = !DILocation(line: 215, column: 36, scope: !1679)
!2016 = !DILocation(line: 215, column: 13, scope: !1679)
!2017 = !DILocation(line: 215, column: 18, scope: !1679)
!2018 = !DILocation(line: 223, column: 37, scope: !1679)
!2019 = !DILocation(line: 223, column: 45, scope: !1679)
!2020 = !DILocation(line: 223, column: 49, scope: !1679)
!2021 = !DILocation(line: 225, column: 24, scope: !1679)
!2022 = !DILocation(line: 225, column: 11, scope: !1679)
!2023 = !DILocation(line: 225, column: 15, scope: !1679)
!2024 = !DILocation(line: 226, column: 5, scope: !1679)
!2025 = !DILocation(line: 224, column: 19, scope: !1679)
!2026 = !DILocation(line: 224, column: 17, scope: !1679)
!2027 = !DILocation(line: 209, column: 20, scope: !1679)
!2028 = distinct !{!2028, !1993, !2024, !313}
!2029 = !DILocation(line: 227, column: 16, scope: !1679)
!2030 = !DILocation(line: 227, column: 20, scope: !1679)
!2031 = !DILocation(line: 227, column: 28, scope: !1679)
!2032 = !DILocation(line: 227, column: 26, scope: !1679)
!2033 = !DILocation(line: 227, column: 7, scope: !1679)
!2034 = !DILocation(line: 227, column: 11, scope: !1679)
!2035 = !DILocation(line: 228, column: 9, scope: !1679)
!2036 = !DILocation(line: 229, column: 18, scope: !1679)
!2037 = !DILocation(line: 229, column: 14, scope: !1679)
!2038 = !DILocation(line: 229, column: 9, scope: !1679)
!2039 = !DILocation(line: 230, column: 14, scope: !1679)
!2040 = !DILocation(line: 230, column: 5, scope: !1679)
!2041 = !DILocation(line: 231, column: 1, scope: !1679)
!2042 = distinct !DISubprogram(name: "__divmoddi4", scope: !194, file: !194, line: 20, type: !1437, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !193, retainedNodes: !281)
!2043 = !DILocation(line: 22, column: 14, scope: !2042)
!2044 = !DILocation(line: 23, column: 16, scope: !2042)
!2045 = !DILocation(line: 23, column: 12, scope: !2042)
!2046 = !DILocation(line: 23, column: 8, scope: !2042)
!2047 = !DILocation(line: 24, column: 3, scope: !2042)
!2048 = distinct !DISubprogram(name: "__divmodsi4", scope: !196, file: !196, line: 20, type: !1437, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !195, retainedNodes: !281)
!2049 = !DILocation(line: 22, column: 14, scope: !2048)
!2050 = !DILocation(line: 23, column: 16, scope: !2048)
!2051 = !DILocation(line: 23, column: 12, scope: !2048)
!2052 = !DILocation(line: 23, column: 8, scope: !2048)
!2053 = !DILocation(line: 24, column: 3, scope: !2048)
!2054 = distinct !DISubprogram(name: "__divsi3", scope: !198, file: !198, line: 22, type: !1437, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !197, retainedNodes: !281)
!2055 = !DILocation(line: 25, column: 20, scope: !2054)
!2056 = !DILocation(line: 26, column: 20, scope: !2054)
!2057 = !DILocation(line: 27, column: 12, scope: !2054)
!2058 = !DILocation(line: 27, column: 19, scope: !2054)
!2059 = !DILocation(line: 28, column: 12, scope: !2054)
!2060 = !DILocation(line: 28, column: 19, scope: !2054)
!2061 = !DILocation(line: 29, column: 9, scope: !2054)
!2062 = !DILocation(line: 36, column: 22, scope: !2054)
!2063 = !DILocation(line: 36, column: 33, scope: !2054)
!2064 = !DILocation(line: 36, column: 40, scope: !2054)
!2065 = !DILocation(line: 36, column: 5, scope: !2054)
!2066 = distinct !DISubprogram(name: "__ffsdi2", scope: !202, file: !202, line: 22, type: !1437, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !201, retainedNodes: !281)
!2067 = !DILocation(line: 25, column: 7, scope: !2066)
!2068 = !DILocation(line: 25, column: 11, scope: !2066)
!2069 = !DILocation(line: 26, column: 13, scope: !2066)
!2070 = !DILocation(line: 26, column: 17, scope: !2066)
!2071 = !DILocation(line: 26, column: 9, scope: !2066)
!2072 = !DILocation(line: 28, column: 15, scope: !2066)
!2073 = !DILocation(line: 28, column: 17, scope: !2066)
!2074 = !DILocation(line: 28, column: 22, scope: !2066)
!2075 = !DILocation(line: 28, column: 13, scope: !2066)
!2076 = !DILocation(line: 29, column: 13, scope: !2066)
!2077 = !DILocation(line: 30, column: 32, scope: !2066)
!2078 = !DILocation(line: 30, column: 34, scope: !2066)
!2079 = !DILocation(line: 30, column: 16, scope: !2066)
!2080 = !DILocation(line: 30, column: 40, scope: !2066)
!2081 = !DILocation(line: 30, column: 9, scope: !2066)
!2082 = !DILocation(line: 32, column: 30, scope: !2066)
!2083 = !DILocation(line: 32, column: 12, scope: !2066)
!2084 = !DILocation(line: 32, column: 35, scope: !2066)
!2085 = !DILocation(line: 32, column: 5, scope: !2066)
!2086 = !DILocation(line: 0, scope: !2066)
!2087 = !DILocation(line: 33, column: 1, scope: !2066)
!2088 = distinct !DISubprogram(name: "__ffssi2", scope: !204, file: !204, line: 22, type: !1437, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !203, retainedNodes: !281)
!2089 = !DILocation(line: 24, column: 11, scope: !2088)
!2090 = !DILocation(line: 24, column: 9, scope: !2088)
!2091 = !DILocation(line: 26, column: 9, scope: !2088)
!2092 = !DILocation(line: 28, column: 12, scope: !2088)
!2093 = !DILocation(line: 28, column: 29, scope: !2088)
!2094 = !DILocation(line: 28, column: 5, scope: !2088)
!2095 = !DILocation(line: 0, scope: !2088)
!2096 = !DILocation(line: 29, column: 1, scope: !2088)
!2097 = distinct !DISubprogram(name: "__lshrdi3", scope: !210, file: !210, line: 24, type: !1437, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !209, retainedNodes: !281)
!2098 = !DILocation(line: 29, column: 11, scope: !2097)
!2099 = !DILocation(line: 29, column: 15, scope: !2097)
!2100 = !DILocation(line: 30, column: 11, scope: !2097)
!2101 = !DILocation(line: 30, column: 9, scope: !2097)
!2102 = !DILocation(line: 32, column: 16, scope: !2097)
!2103 = !DILocation(line: 32, column: 18, scope: !2097)
!2104 = !DILocation(line: 32, column: 23, scope: !2097)
!2105 = !DILocation(line: 33, column: 30, scope: !2097)
!2106 = !DILocation(line: 33, column: 32, scope: !2097)
!2107 = !DILocation(line: 33, column: 43, scope: !2097)
!2108 = !DILocation(line: 33, column: 37, scope: !2097)
!2109 = !DILocation(line: 33, column: 18, scope: !2097)
!2110 = !DILocation(line: 33, column: 22, scope: !2097)
!2111 = !DILocation(line: 34, column: 5, scope: !2097)
!2112 = !DILocation(line: 37, column: 15, scope: !2097)
!2113 = !DILocation(line: 37, column: 13, scope: !2097)
!2114 = !DILocation(line: 38, column: 13, scope: !2097)
!2115 = !DILocation(line: 39, column: 32, scope: !2097)
!2116 = !DILocation(line: 39, column: 34, scope: !2097)
!2117 = !DILocation(line: 39, column: 39, scope: !2097)
!2118 = !DILocation(line: 39, column: 16, scope: !2097)
!2119 = !DILocation(line: 39, column: 18, scope: !2097)
!2120 = !DILocation(line: 39, column: 24, scope: !2097)
!2121 = !DILocation(line: 40, column: 31, scope: !2097)
!2122 = !DILocation(line: 40, column: 33, scope: !2097)
!2123 = !DILocation(line: 40, column: 55, scope: !2097)
!2124 = !DILocation(line: 40, column: 38, scope: !2097)
!2125 = !DILocation(line: 40, column: 72, scope: !2097)
!2126 = !DILocation(line: 40, column: 76, scope: !2097)
!2127 = !DILocation(line: 40, column: 61, scope: !2097)
!2128 = !DILocation(line: 40, column: 18, scope: !2097)
!2129 = !DILocation(line: 40, column: 22, scope: !2097)
!2130 = !DILocation(line: 42, column: 19, scope: !2097)
!2131 = !DILocation(line: 42, column: 5, scope: !2097)
!2132 = !DILocation(line: 0, scope: !2097)
!2133 = !DILocation(line: 43, column: 1, scope: !2097)
!2134 = distinct !DISubprogram(name: "__moddi3", scope: !214, file: !214, line: 20, type: !1437, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2135 = !DILocation(line: 24, column: 17, scope: !2134)
!2136 = !DILocation(line: 25, column: 11, scope: !2134)
!2137 = !DILocation(line: 26, column: 12, scope: !2134)
!2138 = !DILocation(line: 26, column: 17, scope: !2134)
!2139 = !DILocation(line: 28, column: 5, scope: !2134)
!2140 = !DILocation(line: 29, column: 21, scope: !2134)
!2141 = !DILocation(line: 29, column: 23, scope: !2134)
!2142 = !DILocation(line: 29, column: 28, scope: !2134)
!2143 = !DILocation(line: 29, column: 5, scope: !2134)
!2144 = distinct !DISubprogram(name: "__modsi3", scope: !216, file: !216, line: 20, type: !1437, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !281)
!2145 = !DILocation(line: 22, column: 16, scope: !2144)
!2146 = !DILocation(line: 22, column: 31, scope: !2144)
!2147 = !DILocation(line: 22, column: 14, scope: !2144)
!2148 = !DILocation(line: 22, column: 5, scope: !2144)
!2149 = distinct !DISubprogram(name: "__mulvdi3", scope: !220, file: !220, line: 22, type: !1437, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !219, retainedNodes: !281)
!2150 = !DILocation(line: 27, column: 11, scope: !2149)
!2151 = !DILocation(line: 27, column: 9, scope: !2149)
!2152 = !DILocation(line: 29, column: 15, scope: !2149)
!2153 = !DILocation(line: 29, column: 20, scope: !2149)
!2154 = !DILocation(line: 29, column: 25, scope: !2149)
!2155 = !DILocation(line: 29, column: 13, scope: !2149)
!2156 = !DILocation(line: 30, column: 13, scope: !2149)
!2157 = !DILocation(line: 31, column: 9, scope: !2149)
!2158 = !DILocation(line: 33, column: 11, scope: !2149)
!2159 = !DILocation(line: 33, column: 9, scope: !2149)
!2160 = !DILocation(line: 35, column: 15, scope: !2149)
!2161 = !DILocation(line: 35, column: 20, scope: !2149)
!2162 = !DILocation(line: 35, column: 25, scope: !2149)
!2163 = !DILocation(line: 35, column: 13, scope: !2149)
!2164 = !DILocation(line: 36, column: 13, scope: !2149)
!2165 = !DILocation(line: 37, column: 9, scope: !2149)
!2166 = !DILocation(line: 39, column: 19, scope: !2149)
!2167 = !DILocation(line: 40, column: 23, scope: !2149)
!2168 = !DILocation(line: 40, column: 29, scope: !2149)
!2169 = !DILocation(line: 41, column: 19, scope: !2149)
!2170 = !DILocation(line: 42, column: 23, scope: !2149)
!2171 = !DILocation(line: 42, column: 29, scope: !2149)
!2172 = !DILocation(line: 43, column: 15, scope: !2149)
!2173 = !DILocation(line: 43, column: 19, scope: !2149)
!2174 = !DILocation(line: 43, column: 28, scope: !2149)
!2175 = !DILocation(line: 43, column: 9, scope: !2149)
!2176 = !DILocation(line: 44, column: 9, scope: !2149)
!2177 = !DILocation(line: 45, column: 12, scope: !2149)
!2178 = !DILocation(line: 45, column: 9, scope: !2149)
!2179 = !DILocation(line: 47, column: 25, scope: !2149)
!2180 = !DILocation(line: 47, column: 19, scope: !2149)
!2181 = !DILocation(line: 47, column: 13, scope: !2149)
!2182 = !DILocation(line: 48, column: 13, scope: !2149)
!2183 = !DILocation(line: 49, column: 5, scope: !2149)
!2184 = !DILocation(line: 52, column: 27, scope: !2149)
!2185 = !DILocation(line: 52, column: 25, scope: !2149)
!2186 = !DILocation(line: 52, column: 19, scope: !2149)
!2187 = !DILocation(line: 52, column: 13, scope: !2149)
!2188 = !DILocation(line: 53, column: 13, scope: !2149)
!2189 = !DILocation(line: 55, column: 5, scope: !2149)
!2190 = !DILocation(line: 0, scope: !2149)
!2191 = !DILocation(line: 56, column: 1, scope: !2149)
!2192 = distinct !DISubprogram(name: "__mulvsi3", scope: !222, file: !222, line: 22, type: !1437, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !281)
!2193 = !DILocation(line: 27, column: 11, scope: !2192)
!2194 = !DILocation(line: 27, column: 9, scope: !2192)
!2195 = !DILocation(line: 29, column: 15, scope: !2192)
!2196 = !DILocation(line: 29, column: 20, scope: !2192)
!2197 = !DILocation(line: 29, column: 25, scope: !2192)
!2198 = !DILocation(line: 29, column: 13, scope: !2192)
!2199 = !DILocation(line: 30, column: 13, scope: !2192)
!2200 = !DILocation(line: 31, column: 9, scope: !2192)
!2201 = !DILocation(line: 33, column: 11, scope: !2192)
!2202 = !DILocation(line: 33, column: 9, scope: !2192)
!2203 = !DILocation(line: 35, column: 15, scope: !2192)
!2204 = !DILocation(line: 35, column: 20, scope: !2192)
!2205 = !DILocation(line: 35, column: 25, scope: !2192)
!2206 = !DILocation(line: 35, column: 13, scope: !2192)
!2207 = !DILocation(line: 36, column: 13, scope: !2192)
!2208 = !DILocation(line: 37, column: 9, scope: !2192)
!2209 = !DILocation(line: 39, column: 19, scope: !2192)
!2210 = !DILocation(line: 40, column: 23, scope: !2192)
!2211 = !DILocation(line: 40, column: 29, scope: !2192)
!2212 = !DILocation(line: 41, column: 19, scope: !2192)
!2213 = !DILocation(line: 42, column: 23, scope: !2192)
!2214 = !DILocation(line: 42, column: 29, scope: !2192)
!2215 = !DILocation(line: 43, column: 15, scope: !2192)
!2216 = !DILocation(line: 43, column: 19, scope: !2192)
!2217 = !DILocation(line: 43, column: 28, scope: !2192)
!2218 = !DILocation(line: 43, column: 9, scope: !2192)
!2219 = !DILocation(line: 44, column: 9, scope: !2192)
!2220 = !DILocation(line: 45, column: 12, scope: !2192)
!2221 = !DILocation(line: 45, column: 9, scope: !2192)
!2222 = !DILocation(line: 47, column: 25, scope: !2192)
!2223 = !DILocation(line: 47, column: 19, scope: !2192)
!2224 = !DILocation(line: 47, column: 13, scope: !2192)
!2225 = !DILocation(line: 48, column: 13, scope: !2192)
!2226 = !DILocation(line: 49, column: 5, scope: !2192)
!2227 = !DILocation(line: 52, column: 27, scope: !2192)
!2228 = !DILocation(line: 52, column: 25, scope: !2192)
!2229 = !DILocation(line: 52, column: 19, scope: !2192)
!2230 = !DILocation(line: 52, column: 13, scope: !2192)
!2231 = !DILocation(line: 53, column: 13, scope: !2192)
!2232 = !DILocation(line: 55, column: 5, scope: !2192)
!2233 = !DILocation(line: 0, scope: !2192)
!2234 = !DILocation(line: 56, column: 1, scope: !2192)
!2235 = distinct !DISubprogram(name: "__paritydi2", scope: !226, file: !226, line: 20, type: !1437, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !225, retainedNodes: !281)
!2236 = !DILocation(line: 23, column: 7, scope: !2235)
!2237 = !DILocation(line: 23, column: 11, scope: !2235)
!2238 = !DILocation(line: 24, column: 26, scope: !2235)
!2239 = !DILocation(line: 24, column: 28, scope: !2235)
!2240 = !DILocation(line: 24, column: 39, scope: !2235)
!2241 = !DILocation(line: 24, column: 33, scope: !2235)
!2242 = !DILocation(line: 24, column: 12, scope: !2235)
!2243 = !DILocation(line: 24, column: 5, scope: !2235)
!2244 = distinct !DISubprogram(name: "__paritysi2", scope: !228, file: !228, line: 20, type: !1437, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !227, retainedNodes: !281)
!2245 = !DILocation(line: 23, column: 12, scope: !2244)
!2246 = !DILocation(line: 23, column: 7, scope: !2244)
!2247 = !DILocation(line: 24, column: 12, scope: !2244)
!2248 = !DILocation(line: 24, column: 7, scope: !2244)
!2249 = !DILocation(line: 25, column: 12, scope: !2244)
!2250 = !DILocation(line: 25, column: 7, scope: !2244)
!2251 = !DILocation(line: 26, column: 26, scope: !2244)
!2252 = !DILocation(line: 26, column: 20, scope: !2244)
!2253 = !DILocation(line: 26, column: 34, scope: !2244)
!2254 = !DILocation(line: 26, column: 5, scope: !2244)
!2255 = distinct !DISubprogram(name: "__popcountdi2", scope: !232, file: !232, line: 20, type: !1437, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !231, retainedNodes: !281)
!2256 = !DILocation(line: 23, column: 20, scope: !2255)
!2257 = !DILocation(line: 23, column: 26, scope: !2255)
!2258 = !DILocation(line: 23, column: 13, scope: !2255)
!2259 = !DILocation(line: 25, column: 15, scope: !2255)
!2260 = !DILocation(line: 25, column: 21, scope: !2255)
!2261 = !DILocation(line: 25, column: 52, scope: !2255)
!2262 = !DILocation(line: 25, column: 46, scope: !2255)
!2263 = !DILocation(line: 27, column: 20, scope: !2255)
!2264 = !DILocation(line: 27, column: 14, scope: !2255)
!2265 = !DILocation(line: 27, column: 27, scope: !2255)
!2266 = !DILocation(line: 29, column: 34, scope: !2255)
!2267 = !DILocation(line: 29, column: 28, scope: !2255)
!2268 = !DILocation(line: 29, column: 16, scope: !2255)
!2269 = !DILocation(line: 32, column: 16, scope: !2255)
!2270 = !DILocation(line: 32, column: 11, scope: !2255)
!2271 = !DILocation(line: 35, column: 20, scope: !2255)
!2272 = !DILocation(line: 35, column: 15, scope: !2255)
!2273 = !DILocation(line: 35, column: 27, scope: !2255)
!2274 = !DILocation(line: 35, column: 5, scope: !2255)
!2275 = distinct !DISubprogram(name: "__popcountsi2", scope: !234, file: !234, line: 20, type: !1437, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !233, retainedNodes: !281)
!2276 = !DILocation(line: 23, column: 17, scope: !2275)
!2277 = !DILocation(line: 23, column: 23, scope: !2275)
!2278 = !DILocation(line: 23, column: 11, scope: !2275)
!2279 = !DILocation(line: 25, column: 13, scope: !2275)
!2280 = !DILocation(line: 25, column: 19, scope: !2275)
!2281 = !DILocation(line: 25, column: 38, scope: !2275)
!2282 = !DILocation(line: 25, column: 33, scope: !2275)
!2283 = !DILocation(line: 27, column: 17, scope: !2275)
!2284 = !DILocation(line: 27, column: 12, scope: !2275)
!2285 = !DILocation(line: 27, column: 24, scope: !2275)
!2286 = !DILocation(line: 29, column: 17, scope: !2275)
!2287 = !DILocation(line: 29, column: 12, scope: !2275)
!2288 = !DILocation(line: 32, column: 20, scope: !2275)
!2289 = !DILocation(line: 32, column: 15, scope: !2275)
!2290 = !DILocation(line: 32, column: 27, scope: !2275)
!2291 = !DILocation(line: 32, column: 5, scope: !2275)
!2292 = distinct !DISubprogram(name: "__subvdi3", scope: !238, file: !238, line: 22, type: !1437, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !237, retainedNodes: !281)
!2293 = !DILocation(line: 24, column: 27, scope: !2292)
!2294 = !DILocation(line: 25, column: 11, scope: !2292)
!2295 = !DILocation(line: 25, column: 9, scope: !2292)
!2296 = !DILocation(line: 27, column: 15, scope: !2292)
!2297 = !DILocation(line: 27, column: 13, scope: !2292)
!2298 = !DILocation(line: 28, column: 13, scope: !2292)
!2299 = !DILocation(line: 29, column: 5, scope: !2292)
!2300 = !DILocation(line: 32, column: 15, scope: !2292)
!2301 = !DILocation(line: 32, column: 13, scope: !2292)
!2302 = !DILocation(line: 33, column: 13, scope: !2292)
!2303 = !DILocation(line: 35, column: 5, scope: !2292)
!2304 = distinct !DISubprogram(name: "__subvsi3", scope: !240, file: !240, line: 22, type: !1437, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !281)
!2305 = !DILocation(line: 24, column: 27, scope: !2304)
!2306 = !DILocation(line: 25, column: 11, scope: !2304)
!2307 = !DILocation(line: 25, column: 9, scope: !2304)
!2308 = !DILocation(line: 27, column: 15, scope: !2304)
!2309 = !DILocation(line: 27, column: 13, scope: !2304)
!2310 = !DILocation(line: 28, column: 13, scope: !2304)
!2311 = !DILocation(line: 29, column: 5, scope: !2304)
!2312 = !DILocation(line: 32, column: 15, scope: !2304)
!2313 = !DILocation(line: 32, column: 13, scope: !2304)
!2314 = !DILocation(line: 33, column: 13, scope: !2304)
!2315 = !DILocation(line: 35, column: 5, scope: !2304)
!2316 = distinct !DISubprogram(name: "__ucmpdi2", scope: !244, file: !244, line: 23, type: !1437, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !281)
!2317 = !DILocation(line: 26, column: 7, scope: !2316)
!2318 = !DILocation(line: 26, column: 11, scope: !2316)
!2319 = !DILocation(line: 28, column: 7, scope: !2316)
!2320 = !DILocation(line: 28, column: 11, scope: !2316)
!2321 = !DILocation(line: 29, column: 11, scope: !2316)
!2322 = !DILocation(line: 29, column: 13, scope: !2316)
!2323 = !DILocation(line: 29, column: 22, scope: !2316)
!2324 = !DILocation(line: 29, column: 24, scope: !2316)
!2325 = !DILocation(line: 29, column: 18, scope: !2316)
!2326 = !DILocation(line: 29, column: 9, scope: !2316)
!2327 = !DILocation(line: 30, column: 9, scope: !2316)
!2328 = !DILocation(line: 31, column: 11, scope: !2316)
!2329 = !DILocation(line: 31, column: 13, scope: !2316)
!2330 = !DILocation(line: 31, column: 22, scope: !2316)
!2331 = !DILocation(line: 31, column: 24, scope: !2316)
!2332 = !DILocation(line: 31, column: 18, scope: !2316)
!2333 = !DILocation(line: 31, column: 9, scope: !2316)
!2334 = !DILocation(line: 32, column: 9, scope: !2316)
!2335 = !DILocation(line: 33, column: 13, scope: !2316)
!2336 = !DILocation(line: 33, column: 23, scope: !2316)
!2337 = !DILocation(line: 33, column: 17, scope: !2316)
!2338 = !DILocation(line: 33, column: 9, scope: !2316)
!2339 = !DILocation(line: 34, column: 9, scope: !2316)
!2340 = !DILocation(line: 35, column: 13, scope: !2316)
!2341 = !DILocation(line: 35, column: 23, scope: !2316)
!2342 = !DILocation(line: 35, column: 17, scope: !2316)
!2343 = !DILocation(line: 35, column: 9, scope: !2316)
!2344 = !DILocation(line: 36, column: 9, scope: !2316)
!2345 = !DILocation(line: 37, column: 5, scope: !2316)
!2346 = !DILocation(line: 0, scope: !2316)
!2347 = !DILocation(line: 38, column: 1, scope: !2316)
!2348 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !244, file: !244, line: 46, type: !1437, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !281)
!2349 = !DILocation(line: 48, column: 9, scope: !2348)
!2350 = !DILocation(line: 48, column: 25, scope: !2348)
!2351 = !DILocation(line: 48, column: 2, scope: !2348)
!2352 = distinct !DISubprogram(name: "__udivdi3", scope: !248, file: !248, line: 20, type: !1437, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !247, retainedNodes: !281)
!2353 = !DILocation(line: 22, column: 12, scope: !2352)
!2354 = !DILocation(line: 22, column: 5, scope: !2352)
!2355 = distinct !DISubprogram(name: "__udivmodsi4", scope: !252, file: !252, line: 20, type: !1437, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !281)
!2356 = !DILocation(line: 22, column: 14, scope: !2355)
!2357 = !DILocation(line: 23, column: 16, scope: !2355)
!2358 = !DILocation(line: 23, column: 12, scope: !2355)
!2359 = !DILocation(line: 23, column: 8, scope: !2355)
!2360 = !DILocation(line: 24, column: 3, scope: !2355)
!2361 = distinct !DISubprogram(name: "__udivsi3", scope: !256, file: !256, line: 25, type: !1437, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !281)
!2362 = !DILocation(line: 32, column: 11, scope: !2361)
!2363 = !DILocation(line: 32, column: 9, scope: !2361)
!2364 = !DILocation(line: 33, column: 9, scope: !2361)
!2365 = !DILocation(line: 34, column: 11, scope: !2361)
!2366 = !DILocation(line: 34, column: 9, scope: !2361)
!2367 = !DILocation(line: 35, column: 9, scope: !2361)
!2368 = !DILocation(line: 36, column: 10, scope: !2361)
!2369 = !DILocation(line: 36, column: 29, scope: !2361)
!2370 = !DILocation(line: 36, column: 27, scope: !2361)
!2371 = !DILocation(line: 38, column: 12, scope: !2361)
!2372 = !DILocation(line: 38, column: 9, scope: !2361)
!2373 = !DILocation(line: 39, column: 9, scope: !2361)
!2374 = !DILocation(line: 40, column: 12, scope: !2361)
!2375 = !DILocation(line: 40, column: 9, scope: !2361)
!2376 = !DILocation(line: 41, column: 9, scope: !2361)
!2377 = !DILocation(line: 42, column: 5, scope: !2361)
!2378 = !DILocation(line: 45, column: 28, scope: !2361)
!2379 = !DILocation(line: 45, column: 11, scope: !2361)
!2380 = !DILocation(line: 46, column: 11, scope: !2361)
!2381 = !DILocation(line: 48, column: 5, scope: !2361)
!2382 = !DILocation(line: 0, scope: !2361)
!2383 = !DILocation(line: 48, column: 15, scope: !2361)
!2384 = !DILocation(line: 51, column: 22, scope: !2361)
!2385 = !DILocation(line: 60, column: 41, scope: !2361)
!2386 = !DILocation(line: 63, column: 5, scope: !2361)
!2387 = !DILocation(line: 62, column: 16, scope: !2361)
!2388 = !DILocation(line: 62, column: 11, scope: !2361)
!2389 = !DILocation(line: 61, column: 19, scope: !2361)
!2390 = !DILocation(line: 52, column: 16, scope: !2361)
!2391 = !DILocation(line: 52, column: 22, scope: !2361)
!2392 = !DILocation(line: 48, column: 20, scope: !2361)
!2393 = distinct !{!2393, !2381, !2386, !313}
!2394 = !DILocation(line: 64, column: 12, scope: !2361)
!2395 = !DILocation(line: 64, column: 18, scope: !2361)
!2396 = !DILocation(line: 65, column: 5, scope: !2361)
!2397 = !DILocation(line: 66, column: 1, scope: !2361)
!2398 = distinct !DISubprogram(name: "__umoddi3", scope: !260, file: !260, line: 20, type: !1437, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !259, retainedNodes: !281)
!2399 = !DILocation(line: 23, column: 5, scope: !2398)
!2400 = !DILocation(line: 24, column: 12, scope: !2398)
!2401 = !DILocation(line: 24, column: 5, scope: !2398)
!2402 = distinct !DISubprogram(name: "__umodsi3", scope: !262, file: !262, line: 20, type: !1437, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !261, retainedNodes: !281)
!2403 = !DILocation(line: 22, column: 16, scope: !2402)
!2404 = !DILocation(line: 22, column: 32, scope: !2402)
!2405 = !DILocation(line: 22, column: 14, scope: !2402)
!2406 = !DILocation(line: 22, column: 5, scope: !2402)
!2407 = distinct !DISubprogram(name: "memcpy", scope: !266, file: !266, line: 3, type: !1437, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !281)
!2408 = !DILocation(line: 8, column: 6, scope: !2407)
!2409 = !DILocation(line: 0, scope: !2407)
!2410 = !DILocation(line: 8, column: 19, scope: !2407)
!2411 = !DILocation(line: 8, column: 2, scope: !2407)
!2412 = !DILocation(line: 9, column: 21, scope: !2407)
!2413 = !DILocation(line: 9, column: 3, scope: !2407)
!2414 = !DILocation(line: 9, column: 19, scope: !2407)
!2415 = !DILocation(line: 10, column: 2, scope: !2407)
!2416 = !DILocation(line: 8, column: 26, scope: !2407)
!2417 = distinct !{!2417, !2411, !2415, !313}
!2418 = !DILocation(line: 11, column: 1, scope: !2407)
!2419 = distinct !DISubprogram(name: "memset", scope: !266, file: !266, line: 13, type: !1437, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !281)
!2420 = !DILocation(line: 17, column: 6, scope: !2419)
!2421 = !DILocation(line: 0, scope: !2419)
!2422 = !DILocation(line: 17, column: 19, scope: !2419)
!2423 = !DILocation(line: 17, column: 2, scope: !2419)
!2424 = !DILocation(line: 18, column: 13, scope: !2419)
!2425 = !DILocation(line: 18, column: 3, scope: !2419)
!2426 = !DILocation(line: 18, column: 11, scope: !2419)
!2427 = !DILocation(line: 19, column: 2, scope: !2419)
!2428 = !DILocation(line: 17, column: 26, scope: !2419)
!2429 = distinct !{!2429, !2423, !2427, !313}
!2430 = !DILocation(line: 20, column: 2, scope: !2419)
