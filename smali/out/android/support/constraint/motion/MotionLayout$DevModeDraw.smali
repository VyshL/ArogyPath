.class Landroid/support/constraint/motion/MotionLayout$DevModeDraw;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DevModeDraw"
.end annotation


# static fields
.field private static final DEBUG_PATH_TICKS_PER_MS:I = 0x10


# instance fields
.field final DIAMOND_SIZE:I

.field final GRAPH_COLOR:I

.field final KEYFRAME_COLOR:I

.field final RED_COLOR:I

.field final SHADOW_COLOR:I

.field mBounds:Landroid/graphics/Rect;

.field mDashPathEffect:Landroid/graphics/DashPathEffect;

.field mFillPaint:Landroid/graphics/Paint;

.field mKeyFrameCount:I

.field mKeyFramePoints:[F

.field mPaint:Landroid/graphics/Paint;

.field mPaintGraph:Landroid/graphics/Paint;

.field mPaintKeyframes:Landroid/graphics/Paint;

.field mPath:Landroid/graphics/Path;

.field mPathMode:[I

.field mPoints:[F

.field mPresentationMode:Z

.field private mRectangle:[F

.field mShadowTranslate:I

.field mTextPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Landroid/support/constraint/motion/MotionLayout;


# direct methods
.method public constructor <init>(Landroid/support/constraint/motion/MotionLayout;)V
    .registers 8

    .line 2568
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2557
    const/16 v0, -0x55cd

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->RED_COLOR:I

    .line 2558
    const v1, -0x1f8a66

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->KEYFRAME_COLOR:I

    .line 2559
    const v2, -0xcc5600

    iput v2, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->GRAPH_COLOR:I

    .line 2560
    const/high16 v3, 0x77000000

    iput v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->SHADOW_COLOR:I

    .line 2561
    const/16 v3, 0xa

    iput v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->DIAMOND_SIZE:I

    .line 2564
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    .line 2565
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPresentationMode:Z

    .line 2566
    const/4 v3, 0x1

    iput v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mShadowTranslate:I

    .line 2569
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    .line 2570
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2571
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2572
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2573
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2575
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    .line 2576
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2577
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2578
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2579
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2581
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 2582
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2583
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2584
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2585
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2587
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    .line 2588
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2589
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2590
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2591
    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mRectangle:[F

    .line 2592
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    .line 2593
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2594
    new-instance p1, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_ea

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 2595
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 2596
    const/16 p1, 0x64

    new-array p1, p1, [F

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mKeyFramePoints:[F

    .line 2597
    const/16 p1, 0x32

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPathMode:[I

    .line 2599
    iget-boolean p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPresentationMode:Z

    if-eqz p1, :cond_e8

    .line 2600
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2601
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2602
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2603
    const/4 p1, 0x4

    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mShadowTranslate:I

    .line 2605
    :cond_e8
    return-void

    nop

    :array_ea
    .array-data 4
        0x40800000    # 4.0f
        0x41000000    # 8.0f
    .end array-data
.end method

.method private drawBasicPath(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2677
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 2678
    return-void
.end method

.method private drawPathAsConfigured(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2751
    const/4 v0, 0x0

    .line 2752
    .local v0, "path":Z
    const/4 v1, 0x0

    .line 2753
    .local v1, "cart":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    if-ge v2, v3, :cond_16

    .line 2754
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPathMode:[I

    aget v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    .line 2755
    const/4 v0, 0x1

    .line 2757
    :cond_f
    const/4 v4, 0x2

    if-ne v3, v4, :cond_13

    .line 2758
    const/4 v1, 0x1

    .line 2753
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2761
    .end local v2    # "i":I
    :cond_16
    if-eqz v0, :cond_1b

    .line 2762
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathRelative(Landroid/graphics/Canvas;)V

    .line 2764
    :cond_1b
    if-eqz v1, :cond_20

    .line 2765
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathCartesian(Landroid/graphics/Canvas;)V

    .line 2767
    :cond_20
    return-void
.end method

.method private drawPathCartesian(Landroid/graphics/Canvas;)V
    .registers 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2795
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    .line 2796
    .local v2, "x1":F
    const/4 v3, 0x1

    aget v4, v1, v3

    .line 2797
    .local v4, "y1":F
    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    aget v5, v1, v5

    .line 2798
    .local v5, "x2":F
    array-length v6, v1

    sub-int/2addr v6, v3

    aget v1, v1, v6

    .line 2800
    .local v1, "y2":F
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 2801
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget-object v11, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 2800
    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2802
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 2803
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v16

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 2802
    move-object/from16 v12, p1

    move-object/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2804
    return-void
.end method

.method private drawPathCartesianTicks(Landroid/graphics/Canvas;FF)V
    .registers 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 2807
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    const/4 v2, 0x0

    aget v8, v1, v2

    .line 2808
    .local v8, "x1":F
    const/4 v2, 0x1

    aget v9, v1, v2

    .line 2809
    .local v9, "y1":F
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget v10, v1, v3

    .line 2810
    .local v10, "x2":F
    array-length v3, v1

    sub-int/2addr v3, v2

    aget v11, v1, v3

    .line 2811
    .local v11, "y2":F
    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 2812
    .local v12, "minx":F
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 2813
    .local v13, "maxy":F
    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v14, p2, v1

    .line 2814
    .local v14, "xgap":F
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float v15, v1, p3

    .line 2816
    .local v15, "ygap":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v2, v14, v16

    sub-float v3, v10, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v17

    double-to-int v2, v2

    int-to-float v2, v2

    div-float v2, v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2817
    .local v5, "text":Ljava/lang/String;
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 2818
    const/high16 v19, 0x40000000    # 2.0f

    div-float v1, v14, v19

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v20, v1, v2

    .line 2819
    .local v20, "off":F
    add-float v1, v20, v12

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float v2, p3, v2

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2820
    nop

    .line 2821
    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 2820
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v21, v3

    move/from16 v3, p3

    move-object/from16 v22, v5

    .end local v5    # "text":Ljava/lang/String;
    .local v22, "text":Ljava/lang/String;
    move/from16 v5, p3

    move/from16 v23, v8

    move-object v8, v6

    .end local v8    # "x1":F
    .local v23, "x1":F
    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-float v2, v15, v16

    sub-float v3, v11, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    add-double v2, v2, v17

    double-to-int v2, v2

    int-to-float v2, v2

    div-float v2, v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2825
    .end local v22    # "text":Ljava/lang/String;
    .local v8, "text":Ljava/lang/String;
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 2826
    div-float v1, v15, v19

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v16, v1, v2

    .line 2827
    .end local v20    # "off":F
    .local v16, "off":F
    const/high16 v1, 0x40a00000    # 5.0f

    add-float v1, p2, v1

    sub-float v2, v13, v16

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2828
    nop

    .line 2829
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 2828
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2830
    return-void
.end method

.method private drawPathRelative(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2746
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v1, 0x1

    aget v4, v0, v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget v5, v0, v2

    array-length v2, v0

    sub-int/2addr v2, v1

    aget v6, v0, v2

    iget-object v7, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2748
    return-void
.end method

.method private drawPathRelativeTicks(Landroid/graphics/Canvas;FF)V
    .registers 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 2770
    move-object/from16 v0, p0

    move/from16 v7, p2

    move/from16 v8, p3

    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    const/4 v2, 0x0

    aget v9, v1, v2

    .line 2771
    .local v9, "x1":F
    const/4 v2, 0x1

    aget v10, v1, v2

    .line 2772
    .local v10, "y1":F
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget v11, v1, v3

    .line 2773
    .local v11, "x2":F
    array-length v3, v1

    sub-int/2addr v3, v2

    aget v12, v1, v3

    .line 2774
    .local v12, "y2":F
    sub-float v1, v9, v11

    float-to-double v1, v1

    sub-float v3, v10, v12

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v13, v1

    .line 2775
    .local v13, "dist":F
    sub-float v1, v7, v9

    sub-float v2, v11, v9

    mul-float v1, v1, v2

    sub-float v2, v8, v10

    sub-float v3, v12, v10

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    mul-float v2, v13, v13

    div-float v14, v1, v2

    .line 2776
    .local v14, "t":F
    sub-float v1, v11, v9

    mul-float v1, v1, v14

    add-float v15, v9, v1

    .line 2777
    .local v15, "xp":F
    sub-float v1, v12, v10

    mul-float v1, v1, v14

    add-float v6, v10, v1

    .line 2779
    .local v6, "yp":F
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    move-object v5, v1

    .line 2780
    .local v5, "path":Landroid/graphics/Path;
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2781
    invoke-virtual {v5, v15, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2782
    sub-float v1, v15, v7

    float-to-double v1, v1

    sub-float v3, v6, v8

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v4, v1

    .line 2783
    .local v4, "len":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v3, v4, v2

    div-float/2addr v3, v13

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2784
    .local v3, "text":Ljava/lang/String;
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 2785
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v4, v1

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v22, v1, v2

    .line 2786
    .local v22, "off":F
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v20, -0x3e600000    # -20.0f

    move-object/from16 v16, p1

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move/from16 v19, v22

    move-object/from16 v21, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 2787
    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v16, v2

    move/from16 v2, p2

    .end local v3    # "text":Ljava/lang/String;
    .local v17, "text":Ljava/lang/String;
    move/from16 v3, p3

    move/from16 v18, v4

    .end local v4    # "len":F
    .local v18, "len":F
    move v4, v15

    move-object/from16 v19, v5

    .end local v5    # "path":Landroid/graphics/Path;
    .local v19, "path":Landroid/graphics/Path;
    move v5, v6

    move/from16 v20, v6

    .end local v6    # "yp":F
    .local v20, "yp":F
    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2788
    return-void
.end method

.method private drawPathScreenTicks(Landroid/graphics/Canvas;FFII)V
    .registers 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "viewWidth"    # I
    .param p5, "viewHeight"    # I

    .line 2833
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    .line 2834
    .local v8, "x1":F
    const/4 v9, 0x0

    .line 2835
    .local v9, "y1":F
    const/high16 v10, 0x3f800000    # 1.0f

    .line 2836
    .local v10, "x2":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 2837
    .local v11, "y2":F
    const/4 v12, 0x0

    .line 2838
    .local v12, "minx":F
    const/4 v13, 0x0

    .line 2839
    .local v13, "maxy":F
    move/from16 v14, p2

    .line 2840
    .local v14, "xgap":F
    move/from16 v15, p3

    .line 2842
    .local v15, "ygap":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    sub-float v2, v14, v2

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v2, v2, v16

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionLayout;->getWidth()I

    move-result v3

    sub-int v3, v3, p4

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v17

    double-to-int v2, v2

    int-to-float v2, v2

    div-float v2, v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2843
    .local v5, "text":Ljava/lang/String;
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 2844
    const/high16 v19, 0x40000000    # 2.0f

    div-float v1, v14, v19

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v20, v1, v2

    .line 2845
    .local v20, "off":F
    add-float v1, v20, v12

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float v2, p3, v2

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2846
    nop

    .line 2847
    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 2846
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v21, v3

    move/from16 v3, p3

    move-object/from16 v22, v5

    .end local v5    # "text":Ljava/lang/String;
    .local v22, "text":Ljava/lang/String;
    move/from16 v5, p3

    move/from16 v23, v8

    move-object v8, v6

    .end local v8    # "x1":F
    .local v23, "x1":F
    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p5, 0x2

    int-to-float v2, v2

    sub-float v2, v15, v2

    mul-float v2, v2, v16

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v3

    sub-int v3, v3, p5

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    add-double v2, v2, v17

    double-to-int v2, v2

    int-to-float v2, v2

    div-float v2, v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2851
    .end local v22    # "text":Ljava/lang/String;
    .local v8, "text":Ljava/lang/String;
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 2852
    div-float v1, v15, v19

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v16, v1, v2

    .line 2853
    .end local v20    # "off":F
    .local v16, "off":F
    const/high16 v1, 0x40a00000    # 5.0f

    add-float v1, p2, v1

    sub-float v2, v13, v16

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2854
    nop

    .line 2855
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 2854
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2856
    return-void
.end method

.method private drawRectangle(Landroid/graphics/Canvas;Landroid/support/constraint/motion/MotionController;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "motionController"    # Landroid/support/constraint/motion/MotionController;

    .line 2859
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2860
    const/16 v0, 0x32

    .line 2861
    .local v0, "rectFrames":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-gt v1, v0, :cond_4e

    .line 2862
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 2863
    .local v2, "p":F
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mRectangle:[F

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v3, v4}, Landroid/support/constraint/motion/MotionController;->buildRect(F[FI)V

    .line 2864
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mRectangle:[F

    aget v4, v5, v4

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2865
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mRectangle:[F

    const/4 v5, 0x2

    aget v5, v4, v5

    const/4 v6, 0x3

    aget v4, v4, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2866
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mRectangle:[F

    const/4 v5, 0x4

    aget v5, v4, v5

    const/4 v6, 0x5

    aget v4, v4, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2867
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mRectangle:[F

    const/4 v5, 0x6

    aget v5, v4, v5

    const/4 v6, 0x7

    aget v4, v4, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2868
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 2861
    .end local v2    # "p":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2870
    .end local v1    # "i":I
    :cond_4e
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x44000000    # 512.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2871
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2872
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2874
    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2875
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2876
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2877
    return-void
.end method

.method private drawTicks(Landroid/graphics/Canvas;IILandroid/support/constraint/motion/MotionController;)V
    .registers 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mode"    # I
    .param p3, "keyFrames"    # I
    .param p4, "motionController"    # Landroid/support/constraint/motion/MotionController;

    .line 2681
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p4

    const/4 v0, 0x0

    .line 2682
    .local v0, "viewWidth":I
    const/4 v1, 0x0

    .line 2683
    .local v1, "viewHeight":I
    iget-object v2, v9, Landroid/support/constraint/motion/MotionController;->mView:Landroid/view/View;

    if-eqz v2, :cond_1d

    .line 2684
    iget-object v2, v9, Landroid/support/constraint/motion/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2685
    iget-object v2, v9, Landroid/support/constraint/motion/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    move v10, v0

    move v11, v1

    goto :goto_1f

    .line 2683
    :cond_1d
    move v10, v0

    move v11, v1

    .line 2687
    .end local v0    # "viewWidth":I
    .end local v1    # "viewHeight":I
    .local v10, "viewWidth":I
    .local v11, "viewHeight":I
    :goto_1f
    const/4 v0, 0x1

    move v12, v0

    .local v12, "i":I
    :goto_21
    add-int/lit8 v0, p3, -0x1

    const/4 v13, 0x2

    const/4 v1, 0x1

    if-ge v12, v0, :cond_f2

    .line 2688
    const/4 v0, 0x4

    if-ne v8, v0, :cond_34

    iget-object v2, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPathMode:[I

    add-int/lit8 v3, v12, -0x1

    aget v2, v2, v3

    if-nez v2, :cond_34

    .line 2690
    goto/16 :goto_ee

    .line 2693
    :cond_34
    iget-object v2, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mKeyFramePoints:[F

    mul-int/lit8 v3, v12, 0x2

    aget v14, v2, v3

    .line 2694
    .local v14, "x":F
    mul-int/lit8 v3, v12, 0x2

    add-int/2addr v3, v1

    aget v15, v2, v3

    .line 2695
    .local v15, "y":F
    iget-object v2, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 2696
    iget-object v2, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    const/high16 v3, 0x41200000    # 10.0f

    add-float v4, v15, v3

    invoke-virtual {v2, v14, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2697
    iget-object v2, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    add-float v4, v14, v3

    invoke-virtual {v2, v4, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2698
    iget-object v2, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    sub-float v4, v15, v3

    invoke-virtual {v2, v14, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2699
    iget-object v2, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    sub-float v3, v14, v3

    invoke-virtual {v2, v3, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2700
    iget-object v2, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 2702
    add-int/lit8 v2, v12, -0x1

    invoke-virtual {v9, v2}, Landroid/support/constraint/motion/MotionController;->getKeyFrame(I)Landroid/support/constraint/motion/MotionPaths;

    move-result-object v16

    .line 2703
    .local v16, "framePoint":Landroid/support/constraint/motion/MotionPaths;
    const/16 v17, 0x0

    .line 2704
    .local v17, "dx":F
    const/16 v18, 0x0

    .line 2705
    .local v18, "dy":F
    const/4 v5, 0x3

    if-ne v8, v0, :cond_ac

    .line 2707
    iget-object v0, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPathMode:[I

    add-int/lit8 v2, v12, -0x1

    aget v2, v0, v2

    if-ne v2, v1, :cond_84

    .line 2708
    sub-float v0, v14, v17

    sub-float v1, v15, v18

    invoke-direct {v6, v7, v0, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathRelativeTicks(Landroid/graphics/Canvas;FF)V

    goto :goto_a5

    .line 2709
    :cond_84
    add-int/lit8 v1, v12, -0x1

    aget v1, v0, v1

    if-ne v1, v13, :cond_92

    .line 2710
    sub-float v0, v14, v17

    sub-float v1, v15, v18

    invoke-direct {v6, v7, v0, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathCartesianTicks(Landroid/graphics/Canvas;FF)V

    goto :goto_a5

    .line 2711
    :cond_92
    add-int/lit8 v1, v12, -0x1

    aget v0, v0, v1

    if-ne v0, v5, :cond_a5

    .line 2712
    sub-float v2, v14, v17

    sub-float v3, v15, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v10

    move v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathScreenTicks(Landroid/graphics/Canvas;FFII)V

    .line 2715
    :cond_a5
    :goto_a5
    iget-object v0, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v1, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2717
    :cond_ac
    if-ne v8, v13, :cond_b5

    .line 2718
    sub-float v0, v14, v17

    sub-float v1, v15, v18

    invoke-direct {v6, v7, v0, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathRelativeTicks(Landroid/graphics/Canvas;FF)V

    .line 2720
    :cond_b5
    const/4 v0, 0x3

    if-ne v8, v0, :cond_bf

    .line 2721
    sub-float v0, v14, v17

    sub-float v1, v15, v18

    invoke-direct {v6, v7, v0, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathCartesianTicks(Landroid/graphics/Canvas;FF)V

    .line 2723
    :cond_bf
    const/4 v0, 0x6

    if-ne v8, v0, :cond_cf

    .line 2724
    sub-float v2, v14, v17

    sub-float v3, v15, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v10

    move v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathScreenTicks(Landroid/graphics/Canvas;FFII)V

    .line 2726
    :cond_cf
    const/4 v0, 0x0

    cmpl-float v1, v17, v0

    if-nez v1, :cond_e1

    cmpl-float v0, v18, v0

    if-eqz v0, :cond_d9

    goto :goto_e1

    .line 2729
    :cond_d9
    iget-object v0, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v1, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_ee

    .line 2727
    :cond_e1
    :goto_e1
    sub-float v2, v14, v17

    sub-float v3, v15, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v14

    move v5, v15

    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawTranslation(Landroid/graphics/Canvas;FFFF)V

    .line 2687
    .end local v14    # "x":F
    .end local v15    # "y":F
    .end local v16    # "framePoint":Landroid/support/constraint/motion/MotionPaths;
    .end local v17    # "dx":F
    .end local v18    # "dy":F
    :goto_ee
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_21

    .line 2732
    .end local v12    # "i":I
    :cond_f2
    iget-object v0, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    array-length v2, v0

    if-le v2, v1, :cond_112

    .line 2734
    const/4 v2, 0x0

    aget v2, v0, v2

    aget v0, v0, v1

    iget-object v3, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v7, v2, v0, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2735
    iget-object v0, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    array-length v2, v0

    sub-int/2addr v2, v13

    aget v2, v0, v2

    array-length v3, v0

    sub-int/2addr v3, v1

    aget v0, v0, v3

    iget-object v1, v6, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v0, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2738
    :cond_112
    return-void
.end method

.method private drawTranslation(Landroid/graphics/Canvas;FFFF)V
    .registers 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F

    .line 2741
    move-object v0, p0

    iget-object v6, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2742
    iget-object v12, v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2743
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "duration"    # I
    .param p4, "debugPath"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/support/constraint/motion/MotionController;",
            ">;II)V"
        }
    .end annotation

    .line 2610
    .local p2, "frameArrayList":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Landroid/support/constraint/motion/MotionController;>;"
    if-eqz p2, :cond_10d

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_10d

    .line 2613
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2614
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_6b

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6b

    .line 2615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v2}, Landroid/support/constraint/motion/MotionLayout;->access$000(Landroid/support/constraint/motion/MotionLayout;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2616
    .local v0, "str":Ljava/lang/String;
    const/high16 v1, 0x41200000    # 10.0f

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2617
    const/high16 v1, 0x41300000    # 11.0f

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1d

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2619
    .end local v0    # "str":Ljava/lang/String;
    :cond_6b
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_73
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_109

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionController;

    .line 2620
    .local v1, "motionController":Landroid/support/constraint/motion/MotionController;
    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionController;->getDrawPath()I

    move-result v2

    .line 2621
    .local v2, "mode":I
    if-lez p4, :cond_88

    if-nez v2, :cond_88

    .line 2622
    const/4 v2, 0x1

    .line 2624
    :cond_88
    if-nez v2, :cond_8b

    .line 2625
    goto :goto_73

    .line 2628
    :cond_8b
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mKeyFramePoints:[F

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPathMode:[I

    invoke-virtual {v1, v3, v4}, Landroid/support/constraint/motion/MotionController;->buildKeyFrames([F[I)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    .line 2630
    const/4 v3, 0x1

    if-lt v2, v3, :cond_107

    .line 2632
    div-int/lit8 v3, p3, 0x10

    .line 2633
    .local v3, "frames":I
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    if-eqz v4, :cond_a3

    array-length v4, v4

    mul-int/lit8 v5, v3, 0x2

    if-eq v4, v5, :cond_b0

    .line 2634
    :cond_a3
    mul-int/lit8 v4, v3, 0x2

    new-array v4, v4, [F

    iput-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    .line 2635
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 2638
    :cond_b0
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mShadowTranslate:I

    int-to-float v5, v4

    int-to-float v4, v4

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2640
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x77000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2641
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2642
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2643
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2644
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPoints:[F

    invoke-virtual {v1, v4, v3}, Landroid/support/constraint/motion/MotionController;->buildPath([FI)V

    .line 2645
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    invoke-virtual {p0, p1, v2, v4, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawAll(Landroid/graphics/Canvas;IILandroid/support/constraint/motion/MotionController;)V

    .line 2646
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    const/16 v5, -0x55cd

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2647
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    const v5, -0x1f8a66

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2648
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2649
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    const v5, -0xcc5600

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2651
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mShadowTranslate:I

    neg-int v5, v4

    int-to-float v5, v5

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2652
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    invoke-virtual {p0, p1, v2, v4, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawAll(Landroid/graphics/Canvas;IILandroid/support/constraint/motion/MotionController;)V

    .line 2653
    const/4 v4, 0x5

    if-ne v2, v4, :cond_107

    .line 2654
    invoke-direct {p0, p1, v1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawRectangle(Landroid/graphics/Canvas;Landroid/support/constraint/motion/MotionController;)V

    .line 2658
    .end local v1    # "motionController":Landroid/support/constraint/motion/MotionController;
    .end local v2    # "mode":I
    .end local v3    # "frames":I
    :cond_107
    goto/16 :goto_73

    .line 2659
    :cond_109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2660
    return-void

    .line 2611
    :cond_10d
    :goto_10d
    return-void
.end method

.method public drawAll(Landroid/graphics/Canvas;IILandroid/support/constraint/motion/MotionController;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mode"    # I
    .param p3, "keyFrames"    # I
    .param p4, "motionController"    # Landroid/support/constraint/motion/MotionController;

    .line 2663
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 2664
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathAsConfigured(Landroid/graphics/Canvas;)V

    .line 2666
    :cond_6
    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    .line 2667
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathRelative(Landroid/graphics/Canvas;)V

    .line 2669
    :cond_c
    const/4 v0, 0x3

    if-ne p2, v0, :cond_12

    .line 2670
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawPathCartesian(Landroid/graphics/Canvas;)V

    .line 2672
    :cond_12
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawBasicPath(Landroid/graphics/Canvas;)V

    .line 2673
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->drawTicks(Landroid/graphics/Canvas;IILandroid/support/constraint/motion/MotionController;)V

    .line 2674
    return-void
.end method

.method getTextBounds(Ljava/lang/String;Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 2791
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2792
    return-void
.end method
