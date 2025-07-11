.class public Landroid/support/constraint/motion/KeyPosition;
.super Landroid/support/constraint/motion/KeyPositionBase;
.source "KeyPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/KeyPosition$Loader;
    }
.end annotation


# static fields
.field static final KEY_TYPE:I = 0x2

.field static final NAME:Ljava/lang/String; = "KeyPosition"

.field private static final PERCENT_X:Ljava/lang/String; = "percentX"

.field private static final PERCENT_Y:Ljava/lang/String; = "percentY"

.field private static final TAG:Ljava/lang/String; = "KeyPosition"

.field public static final TYPE_CARTESIAN:I = 0x0

.field public static final TYPE_PATH:I = 0x1

.field public static final TYPE_SCREEN:I = 0x2


# instance fields
.field mAltPercentX:F

.field mAltPercentY:F

.field private mCalculatedPositionX:F

.field private mCalculatedPositionY:F

.field mDrawPath:I

.field mPathMotionArc:I

.field mPercentHeight:F

.field mPercentWidth:F

.field mPercentX:F

.field mPercentY:F

.field mPositionType:I

.field mTransitionEasing:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Landroid/support/constraint/motion/KeyPositionBase;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/motion/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 44
    sget v0, Landroid/support/constraint/motion/KeyPosition;->UNSET:I

    iput v0, p0, Landroid/support/constraint/motion/KeyPosition;->mPathMotionArc:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/KeyPosition;->mDrawPath:I

    .line 46
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentWidth:F

    .line 47
    iput v1, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentHeight:F

    .line 48
    iput v1, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentX:F

    .line 49
    iput v1, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentY:F

    .line 50
    iput v1, p0, Landroid/support/constraint/motion/KeyPosition;->mAltPercentX:F

    .line 51
    iput v1, p0, Landroid/support/constraint/motion/KeyPosition;->mAltPercentY:F

    .line 55
    iput v0, p0, Landroid/support/constraint/motion/KeyPosition;->mPositionType:I

    .line 57
    iput v1, p0, Landroid/support/constraint/motion/KeyPosition;->mCalculatedPositionX:F

    .line 58
    iput v1, p0, Landroid/support/constraint/motion/KeyPosition;->mCalculatedPositionY:F

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/constraint/motion/KeyPosition;->mType:I

    .line 63
    return-void
.end method

.method private calcCartesianPosition(FFFF)V
    .registers 13
    .param p1, "start_x"    # F
    .param p2, "start_y"    # F
    .param p3, "end_x"    # F
    .param p4, "end_y"    # F

    .line 112
    sub-float v0, p3, p1

    .line 113
    .local v0, "pathVectorX":F
    sub-float v1, p4, p2

    .line 114
    .local v1, "pathVectorY":F
    iget v2, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    goto :goto_11

    :cond_f
    iget v2, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentX:F

    .line 115
    .local v2, "dxdx":F
    :goto_11
    iget v4, p0, Landroid/support/constraint/motion/KeyPosition;->mAltPercentY:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x0

    goto :goto_1d

    :cond_1b
    iget v4, p0, Landroid/support/constraint/motion/KeyPosition;->mAltPercentY:F

    .line 116
    .local v4, "dydx":F
    :goto_1d
    iget v5, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v5, 0x0

    goto :goto_29

    :cond_27
    iget v5, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentY:F

    .line 117
    .local v5, "dydy":F
    :goto_29
    iget v6, p0, Landroid/support/constraint/motion/KeyPosition;->mAltPercentX:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_32

    goto :goto_34

    :cond_32
    iget v3, p0, Landroid/support/constraint/motion/KeyPosition;->mAltPercentX:F

    .line 118
    .local v3, "dxdy":F
    :goto_34
    mul-float v6, v0, v2

    add-float/2addr v6, p1

    mul-float v7, v1, v3

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Landroid/support/constraint/motion/KeyPosition;->mCalculatedPositionX:F

    .line 119
    mul-float v6, v0, v4

    add-float/2addr v6, p2

    mul-float v7, v1, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Landroid/support/constraint/motion/KeyPosition;->mCalculatedPositionY:F

    .line 120
    return-void
.end method

