.class public Landroid/support/constraint/utils/ImageFilterButton;
.super Landroid/support/v7/widget/AppCompatImageButton;
.source "ImageFilterButton.java"


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

    .line 95
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    .line 84
    iput v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    .line 85
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mOverlay:Z

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/constraint/utils/ImageFilterButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    .line 84
    iput v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    .line 85
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mOverlay:Z

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/utils/ImageFilterButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    .line 84
    iput v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    .line 85
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mOverlay:Z

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/utils/ImageFilterButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/utils/ImageFilterButton;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/utils/ImageFilterButton;

    .line 81
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    return v0
.end method

.method static synthetic access$100(Landroid/support/constraint/utils/ImageFilterButton;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/utils/ImageFilterButton;

    .line 81
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/support/constraint/utils/ImageFilterButton;->setPadding(IIII)V

    .line 111
    if-eqz p2, :cond_b4

    .line 112
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/R$styleable;->ImageFilterView:[I

    .line 113
    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 114
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 115
    .local v2, "N":I
    sget v3, Landroid/support/constraint/R$styleable;->ImageFilterView_altSrc:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 117
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    if-ge v4, v2, :cond_83

    .line 118
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 119
    .local v5, "attr":I
    sget v6, Landroid/support/constraint/R$styleable;->ImageFilterView_crossfade:I

    const/4 v7, 0x0

    if-ne v5, v6, :cond_2d

    .line 120
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    goto :goto_80

    .line 121
    :cond_2d
    sget v6, Landroid/support/constraint/R$styleable;->ImageFilterView_warmth:I

    if-ne v5, v6, :cond_39

    .line 122
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Landroid/support/constraint/utils/ImageFilterButton;->setWarmth(F)V

    goto :goto_80

    .line 123
    :cond_39
    sget v6, Landroid/support/constraint/R$styleable;->ImageFilterView_saturation:I

    if-ne v5, v6, :cond_45

    .line 124
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Landroid/support/constraint/utils/ImageFilterButton;->setSaturation(F)V

    goto :goto_80

    .line 125
    :cond_45
    sget v6, Landroid/support/constraint/R$styleable;->ImageFilterView_contrast:I

    if-ne v5, v6, :cond_51

    .line 126
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Landroid/support/constraint/utils/ImageFilterButton;->setContrast(F)V

    goto :goto_80

    .line 127
    :cond_51
    sget v6, Landroid/support/constraint/R$styleable;->ImageFilterView_round:I

    const/16 v8, 0x15

    if-ne v5, v6, :cond_63

    .line 128
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v8, :cond_80

    .line 129
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Landroid/support/constraint/utils/ImageFilterButton;->setRound(F)V

    goto :goto_80

    .line 131
    :cond_63
    sget v6, Landroid/support/constraint/R$styleable;->ImageFilterView_roundPercent:I

    if-ne v5, v6, :cond_73

    .line 132
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v8, :cond_80

    .line 133
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Landroid/support/constraint/utils/ImageFilterButton;->setRoundPercent(F)V

    goto :goto_80

    .line 135
    :cond_73
    sget v6, Landroid/support/constraint/R$styleable;->ImageFilterView_overlay:I

    if-ne v5, v6, :cond_80

    .line 136
    iget-boolean v6, p0, Landroid/support/constraint/utils/ImageFilterButton;->mOverlay:Z

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-direct {p0, v6}, Landroid/support/constraint/utils/ImageFilterButton;->setOverlay(Z)V

    .line 117
    .end local v5    # "attr":I
    :cond_80
    :goto_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 139
    .end local v4    # "i":I
    :cond_83
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    if-eqz v3, :cond_b4

    .line 142
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    .line 143
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v0

    .line 144
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 146
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    iget-object v5, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    .line 147
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v4, 0x437f0000    # 255.0f

    iget v5, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    mul-float v5, v5, v4

    float-to-int v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 148
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "N":I
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_b4
    return-void
.end method

.method private setOverlay(Z)V
    .registers 2
    .param p1, "overlay"    # Z

    .line 160
    iput-boolean p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mOverlay:Z

    .line 161
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "clip":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1b

    .line 389
    iget v1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_1b

    .line 390
    const/4 v0, 0x1

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 392
    iget-object v1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 395
    :cond_1b
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageButton;->draw(Landroid/graphics/Canvas;)V

    .line 396
    if-eqz v0, :cond_23

    .line 397
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 399
    :cond_23
    return-void
.end method

.method public getContrast()F
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iget v0, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mContrast:F

    return v0
.end method

.method public getCrossfade()F
    .registers 2

    .line 244
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    return v0
.end method

.method public getRound()F
    .registers 2

    .line 382
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    return v0
.end method

.method public getRoundPercent()F
    .registers 2

    .line 373
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    return v0
.end method

.method public getSaturation()F
    .registers 2

    .line 181
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iget v0, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mSaturation:F

    return v0
.end method

.method public getWarmth()F
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iget v0, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mWarmth:F

    return v0
.end method

.method public setBrightness(F)V
    .registers 3
    .param p1, "brightness"    # F

    .line 255
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mBrightness:F

    .line 256
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    .line 257
    return-void
.end method

.method public setContrast(F)V
    .registers 3
    .param p1, "contrast"    # F

    .line 190
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mContrast:F

    .line 191
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    .line 192
    return-void
.end method

.method public setCrossfade(F)V
    .registers 6
    .param p1, "crossfade"    # F

    .line 228
    iput p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    .line 229
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_32

    .line 230
    iget-boolean v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mOverlay:Z

    const/high16 v1, 0x437f0000    # 255.0f

    if-nez v0, :cond_1e

    .line 231
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 233
    :cond_1e
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 234
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    :cond_32
    return-void
.end method

.method public setRound(F)V
    .registers 10
    .param p1, "round"    # F

    .line 317
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 318
    iput p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    .line 319
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    .line 320
    .local v0, "tmp":F
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    .line 321
    invoke-virtual {p0, v0}, Landroid/support/constraint/utils/ImageFilterButton;->setRoundPercent(F)V

    .line 322
    return-void

    .line 324
    .end local v0    # "tmp":F
    :cond_12
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 325
    .local v0, "change":Z
    :goto_1d
    iput p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    .line 327
    const/16 v3, 0x15

    const/4 v4, 0x0

    cmpl-float v5, p1, v4

    if-eqz v5, :cond_71

    .line 328
    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    if-nez v2, :cond_31

    .line 329
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    .line 331
    :cond_31
    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    if-nez v2, :cond_3c

    .line 332
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    .line 334
    :cond_3c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_51

    .line 335
    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v2, :cond_4e

    .line 336
    new-instance v2, Landroid/support/constraint/utils/ImageFilterButton$2;

    invoke-direct {v2, p0}, Landroid/support/constraint/utils/ImageFilterButton$2;-><init>(Landroid/support/constraint/utils/ImageFilterButton;)V

    iput-object v2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 344
    invoke-virtual {p0, v2}, Landroid/support/constraint/utils/ImageFilterButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 346
    :cond_4e
    invoke-virtual {p0, v1}, Landroid/support/constraint/utils/ImageFilterButton;->setClipToOutline(Z)V

    .line 349
    :cond_51
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterButton;->getWidth()I

    move-result v1

    .line 350
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterButton;->getHeight()I

    move-result v2

    .line 351
    .local v2, "h":I
    iget-object v5, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 352
    iget-object v4, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 353
    iget-object v4, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    iget v6, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 354
    .end local v1    # "w":I
    .end local v2    # "h":I
    goto :goto_78

    .line 355
    :cond_71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_78

    .line 356
    invoke-virtual {p0, v2}, Landroid/support/constraint/utils/ImageFilterButton;->setClipToOutline(Z)V

    .line 359
    :cond_78
    :goto_78
    if-eqz v0, :cond_81

    .line 360
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_81

    .line 361
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterButton;->invalidateOutline()V

    .line 365
    :cond_81
    return-void
.end method

.method public setRoundPercent(F)V
    .registers 11
    .param p1, "round"    # F

    .line 267
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 268
    .local v0, "change":Z
    :goto_b
    iput p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    .line 269
    const/16 v3, 0x15

    const/4 v4, 0x0

    cmpl-float v5, p1, v4

    if-eqz v5, :cond_69

    .line 270
    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    if-nez v2, :cond_1f

    .line 271
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    .line 273
    :cond_1f
    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    if-nez v2, :cond_2a

    .line 274
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    .line 276
    :cond_2a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3f

    .line 277
    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v2, :cond_3c

    .line 278
    new-instance v2, Landroid/support/constraint/utils/ImageFilterButton$1;

    invoke-direct {v2, p0}, Landroid/support/constraint/utils/ImageFilterButton$1;-><init>(Landroid/support/constraint/utils/ImageFilterButton;)V

    iput-object v2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 287
    invoke-virtual {p0, v2}, Landroid/support/constraint/utils/ImageFilterButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 289
    :cond_3c
    invoke-virtual {p0, v1}, Landroid/support/constraint/utils/ImageFilterButton;->setClipToOutline(Z)V

    .line 291
    :cond_3f
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterButton;->getWidth()I

    move-result v1

    .line 292
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterButton;->getHeight()I

    move-result v2

    .line 293
    .local v2, "h":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    mul-float v5, v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 294
    .local v5, "r":F
    iget-object v6, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v2

    invoke-virtual {v6, v4, v4, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 295
    iget-object v4, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 296
    iget-object v4, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    iget-object v6, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v6, v5, v5, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 297
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v5    # "r":F
    goto :goto_70

    .line 298
    :cond_69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_70

    .line 299
    invoke-virtual {p0, v2}, Landroid/support/constraint/utils/ImageFilterButton;->setClipToOutline(Z)V

    .line 302
    :cond_70
    :goto_70
    if-eqz v0, :cond_79

    .line 303
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_79

    .line 304
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterButton;->invalidateOutline()V

    .line 308
    :cond_79
    return-void
.end method

.method public setSaturation(F)V
    .registers 3
    .param p1, "saturation"    # F

    .line 171
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mSaturation:F

    .line 172
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    .line 173
    return-void
.end method

.method public setWarmth(F)V
    .registers 3
    .param p1, "warmth"    # F

    .line 209
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mWarmth:F

    .line 210
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    .line 211
    return-void
.end method
