.class public Landroid/support/constraint/motion/utils/VelocityMatrix;
.super Ljava/lang/Object;
.source "VelocityMatrix.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mDRotate:F

.field mDScaleX:F

.field mDScaleY:F

.field mDTranslateX:F

.field mDTranslateY:F

.field mRotate:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-string v0, "VelocityMatrix"

    sput-object v0, Landroid/support/constraint/motion/utils/VelocityMatrix;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransform(FFII[F)V
    .registers 22
    .param p1, "locationX"    # F
    .param p2, "locationY"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "mAnchorDpDt"    # [F

    .line 102
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x0

    aget v4, p5, v3

    .line 103
    .local v4, "dx":F
    const/4 v5, 0x1

    aget v6, p5, v5

    .line 104
    .local v6, "dy":F
    const/high16 v7, 0x3f000000    # 0.5f

    sub-float v8, p1, v7

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v8, v8, v9

    .line 105
    .local v8, "offx":F
    sub-float v7, p2, v7

    mul-float v7, v7, v9

    .line 106
    .local v7, "offy":F
    iget v9, v0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDTranslateX:F

    add-float/2addr v4, v9

    .line 107
    iget v9, v0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDTranslateY:F

    add-float/2addr v6, v9

    .line 108
    iget v9, v0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDScaleX:F

    mul-float v9, v9, v8

    add-float/2addr v4, v9

    .line 109
    iget v9, v0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDScaleY:F

    mul-float v9, v9, v7

    add-float/2addr v6, v9

    .line 110
    iget v9, v0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mRotate:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 111
    .local v9, "r":F
    iget v10, v0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDRotate:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 112
    .local v10, "dr":F
    neg-int v11, v1

    int-to-float v11, v11

    mul-float v11, v11, v8

    float-to-double v11, v11

    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v11, v11, v13

    int-to-float v13, v2

    mul-float v13, v13, v7

    float-to-double v13, v13

    move v15, v6

    .end local v6    # "dy":F
    .local v15, "dy":F
    float-to-double v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v13, v13, v5

    sub-double/2addr v11, v13

    double-to-float v5, v11

    mul-float v5, v5, v10

    add-float/2addr v4, v5

    .line 113
    int-to-float v5, v1

    mul-float v5, v5, v8

    float-to-double v5, v5

    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v5, v5, v11

    int-to-float v11, v2

    mul-float v11, v11, v7

    float-to-double v11, v11

    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v11, v11, v13

    sub-double/2addr v5, v11

    double-to-float v5, v5

    mul-float v5, v5, v10

    add-float v6, v15, v5

    .line 114
    .end local v15    # "dy":F
    .restart local v6    # "dy":F
    aput v4, p5, v3

    .line 115
    const/4 v3, 0x1

    aput v6, p5, v3

    .line 116
    return-void
.end method

.method public clear()V
    .registers 2

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDRotate:F

    iput v0, p0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDTranslateY:F

    iput v0, p0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDTranslateX:F

    iput v0, p0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDScaleY:F

    iput v0, p0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 32
    return-void
.end method

.method public setRotationVelocity(Landroid/support/constraint/motion/KeyCycleOscillator;F)V
    .registers 4
    .param p1, "osc_r"    # Landroid/support/constraint/motion/KeyCycleOscillator;
    .param p2, "position"    # F

    .line 62
    if-eqz p1, :cond_8

    .line 63
    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDRotate:F

    .line 65
    :cond_8
    return-void
.end method

.method public setRotationVelocity(Landroid/support/constraint/motion/SplineSet;F)V
    .registers 4
    .param p1, "rot"    # Landroid/support/constraint/motion/SplineSet;
    .param p2, "position"    # F

    .line 35
    if-eqz p1, :cond_e

    .line 36
    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/SplineSet;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDRotate:F

    .line 37
    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/SplineSet;->get(F)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mRotate:F

    .line 39
    :cond_e
    return-void
.end method

.method public setScaleVelocity(Landroid/support/constraint/motion/KeyCycleOscillator;Landroid/support/constraint/motion/KeyCycleOscillator;F)V
    .registers 5
    .param p1, "osc_sx"    # Landroid/support/constraint/motion/KeyCycleOscillator;
    .param p2, "osc_sy"    # Landroid/support/constraint/motion/KeyCycleOscillator;
    .param p3, "position"    # F

    .line 80
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 81
    return-void

    .line 83
    :cond_5
    if-nez p1, :cond_d

    .line 84
    invoke-virtual {p1, p3}, Landroid/support/constraint/motion/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 86
    :cond_d
    if-nez p2, :cond_15

    .line 87
    invoke-virtual {p2, p3}, Landroid/support/constraint/motion/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 89
    :cond_15
    return-void
.end method

.method public setScaleVelocity(Landroid/support/constraint/motion/SplineSet;Landroid/support/constraint/motion/SplineSet;F)V
    .registers 5
    .param p1, "scale_x"    # Landroid/support/constraint/motion/SplineSet;
    .param p2, "scale_y"    # Landroid/support/constraint/motion/SplineSet;
    .param p3, "position"    # F

    .line 53
    if-eqz p1, :cond_8

    .line 54
    invoke-virtual {p1, p3}, Landroid/support/constraint/motion/SplineSet;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 56
    :cond_8
    if-eqz p2, :cond_10

    .line 57
    invoke-virtual {p2, p3}, Landroid/support/constraint/motion/SplineSet;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 59
    :cond_10
    return-void
.end method

.method public setTranslationVelocity(Landroid/support/constraint/motion/KeyCycleOscillator;Landroid/support/constraint/motion/KeyCycleOscillator;F)V
    .registers 5
    .param p1, "osc_x"    # Landroid/support/constraint/motion/KeyCycleOscillator;
    .param p2, "osc_y"    # Landroid/support/constraint/motion/KeyCycleOscillator;
    .param p3, "position"    # F

    .line 69
    if-eqz p1, :cond_8

    .line 70
    invoke-virtual {p1, p3}, Landroid/support/constraint/motion/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 73
    :cond_8
    if-eqz p2, :cond_10

    .line 74
    invoke-virtual {p2, p3}, Landroid/support/constraint/motion/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 76
    :cond_10
    return-void
.end method

.method public setTranslationVelocity(Landroid/support/constraint/motion/SplineSet;Landroid/support/constraint/motion/SplineSet;F)V
    .registers 5
    .param p1, "trans_x"    # Landroid/support/constraint/motion/SplineSet;
    .param p2, "trans_y"    # Landroid/support/constraint/motion/SplineSet;
    .param p3, "position"    # F

    .line 43
    if-eqz p1, :cond_8

    .line 44
    invoke-virtual {p1, p3}, Landroid/support/constraint/motion/SplineSet;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 46
    :cond_8
    if-eqz p2, :cond_10

    .line 47
    invoke-virtual {p2, p3}, Landroid/support/constraint/motion/SplineSet;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 49
    :cond_10
    return-void
.end method
