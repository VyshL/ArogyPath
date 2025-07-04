.class public Landroid/support/constraint/utils/ImageFilterView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "ImageFilterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;
    }
.end annotation


# instance fields
.field private mCrossfade:F

.field private mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

.field mLayer:Landroid/graphics/drawable/LayerDrawable;

.field mLayers:[Landroid/graphics/drawable/Drawable;

.field private mOverlay:Z

.field private mPath:Landroid/graphics/Path;

.field mRect:Landroid/graphics/RectF;

.field private mRound:F

.field private mRoundPercent:F

.field mViewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 297
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 284
    new-instance v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mOverlay:Z

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mCrossfade:F

    .line 287
    iput v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mRoundPercent:F

    .line 288
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mRound:F

    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/constraint/utils/ImageFilterView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 302
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 284
    new-instance v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mOverlay:Z

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mCrossfade:F

    .line 287
    iput v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mRoundPercent:F

    .line 288
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mRound:F

    .line 303
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/utils/ImageFilterView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 307
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 284
    new-instance v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mOverlay:Z

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mCrossfade:F

    .line 287
    iput v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mRoundPercent:F

    .line 288
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mRound:F

    .line 308
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/utils/ImageFilterView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 309
    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/utils/ImageFilterView;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/utils/ImageFilterView;

    .line 85
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mRoundPercent:F

    return v0
.end method

.method static synthetic access$100(Landroid/support/constraint/utils/ImageFilterView;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/utils/ImageFilterView;

    .line 85
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mRound:F

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 312
    if-eqz p2, :cond_b1

    .line 313
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ImageFilterView:[I

    .line 314
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 315
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 316
    .local v1, "N":I
    sget v2, Landroid/support/constraint/R$styleable;->ImageFilterView_altSrc:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 318
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v1, :cond_7f

    .line 319
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 320
    .local v4, "attr":I
    sget v5, Landroid/support/constraint/R$styleable;->ImageFilterView_crossfade:I

    const/4 v6, 0x0

    if-ne v4, v5, :cond_29

    .line 321
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/utils/ImageFilterView;->mCrossfade:F

    goto :goto_7c

    .line 322
    :cond_29
    sget v5, Landroid/support/constraint/R$styleable;->ImageFilterView_warmth:I

    if-ne v4, v5, :cond_35

    .line 323
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/constraint/utils/ImageFilterView;->setWarmth(F)V

    goto :goto_7c

    .line 324
    :cond_35
    sget v5, Landroid/support/constraint/R$styleable;->ImageFilterView_saturation:I

    if-ne v4, v5, :cond_41

    .line 325
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/constraint/utils/ImageFilterView;->setSaturation(F)V

    goto :goto_7c

    .line 326
    :cond_41
    sget v5, Landroid/support/constraint/R$styleable;->ImageFilterView_contrast:I

    if-ne v4, v5, :cond_4d

    .line 327
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/constraint/utils/ImageFilterView;->setContrast(F)V

    goto :goto_7c

    .line 328
    :cond_4d
    sget v5, Landroid/support/constraint/R$styleable;->ImageFilterView_round:I

    const/16 v7, 0x15

    if-ne v4, v5, :cond_5f

    .line 329
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_7c

    .line 330
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/constraint/utils/ImageFilterView;->setRound(F)V

    goto :goto_7c

    .line 332
    :cond_5f
    sget v5, Landroid/support/constraint/R$styleable;->ImageFilterView_roundPercent:I

    if-ne v4, v5, :cond_6f

    .line 333
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_7c

    .line 334
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/constraint/utils/ImageFilterView;->setRoundPercent(F)V

    goto :goto_7c

    .line 336
    :cond_6f
    sget v5, Landroid/support/constraint/R$styleable;->ImageFilterView_overlay:I

    if-ne v4, v5, :cond_7c

    .line 337
    iget-boolean v5, p0, Landroid/support/constraint/utils/ImageFilterView;->mOverlay:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-direct {p0, v5}, Landroid/support/constraint/utils/ImageFilterView;->setOverlay(Z)V

    .line 318
    .end local v4    # "attr":I
    :cond_7c
    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 340
    .end local v3    # "i":I
    :cond_7f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 342
    if-eqz v2, :cond_b1

    .line 343
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Landroid/support/constraint/utils/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    .line 344
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    .line 345
    iget-object v3, p0, Landroid/support/constraint/utils/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 347
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    iget-object v5, p0, Landroid/support/constraint/utils/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/support/constraint/utils/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    .line 348
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v4, 0x437f0000    # 255.0f

    iget v5, p0, Landroid/support/constraint/utils/ImageFilterView;->mCrossfade:F

    mul-float v5, v5, v4

    float-to-int v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 349
    iget-object v3, p0, Landroid/support/constraint/utils/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, v3}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "N":I
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_b1
    return-void
.end method

.method private setOverlay(Z)V
    .registers 2
    .param p1, "overlay"    # Z

    .line 361
    iput-boolean p1, p0, Landroid/support/constraint/utils/ImageFilterView;->mOverlay:Z

    .line 362
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "clip":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1b

    .line 599
    iget v1, p0, Landroid/support/constraint/utils/ImageFilterView;->mRoundPercent:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/support/constraint/utils/ImageFilterView;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_1b

    .line 600
    const/4 v0, 0x1

    .line 601
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 602
    iget-object v1, p0, Landroid/support/constraint/utils/ImageFilterView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 605
    :cond_1b
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->draw(Landroid/graphics/Canvas;)V

    .line 606
    if-eqz v0, :cond_23

    .line 607
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 609
    :cond_23
    return-void
.end method

.method public getBrightness()F
    .registers 2

    .line 466
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iget v0, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mBrightness:F

    return v0
.end method

.method public getContrast()F
    .registers 2

    .line 401
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iget v0, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mContrast:F

    return v0
.end method

.method public getCrossfade()F
    .registers 2

    .line 445
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mCrossfade:F

    return v0
.end method

.method public getRound()F
    .registers 2

    .line 592
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mRound:F

    return v0
.end method

.method public getRoundPercent()F
    .registers 2

    .line 583
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mRoundPercent:F

    return v0
.end method

.method public getSaturation()F
    .registers 2

    .line 382
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iget v0, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mSaturation:F

    return v0
.end method

.method public getWarmth()F
    .registers 2

    .line 420
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iget v0, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mWarmth:F

    return v0
.end method

.method public setBrightness(F)V
    .registers 3
    .param p1, "brightness"    # F

    .line 456
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mBrightness:F

    .line 457
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    .line 458
    return-void
.end method

.method public setContrast(F)V
    .registers 3
    .param p1, "contrast"    # F

    .line 391
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mContrast:F

    .line 392
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    .line 393
    return-void
.end method

.method public setCrossfade(F)V
    .registers 6
    .param p1, "crossfade"    # F

    .line 429
    iput p1, p0, Landroid/support/constraint/utils/ImageFilterView;->mCrossfade:F

    .line 430
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_32

    .line 431
    iget-boolean v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mOverlay:Z

    const/high16 v1, 0x437f0000    # 255.0f

    if-nez v0, :cond_1e

    .line 432
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Landroid/support/constraint/utils/ImageFilterView;->mCrossfade:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 434
    :cond_1e
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Landroid/support/constraint/utils/ImageFilterView;->mCrossfade:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 435
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    :cond_32
    return-void
.end method

.method public setRound(F)V
    .registers 10
    .param p1, "round"    # F

    .line 528
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 529
    iput p1, p0, Landroid/support/constraint/utils/ImageFilterView;->mRound:F

    .line 530
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mRoundPercent:F

    .line 531
    .local v0, "tmp":F
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/utils/ImageFilterView;->mRoundPercent:F

    .line 532
    invoke-virtual {p0, v0}, Landroid/support/constraint/utils/ImageFilterView;->setRoundPercent(F)V

    .line 533
    return-void

    .line 535
    .end local v0    # "tmp":F
    :cond_12
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mRound:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 536
    .local v0, "change":Z
    :goto_1d
    iput p1, p0, Landroid/support/constraint/utils/ImageFilterView;->mRound:F

    .line 538
    const/16 v3, 0x15

    const/4 v4, 0x0

    cmpl-float v5, p1, v4

    if-eqz v5, :cond_71

    .line 539
    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterView;->mPath:Landroid/graphics/Path;

    if-nez v2, :cond_31

    .line 540
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/utils/ImageFilterView;->mPath:Landroid/graphics/Path;

    .line 542
    :cond_31
    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterView;->mRect:Landroid/graphics/RectF;

    if-nez v2, :cond_3c

    .line 543
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/utils/ImageFilterView;->mRect:Landroid/graphics/RectF;

    .line 545
    :cond_3c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_51

    .line 546
    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v2, :cond_4e

    .line 547
    new-instance v2, Landroid/support/constraint/utils/ImageFilterView$2;

    invoke-direct {v2, p0}, Landroid/support/constraint/utils/ImageFilterView$2;-><init>(Landroid/support/constraint/utils/ImageFilterView;)V

    iput-object v2, p0, Landroid/support/constraint/utils/ImageFilterView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 555
    invoke-virtual {p0, v2}, Landroid/support/constraint/utils/ImageFilterView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 557
    :cond_4e
    invoke-virtual {p0, v1}, Landroid/support/constraint/utils/ImageFilterView;->setClipToOutline(Z)V

    .line 559
    :cond_51
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterView;->getWidth()I

    move-result v1

    .line 560
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterView;->getHeight()I

    move-result v2

    .line 561
    .local v2, "h":I
    iget-object v5, p0, Landroid/support/constraint/utils/ImageFilterView;->mRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 562
    iget-object v4, p0, Landroid/support/constraint/utils/ImageFilterView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 563
    iget-object v4, p0, Landroid/support/constraint/utils/ImageFilterView;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Landroid/support/constraint/utils/ImageFilterView;->mRect:Landroid/graphics/RectF;

    iget v6, p0, Landroid/support/constraint/utils/ImageFilterView;->mRound:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 564
    .end local v1    # "w":I
    .end local v2    # "h":I
    goto :goto_78

    .line 565
    :cond_71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_78

    .line 566
    invoke-virtual {p0, v2}, Landroid/support/constraint/utils/ImageFilterView;->setClipToOutline(Z)V

    .line 569
    :cond_78
    :goto_78
    if-eqz v0, :cond_81

    .line 570
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_81

    .line 571
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterView;->invalidateOutline()V

    .line 575
    :cond_81
    return-void
.end method

.method public setRoundPercent(F)V
    .registers 11
    .param p1, "round"    # F

    .line 477
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mRoundPercent:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 478
    .local v0, "change":Z
    :goto_b
    iput p1, p0, Landroid/support/constraint/utils/ImageFilterView;->mRoundPercent:F

    .line 479
    const/16 v3, 0x15

    const/4 v4, 0x0

    cmpl-float v5, p1, v4

    if-eqz v5, :cond_69

    .line 480
    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterView;->mPath:Landroid/graphics/Path;

    if-nez v2, :cond_1f

    .line 481
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/utils/ImageFilterView;->mPath:Landroid/graphics/Path;

    .line 483
    :cond_1f
    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterView;->mRect:Landroid/graphics/RectF;

    if-nez v2, :cond_2a

    .line 484
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/utils/ImageFilterView;->mRect:Landroid/graphics/RectF;

    .line 486
    :cond_2a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3f

    .line 487
    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v2, :cond_3c

    .line 488
    new-instance v2, Landroid/support/constraint/utils/ImageFilterView$1;

    invoke-direct {v2, p0}, Landroid/support/constraint/utils/ImageFilterView$1;-><init>(Landroid/support/constraint/utils/ImageFilterView;)V

    iput-object v2, p0, Landroid/support/constraint/utils/ImageFilterView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 497
    invoke-virtual {p0, v2}, Landroid/support/constraint/utils/ImageFilterView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 499
    :cond_3c
    invoke-virtual {p0, v1}, Landroid/support/constraint/utils/ImageFilterView;->setClipToOutline(Z)V

    .line 502
    :cond_3f
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterView;->getWidth()I

    move-result v1

    .line 503
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterView;->getHeight()I

    move-result v2

    .line 504
    .local v2, "h":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/constraint/utils/ImageFilterView;->mRoundPercent:F

    mul-float v5, v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 505
    .local v5, "r":F
    iget-object v6, p0, Landroid/support/constraint/utils/ImageFilterView;->mRect:Landroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v2

    invoke-virtual {v6, v4, v4, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 506
    iget-object v4, p0, Landroid/support/constraint/utils/ImageFilterView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 507
    iget-object v4, p0, Landroid/support/constraint/utils/ImageFilterView;->mPath:Landroid/graphics/Path;

    iget-object v6, p0, Landroid/support/constraint/utils/ImageFilterView;->mRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v6, v5, v5, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 508
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v5    # "r":F
    goto :goto_70

    .line 509
    :cond_69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_70

    .line 510
    invoke-virtual {p0, v2}, Landroid/support/constraint/utils/ImageFilterView;->setClipToOutline(Z)V

    .line 513
    :cond_70
    :goto_70
    if-eqz v0, :cond_79

    .line 514
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_79

    .line 515
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterView;->invalidateOutline()V

    .line 519
    :cond_79
    return-void
.end method

.method public setSaturation(F)V
    .registers 3
    .param p1, "saturation"    # F

    .line 372
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mSaturation:F

    .line 373
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    .line 374
    return-void
.end method

.method public setWarmth(F)V
    .registers 3
    .param p1, "warmth"    # F

    .line 410
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mWarmth:F

    .line 411
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    .line 412
    return-void
.end method
