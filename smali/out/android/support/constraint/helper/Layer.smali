.class public Landroid/support/constraint/helper/Layer;
.super Landroid/support/constraint/ConstraintHelper;
.source "Layer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Layer"


# instance fields
.field private mApplyElevationOnAttach:Z

.field private mApplyVisibilityOnAttach:Z

.field protected mComputedCenterX:F

.field protected mComputedCenterY:F

.field protected mComputedMaxX:F

.field protected mComputedMaxY:F

.field protected mComputedMinX:F

.field protected mComputedMinY:F

.field mContainer:Landroid/support/constraint/ConstraintLayout;

.field private mGroupRotateAngle:F

.field mNeedBounds:Z

.field private mRotationCenterX:F

.field private mRotationCenterY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mShiftX:F

.field private mShiftY:F

.field mViews:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;)V

    .line 21
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterX:F

    .line 22
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterY:F

    .line 23
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    .line 25
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/support/constraint/helper/Layer;->mScaleX:F

    .line 26
    iput v1, p0, Landroid/support/constraint/helper/Layer;->mScaleY:F

    .line 27
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    .line 28
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    .line 30
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxX:F

    .line 31
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxY:F

    .line 32
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMinX:F

    .line 33
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMinY:F

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/helper/Layer;->mNeedBounds:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/helper/Layer;->mViews:[Landroid/view/View;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/helper/Layer;->mShiftX:F

    .line 37
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mShiftY:F

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterX:F

    .line 22
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterY:F

    .line 23
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    .line 25
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/support/constraint/helper/Layer;->mScaleX:F

    .line 26
    iput v1, p0, Landroid/support/constraint/helper/Layer;->mScaleY:F

    .line 27
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    .line 28
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    .line 30
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxX:F

    .line 31
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxY:F

    .line 32
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMinX:F

    .line 33
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMinY:F

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/helper/Layer;->mNeedBounds:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/helper/Layer;->mViews:[Landroid/view/View;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/helper/Layer;->mShiftX:F

    .line 37
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mShiftY:F

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterX:F

    .line 22
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterY:F

    .line 23
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    .line 25
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/support/constraint/helper/Layer;->mScaleX:F

    .line 26
    iput v1, p0, Landroid/support/constraint/helper/Layer;->mScaleY:F

    .line 27
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    .line 28
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    .line 30
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxX:F

    .line 31
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxY:F

    .line 32
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMinX:F

    .line 33
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMinY:F

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/helper/Layer;->mNeedBounds:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/helper/Layer;->mViews:[Landroid/view/View;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/helper/Layer;->mShiftX:F

    .line 37
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mShiftY:F

    .line 52
    return-void
.end method

.method private reCacheViews()V
    .registers 5

    .line 237
    iget-object v0, p0, Landroid/support/constraint/helper/Layer;->mContainer:Landroid/support/constraint/ConstraintLayout;

    if-nez v0, :cond_5

    .line 238
    return-void

    .line 240
    :cond_5
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mCount:I

    if-nez v0, :cond_a

    .line 241
    return-void

    .line 244
    :cond_a
    iget-object v0, p0, Landroid/support/constraint/helper/Layer;->mViews:[Landroid/view/View;

    if-eqz v0, :cond_13

    array-length v0, v0

    iget v1, p0, Landroid/support/constraint/helper/Layer;->mCount:I

    if-eq v0, v1, :cond_19

    .line 245
    :cond_13
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/constraint/helper/Layer;->mViews:[Landroid/view/View;

    .line 247
    :cond_19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    iget v1, p0, Landroid/support/constraint/helper/Layer;->mCount:I

    if-ge v0, v1, :cond_2f

    .line 248
    iget-object v1, p0, Landroid/support/constraint/helper/Layer;->mIds:[I

    aget v1, v1, v0

    .line 249
    .local v1, "id":I
    iget-object v2, p0, Landroid/support/constraint/helper/Layer;->mViews:[Landroid/view/View;

    iget-object v3, p0, Landroid/support/constraint/helper/Layer;->mContainer:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v1}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    .line 247
    .end local v1    # "id":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 251
    .end local v0    # "i":I
    :cond_2f
    return-void
.end method

.method private transform()V
    .registers 19

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/helper/Layer;->mContainer:Landroid/support/constraint/ConstraintLayout;

    if-nez v1, :cond_7

    .line 304
    return-void

    .line 306
    :cond_7
    iget-object v1, v0, Landroid/support/constraint/helper/Layer;->mViews:[Landroid/view/View;

    if-nez v1, :cond_e

    .line 307
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/helper/Layer;->reCacheViews()V

    .line 309
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/helper/Layer;->calcCenters()V

    .line 311
    iget v1, v0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-wide/16 v1, 0x0

    goto :goto_23

    :cond_1c
    iget v1, v0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 312
    .local v1, "rad":D
    :goto_23
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 313
    .local v3, "sin":F
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 314
    .local v4, "cos":F
    iget v5, v0, Landroid/support/constraint/helper/Layer;->mScaleX:F

    mul-float v6, v5, v4

    .line 315
    .local v6, "m11":F
    iget v7, v0, Landroid/support/constraint/helper/Layer;->mScaleY:F

    neg-float v8, v7

    mul-float v8, v8, v3

    .line 316
    .local v8, "m12":F
    mul-float v5, v5, v3

    .line 317
    .local v5, "m21":F
    mul-float v7, v7, v4

    .line 319
    .local v7, "m22":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3b
    iget v10, v0, Landroid/support/constraint/helper/Layer;->mCount:I

    if-ge v9, v10, :cond_98

    .line 320
    iget-object v10, v0, Landroid/support/constraint/helper/Layer;->mViews:[Landroid/view/View;

    aget-object v10, v10, v9

    .line 321
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    .line 322
    .local v11, "x":I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    .line 323
    .local v12, "y":I
    int-to-float v13, v11

    iget v14, v0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    sub-float/2addr v13, v14

    .line 324
    .local v13, "dx":F
    int-to-float v14, v12

    iget v15, v0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    sub-float/2addr v14, v15

    .line 325
    .local v14, "dy":F
    mul-float v15, v6, v13

    mul-float v16, v8, v14

    add-float v15, v15, v16

    sub-float/2addr v15, v13

    move-wide/from16 v16, v1

    .end local v1    # "rad":D
    .local v16, "rad":D
    iget v1, v0, Landroid/support/constraint/helper/Layer;->mShiftX:F

    add-float/2addr v15, v1

    .line 326
    .local v15, "shiftx":F
    mul-float v1, v5, v13

    mul-float v2, v7, v14

    add-float/2addr v1, v2

    sub-float/2addr v1, v14

    iget v2, v0, Landroid/support/constraint/helper/Layer;->mShiftY:F

    add-float/2addr v1, v2

    .line 328
    .local v1, "shifty":F
    invoke-virtual {v10, v15}, Landroid/view/View;->setTranslationX(F)V

    .line 329
    invoke-virtual {v10, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 330
    iget v2, v0, Landroid/support/constraint/helper/Layer;->mScaleY:F

    invoke-virtual {v10, v2}, Landroid/view/View;->setScaleY(F)V

    .line 331
    iget v2, v0, Landroid/support/constraint/helper/Layer;->mScaleX:F

    invoke-virtual {v10, v2}, Landroid/view/View;->setScaleX(F)V

    .line 332
    iget v2, v0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_93

    .line 333
    iget v2, v0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    invoke-virtual {v10, v2}, Landroid/view/View;->setRotation(F)V

    .line 319
    .end local v1    # "shifty":F
    .end local v10    # "view":Landroid/view/View;
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v13    # "dx":F
    .end local v14    # "dy":F
    .end local v15    # "shiftx":F
    :cond_93
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v1, v16

    goto :goto_3b

    .line 336
    .end local v9    # "i":I
    .end local v16    # "rad":D
    .local v1, "rad":D
    :cond_98
    return-void
.end method


# virtual methods
.method protected calcCenters()V
    .registers 9

    .line 254
    iget-object v0, p0, Landroid/support/constraint/helper/Layer;->mContainer:Landroid/support/constraint/ConstraintLayout;

    if-nez v0, :cond_5

    .line 255
    return-void

    .line 257
    :cond_5
    iget-boolean v0, p0, Landroid/support/constraint/helper/Layer;->mNeedBounds:Z

    if-nez v0, :cond_1a

    .line 258
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 259
    return-void

    .line 262
    :cond_1a
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_35

    iget v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_35

    .line 296
    :cond_2b
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterY:F

    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    .line 297
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterX:F

    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    goto/16 :goto_b3

    .line 263
    :cond_35
    :goto_35
    iget-object v0, p0, Landroid/support/constraint/helper/Layer;->mContainer:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/support/constraint/helper/Layer;->getViews(Landroid/support/constraint/ConstraintLayout;)[Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, "views":[Landroid/view/View;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 266
    .local v2, "minx":I
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 267
    .local v3, "miny":I
    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    .line 268
    .local v4, "maxx":I
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 270
    .local v1, "maxy":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_55
    iget v6, p0, Landroid/support/constraint/helper/Layer;->mCount:I

    if-ge v5, v6, :cond_7e

    .line 271
    aget-object v6, v0, v5

    .line 272
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 273
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 274
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 275
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 270
    .end local v6    # "view":Landroid/view/View;
    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    .line 278
    .end local v5    # "i":I
    :cond_7e
    int-to-float v5, v4

    iput v5, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxX:F

    .line 279
    int-to-float v5, v1

    iput v5, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxY:F

    .line 280
    int-to-float v5, v2

    iput v5, p0, Landroid/support/constraint/helper/Layer;->mComputedMinX:F

    .line 281
    int-to-float v5, v3

    iput v5, p0, Landroid/support/constraint/helper/Layer;->mComputedMinY:F

    .line 283
    iget v5, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 284
    add-int v5, v2, v4

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iput v5, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    goto :goto_9e

    .line 286
    :cond_9a
    iget v5, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterX:F

    iput v5, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    .line 288
    :goto_9e
    iget v5, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 289
    add-int v5, v3, v1

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iput v5, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    goto :goto_b2

    .line 292
    :cond_ae
    iget v5, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterY:F

    iput v5, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    .line 295
    .end local v0    # "views":[Landroid/view/View;
    .end local v1    # "maxy":I
    .end local v2    # "minx":I
    .end local v3    # "miny":I
    .end local v4    # "maxx":I
    :goto_b2
    nop

    .line 300
    :goto_b3
    return-void
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/helper/Layer;->mUseViewMeasure:Z

    .line 61
    if-eqz p1, :cond_31

    .line 62
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 64
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v1, :cond_2e

    .line 65
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 66
    .local v3, "attr":I
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_visibility:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_25

    .line 67
    iput-boolean v5, p0, Landroid/support/constraint/helper/Layer;->mApplyVisibilityOnAttach:Z

    goto :goto_2b

    .line 68
    :cond_25
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_elevation:I

    if-ne v3, v4, :cond_2b

    .line 69
    iput-boolean v5, p0, Landroid/support/constraint/helper/Layer;->mApplyElevationOnAttach:Z

    .line 64
    .end local v3    # "attr":I
    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 72
    .end local v2    # "i":I
    :cond_2e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "N":I
    :cond_31
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 8

    .line 78
    invoke-super {p0}, Landroid/support/constraint/ConstraintHelper;->onAttachedToWindow()V

    .line 79
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Landroid/support/constraint/helper/Layer;->mContainer:Landroid/support/constraint/ConstraintLayout;

    .line 80
    iget-boolean v0, p0, Landroid/support/constraint/helper/Layer;->mApplyVisibilityOnAttach:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/support/constraint/helper/Layer;->mApplyElevationOnAttach:Z

    if-eqz v0, :cond_52

    .line 81
    :cond_13
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getVisibility()I

    move-result v0

    .line 82
    .local v0, "visibility":I
    const/4 v1, 0x0

    .line 83
    .local v1, "elevation":F
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_22

    .line 84
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getElevation()F

    move-result v1

    .line 86
    :cond_22
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    iget v4, p0, Landroid/support/constraint/helper/Layer;->mCount:I

    if-ge v2, v4, :cond_52

    .line 87
    iget-object v4, p0, Landroid/support/constraint/helper/Layer;->mIds:[I

    aget v4, v4, v2

    .line 88
    .local v4, "id":I
    iget-object v5, p0, Landroid/support/constraint/helper/Layer;->mContainer:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v5, v4}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v5

    .line 89
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_4f

    .line 90
    iget-boolean v6, p0, Landroid/support/constraint/helper/Layer;->mApplyVisibilityOnAttach:Z

    if-eqz v6, :cond_3a

    .line 91
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :cond_3a
    iget-boolean v6, p0, Landroid/support/constraint/helper/Layer;->mApplyElevationOnAttach:Z

    if-eqz v6, :cond_4f

    .line 94
    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-lez v6, :cond_4f

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_4f

    .line 95
    invoke-virtual {v5}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    add-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationZ(F)V

    .line 86
    .end local v4    # "id":I
    .end local v5    # "view":Landroid/view/View;
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 102
    .end local v0    # "visibility":I
    .end local v1    # "elevation":F
    .end local v2    # "i":I
    :cond_52
    return-void
.end method

.method public setElevation(F)V
    .registers 2
    .param p1, "elevation"    # F

    .line 209
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->setElevation(F)V

    .line 210
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->applyLayoutFeatures()V

    .line 211
    return-void
.end method

.method public setPivotX(F)V
    .registers 2
    .param p1, "pivotX"    # F

    .line 160
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterX:F

    .line 161
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->transform()V

    .line 162
    return-void
.end method

.method public setPivotY(F)V
    .registers 2
    .param p1, "pivotY"    # F

    .line 171
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterY:F

    .line 172
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->transform()V

    .line 173
    return-void
.end method

.method public setRotation(F)V
    .registers 2
    .param p1, "angle"    # F

    .line 128
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    .line 129
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->transform()V

    .line 130
    return-void
.end method

.method public setScaleX(F)V
    .registers 2
    .param p1, "scaleX"    # F

    .line 138
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mScaleX:F

    .line 139
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->transform()V

    .line 140
    return-void
.end method

.method public setScaleY(F)V
    .registers 2
    .param p1, "scaleY"    # F

    .line 149
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mScaleY:F

    .line 150
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->transform()V

    .line 151
    return-void
.end method

.method public setTranslationX(F)V
    .registers 2
    .param p1, "dx"    # F

    .line 181
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mShiftX:F

    .line 182
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->transform()V

    .line 184
    return-void
.end method

.method public setTranslationY(F)V
    .registers 2
    .param p1, "dy"    # F

    .line 191
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mShiftY:F

    .line 192
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->transform()V

    .line 193
    return-void
.end method

.method public setVisibility(I)V
    .registers 2
    .param p1, "visibility"    # I

    .line 200
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    .line 201
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->applyLayoutFeatures()V

    .line 202
    return-void
.end method

.method public updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V
    .registers 9
    .param p1, "container"    # Landroid/support/constraint/ConstraintLayout;

    .line 219
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->reCacheViews()V

    .line 221
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    .line 222
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    .line 223
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 224
    .local v0, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->getConstraintWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 225
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 226
    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 227
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->calcCenters()V

    .line 228
    iget v2, p0, Landroid/support/constraint/helper/Layer;->mComputedMinX:F

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 229
    .local v2, "left":I
    iget v3, p0, Landroid/support/constraint/helper/Layer;->mComputedMinY:F

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 230
    .local v3, "top":I
    iget v4, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxX:F

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 231
    .local v4, "right":I
    iget v5, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxY:F

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 232
    .local v5, "bottom":I
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/support/constraint/helper/Layer;->layout(IIII)V

    .line 233
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->transform()V

    .line 234
    return-void
.end method

.method public updatePreDraw(Landroid/support/constraint/ConstraintLayout;)V
    .registers 4
    .param p1, "container"    # Landroid/support/constraint/ConstraintLayout;

    .line 110
    iput-object p1, p0, Landroid/support/constraint/helper/Layer;->mContainer:Landroid/support/constraint/ConstraintLayout;

    .line 111
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getRotation()F

    move-result v0

    .line 112
    .local v0, "rotate":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_16

    .line 113
    iget v1, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_18

    .line 114
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    goto :goto_18

    .line 117
    :cond_16
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    .line 119
    :cond_18
    :goto_18
    return-void
.end method
