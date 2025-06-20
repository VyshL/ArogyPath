.class public Landroid/support/constraint/motion/KeyTimeCycle;
.super Landroid/support/constraint/motion/Key;
.source "KeyTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/KeyTimeCycle$Loader;
    }
.end annotation


# static fields
.field public static final KEY_TYPE:I = 0x3

.field static final NAME:Ljava/lang/String; = "KeyTimeCycle"

.field private static final TAG:Ljava/lang/String; = "KeyTimeCycle"


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mElevation:F

.field private mProgress:F

.field private mRotation:F

.field private mRotationX:F

.field private mRotationY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransitionEasing:Ljava/lang/String;

.field private mTransitionPathRotate:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private mTranslationZ:F

.field private mWaveOffset:F

.field private mWavePeriod:F

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Landroid/support/constraint/motion/Key;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    .line 43
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    .line 44
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    .line 45
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    .line 46
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    .line 47
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    .line 48
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    .line 49
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    .line 50
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    .line 51
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    .line 52
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    .line 53
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    .line 54
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    .line 56
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mType:I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    .line 63
    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    return v0
.end method

.method static synthetic access$002(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    return p1
.end method

.method static synthetic access$100(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    return v0
.end method

.method static synthetic access$1002(Landroid/support/constraint/motion/KeyTimeCycle;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    return p1
.end method

.method static synthetic access$1100(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    return v0
.end method

.method static synthetic access$1102(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    return p1
.end method

.method static synthetic access$1200(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    return v0
.end method

.method static synthetic access$1202(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    return p1
.end method

.method static synthetic access$1300(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    return v0
.end method

.method static synthetic access$1302(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    return p1
.end method

.method static synthetic access$1400(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    return v0
.end method

.method static synthetic access$1402(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    return p1
.end method

.method static synthetic access$1500(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    return v0
.end method

.method static synthetic access$1502(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    return p1
.end method

.method static synthetic access$1600(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    return v0
.end method

.method static synthetic access$1602(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    return p1
.end method

.method static synthetic access$200(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    return v0
.end method

.method static synthetic access$202(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    return p1
.end method

.method static synthetic access$300(Landroid/support/constraint/motion/KeyTimeCycle;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    return v0
.end method

.method static synthetic access$302(Landroid/support/constraint/motion/KeyTimeCycle;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # I

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    return p1
.end method

.method static synthetic access$400(Landroid/support/constraint/motion/KeyTimeCycle;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    return v0
.end method

.method static synthetic access$402(Landroid/support/constraint/motion/KeyTimeCycle;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # I

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    return p1
.end method

.method static synthetic access$500(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    return v0
.end method

.method static synthetic access$502(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    return p1
.end method

.method static synthetic access$600(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    return v0
.end method

.method static synthetic access$602(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    return p1
.end method

.method static synthetic access$700(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    return v0
.end method

.method static synthetic access$702(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    return p1
.end method

.method static synthetic access$800(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    return v0
.end method

.method static synthetic access$802(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    return p1
.end method

.method static synthetic access$900(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    return v0
.end method

.method static synthetic access$902(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    return p1
.end method


# virtual methods
.method public addTimeValues(Ljava/util/HashMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/motion/TimeCycleSplineSet;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p1, "splines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/constraint/motion/TimeCycleSplineSet;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/TimeCycleSplineSet;

    .line 178
    .local v2, "splineSet":Landroid/support/constraint/motion/TimeCycleSplineSet;
    const-string v3, "CUSTOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_46

    .line 179
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "ckey":Ljava/lang/String;
    iget-object v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintAttribute;

    .line 181
    .local v4, "cvalue":Landroid/support/constraint/ConstraintAttribute;
    if-eqz v4, :cond_8

    .line 182
    move-object v5, v2

    check-cast v5, Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v9, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v10, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    move-object v7, v4

    invoke-virtual/range {v5 .. v10}, Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;->setPoint(ILandroid/support/constraint/ConstraintAttribute;FIF)V

    goto :goto_8

    .line 186
    .end local v3    # "ckey":Ljava/lang/String;
    .end local v4    # "cvalue":Landroid/support/constraint/ConstraintAttribute;
    :cond_46
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_20e

    :cond_4e
    goto/16 :goto_cd

    :sswitch_50
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const/4 v5, 0x0

    goto/16 :goto_ce

    :sswitch_5b
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const/4 v5, 0x5

    goto/16 :goto_ce

    :sswitch_66
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    goto :goto_ce

    :sswitch_6f
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const/4 v5, 0x2

    goto :goto_ce

    :sswitch_79
    const-string v4, "scaleY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const/4 v5, 0x7

    goto :goto_ce

    :sswitch_83
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const/4 v5, 0x6

    goto :goto_ce

    :sswitch_8d
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const/16 v5, 0xb

    goto :goto_ce

    :sswitch_98
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const/16 v5, 0xa

    goto :goto_ce

    :sswitch_a3
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const/16 v5, 0x9

    goto :goto_ce

    :sswitch_ae
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const/16 v5, 0x8

    goto :goto_ce

    :sswitch_b9
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const/4 v5, 0x4

    goto :goto_ce

    :sswitch_c3
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const/4 v5, 0x3

    goto :goto_ce

    :goto_cd
    const/4 v5, -0x1

    :goto_ce
    packed-switch v5, :pswitch_data_240

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNKNOWN addValues \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyTimeCycles"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20b

    .line 243
    :pswitch_f1
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20b

    .line 244
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_20b

    .line 238
    :pswitch_109
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20b

    .line 239
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_20b

    .line 233
    :pswitch_121
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20b

    .line 234
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_20b

    .line 228
    :pswitch_139
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20b

    .line 229
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_20b

    .line 223
    :pswitch_151
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20b

    .line 224
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_20b

    .line 218
    :pswitch_169
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20b

    .line 219
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_20b

    .line 213
    :pswitch_181
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20b

    .line 214
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_20b

    .line 208
    :pswitch_199
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20b

    .line 209
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto :goto_20b

    .line 203
    :pswitch_1b0
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20b

    .line 204
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto :goto_20b

    .line 198
    :pswitch_1c7
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20b

    .line 199
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto :goto_20b

    .line 193
    :pswitch_1de
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20b

    .line 194
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto :goto_20b

    .line 188
    :pswitch_1f5
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20b

    .line 189
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    .line 250
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "splineSet":Landroid/support/constraint/motion/TimeCycleSplineSet;
    :cond_20b
    :goto_20b
    goto/16 :goto_8

    .line 251
    :cond_20d
    return-void

    :sswitch_data_20e
    .sparse-switch
        -0x4a771f66 -> :sswitch_c3
        -0x4a771f65 -> :sswitch_b9
        -0x490b9c39 -> :sswitch_ae
        -0x490b9c38 -> :sswitch_a3
        -0x490b9c37 -> :sswitch_98
        -0x3bab3dd3 -> :sswitch_8d
        -0x3621dfb2 -> :sswitch_83
        -0x3621dfb1 -> :sswitch_79
        -0x266f082 -> :sswitch_6f
        -0x42d1a3 -> :sswitch_66
        0x2382115 -> :sswitch_5b
        0x589b15e -> :sswitch_50
    .end sparse-switch

    :pswitch_data_240
    .packed-switch 0x0
        :pswitch_1f5
        :pswitch_1de
        :pswitch_1c7
        :pswitch_1b0
        :pswitch_199
        :pswitch_181
        :pswitch_169
        :pswitch_151
        :pswitch_139
        :pswitch_121
        :pswitch_109
        :pswitch_f1
    .end packed-switch
.end method

.method public addValues(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/motion/SplineSet;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p1, "splines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/constraint/motion/SplineSet;>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " KeyTimeCycles do not support SplineSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p1, "attributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    .line 79
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_d
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 82
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_1a
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    .line 85
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_27
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_34

    .line 88
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_34
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_41

    .line 91
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_41
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 94
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_4e
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 97
    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_5b
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_68

    .line 100
    const-string v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_68
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_75

    .line 103
    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_75
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_82

    .line 106
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_82
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 109
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_8f
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 112
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_9c
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_d1

    .line 115
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ae
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_ae

    .line 119
    :cond_d1
    return-void
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 67
    sget-object v0, Landroid/support/constraint/R$styleable;->KeyTimeCycle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {p0, v0}, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->read(Landroid/support/constraint/motion/KeyTimeCycle;Landroid/content/res/TypedArray;)V

    .line 69
    return-void
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p1, "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 123
    return-void

    .line 125
    :cond_6
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_19

    .line 126
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_19
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 129
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "elevation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_2c
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 132
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_3f
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_52

    .line 135
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_52
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_65

    .line 138
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_65
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_78

    .line 141
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_78
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 144
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_8b
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9e

    .line 147
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationZ"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_9e
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 150
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transitionPathRotate"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_b1
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 153
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_c4
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d7

    .line 156
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_d7
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_ea

    .line 159
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_ea
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_125

    .line 162
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_fc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_125

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_fc

    .line 166
    :cond_125
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_108

    :cond_7
    goto/16 :goto_9f

    :sswitch_9
    const-string v0, "mTranslationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto/16 :goto_a0

    :sswitch_15
    const-string v0, "curveFit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_a0

    :sswitch_20
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_a0

    :sswitch_2b
    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto/16 :goto_a0

    :sswitch_37
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_a0

    :sswitch_41
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_a0

    :sswitch_4b
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_a0

    :sswitch_56
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_a0

    :sswitch_60
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_a0

    :sswitch_6a
    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto :goto_a0

    :sswitch_75
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_a0

    :sswitch_80
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_a0

    :sswitch_8a
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_a0

    :sswitch_94
    const-string v0, "transitionEasing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_a0

    :goto_9f
    const/4 v0, -0x1

    :goto_a0
    packed-switch v0, :pswitch_data_142

    goto :goto_106

    .line 296
    :pswitch_a4
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    goto :goto_106

    .line 293
    :pswitch_ab
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    .line 294
    goto :goto_106

    .line 290
    :pswitch_b2
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    .line 291
    goto :goto_106

    .line 287
    :pswitch_b9
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    .line 288
    goto :goto_106

    .line 284
    :pswitch_c0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    .line 285
    goto :goto_106

    .line 281
    :pswitch_c7
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    .line 282
    goto :goto_106

    .line 278
    :pswitch_ce
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    .line 279
    goto :goto_106

    .line 275
    :pswitch_d5
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    .line 276
    goto :goto_106

    .line 272
    :pswitch_dc
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    .line 273
    goto :goto_106

    .line 269
    :pswitch_e3
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    .line 270
    goto :goto_106

    .line 266
    :pswitch_ea
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    .line 267
    goto :goto_106

    .line 263
    :pswitch_f1
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    .line 264
    goto :goto_106

    .line 260
    :pswitch_f8
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    .line 261
    goto :goto_106

    .line 257
    :pswitch_ff
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    .line 258
    nop

    .line 299
    :goto_106
    return-void

    nop

    :sswitch_data_108
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_94
        -0x4a771f66 -> :sswitch_8a
        -0x4a771f65 -> :sswitch_80
        -0x490b9c39 -> :sswitch_75
        -0x490b9c38 -> :sswitch_6a
        -0x3bab3dd3 -> :sswitch_60
        -0x3621dfb2 -> :sswitch_56
        -0x3621dfb1 -> :sswitch_4b
        -0x266f082 -> :sswitch_41
        -0x42d1a3 -> :sswitch_37
        0x2382115 -> :sswitch_2b
        0x589b15e -> :sswitch_20
        0x2283b8a2 -> :sswitch_15
        0x4e897cd6 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_ff
        :pswitch_f8
        :pswitch_f1
        :pswitch_ea
        :pswitch_e3
        :pswitch_dc
        :pswitch_d5
        :pswitch_ce
        :pswitch_c7
        :pswitch_c0
        :pswitch_b9
        :pswitch_b2
        :pswitch_ab
        :pswitch_a4
    .end packed-switch
.end method
