.class public Landroid/support/constraint/utils/MockView;
.super Landroid/view/View;
.source "MockView.java"


# instance fields
.field private mDiagonalsColor:I

.field private mDrawDiagonals:Z

.field private mDrawLabel:Z

.field private mMargin:I

.field private mPaintDiagonals:Landroid/graphics/Paint;

.field private mPaintText:Landroid/graphics/Paint;

.field private mPaintTextBackground:Landroid/graphics/Paint;

.field protected mText:Ljava/lang/String;

.field private mTextBackgroundColor:I

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MockView;->mPaintText:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/utils/MockView;->mDrawDiagonals:Z

    .line 27
    iput-boolean v0, p0, Landroid/support/constraint/utils/MockView;->mDrawLabel:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/utils/MockView;->mText:Ljava/lang/String;

    .line 29
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/utils/MockView;->mTextBounds:Landroid/graphics/Rect;

    .line 30
    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/utils/MockView;->mDiagonalsColor:I

    .line 31
    const/16 v2, 0xc8

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/utils/MockView;->mTextColor:I

    .line 32
    const/16 v2, 0x32

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Landroid/support/constraint/utils/MockView;->mTextBackgroundColor:I

    .line 33
    const/4 v1, 0x4

    iput v1, p0, Landroid/support/constraint/utils/MockView;->mMargin:I

    .line 37
    invoke-direct {p0, p1, v0}, Landroid/support/constraint/utils/MockView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MockView;->mPaintText:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/utils/MockView;->mDrawDiagonals:Z

    .line 27
    iput-boolean v0, p0, Landroid/support/constraint/utils/MockView;->mDrawLabel:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/utils/MockView;->mText:Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MockView;->mTextBounds:Landroid/graphics/Rect;

    .line 30
    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Landroid/support/constraint/utils/MockView;->mDiagonalsColor:I

    .line 31
    const/16 v1, 0xc8

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Landroid/support/constraint/utils/MockView;->mTextColor:I

    .line 32
    const/16 v1, 0x32

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/utils/MockView;->mTextBackgroundColor:I

    .line 33
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/constraint/utils/MockView;->mMargin:I

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/utils/MockView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MockView;->mPaintText:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/utils/MockView;->mDrawDiagonals:Z

    .line 27
    iput-boolean v0, p0, Landroid/support/constraint/utils/MockView;->mDrawLabel:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/utils/MockView;->mText:Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MockView;->mTextBounds:Landroid/graphics/Rect;

    .line 30
    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Landroid/support/constraint/utils/MockView;->mDiagonalsColor:I

    .line 31
    const/16 v1, 0xc8

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Landroid/support/constraint/utils/MockView;->mTextColor:I

    .line 32
    const/16 v1, 0x32

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/utils/MockView;->mTextBackgroundColor:I

    .line 33
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/constraint/utils/MockView;->mMargin:I

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/utils/MockView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    if-eqz p2, :cond_64

    .line 52
    sget-object v0, Landroid/support/constraint/R$styleable;->MockView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 54
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_61

    .line 55
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 56
    .local v3, "attr":I
    sget v4, Landroid/support/constraint/R$styleable;->MockView_mock_label:I

    if-ne v3, v4, :cond_1e

    .line 57
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/constraint/utils/MockView;->mText:Ljava/lang/String;

    goto :goto_5e

    .line 58
    :cond_1e
    sget v4, Landroid/support/constraint/R$styleable;->MockView_mock_showDiagonals:I

    if-ne v3, v4, :cond_2b

    .line 59
    iget-boolean v4, p0, Landroid/support/constraint/utils/MockView;->mDrawDiagonals:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/constraint/utils/MockView;->mDrawDiagonals:Z

    goto :goto_5e

    .line 60
    :cond_2b
    sget v4, Landroid/support/constraint/R$styleable;->MockView_mock_diagonalsColor:I

    if-ne v3, v4, :cond_38

    .line 61
    iget v4, p0, Landroid/support/constraint/utils/MockView;->mDiagonalsColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/utils/MockView;->mDiagonalsColor:I

    goto :goto_5e

    .line 62
    :cond_38
    sget v4, Landroid/support/constraint/R$styleable;->MockView_mock_labelBackgroundColor:I

    if-ne v3, v4, :cond_45

    .line 63
    iget v4, p0, Landroid/support/constraint/utils/MockView;->mTextBackgroundColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/utils/MockView;->mTextBackgroundColor:I

    goto :goto_5e

    .line 64
    :cond_45
    sget v4, Landroid/support/constraint/R$styleable;->MockView_mock_labelColor:I

    if-ne v3, v4, :cond_52

    .line 65
    iget v4, p0, Landroid/support/constraint/utils/MockView;->mTextColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/utils/MockView;->mTextColor:I

    goto :goto_5e

    .line 66
    :cond_52
    sget v4, Landroid/support/constraint/R$styleable;->MockView_mock_showLabel:I

    if-ne v3, v4, :cond_5e

    .line 67
    iget-boolean v4, p0, Landroid/support/constraint/utils/MockView;->mDrawLabel:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/constraint/utils/MockView;->mDrawLabel:Z

    .line 54
    .end local v3    # "attr":I
    :cond_5e
    :goto_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 70
    .end local v2    # "i":I
    :cond_61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "N":I
    :cond_64
    iget-object v0, p0, Landroid/support/constraint/utils/MockView;->mText:Ljava/lang/String;

    if-nez v0, :cond_78

    .line 74
    :try_start_68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/constraint/utils/MockView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/utils/MockView;->mText:Ljava/lang/String;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_76} :catch_77

    .line 76
    goto :goto_78

    .line 75
    :catch_77
    move-exception v0

    .line 78
    :cond_78
    :goto_78
    iget-object v0, p0, Landroid/support/constraint/utils/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/constraint/utils/MockView;->mDiagonalsColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Landroid/support/constraint/utils/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iget-object v0, p0, Landroid/support/constraint/utils/MockView;->mPaintText:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/constraint/utils/MockView;->mTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Landroid/support/constraint/utils/MockView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v0, p0, Landroid/support/constraint/utils/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/constraint/utils/MockView;->mTextBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget v0, p0, Landroid/support/constraint/utils/MockView;->mMargin:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/constraint/utils/MockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/utils/MockView;->mMargin:I

    .line 84
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 88
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    invoke-virtual {p0}, Landroid/support/constraint/utils/MockView;->getWidth()I

    move-result v0

    .line 90
    .local v0, "w":I
    invoke-virtual {p0}, Landroid/support/constraint/utils/MockView;->getHeight()I

    move-result v1

    .line 91
    .local v1, "h":I
    iget-boolean v2, p0, Landroid/support/constraint/utils/MockView;->mDrawDiagonals:Z

    if-eqz v2, :cond_49

    .line 92
    add-int/lit8 v0, v0, -0x1

    .line 93
    add-int/lit8 v1, v1, -0x1

    .line 94
    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v0

    int-to-float v6, v1

    iget-object v7, p0, Landroid/support/constraint/utils/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 95
    const/4 v9, 0x0

    int-to-float v10, v1

    int-to-float v11, v0

    const/4 v12, 0x0

    iget-object v13, p0, Landroid/support/constraint/utils/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    int-to-float v5, v0

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/support/constraint/utils/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 97
    int-to-float v9, v0

    const/4 v10, 0x0

    int-to-float v11, v0

    int-to-float v12, v1

    iget-object v13, p0, Landroid/support/constraint/utils/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 98
    int-to-float v3, v0

    int-to-float v4, v1

    const/4 v5, 0x0

    int-to-float v6, v1

    iget-object v7, p0, Landroid/support/constraint/utils/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    const/4 v9, 0x0

    int-to-float v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Landroid/support/constraint/utils/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 101
    :cond_49
    iget-object v2, p0, Landroid/support/constraint/utils/MockView;->mText:Ljava/lang/String;

    if-eqz v2, :cond_af

    iget-boolean v3, p0, Landroid/support/constraint/utils/MockView;->mDrawLabel:Z

    if-eqz v3, :cond_af

    .line 102
    iget-object v3, p0, Landroid/support/constraint/utils/MockView;->mPaintText:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Landroid/support/constraint/utils/MockView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 103
    iget-object v2, p0, Landroid/support/constraint/utils/MockView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 104
    .local v2, "tx":F
    iget-object v4, p0, Landroid/support/constraint/utils/MockView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v1, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget-object v3, p0, Landroid/support/constraint/utils/MockView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    .line 105
    .local v4, "ty":F
    iget-object v3, p0, Landroid/support/constraint/utils/MockView;->mTextBounds:Landroid/graphics/Rect;

    float-to-int v5, v2

    float-to-int v6, v4

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 106
    iget-object v3, p0, Landroid/support/constraint/utils/MockView;->mTextBounds:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/support/constraint/utils/MockView;->mMargin:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/support/constraint/utils/MockView;->mTextBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/support/constraint/utils/MockView;->mMargin:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/support/constraint/utils/MockView;->mTextBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/support/constraint/utils/MockView;->mMargin:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/support/constraint/utils/MockView;->mTextBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/support/constraint/utils/MockView;->mMargin:I

    add-int/2addr v8, v9

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 108
    iget-object v3, p0, Landroid/support/constraint/utils/MockView;->mTextBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/constraint/utils/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 109
    iget-object v3, p0, Landroid/support/constraint/utils/MockView;->mText:Ljava/lang/String;

    iget-object v5, p0, Landroid/support/constraint/utils/MockView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 111
    .end local v2    # "tx":F
    .end local v4    # "ty":F
    :cond_af
    return-void
.end method
