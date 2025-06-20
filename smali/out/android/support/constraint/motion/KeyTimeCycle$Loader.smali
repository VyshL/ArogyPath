.class Landroid/support/constraint/motion/KeyTimeCycle$Loader;
.super Ljava/lang/Object;
.source "KeyTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/KeyTimeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final ANDROID_ALPHA:I = 0x1

.field private static final ANDROID_ELEVATION:I = 0x2

.field private static final ANDROID_ROTATION:I = 0x4

.field private static final ANDROID_ROTATION_X:I = 0x5

.field private static final ANDROID_ROTATION_Y:I = 0x6

.field private static final ANDROID_SCALE_X:I = 0x7

.field private static final ANDROID_SCALE_Y:I = 0xe

.field private static final ANDROID_TRANSLATION_X:I = 0xf

.field private static final ANDROID_TRANSLATION_Y:I = 0x10

.field private static final ANDROID_TRANSLATION_Z:I = 0x11

.field private static final CURVE_FIT:I = 0xd

.field private static final FRAME_POSITION:I = 0xc

.field private static final PROGRESS:I = 0x12

.field private static final TARGET_ID:I = 0xa

.field private static final TRANSITION_EASING:I = 0x9

.field private static final TRANSITION_PATH_ROTATE:I = 0x8

.field private static final WAVE_OFFSET:I = 0x15

.field private static final WAVE_PERIOD:I = 0x14

.field private static final WAVE_SHAPE:I = 0x13

.field private static mAttrMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 321
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 324
    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_alpha:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_elevation:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 326
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_rotation:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 327
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_rotationX:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 328
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_rotationY:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 329
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_scaleX:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 330
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_transitionPathRotate:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 331
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_transitionEasing:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 332
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_motionTarget:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 333
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_framePosition:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 334
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_curveFit:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 335
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_scaleY:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 336
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_translationX:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 337
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_translationY:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 338
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_translationZ:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 339
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_motionProgress:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 340
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_wavePeriod:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 341
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_waveOffset:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 342
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_waveShape:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 343
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroid/support/constraint/motion/KeyTimeCycle;Landroid/content/res/TypedArray;)V
    .registers 8
    .param p0, "c"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 346
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 347
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_16f

    .line 348
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 349
    .local v2, "attr":I
    sget-object v3, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_170

    .line 426
    :pswitch_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unused attribute 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyTimeCycle"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16b

    .line 386
    :pswitch_42
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 387
    .local v3, "type":Landroid/util/TypedValue;
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_58

    .line 388
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$600(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-static {p0, v4}, Landroid/support/constraint/motion/KeyTimeCycle;->access$602(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    goto/16 :goto_16b

    .line 390
    :cond_58
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$600(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {p0, v4}, Landroid/support/constraint/motion/KeyTimeCycle;->access$602(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    .line 392
    goto/16 :goto_16b

    .line 383
    .end local v3    # "type":Landroid/util/TypedValue;
    :pswitch_65
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$500(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyTimeCycle;->access$502(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    .line 384
    goto/16 :goto_16b

    .line 380
    :pswitch_72
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$400(Landroid/support/constraint/motion/KeyTimeCycle;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyTimeCycle;->access$402(Landroid/support/constraint/motion/KeyTimeCycle;I)I

    .line 381
    goto/16 :goto_16b

    .line 423
    :pswitch_7f
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1600(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1602(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    .line 424
    goto/16 :goto_16b

    .line 418
    :pswitch_8c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_16b

    .line 419
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1500(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1502(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    goto/16 :goto_16b

    .line 415
    :pswitch_9f
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1400(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1402(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    .line 416
    goto/16 :goto_16b

    .line 412
    :pswitch_ac
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1300(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1302(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    .line 413
    goto/16 :goto_16b

    .line 406
    :pswitch_b9
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1100(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1102(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    .line 407
    goto/16 :goto_16b

    .line 377
    :pswitch_c6
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$300(Landroid/support/constraint/motion/KeyTimeCycle;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyTimeCycle;->access$302(Landroid/support/constraint/motion/KeyTimeCycle;I)I

    .line 378
    goto/16 :goto_16b

    .line 365
    :pswitch_d3
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    .line 366
    goto/16 :goto_16b

    .line 351
    :pswitch_dd
    sget-boolean v3, Landroid/support/constraint/motion/MotionLayout;->IS_IN_EDIT_MODE:Z

    if-eqz v3, :cond_f6

    .line 352
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTargetId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTargetId:I

    .line 353
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTargetId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16b

    .line 354
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTargetString:Ljava/lang/String;

    goto/16 :goto_16b

    .line 357
    :cond_f6
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_106

    .line 358
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTargetString:Ljava/lang/String;

    goto :goto_16b

    .line 360
    :cond_106
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTargetId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTargetId:I

    .line 363
    goto :goto_16b

    .line 403
    :pswitch_10f
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1002(Landroid/support/constraint/motion/KeyTimeCycle;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    goto :goto_16b

    .line 409
    :pswitch_117
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1200(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1202(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    .line 410
    goto :goto_16b

    .line 394
    :pswitch_123
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$700(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyTimeCycle;->access$702(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    .line 395
    goto :goto_16b

    .line 400
    :pswitch_12f
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$900(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyTimeCycle;->access$902(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    .line 401
    goto :goto_16b

    .line 397
    :pswitch_13b
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$800(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyTimeCycle;->access$802(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    .line 398
    goto :goto_16b

    .line 374
    :pswitch_147
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$200(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyTimeCycle;->access$202(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    .line 375
    goto :goto_16b

    .line 371
    :pswitch_153
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$100(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyTimeCycle;->access$102(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    .line 372
    goto :goto_16b

    .line 368
    :pswitch_15f
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$000(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyTimeCycle;->access$002(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    .line 369
    nop

    .line 347
    .end local v2    # "attr":I
    :cond_16b
    :goto_16b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 430
    .end local v1    # "i":I
    :cond_16f
    return-void

    :pswitch_data_170
    .packed-switch 0x1
        :pswitch_15f
        :pswitch_153
        :pswitch_14
        :pswitch_147
        :pswitch_13b
        :pswitch_12f
        :pswitch_123
        :pswitch_117
        :pswitch_10f
        :pswitch_dd
        :pswitch_14
        :pswitch_d3
        :pswitch_c6
        :pswitch_b9
        :pswitch_ac
        :pswitch_9f
        :pswitch_8c
        :pswitch_7f
        :pswitch_72
        :pswitch_65
        :pswitch_42
    .end packed-switch
.end method