.method private calcPathPosition(FFFF)V
    .registers 13
    .param p1, "start_x"    # F
    .param p2, "start_y"    # F
    .param p3, "end_x"    # F
    .param p4, "end_y"    # F

    .line 102
    sub-float v0, p3, p1

    .line 103
    .local v0, "pathVectorX":F
    sub-float v1, p4, p2

    .line 104
    .local v1, "pathVectorY":F
    neg-float v2, v1

    .line 105
    .local v2, "perpendicularX":F
    move v3, v0

    .line 106
    .local v3, "perpendicularY":F
    iget v4, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentX:F

    mul-float v5, v0, v4

    add-float/2addr v5, p1

    iget v6, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentY:F

    mul-float v7, v2, v6

    add-float/2addr v5, v7

    iput v5, p0, Landroid/support/constraint/motion/KeyPosition;->mCalculatedPositionX:F

    .line 107
    mul-float v4, v4, v1

    add-float/2addr v4, p2

    mul-float v6, v6, v3

    add-float/2addr v4, v6

    iput v4, p0, Landroid/support/constraint/motion/KeyPosition;->mCalculatedPositionY:F

    .line 108
    return-void
.end method

.method private calcScreenPosition(II)V
    .registers 8
    .param p1, "layoutWidth"    # I
    .param p2, "layoutHeight"    # I

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "viewWidth":I
    const/4 v1, 0x0

    .line 96
    .local v1, "viewHeight":I
    sub-int v2, p1, v0

    int-to-float v2, v2

    iget v3, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentX:F

    mul-float v2, v2, v3

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    iput v2, p0, Landroid/support/constraint/motion/KeyPosition;->mCalculatedPositionX:F

    .line 97
    sub-int v2, p2, v1

    int-to-float v2, v2

    mul-float v2, v2, v3

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/constraint/motion/KeyPosition;->mCalculatedPositionY:F

    .line 98
    return-void
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/motion/SplineSet;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p1, "splines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/constraint/motion/SplineSet;>;"
    return-void
.end method

.method calcPosition(IIFFFF)V
    .registers 8
    .param p1, "layoutWidth"    # I
    .param p2, "layoutHeight"    # I
    .param p3, "start_x"    # F
    .param p4, "start_y"    # F
    .param p5, "end_x"    # F
    .param p6, "end_y"    # F

    .line 77
    iget v0, p0, Landroid/support/constraint/motion/KeyPosition;->mPositionType:I

    packed-switch v0, :pswitch_data_12

    .line 87
    invoke-direct {p0, p3, p4, p5, p6}, Landroid/support/constraint/motion/KeyPosition;->calcCartesianPosition(FFFF)V

    .line 88
    return-void

    .line 79
    :pswitch_9
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/motion/KeyPosition;->calcScreenPosition(II)V

    .line 80
    return-void

    .line 83
    :pswitch_d
    invoke-direct {p0, p3, p4, p5, p6}, Landroid/support/constraint/motion/KeyPosition;->calcPathPosition(FFFF)V

    .line 84
    return-void

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method

.method getPositionX()F
    .registers 2

    .line 124
    iget v0, p0, Landroid/support/constraint/motion/KeyPosition;->mCalculatedPositionX:F

    return v0
.end method

.method getPositionY()F
    .registers 2

    .line 129
    iget v0, p0, Landroid/support/constraint/motion/KeyPosition;->mCalculatedPositionY:F

    return v0
.end method

.method public intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z
    .registers 14
    .param p1, "layoutWidth"    # I
    .param p2, "layoutHeight"    # I
    .param p3, "start"    # Landroid/graphics/RectF;
    .param p4, "end"    # Landroid/graphics/RectF;
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 237
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/motion/KeyPosition;->calcPosition(IIFFFF)V

    .line 238
    iget v0, p0, Landroid/support/constraint/motion/KeyPosition;->mCalculatedPositionX:F

    sub-float v0, p5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_32

    iget v0, p0, Landroid/support/constraint/motion/KeyPosition;->mCalculatedPositionY:F

    sub-float v0, p6, v0

    .line 239
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_32

    .line 240
    const/4 v0, 0x1

    return v0

    .line 242
    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 67
    sget-object v0, Landroid/support/constraint/R$styleable;->KeyPosition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {p0, v0}, Landroid/support/constraint/motion/KeyPosition$Loader;->access$000(Landroid/support/constraint/motion/KeyPosition;Landroid/content/res/TypedArray;)V

    .line 69
    return-void
