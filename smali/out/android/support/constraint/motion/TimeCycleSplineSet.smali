.class public abstract Landroid/support/constraint/motion/TimeCycleSplineSet;
.super Ljava/lang/Object;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/TimeCycleSplineSet$Sort;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationZset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationYset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationXset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleYset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleXset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$PathRotate;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$RotationYset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$RotationXset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$RotationSet;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$AlphaSet;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$ElevationSet;
    }
.end annotation


# static fields
.field private static final CURVE_OFFSET:I = 0x2

.field private static final CURVE_PERIOD:I = 0x1

.field private static final CURVE_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SplineSet"

.field private static VAL_2PI:F


# instance fields
.field private count:I

.field last_cycle:F

.field last_time:J

.field private mCache:[F

.field protected mContinue:Z

.field protected mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field private mType:Ljava/lang/String;

.field protected mValues:[[F

.field protected mWaveShape:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const v0, 0x40c90fdb

    sput v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->VAL_2PI:F

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mWaveShape:I

    .line 40
    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    .line 41
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_28

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    .line 44
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    .line 49
    iput-boolean v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mContinue:Z

    .line 51
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    return-void

    :array_28
    .array-data 4
        0xa
        0x3
    .end array-data
.end method

.method static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroid/support/constraint/motion/TimeCycleSplineSet;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;)",
            "Landroid/support/constraint/motion/TimeCycleSplineSet;"
        }
    .end annotation

    .line 125
    .local p1, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/constraint/ConstraintAttribute;>;"
    new-instance v0, Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;

    invoke-direct {v0, p0, p1}, Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static makeSpline(Ljava/lang/String;J)Landroid/support/constraint/motion/TimeCycleSplineSet;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentTime"    # J

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_da

    :cond_7
    goto/16 :goto_87

    :sswitch_9
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_88

    :sswitch_14
    const-string v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto/16 :goto_88

    :sswitch_1f
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_88

    :sswitch_29
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_88

    :sswitch_33
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_88

    :sswitch_3d
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_88

    :sswitch_47
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_88

    :sswitch_52
    const-string v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_88

    :sswitch_5d
    const-string v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_88

    :sswitch_68
    const-string v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_88

    :sswitch_73
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_88

    :sswitch_7d
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_88

    :goto_87
    const/4 v0, -0x1

    :goto_88
    packed-switch v0, :pswitch_data_10c

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 165
    :pswitch_8d
    new-instance v0, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;-><init>()V

    .line 166
    .local v0, "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    goto :goto_d5

    .line 162
    .end local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    :pswitch_93
    new-instance v0, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationZset;

    invoke-direct {v0}, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationZset;-><init>()V

    .line 163
    .restart local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    goto :goto_d5

    .line 159
    .end local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    :pswitch_99
    new-instance v0, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationYset;

    invoke-direct {v0}, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationYset;-><init>()V

    .line 160
    .restart local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    goto :goto_d5

    .line 156
    .end local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    :pswitch_9f
    new-instance v0, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationXset;

    invoke-direct {v0}, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationXset;-><init>()V

    .line 157
    .restart local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    goto :goto_d5

    .line 153
    .end local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    :pswitch_a5
    new-instance v0, Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleYset;

    invoke-direct {v0}, Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleYset;-><init>()V

    .line 154
    .restart local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    goto :goto_d5

    .line 150
    .end local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    :pswitch_ab
    new-instance v0, Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleXset;

    invoke-direct {v0}, Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleXset;-><init>()V

    .line 151
    .restart local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    goto :goto_d5

    .line 147
    .end local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    :pswitch_b1
    new-instance v0, Landroid/support/constraint/motion/TimeCycleSplineSet$PathRotate;

    invoke-direct {v0}, Landroid/support/constraint/motion/TimeCycleSplineSet$PathRotate;-><init>()V

    .line 148
    .restart local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    goto :goto_d5

    .line 144
    .end local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    :pswitch_b7
    new-instance v0, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationYset;

    invoke-direct {v0}, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationYset;-><init>()V

    .line 145
    .restart local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    goto :goto_d5

    .line 141
    .end local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    :pswitch_bd
    new-instance v0, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationXset;

    invoke-direct {v0}, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationXset;-><init>()V

    .line 142
    .restart local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    goto :goto_d5

    .line 138
    .end local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    :pswitch_c3
    new-instance v0, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationSet;-><init>()V

    .line 139
    .restart local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    goto :goto_d5

    .line 135
    .end local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    :pswitch_c9
    new-instance v0, Landroid/support/constraint/motion/TimeCycleSplineSet$ElevationSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/TimeCycleSplineSet$ElevationSet;-><init>()V

    .line 136
    .restart local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    goto :goto_d5

    .line 132
    .end local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    :pswitch_cf
    new-instance v0, Landroid/support/constraint/motion/TimeCycleSplineSet$AlphaSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/TimeCycleSplineSet$AlphaSet;-><init>()V

    .line 133
    .restart local v0    # "timeCycle":Landroid/support/constraint/motion/TimeCycleSplineSet;
    nop

    .line 170
    :goto_d5
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setStartTime(J)V

    .line 171
    return-object v0

    nop

    :sswitch_data_da
    .sparse-switch
        -0x4a771f66 -> :sswitch_7d
        -0x4a771f65 -> :sswitch_73
        -0x490b9c39 -> :sswitch_68
        -0x490b9c38 -> :sswitch_5d
        -0x490b9c37 -> :sswitch_52
        -0x3bab3dd3 -> :sswitch_47
        -0x3621dfb2 -> :sswitch_3d
        -0x3621dfb1 -> :sswitch_33
        -0x266f082 -> :sswitch_29
        -0x42d1a3 -> :sswitch_1f
        0x2382115 -> :sswitch_14
        0x589b15e -> :sswitch_9
    .end sparse-switch

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_cf
        :pswitch_c9
        :pswitch_c3
        :pswitch_bd
        :pswitch_b7
        :pswitch_b1
        :pswitch_ab
        :pswitch_a5
        :pswitch_9f
        :pswitch_99
        :pswitch_93
        :pswitch_8d
    .end packed-switch
.end method


# virtual methods
.method protected calcWave(F)F
    .registers 7
    .param p1, "period"    # F

    .line 99
    move v0, p1

    .line 100
    .local v0, "p":F
    iget v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mWaveShape:I

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    packed-switch v1, :pswitch_data_4c

    .line 103
    sget v1, Landroid/support/constraint/motion/TimeCycleSplineSet;->VAL_2PI:F

    mul-float v1, v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1

    .line 115
    :pswitch_15
    const/high16 v1, 0x40800000    # 4.0f

    mul-float v4, v0, v1

    rem-float/2addr v4, v1

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v3, v1

    .line 116
    .local v1, "x":F
    mul-float v2, v1, v1

    sub-float/2addr v3, v2

    return v3

    .line 113
    .end local v1    # "x":F
    :pswitch_25
    sget v1, Landroid/support/constraint/motion/TimeCycleSplineSet;->VAL_2PI:F

    mul-float v1, v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1

    .line 111
    :pswitch_30
    mul-float v1, v0, v2

    add-float/2addr v1, v3

    rem-float/2addr v1, v2

    sub-float/2addr v3, v1

    return v3

    .line 109
    :pswitch_36
    mul-float v1, v0, v2

    add-float/2addr v1, v3

    rem-float/2addr v1, v2

    sub-float/2addr v1, v3

    return v1

    .line 107
    :pswitch_3c
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v3, v1

    return v3

    .line 105
    :pswitch_42
    sget v1, Landroid/support/constraint/motion/TimeCycleSplineSet;->VAL_2PI:F

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    return v1

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_25
        :pswitch_15
    .end packed-switch
.end method

.method public get(FJLandroid/view/View;Landroid/support/constraint/motion/KeyCache;)F
    .registers 24
    .param p1, "pos"    # F
    .param p2, "time"    # J
    .param p4, "view"    # Landroid/view/View;
    .param p5, "cache"    # Landroid/support/constraint/motion/KeyCache;

    .line 70
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    iget-object v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    move/from16 v6, p1

    float-to-double v7, v6

    iget-object v9, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    invoke-virtual {v5, v7, v8, v9}, Landroid/support/constraint/motion/utils/CurveFit;->getPos(D[F)V

    .line 71
    iget-object v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    const/4 v7, 0x1

    aget v8, v5, v7

    .line 72
    .local v8, "period":F
    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    cmpl-float v12, v8, v10

    if-nez v12, :cond_23

    .line 73
    iput-boolean v11, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mContinue:Z

    .line 74
    aget v5, v5, v9

    return v5

    .line 76
    :cond_23
    iget v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 77
    iget-object v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    invoke-virtual {v4, v3, v5, v11}, Landroid/support/constraint/motion/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v5

    iput v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    .line 78
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 79
    iput v10, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    .line 82
    :cond_3b
    iget-wide v12, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_time:J

    sub-long v12, v1, v12

    .line 83
    .local v12, "delta_time":J
    iget v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    float-to-double v14, v5

    long-to-double v9, v12

    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v9, v9, v16

    float-to-double v5, v8

    mul-double v9, v9, v5

    add-double/2addr v14, v9

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v14, v5

    double-to-float v5, v14

    iput v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    .line 84
    iget-object v6, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    invoke-virtual {v4, v3, v6, v11, v5}, Landroid/support/constraint/motion/KeyCache;->setFloatValue(Ljava/lang/Object;Ljava/lang/String;IF)V

    .line 85
    iput-wide v1, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_time:J

    .line 86
    iget-object v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    aget v5, v5, v11

    .line 87
    .local v5, "v":F
    iget v6, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    invoke-virtual {v0, v6}, Landroid/support/constraint/motion/TimeCycleSplineSet;->calcWave(F)F

    move-result v6

    .line 88
    .local v6, "wave":F
    iget-object v9, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    .line 89
    .local v9, "offset":F
    mul-float v10, v5, v6

    add-float/2addr v10, v9

    .line 90
    .local v10, "value":F
    const/4 v14, 0x0

    cmpl-float v15, v5, v14

    if-nez v15, :cond_78

    cmpl-float v14, v8, v14

    if-eqz v14, :cond_77

    goto :goto_78

    :cond_77
    const/4 v7, 0x0

    :cond_78
    :goto_78
    iput-boolean v7, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mContinue:Z

    .line 91
    return v10
.end method

.method public getCurveFit()Landroid/support/constraint/motion/utils/CurveFit;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    return-object v0
.end method

.method public setPoint(IFFIF)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "value"    # F
    .param p3, "period"    # F
    .param p4, "shape"    # I
    .param p5, "offset"    # F

    .line 179
    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    iget v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    aput p1, v0, v1

    .line 180
    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 181
    const/4 v1, 0x1

    aput p3, v0, v1

    .line 182
    const/4 v2, 0x2

    aput p5, v0, v2

    .line 183
    iget v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mWaveShape:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mWaveShape:I

    .line 184
    iget v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    .line 185
    return-void
.end method

.method public abstract setProperty(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z
.end method

.method protected setStartTime(J)V
    .registers 3
    .param p1, "currentTime"    # J

    .line 175
    iput-wide p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_time:J

    .line 176
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setup(I)V
    .registers 14
    .param p1, "curveType"    # I

    .line 188
    iget v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    if-nez v0, :cond_1f

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error no points added to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplineSet"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 192
    :cond_1f
    iget-object v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    iget-object v2, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0}, Landroid/support/constraint/motion/TimeCycleSplineSet$Sort;->doubleQuickSort([I[[FII)V

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "unique":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2b
    iget-object v2, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    array-length v5, v2

    if-ge v1, v5, :cond_3d

    .line 195
    aget v5, v2, v1

    add-int/lit8 v6, v1, -0x1

    aget v2, v2, v6

    if-eq v5, v2, :cond_3a

    .line 196
    add-int/lit8 v0, v0, 0x1

    .line 194
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 199
    .end local v1    # "i":I
    :cond_3d
    if-nez v0, :cond_40

    .line 200
    const/4 v0, 0x1

    .line 202
    :cond_40
    new-array v1, v0, [D

    .line 203
    .local v1, "time":[D
    const/4 v2, 0x3

    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v2, v6, v3

    aput v0, v6, v4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 204
    .local v2, "values":[[D
    const/4 v6, 0x0

    .line 206
    .local v6, "k":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_54
    iget v8, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    if-ge v7, v8, :cond_91

    .line 207
    if-lez v7, :cond_65

    iget-object v8, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    aget v9, v8, v7

    add-int/lit8 v10, v7, -0x1

    aget v8, v8, v10

    if-ne v9, v8, :cond_65

    .line 208
    goto :goto_8e

    .line 210
    :cond_65
    iget-object v8, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    aget v8, v8, v7

    int-to-double v8, v8

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double v8, v8, v10

    aput-wide v8, v1, v6

    .line 211
    aget-object v8, v2, v6

    iget-object v9, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    aget-object v9, v9, v7

    aget v10, v9, v4

    float-to-double v10, v10

    aput-wide v10, v8, v4

    .line 212
    aget-object v8, v2, v6

    aget v10, v9, v3

    float-to-double v10, v10

    aput-wide v10, v8, v3

    .line 213
    aget-object v8, v2, v6

    aget v9, v9, v5

    float-to-double v9, v9

    aput-wide v9, v8, v5

    .line 214
    add-int/lit8 v6, v6, 0x1

    .line 206
    :goto_8e
    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    .line 216
    .end local v7    # "i":I
    :cond_91
    invoke-static {p1, v1, v2}, Landroid/support/constraint/motion/utils/CurveFit;->get(I[D[[D)Landroid/support/constraint/motion/utils/CurveFit;

    move-result-object v3

    iput-object v3, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    .line 217
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 55
    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    .line 56
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "df":Ljava/text/DecimalFormat;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget v3, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    if-ge v2, v3, :cond_44

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 60
    .end local v2    # "i":I
    :cond_44
    return-object v0
.end method
