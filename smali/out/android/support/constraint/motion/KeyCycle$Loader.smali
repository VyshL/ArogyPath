.class Landroid/support/constraint/motion/KeyCycle$Loader;
.super Ljava/lang/Object;
.source "KeyCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/KeyCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final ANDROID_ALPHA:I = 0x9

.field private static final ANDROID_ELEVATION:I = 0xa

.field private static final ANDROID_ROTATION:I = 0xb

.field private static final ANDROID_ROTATION_X:I = 0xc

.field private static final ANDROID_ROTATION_Y:I = 0xd

.field private static final ANDROID_SCALE_X:I = 0xf

.field private static final ANDROID_SCALE_Y:I = 0x10

.field private static final ANDROID_TRANSLATION_X:I = 0x11

.field private static final ANDROID_TRANSLATION_Y:I = 0x12

.field private static final ANDROID_TRANSLATION_Z:I = 0x13

.field private static final CURVE_FIT:I = 0x4

.field private static final FRAME_POSITION:I = 0x2

.field private static final PROGRESS:I = 0x14

.field private static final TARGET_ID:I = 0x1

.field private static final TRANSITION_EASING:I = 0x3

.field private static final TRANSITION_PATH_ROTATE:I = 0xe

.field private static final WAVE_OFFSET:I = 0x7

.field private static final WAVE_PERIOD:I = 0x6

.field private static final WAVE_SHAPE:I = 0x5

.field private static final WAVE_VARIES_BY:I = 0x8

