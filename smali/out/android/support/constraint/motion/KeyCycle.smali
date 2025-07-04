.class public Landroid/support/constraint/motion/KeyCycle;
.super Landroid/support/constraint/motion/Key;
.source "KeyCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/KeyCycle$Loader;
    }
.end annotation


# static fields
.field public static final KEY_TYPE:I = 0x4

.field static final NAME:Ljava/lang/String; = "KeyCycle"

.field private static final TAG:Ljava/lang/String; = "KeyCycle"


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

.field private mWaveVariesBy:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 37
    invoke-direct {p0}, Landroid/support/constraint/motion/Key;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mCurveFit:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mWaveShape:I

    .line 43
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroid/support/constraint/motion/KeyCycle;->mWavePeriod:F

    .line 44
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/motion/KeyCycle;->mWaveOffset:F

    .line 45
    iput v1, p0, Landroid/support/constraint/motion/KeyCycle;->mProgress:F

    .line 46
    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mWaveVariesBy:I

    .line 47
    iput v1, p0, Landroid/support/constraint/motion/KeyCycle;->mAlpha:F

    .line 48
    iput v1, p0, Landroid/support/constraint/motion/KeyCycle;->mElevation:F

    .line 49
    iput v1, p0, Landroid/support/constraint/motion/KeyCycle;->mRotation:F

    .line 50
    iput v1, p0, Landroid/support/constraint/motion/KeyCycle;->mTransitionPathRotate:F

    .line 51
    iput v1, p0, Landroid/support/constraint/motion/KeyCycle;->mRotationX:F

    .line 52
    iput v1, p0, Landroid/support/constraint/motion/KeyCycle;->mRotationY:F

    .line 53
    iput v1, p0, Landroid/support/constraint/motion/KeyCycle;->mScaleX:F

    .line 54
    iput v1, p0, Landroid/support/constraint/motion/KeyCycle;->mScaleY:F

    .line 55
    iput v1, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationX:F

    .line 56
    iput v1, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationY:F

    .line 57
    iput v1, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationZ:F

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mType:I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyCycle;->mCustomConstraints:Ljava/util/HashMap;

    .line 63
    return-void
.end method