.end method

.method public positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Landroid/graphics/RectF;
    .param p3, "end"    # Landroid/graphics/RectF;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "attribute"    # [Ljava/lang/String;
    .param p7, "value"    # [F

    .line 137
    iget v0, p0, Landroid/support/constraint/motion/KeyPosition;->mPositionType:I

    packed-switch v0, :pswitch_data_20

    .line 147
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/motion/KeyPosition;->positionCartAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    .line 148
    return-void

    .line 143
    :pswitch_10
    invoke-virtual/range {p0 .. p7}, Landroid/support/constraint/motion/KeyPosition;->positionScreenAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    .line 144
    return-void

    .line 140
    :pswitch_14
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/motion/KeyPosition;->positionPathAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    .line 141
    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_14
        :pswitch_10
    .end packed-switch
.end method

.method positionCartAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .registers 17
    .param p1, "start"    # Landroid/graphics/RectF;
    .param p2, "end"    # Landroid/graphics/RectF;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "attribute"    # [Ljava/lang/String;
    .param p6, "value"    # [F

    .line 213
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 214
    .local v0, "startCenterX":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 215
    .local v1, "startCenterY":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 216
    .local v2, "endCenterX":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 217
    .local v3, "endCenterY":F
    sub-float v4, v2, v0

    .line 218
    .local v4, "pathVectorX":F
    sub-float v5, v3, v1

    .line 219
    .local v5, "pathVectorY":F
    const/4 v6, 0x0

    aget-object v7, p5, v6

    const-string v8, "percentX"

    const/4 v9, 0x1

    if-eqz v7, :cond_3a

    .line 220
    aget-object v7, p5, v6

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 221
    sub-float v7, p3, v0

    div-float/2addr v7, v4

    aput v7, p6, v6

    .line 222
    sub-float v6, p4, v1

    div-float/2addr v6, v5

    aput v6, p6, v9

    goto :goto_4a

    .line 224
    :cond_2f
    sub-float v7, p3, v0

    div-float/2addr v7, v4

    aput v7, p6, v9

    .line 225
    sub-float v7, p4, v1

    div-float/2addr v7, v5

    aput v7, p6, v6

    goto :goto_4a

    .line 228
    :cond_3a
    aput-object v8, p5, v6

    .line 229
    sub-float v7, p3, v0

    div-float/2addr v7, v4

    aput v7, p6, v6

    .line 230
    const-string v6, "percentY"

    aput-object v6, p5, v9

    .line 231
    sub-float v6, p4, v1

    div-float/2addr v6, v5

    aput v6, p6, v9

    .line 233
    :goto_4a
    return-void
.end method

.method positionPathAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .registers 22
    .param p1, "start"    # Landroid/graphics/RectF;
    .param p2, "end"    # Landroid/graphics/RectF;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "attribute"    # [Ljava/lang/String;
    .param p6, "value"    # [F

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 155
    .local v0, "startCenterX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 156
    .local v1, "startCenterY":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 157
    .local v2, "endCenterX":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 158
    .local v3, "endCenterY":F
    sub-float v4, v2, v0

    .line 159
    .local v4, "pathVectorX":F
    sub-float v5, v3, v1

    .line 160
    .local v5, "pathVectorY":F
    float-to-double v6, v4

    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 161
    .local v6, "distance":F
    float-to-double v7, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide v11, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v13, v7, v11

    if-gez v13, :cond_34

    .line 162
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "distance ~ 0"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    const/4 v7, 0x0

    aput v7, p6, v10

    .line 164
    aput v7, p6, v9

    .line 165
    return-void

    .line 168
    :cond_34
    div-float v7, v4, v6

    .line 169
    .local v7, "dx":F
    div-float v8, v5, v6

    .line 170
    .local v8, "dy":F
    sub-float v11, p4, v1

    mul-float v11, v11, v7

    sub-float v12, p3, v0

    mul-float v12, v12, v8

    sub-float/2addr v11, v12

    div-float/2addr v11, v6

    .line 171
    .local v11, "perpendicular":F
    sub-float v12, p3, v0

    mul-float v12, v12, v7

    sub-float v13, p4, v1

    mul-float v13, v13, v8

    add-float/2addr v12, v13

    div-float/2addr v12, v6

    .line 172
    .local v12, "dist":F
    aget-object v13, p5, v10

    const-string v14, "percentX"

    if-eqz v13, :cond_5f

    .line 173
    aget-object v13, p5, v10

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_69

    .line 174
    aput v12, p6, v10

    .line 175
    aput v11, p6, v9

    goto :goto_69

    .line 178
    :cond_5f
    aput-object v14, p5, v10

    .line 179
    const-string v13, "percentY"

    aput-object v13, p5, v9

    .line 180
    aput v12, p6, v10

    .line 181
    aput v11, p6, v9

    .line 183
    :cond_69
    :goto_69
    return-void
