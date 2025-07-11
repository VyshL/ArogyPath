.class public abstract Landroid/support/constraint/motion/SplineSet;
.super Ljava/lang/Object;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/SplineSet$Sort;,
        Landroid/support/constraint/motion/SplineSet$ProgressSet;,
        Landroid/support/constraint/motion/SplineSet$CustomSet;,
        Landroid/support/constraint/motion/SplineSet$TranslationZset;,
        Landroid/support/constraint/motion/SplineSet$TranslationYset;,
        Landroid/support/constraint/motion/SplineSet$TranslationXset;,
        Landroid/support/constraint/motion/SplineSet$ScaleYset;,
        Landroid/support/constraint/motion/SplineSet$ScaleXset;,
        Landroid/support/constraint/motion/SplineSet$PathRotate;,
        Landroid/support/constraint/motion/SplineSet$PivotYset;,
        Landroid/support/constraint/motion/SplineSet$PivotXset;,
        Landroid/support/constraint/motion/SplineSet$RotationYset;,
        Landroid/support/constraint/motion/SplineSet$RotationXset;,
        Landroid/support/constraint/motion/SplineSet$RotationSet;,
        Landroid/support/constraint/motion/SplineSet$AlphaSet;,
        Landroid/support/constraint/motion/SplineSet$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplineSet"


# instance fields
.field private count:I

.field protected mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field private mType:Ljava/lang/String;