.field private static mAttrMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 235
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 238
    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_motionTarget:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 239
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_framePosition:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 240
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_transitionEasing:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 241
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_curveFit:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 242
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_waveShape:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 243
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_wavePeriod:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 244
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_waveOffset:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 245
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_waveVariesBy:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 246
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_android_alpha:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 247
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_android_elevation:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 248
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_android_rotation:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 249
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_android_rotationX:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 250
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_android_rotationY:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 251
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_transitionPathRotate:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 252
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_android_scaleX:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 253
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_android_scaleY:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 254
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_android_translationX:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 255
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_android_translationY:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 256
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_android_translationZ:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 257
    sget-object v0, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyCycle_motionProgress:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 258
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/motion/KeyCycle;Landroid/content/res/TypedArray;)V
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # Landroid/content/res/TypedArray;

    .line 214
    invoke-static {p0, p1}, Landroid/support/constraint/motion/KeyCycle$Loader;->read(Landroid/support/constraint/motion/KeyCycle;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method private static read(Landroid/support/constraint/motion/KeyCycle;Landroid/content/res/TypedArray;)V
    .registers 8
    .param p0, "c"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 261
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 262
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_17d

    .line 263
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 264
    .local v2, "attr":I
    sget-object v3, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_17e

    .line 344
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

    sget-object v4, Landroid/support/constraint/motion/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyCycle"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_179

    .line 341
    :pswitch_42
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$1800(Landroid/support/constraint/motion/KeyCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$1802(Landroid/support/constraint/motion/KeyCycle;F)F

    .line 342
    goto/16 :goto_179

    .line 336
    :pswitch_4f
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_179

    .line 337
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$1700(Landroid/support/constraint/motion/KeyCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$1702(Landroid/support/constraint/motion/KeyCycle;F)F

    goto/16 :goto_179

    .line 333
    :pswitch_62
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$1600(Landroid/support/constraint/motion/KeyCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$1602(Landroid/support/constraint/motion/KeyCycle;F)F

    .line 334
    goto/16 :goto_179

    .line 330
    :pswitch_6f
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$1500(Landroid/support/constraint/motion/KeyCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$1502(Landroid/support/constraint/motion/KeyCycle;F)F

    .line 331
    goto/16 :goto_179

    .line 327
    :pswitch_7c
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$1400(Landroid/support/constraint/motion/KeyCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$1402(Landroid/support/constraint/motion/KeyCycle;F)F

    .line 328
    goto/16 :goto_179

    .line 324
    :pswitch_89
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$1300(Landroid/support/constraint/motion/KeyCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$1302(Landroid/support/constraint/motion/KeyCycle;F)F

    .line 325
    goto/16 :goto_179

    .line 321
    :pswitch_96
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$1200(Landroid/support/constraint/motion/KeyCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$1202(Landroid/support/constraint/motion/KeyCycle;F)F

    .line 322
    goto/16 :goto_179

    .line 318
    :pswitch_a3
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$1100(Landroid/support/constraint/motion/KeyCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$1102(Landroid/support/constraint/motion/KeyCycle;F)F

    .line 319
    goto/16 :goto_179

    .line 315
    :pswitch_b0
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$1000(Landroid/support/constraint/motion/KeyCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$1002(Landroid/support/constraint/motion/KeyCycle;F)F

    .line 316
    goto/16 :goto_179

    .line 312
    :pswitch_bd
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$900(Landroid/support/constraint/motion/KeyCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$902(Landroid/support/constraint/motion/KeyCycle;F)F

    .line 313
    goto/16 :goto_179

    .line 309
    :pswitch_ca
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$800(Landroid/support/constraint/motion/KeyCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$802(Landroid/support/constraint/motion/KeyCycle;F)F

    .line 310
    goto/16 :goto_179

    .line 306
    :pswitch_d7
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$700(Landroid/support/constraint/motion/KeyCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$702(Landroid/support/constraint/motion/KeyCycle;F)F

    .line 307
    goto/16 :goto_179

    .line 303
    :pswitch_e4
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$600(Landroid/support/constraint/motion/KeyCycle;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$602(Landroid/support/constraint/motion/KeyCycle;I)I

    .line 304
    goto/16 :goto_179

    .line 295
    :pswitch_f1
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 296
    .local v3, "type":Landroid/util/TypedValue;
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_107

    .line 297
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$500(Landroid/support/constraint/motion/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-static {p0, v4}, Landroid/support/constraint/motion/KeyCycle;->access$502(Landroid/support/constraint/motion/KeyCycle;F)F

    goto/16 :goto_179

    .line 299
    :cond_107
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$500(Landroid/support/constraint/motion/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {p0, v4}, Landroid/support/constraint/motion/KeyCycle;->access$502(Landroid/support/constraint/motion/KeyCycle;F)F

    .line 301
    goto :goto_179

    .line 292
    .end local v3    # "type":Landroid/util/TypedValue;
    :pswitch_113
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$400(Landroid/support/constraint/motion/KeyCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$402(Landroid/support/constraint/motion/KeyCycle;F)F

    .line 293
    goto :goto_179

    .line 289
    :pswitch_11f
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$300(Landroid/support/constraint/motion/KeyCycle;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$302(Landroid/support/constraint/motion/KeyCycle;I)I

    .line 290
    goto :goto_179

    .line 286
    :pswitch_12b
    invoke-static {p0}, Landroid/support/constraint/motion/KeyCycle;->access$200(Landroid/support/constraint/motion/KeyCycle;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$202(Landroid/support/constraint/motion/KeyCycle;I)I

    .line 287
    goto :goto_179

    .line 283
    :pswitch_137
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/support/constraint/motion/KeyCycle;->access$102(Landroid/support/constraint/motion/KeyCycle;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    goto :goto_179

    .line 280
    :pswitch_13f
    iget v3, p0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    .line 281
    goto :goto_179

    .line 266
    :pswitch_148
    sget-boolean v3, Landroid/support/constraint/motion/MotionLayout;->IS_IN_EDIT_MODE:Z

    if-eqz v3, :cond_160

    .line 267
    iget v3, p0, Landroid/support/constraint/motion/KeyCycle;->mTargetId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/KeyCycle;->mTargetId:I

    .line 268
    iget v3, p0, Landroid/support/constraint/motion/KeyCycle;->mTargetId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_179

    .line 269
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/support/constraint/motion/KeyCycle;->mTargetString:Ljava/lang/String;

    goto :goto_179

    .line 272
    :cond_160
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_170

    .line 273
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/support/constraint/motion/KeyCycle;->mTargetString:Ljava/lang/String;

    goto :goto_179

    .line 275
    :cond_170
    iget v3, p0, Landroid/support/constraint/motion/KeyCycle;->mTargetId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/KeyCycle;->mTargetId:I

    .line 278
    nop

    .line 262
    .end local v2    # "attr":I
    :cond_179
    :goto_179
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 348
    .end local v1    # "i":I
    :cond_17d
    return-void

    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_148
        :pswitch_13f
        :pswitch_137
        :pswitch_12b
        :pswitch_11f
        :pswitch_113
        :pswitch_f1
        :pswitch_e4
        :pswitch_d7
        :pswitch_ca
        :pswitch_bd
        :pswitch_b0
        :pswitch_a3
        :pswitch_96
        :pswitch_89
        :pswitch_7c
        :pswitch_6f
        :pswitch_62
        :pswitch_4f
        :pswitch_42
    .end packed-switch
.end method