.end method

.method positionScreenAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .registers 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Landroid/graphics/RectF;
    .param p3, "end"    # Landroid/graphics/RectF;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "attribute"    # [Ljava/lang/String;
    .param p7, "value"    # [F

    .line 186
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 187
    .local v0, "startCenterX":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 188
    .local v1, "startCenterY":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 189
    .local v2, "endCenterX":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 190
    .local v3, "endCenterY":F
    sub-float v4, v2, v0

    .line 191
    .local v4, "pathVectorX":F
    sub-float v5, v3, v1

    .line 192
    .local v5, "pathVectorY":F
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 193
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    .line 194
    .local v7, "width":I
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    .line 196
    .local v8, "height":I
    const/4 v9, 0x0

    aget-object v10, p6, v9

    const-string v11, "percentX"

    const/4 v12, 0x1

    if-eqz v10, :cond_48

    .line 197
    aget-object v10, p6, v9

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 198
    int-to-float v10, v7

    div-float v10, p4, v10

    aput v10, p7, v9

    .line 199
    int-to-float v9, v8

    div-float v9, p5, v9

    aput v9, p7, v12

    goto :goto_58

    .line 201
    :cond_3d
    int-to-float v10, v7

    div-float v10, p4, v10

    aput v10, p7, v12

    .line 202
    int-to-float v10, v8

    div-float v10, p5, v10

    aput v10, p7, v9

    goto :goto_58

    .line 205
    :cond_48
    aput-object v11, p6, v9

    .line 206
    int-to-float v10, v7

    div-float v10, p4, v10

    aput v10, p7, v9

    .line 207
    const-string v9, "percentY"

    aput-object v9, p6, v12

    .line 208
    int-to-float v9, v8

    div-float v9, p5, v9

    aput v9, p7, v12

    .line 210
    :goto_58
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 346
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_88

    :cond_7
    goto :goto_4e

    :sswitch_8
    const-string v0, "percentY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_4f

    :sswitch_12
    const-string v0, "percentX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_4f

    :sswitch_1c
    const-string v0, "sizePercent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_4f

    :sswitch_26
    const-string v0, "drawPath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4f

    :sswitch_30
    const-string v0, "percentHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_4f

    :sswitch_3a
    const-string v0, "percentWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_4f

    :sswitch_44
    const-string v0, "transitionEasing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_4f

    :goto_4e
    const/4 v0, -0x1

    :goto_4f
    packed-switch v0, :pswitch_data_a6

    goto :goto_86

    .line 366
    :pswitch_53
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentY:F

    goto :goto_86

    .line 363
    :pswitch_5a
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentX:F

    .line 364
    goto :goto_86

    .line 360
    :pswitch_61
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentWidth:F

    iput v0, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentHeight:F

    .line 361
    goto :goto_86

    .line 357
    :pswitch_6a
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentHeight:F

    .line 358
    goto :goto_86

    .line 354
    :pswitch_71
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyPosition;->mPercentWidth:F

    .line 355
    goto :goto_86

    .line 351
    :pswitch_78
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyPosition;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyPosition;->mDrawPath:I

    .line 352
    goto :goto_86

    .line 348
    :pswitch_7f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 349
    nop

    .line 370
    :goto_86
    return-void

    nop

    :sswitch_data_88
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_44
        -0x4330437f -> :sswitch_3a
        -0x3ca72634 -> :sswitch_30
        -0x314b3c77 -> :sswitch_26
        -0xbefb6fc -> :sswitch_1c
        0x198424b3 -> :sswitch_12
        0x198424b4 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_78
        :pswitch_71
        :pswitch_6a
        :pswitch_61
        :pswitch_5a
        :pswitch_53
    .end packed-switch
.end method