.field protected mValues:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0xa

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    .line 41
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mValues:[F

    return-void
.end method

.method static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroid/support/constraint/motion/SplineSet;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;)",
            "Landroid/support/constraint/motion/SplineSet;"
        }
    .end annotation

    .line 75
    .local p1, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/constraint/ConstraintAttribute;>;"
    new-instance v0, Landroid/support/constraint/motion/SplineSet$CustomSet;

    invoke-direct {v0, p0, p1}, Landroid/support/constraint/motion/SplineSet$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static makeSpline(Ljava/lang/String;)Landroid/support/constraint/motion/SplineSet;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_11e

    :cond_7
    goto/16 :goto_b8

    :sswitch_9
    const-string v0, "waveOffset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto/16 :goto_b9

    :sswitch_15
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_b9

    :sswitch_20
    const-string v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_b9

    :sswitch_2b
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_b9

    :sswitch_36
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto/16 :goto_b9

    :sswitch_41
    const-string v0, "transformPivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto/16 :goto_b9

    :sswitch_4c
    const-string v0, "transformPivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto/16 :goto_b9

    :sswitch_57
    const-string v0, "waveVariesBy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_b9

    :sswitch_62
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_b9

    :sswitch_6d
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_b9

    :sswitch_78
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto :goto_b9

    :sswitch_83
    const-string v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto :goto_b9

    :sswitch_8e
    const-string v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_b9

    :sswitch_99
    const-string v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto :goto_b9

    :sswitch_a4
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_b9

    :sswitch_ae
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_b9

    :goto_b8
    const/4 v0, -0x1

    :goto_b9
    packed-switch v0, :pswitch_data_160

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 111
    :pswitch_be
    new-instance v0, Landroid/support/constraint/motion/SplineSet$ProgressSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/SplineSet$ProgressSet;-><init>()V

    return-object v0

    .line 109
    :pswitch_c4
    new-instance v0, Landroid/support/constraint/motion/SplineSet$TranslationZset;

    invoke-direct {v0}, Landroid/support/constraint/motion/SplineSet$TranslationZset;-><init>()V

    return-object v0

    .line 107
    :pswitch_ca
    new-instance v0, Landroid/support/constraint/motion/SplineSet$TranslationYset;

    invoke-direct {v0}, Landroid/support/constraint/motion/SplineSet$TranslationYset;-><init>()V

    return-object v0

    .line 105
    :pswitch_d0
    new-instance v0, Landroid/support/constraint/motion/SplineSet$TranslationXset;

    invoke-direct {v0}, Landroid/support/constraint/motion/SplineSet$TranslationXset;-><init>()V

    return-object v0

    .line 103
    :pswitch_d6
    new-instance v0, Landroid/support/constraint/motion/SplineSet$AlphaSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/SplineSet$AlphaSet;-><init>()V

    return-object v0

    .line 101
    :pswitch_dc
    new-instance v0, Landroid/support/constraint/motion/SplineSet$AlphaSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/SplineSet$AlphaSet;-><init>()V

    return-object v0

    .line 99
    :pswitch_e2
    new-instance v0, Landroid/support/constraint/motion/SplineSet$ScaleYset;

    invoke-direct {v0}, Landroid/support/constraint/motion/SplineSet$ScaleYset;-><init>()V

    return-object v0

    .line 97
    :pswitch_e8
    new-instance v0, Landroid/support/constraint/motion/SplineSet$ScaleXset;

    invoke-direct {v0}, Landroid/support/constraint/motion/SplineSet$ScaleXset;-><init>()V

    return-object v0

    .line 95
    :pswitch_ee
    new-instance v0, Landroid/support/constraint/motion/SplineSet$PathRotate;

    invoke-direct {v0}, Landroid/support/constraint/motion/SplineSet$PathRotate;-><init>()V

    return-object v0

    .line 93
    :pswitch_f4
    new-instance v0, Landroid/support/constraint/motion/SplineSet$PivotYset;

    invoke-direct {v0}, Landroid/support/constraint/motion/SplineSet$PivotYset;-><init>()V

    return-object v0

    .line 91
    :pswitch_fa
    new-instance v0, Landroid/support/constraint/motion/SplineSet$PivotXset;

    invoke-direct {v0}, Landroid/support/constraint/motion/SplineSet$PivotXset;-><init>()V

    return-object v0

    .line 89
    :pswitch_100
    new-instance v0, Landroid/support/constraint/motion/SplineSet$RotationYset;

    invoke-direct {v0}, Landroid/support/constraint/motion/SplineSet$RotationYset;-><init>()V

    return-object v0

    .line 87
    :pswitch_106
    new-instance v0, Landroid/support/constraint/motion/SplineSet$RotationXset;

    invoke-direct {v0}, Landroid/support/constraint/motion/SplineSet$RotationXset;-><init>()V

    return-object v0

    .line 85
    :pswitch_10c
    new-instance v0, Landroid/support/constraint/motion/SplineSet$RotationSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/SplineSet$RotationSet;-><init>()V

    return-object v0

    .line 83
    :pswitch_112
    new-instance v0, Landroid/support/constraint/motion/SplineSet$ElevationSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/SplineSet$ElevationSet;-><init>()V

    return-object v0

    .line 81
    :pswitch_118
    new-instance v0, Landroid/support/constraint/motion/SplineSet$AlphaSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/SplineSet$AlphaSet;-><init>()V

    return-object v0

    :sswitch_data_11e
    .sparse-switch
        -0x4a771f66 -> :sswitch_ae
        -0x4a771f65 -> :sswitch_a4
        -0x490b9c39 -> :sswitch_99
        -0x490b9c38 -> :sswitch_8e
        -0x490b9c37 -> :sswitch_83
        -0x3bab3dd3 -> :sswitch_78
        -0x3621dfb2 -> :sswitch_6d
        -0x3621dfb1 -> :sswitch_62
        -0x2f893320 -> :sswitch_57
        -0x2d5a2d1e -> :sswitch_4c
        -0x2d5a2d1d -> :sswitch_41
        -0x266f082 -> :sswitch_36
        -0x42d1a3 -> :sswitch_2b
        0x2382115 -> :sswitch_20
        0x589b15e -> :sswitch_15
        0x94e04ec -> :sswitch_9
    .end sparse-switch

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_118
        :pswitch_112
        :pswitch_10c
        :pswitch_106
        :pswitch_100
        :pswitch_fa
        :pswitch_f4
        :pswitch_ee
        :pswitch_e8
        :pswitch_e2
        :pswitch_dc
        :pswitch_d6
        :pswitch_d0
        :pswitch_ca
        :pswitch_c4
        :pswitch_be
    .end packed-switch
.end method


