.class public abstract Landroid/support/constraint/motion/KeyCycleOscillator;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;,
        Landroid/support/constraint/motion/KeyCycleOscillator$IntFloatFloatSort;,
        Landroid/support/constraint/motion/KeyCycleOscillator$IntDoubleSort;,
        Landroid/support/constraint/motion/KeyCycleOscillator$ProgressSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$CustomSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$TranslationZset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$TranslationYset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$TranslationXset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$ScaleYset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$ScaleXset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$PathRotateSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$RotationYset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$RotationXset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$RotationSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$ElevationSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyCycleOscillator"


# instance fields
.field private mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

.field protected mCustom:Landroid/support/constraint/ConstraintAttribute;

.field private mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

.field private mType:Ljava/lang/String;

.field public mVariesBy:I

.field mWavePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWaveShape:I

    .line 47
    iput v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mVariesBy:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    return-void
.end method

.method static makeSpline(Ljava/lang/String;)Landroid/support/constraint/motion/KeyCycleOscillator;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 97
    const-string v0, "CUSTOM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 98
    new-instance v0, Landroid/support/constraint/motion/KeyCycleOscillator$CustomSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCycleOscillator$CustomSet;-><init>()V

    return-object v0

    .line 100
    :cond_e
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_106

    :cond_16
    goto/16 :goto_ad

    :sswitch_18
    const-string v1, "waveOffset"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v0, 0x8

    goto/16 :goto_ad

    :sswitch_24
    const-string v1, "alpha"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x0

    goto/16 :goto_ad

    :sswitch_2f
    const-string v1, "transitionPathRotate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x5

    goto/16 :goto_ad

    :sswitch_3a
    const-string v1, "elevation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    goto/16 :goto_ad

    :sswitch_45
    const-string v1, "rotation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x2

    goto :goto_ad

    :sswitch_4f
    const-string v1, "waveVariesBy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v0, 0x9

    goto :goto_ad

    :sswitch_5a
    const-string v1, "scaleY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x7

    goto :goto_ad

    :sswitch_64
    const-string v1, "scaleX"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x6

    goto :goto_ad

    :sswitch_6e
    const-string v1, "progress"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v0, 0xd

    goto :goto_ad

    :sswitch_79
    const-string v1, "translationZ"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v0, 0xc

    goto :goto_ad

    :sswitch_84
    const-string v1, "translationY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v0, 0xb

    goto :goto_ad

    :sswitch_8f
    const-string v1, "translationX"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v0, 0xa

    goto :goto_ad

    :sswitch_9a
    const-string v1, "rotationY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x4

    goto :goto_ad

    :sswitch_a4
    const-string v1, "rotationX"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x3

    :goto_ad
    packed-switch v0, :pswitch_data_140

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 128
    :pswitch_b2
    new-instance v0, Landroid/support/constraint/motion/KeyCycleOscillator$ProgressSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCycleOscillator$ProgressSet;-><init>()V

    return-object v0

    .line 126
    :pswitch_b8
    new-instance v0, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationZset;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationZset;-><init>()V

    return-object v0

    .line 124
    :pswitch_be
    new-instance v0, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationYset;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationYset;-><init>()V

    return-object v0

    .line 122
    :pswitch_c4
    new-instance v0, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationXset;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationXset;-><init>()V

    return-object v0

    .line 120
    :pswitch_ca
    new-instance v0, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;-><init>()V

    return-object v0

    .line 118
    :pswitch_d0
    new-instance v0, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;-><init>()V

    return-object v0

    .line 116
    :pswitch_d6
    new-instance v0, Landroid/support/constraint/motion/KeyCycleOscillator$ScaleYset;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCycleOscillator$ScaleYset;-><init>()V

    return-object v0

    .line 114
    :pswitch_dc
    new-instance v0, Landroid/support/constraint/motion/KeyCycleOscillator$ScaleXset;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCycleOscillator$ScaleXset;-><init>()V

    return-object v0

    .line 112
    :pswitch_e2
    new-instance v0, Landroid/support/constraint/motion/KeyCycleOscillator$PathRotateSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCycleOscillator$PathRotateSet;-><init>()V

    return-object v0

    .line 110
    :pswitch_e8
    new-instance v0, Landroid/support/constraint/motion/KeyCycleOscillator$RotationYset;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCycleOscillator$RotationYset;-><init>()V

    return-object v0

    .line 108
    :pswitch_ee
    new-instance v0, Landroid/support/constraint/motion/KeyCycleOscillator$RotationXset;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCycleOscillator$RotationXset;-><init>()V

    return-object v0

    .line 106
    :pswitch_f4
    new-instance v0, Landroid/support/constraint/motion/KeyCycleOscillator$RotationSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCycleOscillator$RotationSet;-><init>()V

    return-object v0

    .line 104
    :pswitch_fa
    new-instance v0, Landroid/support/constraint/motion/KeyCycleOscillator$ElevationSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCycleOscillator$ElevationSet;-><init>()V

    return-object v0

    .line 102
    :pswitch_100
    new-instance v0, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;-><init>()V

    return-object v0

    :sswitch_data_106
    .sparse-switch
        -0x4a771f66 -> :sswitch_a4
        -0x4a771f65 -> :sswitch_9a
        -0x490b9c39 -> :sswitch_8f
        -0x490b9c38 -> :sswitch_84
        -0x490b9c37 -> :sswitch_79
        -0x3bab3dd3 -> :sswitch_6e
        -0x3621dfb2 -> :sswitch_64
        -0x3621dfb1 -> :sswitch_5a
        -0x2f893320 -> :sswitch_4f
        -0x266f082 -> :sswitch_45
        -0x42d1a3 -> :sswitch_3a
        0x2382115 -> :sswitch_2f
        0x589b15e -> :sswitch_24
        0x94e04ec -> :sswitch_18
    .end sparse-switch

    :pswitch_data_140
    .packed-switch 0x0
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
        :pswitch_b8
        :pswitch_b2
    .end packed-switch