.method static synthetic access$1000(Landroid/support/constraint/motion/KeyCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mRotationX:F

    return v0
.end method

.method static synthetic access$1002(Landroid/support/constraint/motion/KeyCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mRotationX:F

    return p1
.end method

.method static synthetic access$102(Landroid/support/constraint/motion/KeyCycle;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Landroid/support/constraint/motion/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/support/constraint/motion/KeyCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mRotationY:F

    return v0
.end method

.method static synthetic access$1102(Landroid/support/constraint/motion/KeyCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mRotationY:F

    return p1
.end method

.method static synthetic access$1200(Landroid/support/constraint/motion/KeyCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTransitionPathRotate:F

    return v0
.end method

.method static synthetic access$1202(Landroid/support/constraint/motion/KeyCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mTransitionPathRotate:F

    return p1
.end method

.method static synthetic access$1300(Landroid/support/constraint/motion/KeyCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mScaleX:F

    return v0
.end method

.method static synthetic access$1302(Landroid/support/constraint/motion/KeyCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mScaleX:F

    return p1
.end method

.method static synthetic access$1400(Landroid/support/constraint/motion/KeyCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mScaleY:F

    return v0
.end method

.method static synthetic access$1402(Landroid/support/constraint/motion/KeyCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mScaleY:F

    return p1
.end method

.method static synthetic access$1500(Landroid/support/constraint/motion/KeyCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationX:F

    return v0
.end method

.method static synthetic access$1502(Landroid/support/constraint/motion/KeyCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationX:F

    return p1
.end method

.method static synthetic access$1600(Landroid/support/constraint/motion/KeyCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationY:F

    return v0
.end method

.method static synthetic access$1602(Landroid/support/constraint/motion/KeyCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationY:F

    return p1
.end method

.method static synthetic access$1700(Landroid/support/constraint/motion/KeyCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationZ:F

    return v0
.end method

.method static synthetic access$1702(Landroid/support/constraint/motion/KeyCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationZ:F

    return p1
.end method

.method static synthetic access$1800(Landroid/support/constraint/motion/KeyCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mProgress:F

    return v0
.end method

.method static synthetic access$1802(Landroid/support/constraint/motion/KeyCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mProgress:F

    return p1
.end method

.method static synthetic access$200(Landroid/support/constraint/motion/KeyCycle;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mCurveFit:I

    return v0
.end method

.method static synthetic access$202(Landroid/support/constraint/motion/KeyCycle;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mCurveFit:I

    return p1
.end method

.method static synthetic access$300(Landroid/support/constraint/motion/KeyCycle;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mWaveShape:I

    return v0
.end method

.method static synthetic access$302(Landroid/support/constraint/motion/KeyCycle;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mWaveShape:I

    return p1
.end method

.method static synthetic access$400(Landroid/support/constraint/motion/KeyCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mWavePeriod:F

    return v0
.end method

.method static synthetic access$402(Landroid/support/constraint/motion/KeyCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mWavePeriod:F

    return p1
.end method

.method static synthetic access$500(Landroid/support/constraint/motion/KeyCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mWaveOffset:F

    return v0
.end method

.method static synthetic access$502(Landroid/support/constraint/motion/KeyCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mWaveOffset:F

    return p1
.end method

.method static synthetic access$600(Landroid/support/constraint/motion/KeyCycle;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mWaveVariesBy:I

    return v0
.end method

.method static synthetic access$602(Landroid/support/constraint/motion/KeyCycle;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mWaveVariesBy:I

    return p1
.end method

.method static synthetic access$700(Landroid/support/constraint/motion/KeyCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mAlpha:F

    return v0
.end method

.method static synthetic access$702(Landroid/support/constraint/motion/KeyCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mAlpha:F

    return p1
.end method

.method static synthetic access$800(Landroid/support/constraint/motion/KeyCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mElevation:F

    return v0
.end method

.method static synthetic access$802(Landroid/support/constraint/motion/KeyCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mElevation:F

    return p1
.end method

.method static synthetic access$900(Landroid/support/constraint/motion/KeyCycle;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;

    .line 37
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mRotation:F

    return v0
.end method

.method static synthetic access$902(Landroid/support/constraint/motion/KeyCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyCycle;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Landroid/support/constraint/motion/KeyCycle;->mRotation:F

    return p1
.end method


# virtual methods
.method public addCycleValues(Ljava/util/HashMap;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/motion/KeyCycleOscillator;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p1, "oscSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/constraint/motion/KeyCycleOscillator;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 114
    .local v3, "key":Ljava/lang/String;
    const-string v4, "CUSTOM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 115
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "ckey":Ljava/lang/String;
    iget-object v5, v0, Landroid/support/constraint/motion/KeyCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintAttribute;

    .line 117
    .local v5, "cvalue":Landroid/support/constraint/ConstraintAttribute;
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/support/constraint/ConstraintAttribute;->getType()Landroid/support/constraint/ConstraintAttribute$AttributeType;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    if-ne v6, v7, :cond_c

    .line 118
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/motion/KeyCycleOscillator;

    iget v7, v0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    iget v8, v0, Landroid/support/constraint/motion/KeyCycle;->mWaveShape:I

    iget v9, v0, Landroid/support/constraint/motion/KeyCycle;->mWaveVariesBy:I

    iget v10, v0, Landroid/support/constraint/motion/KeyCycle;->mWavePeriod:F

    iget v11, v0, Landroid/support/constraint/motion/KeyCycle;->mWaveOffset:F

    invoke-virtual {v5}, Landroid/support/constraint/ConstraintAttribute;->getValueToInterpolate()F

    move-result v12

    move-object v13, v5

    invoke-virtual/range {v6 .. v13}, Landroid/support/constraint/motion/KeyCycleOscillator;->setPoint(IIIFFFLandroid/support/constraint/ConstraintAttribute;)V

    goto :goto_c

    .line 122
    .end local v4    # "ckey":Ljava/lang/String;
    .end local v5    # "cvalue":Landroid/support/constraint/ConstraintAttribute;
    :cond_55
    invoke-virtual {v0, v3}, Landroid/support/constraint/motion/KeyCycle;->getValue(Ljava/lang/String;)F

    move-result v4

    .line 123
    .local v4, "value":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_7b

    .line 124
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/support/constraint/motion/KeyCycleOscillator;

    iget v14, v0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    iget v15, v0, Landroid/support/constraint/motion/KeyCycle;->mWaveShape:I

    iget v5, v0, Landroid/support/constraint/motion/KeyCycle;->mWaveVariesBy:I

    iget v6, v0, Landroid/support/constraint/motion/KeyCycle;->mWavePeriod:F

    iget v7, v0, Landroid/support/constraint/motion/KeyCycle;->mWaveOffset:F

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v4

    invoke-virtual/range {v13 .. v19}, Landroid/support/constraint/motion/KeyCycleOscillator;->setPoint(IIIFFF)V

    .line 126
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":F
    :cond_7b
    goto :goto_c

    .line 127
    :cond_7c
    return-void
.end method

.method public addValues(Ljava/util/HashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/motion/SplineSet;",
            ">;)V"
        }
    .end annotation

    .line 165
    .local p1, "splines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/constraint/motion/SplineSet;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCycle"

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Landroid/support/constraint/motion/Debug;->logStack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 166
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_155

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/SplineSet;

    .line 168
    .local v4, "splineSet":Landroid/support/constraint/motion/SplineSet;
    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_156

    :cond_45
    goto/16 :goto_d0

    :sswitch_47
    const-string v6, "waveOffset"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/16 v5, 0xb

    goto/16 :goto_d0

    :sswitch_53
    const-string v6, "alpha"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v5, 0x0

    goto/16 :goto_d0

    :sswitch_5e
    const-string v6, "transitionPathRotate"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v5, 0x5

    goto/16 :goto_d0

    :sswitch_69
    const-string v6, "elevation"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v5, 0x1

    goto :goto_d0

    :sswitch_73
    const-string v6, "rotation"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v5, 0x2

    goto :goto_d0

    :sswitch_7d
    const-string v6, "scaleY"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v5, 0x7

    goto :goto_d0

    :sswitch_87
    const-string v6, "scaleX"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v5, 0x6

    goto :goto_d0

    :sswitch_91
    const-string v6, "progress"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/16 v5, 0xc

    goto :goto_d0

    :sswitch_9c
    const-string v6, "translationZ"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/16 v5, 0xa

    goto :goto_d0

    :sswitch_a7
    const-string v6, "translationY"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/16 v5, 0x9

    goto :goto_d0

    :sswitch_b2
    const-string v6, "translationX"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/16 v5, 0x8

    goto :goto_d0

    :sswitch_bd
    const-string v6, "rotationY"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v5, 0x4

    goto :goto_d0

    :sswitch_c7
    const-string v6, "rotationX"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v5, 0x3

    :goto_d0
    packed-switch v5, :pswitch_data_18c

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING KeyCycle UNKNOWN  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_153

    .line 206
    :pswitch_eb
    iget v5, p0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    iget v6, p0, Landroid/support/constraint/motion/KeyCycle;->mProgress:F

    invoke-virtual {v4, v5, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 207
    goto :goto_153

    .line 203
    :pswitch_f3
    iget v5, p0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    iget v6, p0, Landroid/support/constraint/motion/KeyCycle;->mWaveOffset:F

    invoke-virtual {v4, v5, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 204
    goto :goto_153

    .line 200
    :pswitch_fb
    iget v5, p0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    iget v6, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationZ:F

    invoke-virtual {v4, v5, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 201
    goto :goto_153

    .line 197
    :pswitch_103
    iget v5, p0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    iget v6, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationY:F

    invoke-virtual {v4, v5, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 198
    goto :goto_153

    .line 194
    :pswitch_10b
    iget v5, p0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    iget v6, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationX:F

    invoke-virtual {v4, v5, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 195
    goto :goto_153

    .line 191
    :pswitch_113
    iget v5, p0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    iget v6, p0, Landroid/support/constraint/motion/KeyCycle;->mScaleY:F

    invoke-virtual {v4, v5, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 192
    goto :goto_153

    .line 188
    :pswitch_11b
    iget v5, p0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    iget v6, p0, Landroid/support/constraint/motion/KeyCycle;->mScaleX:F

    invoke-virtual {v4, v5, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 189
    goto :goto_153

    .line 185
    :pswitch_123
    iget v5, p0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    iget v6, p0, Landroid/support/constraint/motion/KeyCycle;->mTransitionPathRotate:F

    invoke-virtual {v4, v5, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 186
    goto :goto_153

    .line 182
    :pswitch_12b
    iget v5, p0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    iget v6, p0, Landroid/support/constraint/motion/KeyCycle;->mRotationY:F

    invoke-virtual {v4, v5, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 183
    goto :goto_153

    .line 179
    :pswitch_133
    iget v5, p0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    iget v6, p0, Landroid/support/constraint/motion/KeyCycle;->mRotationX:F

    invoke-virtual {v4, v5, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 180
    goto :goto_153

    .line 176
    :pswitch_13b
    iget v5, p0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    iget v6, p0, Landroid/support/constraint/motion/KeyCycle;->mRotation:F

    invoke-virtual {v4, v5, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 177
    goto :goto_153

    .line 173
    :pswitch_143
    iget v5, p0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    iget v6, p0, Landroid/support/constraint/motion/KeyCycle;->mElevation:F

    invoke-virtual {v4, v5, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 174
    goto :goto_153

    .line 170
    :pswitch_14b
    iget v5, p0, Landroid/support/constraint/motion/KeyCycle;->mFramePosition:I

    iget v6, p0, Landroid/support/constraint/motion/KeyCycle;->mAlpha:F

    invoke-virtual {v4, v5, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 171
    nop

    .line 211
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "splineSet":Landroid/support/constraint/motion/SplineSet;
    :goto_153
    goto/16 :goto_2b

    .line 212
    :cond_155
    return-void

    :sswitch_data_156
    .sparse-switch
        -0x4a771f66 -> :sswitch_c7
        -0x4a771f65 -> :sswitch_bd
        -0x490b9c39 -> :sswitch_b2
        -0x490b9c38 -> :sswitch_a7
        -0x490b9c37 -> :sswitch_9c
        -0x3bab3dd3 -> :sswitch_91
        -0x3621dfb2 -> :sswitch_87
        -0x3621dfb1 -> :sswitch_7d
        -0x266f082 -> :sswitch_73
        -0x42d1a3 -> :sswitch_69
        0x2382115 -> :sswitch_5e
        0x589b15e -> :sswitch_53
        0x94e04ec -> :sswitch_47
    .end sparse-switch

    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_14b
        :pswitch_143
        :pswitch_13b
        :pswitch_133
        :pswitch_12b
        :pswitch_123
        :pswitch_11b
        :pswitch_113
        :pswitch_10b
        :pswitch_103
        :pswitch_fb
        :pswitch_f3
        :pswitch_eb
    .end packed-switch
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

    .line 72
    .local p1, "attributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    .line 73
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_d
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 76
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1a
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    .line 79
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_27
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_34

    .line 82
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_34
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_41

    .line 85
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_41
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 88
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_4e
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 91
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_5b
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_68

    .line 94
    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_68
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_75

    .line 97
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_75
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_82

    .line 100
    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_82
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 103
    const-string v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_8f
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_c4

    .line 106
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
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

    .line 108
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_a1

    .line 110
    :cond_c4
    return-void
.end method

.method public getValue(Ljava/lang/String;)F
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_da

    :cond_7
    goto/16 :goto_93

    :sswitch_9
    const-string v0, "waveOffset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_94

    :sswitch_15
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_94

    :sswitch_20
    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto/16 :goto_94

    :sswitch_2b
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_94

    :sswitch_35
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_94

    :sswitch_3f
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_94

    :sswitch_49
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_94

    :sswitch_53
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto :goto_94

    :sswitch_5e
    const-string v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_94

    :sswitch_69
    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_94

    :sswitch_74
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_94

    :sswitch_7f
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_94

    :sswitch_89
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_94

    :goto_93
    const/4 v0, -0x1

    :goto_94
    packed-switch v0, :pswitch_data_110

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARNING! KeyCycle UNKNOWN  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCycle"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 156
    :pswitch_b2
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mProgress:F

    return v0

    .line 154
    :pswitch_b5
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mWaveOffset:F

    return v0

    .line 152
    :pswitch_b8
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationZ:F

    return v0

    .line 150
    :pswitch_bb
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationY:F

    return v0

    .line 148
    :pswitch_be
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationX:F

    return v0

    .line 146
    :pswitch_c1
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mScaleY:F

    return v0

    .line 144
    :pswitch_c4
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mScaleX:F

    return v0

    .line 142
    :pswitch_c7
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTransitionPathRotate:F

    return v0

    .line 140
    :pswitch_ca
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mRotationY:F

    return v0

    .line 138
    :pswitch_cd
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mRotationX:F

    return v0

    .line 136
    :pswitch_d0
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mRotation:F

    return v0

    .line 134
    :pswitch_d3
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mElevation:F

    return v0

    .line 132
    :pswitch_d6
    iget v0, p0, Landroid/support/constraint/motion/KeyCycle;->mAlpha:F

    return v0

    nop

    :sswitch_data_da
    .sparse-switch
        -0x4a771f66 -> :sswitch_89
        -0x4a771f65 -> :sswitch_7f
        -0x490b9c39 -> :sswitch_74
        -0x490b9c38 -> :sswitch_69
        -0x490b9c37 -> :sswitch_5e
        -0x3bab3dd3 -> :sswitch_53
        -0x3621dfb2 -> :sswitch_49
        -0x3621dfb1 -> :sswitch_3f
        -0x266f082 -> :sswitch_35
        -0x42d1a3 -> :sswitch_2b
        0x2382115 -> :sswitch_20
        0x589b15e -> :sswitch_15
        0x94e04ec -> :sswitch_9
    .end sparse-switch

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_d3
        :pswitch_d0
        :pswitch_cd
        :pswitch_ca
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
    .end packed-switch
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    sget-object v0, Landroid/support/constraint/R$styleable;->KeyCycle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {p0, v0}, Landroid/support/constraint/motion/KeyCycle$Loader;->access$000(Landroid/support/constraint/motion/KeyCycle;Landroid/content/res/TypedArray;)V

    .line 68
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 353
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_130

    :cond_7
    goto/16 :goto_b7

    :sswitch_9
    const-string v0, "mTranslationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto/16 :goto_b8

    :sswitch_15
    const-string v0, "curveFit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_b8

    :sswitch_20
    const-string v0, "wavePeriod"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto/16 :goto_b8

    :sswitch_2c
    const-string v0, "waveOffset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto/16 :goto_b8

    :sswitch_38
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_b8

    :sswitch_43
    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto/16 :goto_b8

    :sswitch_4f
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_b8

    :sswitch_59
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_b8

    :sswitch_63
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_b8

    :sswitch_6e
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_b8

    :sswitch_78
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_b8

    :sswitch_82
    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto :goto_b8

    :sswitch_8d
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_b8

    :sswitch_98
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_b8

    :sswitch_a2
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_b8

    :sswitch_ac
    const-string v0, "transitionEasing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_b8

    :goto_b7
    const/4 v0, -0x1

    :goto_b8
    packed-switch v0, :pswitch_data_172

    goto/16 :goto_12e

    .line 400
    :pswitch_bd
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mWaveOffset:F

    goto/16 :goto_12e

    .line 397
    :pswitch_c5
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mWavePeriod:F

    .line 398
    goto :goto_12e

    .line 394
    :pswitch_cc
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationZ:F

    .line 395
    goto :goto_12e

    .line 391
    :pswitch_d3
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationY:F

    .line 392
    goto :goto_12e

    .line 388
    :pswitch_da
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTranslationX:F

    .line 389
    goto :goto_12e

    .line 385
    :pswitch_e1
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTransitionPathRotate:F

    .line 386
    goto :goto_12e

    .line 382
    :pswitch_e8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    .line 383
    goto :goto_12e

    .line 379
    :pswitch_ef
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mScaleY:F

    .line 380
    goto :goto_12e

    .line 376
    :pswitch_f6
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mScaleX:F

    .line 377
    goto :goto_12e

    .line 373
    :pswitch_fd
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mRotationY:F

    .line 374
    goto :goto_12e

    .line 370
    :pswitch_104
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mRotationX:F

    .line 371
    goto :goto_12e

    .line 367
    :pswitch_10b
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mRotation:F

    .line 368
    goto :goto_12e

    .line 364
    :pswitch_112
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mProgress:F

    .line 365
    goto :goto_12e

    .line 361
    :pswitch_119
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mElevation:F

    .line 362
    goto :goto_12e

    .line 358
    :pswitch_120
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycle;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mCurveFit:I

    .line 359
    goto :goto_12e

    .line 355
    :pswitch_127
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyCycle;->mAlpha:F

    .line 356
    nop

    .line 403
    :goto_12e
    return-void

    nop

    :sswitch_data_130
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_ac
        -0x4a771f66 -> :sswitch_a2
        -0x4a771f65 -> :sswitch_98
        -0x490b9c39 -> :sswitch_8d
        -0x490b9c38 -> :sswitch_82
        -0x3bab3dd3 -> :sswitch_78
        -0x3621dfb2 -> :sswitch_6e
        -0x3621dfb1 -> :sswitch_63
        -0x266f082 -> :sswitch_59
        -0x42d1a3 -> :sswitch_4f
        0x2382115 -> :sswitch_43
        0x589b15e -> :sswitch_38
        0x94e04ec -> :sswitch_2c
        0xafa161a -> :sswitch_20
        0x2283b8a2 -> :sswitch_15
        0x4e897cd6 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_172
    .packed-switch 0x0
        :pswitch_127
        :pswitch_120
        :pswitch_119
        :pswitch_112
        :pswitch_10b
        :pswitch_104
        :pswitch_fd
        :pswitch_f6
        :pswitch_ef
        :pswitch_e8
        :pswitch_e1
        :pswitch_da
        :pswitch_d3
        :pswitch_cc
        :pswitch_c5
        :pswitch_bd
    .end packed-switch
.end method