# virtual methods
.method public get(F)F
    .registers 6
    .param p1, "t"    # F

    .line 63
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    float-to-double v1, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/constraint/motion/utils/CurveFit;->getPos(DI)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getCurveFit()Landroid/support/constraint/motion/utils/CurveFit;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    return-object v0
.end method

.method public getSlope(F)F
    .registers 6
    .param p1, "t"    # F

    .line 67
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    float-to-double v1, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/constraint/motion/utils/CurveFit;->getSlope(DI)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public setPoint(IF)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "value"    # F

    .line 120
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    array-length v1, v0

    iget v2, p0, Landroid/support/constraint/motion/SplineSet;->count:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1d

    .line 121
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    .line 122
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mValues:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mValues:[F

    .line 124
    :cond_1d
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    iget v1, p0, Landroid/support/constraint/motion/SplineSet;->count:I

    aput p1, v0, v1

    .line 125
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mValues:[F

    aput p2, v0, v1

    .line 126
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/motion/SplineSet;->count:I

    .line 127
    return-void
.end method

.method public abstract setProperty(Landroid/view/View;F)V
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Landroid/support/constraint/motion/SplineSet;->mType:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setup(I)V
    .registers 12
    .param p1, "curveType"    # I

    .line 130
    iget v0, p0, Landroid/support/constraint/motion/SplineSet;->count:I

    if-nez v0, :cond_5

    .line 131
    return-void

    .line 134
    :cond_5
    iget-object v1, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    iget-object v2, p0, Landroid/support/constraint/motion/SplineSet;->mValues:[F

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0}, Landroid/support/constraint/motion/SplineSet$Sort;->doubleQuickSort([I[FII)V

    .line 136
    const/4 v0, 0x1

    .line 138
    .local v0, "unique":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_11
    iget v2, p0, Landroid/support/constraint/motion/SplineSet;->count:I

    if-ge v1, v2, :cond_24

    .line 139
    iget-object v2, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    add-int/lit8 v5, v1, -0x1

    aget v5, v2, v5

    aget v2, v2, v1

    if-eq v5, v2, :cond_21

    .line 140
    add-int/lit8 v0, v0, 0x1

    .line 138
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 144
    .end local v1    # "i":I
    :cond_24
    new-array v1, v0, [D

    .line 145
    .local v1, "time":[D
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v3

    aput v0, v2, v4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 146
    .local v2, "values":[[D
    const/4 v3, 0x0

    .line 147
    .local v3, "k":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_37
    iget v6, p0, Landroid/support/constraint/motion/SplineSet;->count:I

    if-ge v5, v6, :cond_64

    .line 148
    if-lez v5, :cond_48

    iget-object v6, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    aget v7, v6, v5

    add-int/lit8 v8, v5, -0x1

    aget v6, v6, v8

    if-ne v7, v6, :cond_48

    .line 149
    goto :goto_61

    .line 152
    :cond_48
    iget-object v6, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    aget v6, v6, v5

    int-to-double v6, v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double v6, v6, v8

    aput-wide v6, v1, v3

    .line 153
    aget-object v6, v2, v3

    iget-object v7, p0, Landroid/support/constraint/motion/SplineSet;->mValues:[F

    aget v7, v7, v5

    float-to-double v7, v7

    aput-wide v7, v6, v4

    .line 154
    add-int/lit8 v3, v3, 0x1

    .line 147
    :goto_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 156
    .end local v5    # "i":I
    :cond_64
    invoke-static {p1, v1, v2}, Landroid/support/constraint/motion/utils/CurveFit;->get(I[D[[D)Landroid/support/constraint/motion/utils/CurveFit;

    move-result-object v4

    iput-object v4, p0, Landroid/support/constraint/motion/SplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 47
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mType:Ljava/lang/String;

    .line 48
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "df":Ljava/text/DecimalFormat;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget v3, p0, Landroid/support/constraint/motion/SplineSet;->count:I

    if-ge v2, v3, :cond_45

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/constraint/motion/SplineSet;->mValues:[F

    aget v4, v4, v2

    float-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 53
    .end local v2    # "i":I
    :cond_45
    return-object v0
.end method