.end method


# virtual methods
.method public get(F)F
    .registers 4
    .param p1, "t"    # F

    .line 85
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;->getValues(F)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getCurveFit()Landroid/support/constraint/motion/utils/CurveFit;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    return-object v0
.end method

.method public getSlope(F)F
    .registers 4
    .param p1, "position"    # F

    .line 89
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;->getSlope(F)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public setPoint(IIIFFF)V
    .registers 9
    .param p1, "framePosition"    # I
    .param p2, "shape"    # I
    .param p3, "variesBy"    # I
    .param p4, "period"    # F
    .param p5, "offset"    # F
    .param p6, "value"    # F

    .line 164
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;

    invoke-direct {v1, p1, p4, p5, p6}, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;-><init>(IFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v0, -0x1

    if-eq p3, v0, :cond_f

    .line 166
    iput p3, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mVariesBy:I

    .line 168
    :cond_f
    iput p2, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWaveShape:I

    .line 169
    return-void
.end method

.method public setPoint(IIIFFFLandroid/support/constraint/ConstraintAttribute;)V
    .registers 10
    .param p1, "framePosition"    # I
    .param p2, "shape"    # I
    .param p3, "variesBy"    # I
    .param p4, "period"    # F
    .param p5, "offset"    # F
    .param p6, "value"    # F
    .param p7, "custom"    # Landroid/support/constraint/ConstraintAttribute;

    .line 146
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;

    invoke-direct {v1, p1, p4, p5, p6}, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;-><init>(IFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const/4 v0, -0x1

    if-eq p3, v0, :cond_f

    .line 148
    iput p3, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mVariesBy:I

    .line 150
    :cond_f
    iput p2, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWaveShape:I

    .line 151
    iput-object p7, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCustom:Landroid/support/constraint/ConstraintAttribute;

    .line 152
    return-void
.end method

.method public abstract setProperty(Landroid/view/View;F)V
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mType:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setup(F)V
    .registers 16
    .param p1, "pathLength"    # F

    .line 173
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 174
    .local v0, "count":I
    if-nez v0, :cond_9

    .line 175
    return-void

    .line 177
    :cond_9
    iget-object v1, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/constraint/motion/KeyCycleOscillator$1;

    invoke-direct {v2, p0}, Landroid/support/constraint/motion/KeyCycleOscillator$1;-><init>(Landroid/support/constraint/motion/KeyCycleOscillator;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    new-array v1, v0, [D

    .line 184
    .local v1, "time":[D
    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v0, v3, v2

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 185
    .local v3, "values":[[D
    new-instance v5, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    iget v6, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWaveShape:I

    iget v7, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mVariesBy:I

    invoke-direct {v5, v6, v7, v0}, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;-><init>(III)V

    iput-object v5, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    .line 186
    const/4 v5, 0x0

    .line 187
    .local v5, "i":I
    iget-object v6, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_38
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_71

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;

    .line 188
    .local v13, "wp":Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;
    iget v7, v13, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mPeriod:F

    float-to-double v7, v7

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    mul-double v7, v7, v9

    aput-wide v7, v1, v5

    .line 189
    aget-object v7, v3, v5

    iget v8, v13, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v8, v8

    aput-wide v8, v7, v2

    .line 190
    aget-object v7, v3, v5

    iget v8, v13, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mOffset:F

    float-to-double v8, v8

    aput-wide v8, v7, v4

    .line 191
    iget-object v7, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    iget v9, v13, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mPosition:I

    iget v10, v13, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mPeriod:F

    iget v11, v13, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mOffset:F

    iget v12, v13, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mValue:F

    move v8, v5

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;->setPoint(IIFFF)V

    .line 192
    nop

    .end local v13    # "wp":Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;
    add-int/lit8 v5, v5, 0x1

    .line 193
    goto :goto_38

    .line 194
    :cond_71
    iget-object v4, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v4, p1}, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;->setup(F)V

    .line 195
    invoke-static {v2, v1, v3}, Landroid/support/constraint/motion/utils/CurveFit;->get(I[D[[D)Landroid/support/constraint/motion/utils/CurveFit;

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    .line 196
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 70
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mType:Ljava/lang/String;

    .line 71
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "df":Ljava/text/DecimalFormat;
    iget-object v2, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;

    .line 73
    .local v3, "wp":Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v5, v5

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .end local v3    # "wp":Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;
    goto :goto_f

    .line 75
    :cond_4c
    return-object v0
.end method

.method public variesByPath()Z
    .registers 3

    .line 51
    iget v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mVariesBy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method
