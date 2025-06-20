.class public Landroid/support/constraint/motion/KeyAttributes;
.super Landroid/support/constraint/motion/Key;
.source "KeyAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/KeyAttributes$Loader;
    }
.end annotation


# static fields
.field public static final KEY_TYPE:I = 0x1

.field static final NAME:Ljava/lang/String; = "KeyAttribute"

.field private static final TAG:Ljava/lang/String; = "KeyAttribute"


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mElevation:F

.field private mPivotX:F

.field private mPivotY:F

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

.field private mVisibility:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/support/constraint/motion/Key;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mVisibility:Z

    .line 44
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    .line 45
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    .line 46
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    .line 47
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    .line 48
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    .line 49
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    .line 50
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    .line 51
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    .line 52
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    .line 53
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    .line 54
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    .line 55
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    .line 56
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    .line 57
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mType:I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    .line 63
    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    return v0
.end method

.method static synthetic access$002(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    return p1
.end method

.method static synthetic access$100(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    return v0
.end method

.method static synthetic access$1000(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    return v0
.end method

.method static synthetic access$1002(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    return p1
.end method

.method static synthetic access$102(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    return p1
.end method

.method static synthetic access$1100(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    return v0
.end method

.method static synthetic access$1102(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    return p1
.end method

.method static synthetic access$1200(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    return v0
.end method

.method static synthetic access$1202(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    return p1
.end method

.method static synthetic access$1300(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    return v0
.end method

.method static synthetic access$1302(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    return p1
.end method

.method static synthetic access$1400(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    return v0
.end method

.method static synthetic access$1402(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    return p1
.end method

.method static synthetic access$1500(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    return v0
.end method

.method static synthetic access$1502(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    return p1
.end method

.method static synthetic access$200(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    return v0
.end method

.method static synthetic access$202(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    return p1
.end method

.method static synthetic access$300(Landroid/support/constraint/motion/KeyAttributes;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    return v0
.end method

.method static synthetic access$302(Landroid/support/constraint/motion/KeyAttributes;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;
    .param p1, "x1"    # I

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    return p1
.end method

.method static synthetic access$400(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    return v0
.end method

.method static synthetic access$402(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    return p1
.end method

.method static synthetic access$500(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    return v0
.end method

.method static synthetic access$502(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    return p1
.end method

.method static synthetic access$600(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    return v0
.end method

.method static synthetic access$602(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    return p1
.end method

.method static synthetic access$700(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    return v0
.end method

.method static synthetic access$702(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    return p1
.end method

.method static synthetic access$800(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;

    .line 38
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    return v0
.end method

.method static synthetic access$802(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    return p1
.end method

.method static synthetic access$902(Landroid/support/constraint/motion/KeyAttributes;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyAttributes;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionEasing:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
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

    .line 188
    .local p1, "splines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/constraint/motion/SplineSet;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1ea

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/SplineSet;

    .line 190
    .local v2, "splineSet":Landroid/support/constraint/motion/SplineSet;
    const-string v3, "CUSTOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3f

    .line 191
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "ckey":Ljava/lang/String;
    iget-object v4, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintAttribute;

    .line 193
    .local v4, "cvalue":Landroid/support/constraint/ConstraintAttribute;
    if-eqz v4, :cond_8

    .line 194
    move-object v5, v2

    check-cast v5, Landroid/support/constraint/motion/SplineSet$CustomSet;

    iget v6, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    invoke-virtual {v5, v6, v4}, Landroid/support/constraint/motion/SplineSet$CustomSet;->setPoint(ILandroid/support/constraint/ConstraintAttribute;)V

    goto :goto_8

    .line 198
    .end local v3    # "ckey":Ljava/lang/String;
    .end local v4    # "cvalue":Landroid/support/constraint/ConstraintAttribute;
    :cond_3f
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1ec

    :cond_47
    goto/16 :goto_de

    :sswitch_49
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/4 v5, 0x0

    goto/16 :goto_df

    :sswitch_54
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/4 v5, 0x7

    goto/16 :goto_df

    :sswitch_5f
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    goto/16 :goto_df

    :sswitch_69
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/4 v5, 0x2

    goto/16 :goto_df

    :sswitch_74
    const-string v4, "transformPivotY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/4 v5, 0x6

    goto :goto_df

    :sswitch_7e
    const-string v4, "transformPivotX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/4 v5, 0x5

    goto :goto_df

    :sswitch_88
    const-string v4, "scaleY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/16 v5, 0x9

    goto :goto_df

    :sswitch_93
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/16 v5, 0x8

    goto :goto_df

    :sswitch_9e
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/16 v5, 0xd

    goto :goto_df

    :sswitch_a9
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/16 v5, 0xc

    goto :goto_df

    :sswitch_b4
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/16 v5, 0xb

    goto :goto_df

    :sswitch_bf
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/16 v5, 0xa

    goto :goto_df

    :sswitch_ca
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/4 v5, 0x4

    goto :goto_df

    :sswitch_d4
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/4 v5, 0x3

    goto :goto_df

    :goto_de
    const/4 v5, -0x1

    :goto_df
    packed-switch v5, :pswitch_data_226

    .line 270
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

    const-string v4, "KeyAttributes"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e8

    .line 265
    :pswitch_102
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 266
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_1e8

    .line 260
    :pswitch_113
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 261
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_1e8

    .line 255
    :pswitch_124
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 256
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_1e8

    .line 250
    :pswitch_135
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 251
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_1e8

    .line 245
    :pswitch_146
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 246
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_1e8

    .line 240
    :pswitch_157
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 241
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_1e8

    .line 235
    :pswitch_168
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 236
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_1e8

    .line 230
    :pswitch_179
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 231
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto :goto_1e8

    .line 225
    :pswitch_189
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 226
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto :goto_1e8

    .line 220
    :pswitch_199
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 221
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto :goto_1e8

    .line 215
    :pswitch_1a9
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 216
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto :goto_1e8

    .line 210
    :pswitch_1b9
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 211
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto :goto_1e8

    .line 205
    :pswitch_1c9
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 206
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto :goto_1e8

    .line 200
    :pswitch_1d9
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 201
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 272
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "splineSet":Landroid/support/constraint/motion/SplineSet;
    :cond_1e8
    :goto_1e8
    goto/16 :goto_8

    .line 273
    :cond_1ea
    return-void

    nop

    :sswitch_data_1ec
    .sparse-switch
        -0x4a771f66 -> :sswitch_d4
        -0x4a771f65 -> :sswitch_ca
        -0x490b9c39 -> :sswitch_bf
        -0x490b9c38 -> :sswitch_b4
        -0x490b9c37 -> :sswitch_a9
        -0x3bab3dd3 -> :sswitch_9e
        -0x3621dfb2 -> :sswitch_93
        -0x3621dfb1 -> :sswitch_88
        -0x2d5a2d1e -> :sswitch_7e
        -0x2d5a2d1d -> :sswitch_74
        -0x266f082 -> :sswitch_69
        -0x42d1a3 -> :sswitch_5f
        0x2382115 -> :sswitch_54
        0x589b15e -> :sswitch_49
    .end sparse-switch

    :pswitch_data_226
    .packed-switch 0x0
        :pswitch_1d9
        :pswitch_1c9
        :pswitch_1b9
        :pswitch_1a9
        :pswitch_199
        :pswitch_189
        :pswitch_179
        :pswitch_168
        :pswitch_157
        :pswitch_146
        :pswitch_135
        :pswitch_124
        :pswitch_113
        :pswitch_102
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

    .line 83
    .local p1, "attributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    .line 84
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_d
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 87
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1a
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    .line 90
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_27
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_34

    .line 93
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_34
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_41

    .line 96
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_41
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 99
    const-string v0, "transformPivotX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_4e
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 102
    const-string v0, "transformPivotY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_5b
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_68

    .line 105
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_68
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_75

    .line 108
    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_75
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_82

    .line 111
    const-string v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_82
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 114
    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_8f
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 117
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_9c
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a9

    .line 120
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_a9
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b6

    .line 123
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_b6
    iget-object v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_eb

    .line 126
    iget-object v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_eb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
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

    .line 128
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_c8

    .line 130
    :cond_eb
    return-void
.end method

.method getCurveFit()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 67
    sget-object v0, Landroid/support/constraint/R$styleable;->KeyAttribute:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {p0, v0}, Landroid/support/constraint/motion/KeyAttributes$Loader;->read(Landroid/support/constraint/motion/KeyAttributes;Landroid/content/res/TypedArray;)V

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

    .line 133
    .local p1, "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 134
    return-void

    .line 136
    :cond_6
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_19

    .line 137
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_19
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 140
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "elevation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_2c
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 143
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_3f
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_52

    .line 146
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_52
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_65

    .line 149
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_65
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_78

    .line 152
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transformPivotX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_78
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 155
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transformPivotY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_8b
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9e

    .line 158
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_9e
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 161
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_b1
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 164
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationZ"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_c4
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d7

    .line 167
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transitionPathRotate"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_d7
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_ea

    .line 170
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_ea
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_fd

    .line 173
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_fd
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_110

    .line 176
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_110
    iget-object v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_14b

    .line 179
    iget-object v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_122
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
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

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_122

    .line 184
    :cond_14b
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 277
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_144

    :cond_7
    goto/16 :goto_c3

    :sswitch_9
    const-string v0, "visibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto/16 :goto_c4

    :sswitch_15
    const-string v0, "mTranslationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x10

    goto/16 :goto_c4

    :sswitch_21
    const-string v0, "curveFit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_c4

    :sswitch_2c
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_c4

    :sswitch_37
    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto/16 :goto_c4

    :sswitch_43
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto/16 :goto_c4

    :sswitch_4e
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto/16 :goto_c4

    :sswitch_59
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_c4

    :sswitch_64
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_c4

    :sswitch_6f
    const-string v0, "pivotY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_c4

    :sswitch_7a
    const-string v0, "pivotX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_c4

    :sswitch_84
    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto :goto_c4

    :sswitch_8f
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto :goto_c4

    :sswitch_9a
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_c4

    :sswitch_a4
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_c4

    :sswitch_ae
    const-string v0, "transitionEasing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_c4

    :sswitch_b9
    const-string v0, "motionProgress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_c4

    :goto_c3
    const/4 v0, -0x1

    :goto_c4
    packed-switch v0, :pswitch_data_18a

    goto/16 :goto_142

    .line 327
    :pswitch_c9
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    goto/16 :goto_142

    .line 324
    :pswitch_d1
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    .line 325
    goto/16 :goto_142

    .line 321
    :pswitch_d9
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    .line 322
    goto :goto_142

    .line 318
    :pswitch_e0
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    .line 319
    goto :goto_142

    .line 315
    :pswitch_e7
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mVisibility:Z

    .line 316
    goto :goto_142

    .line 312
    :pswitch_ee
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionEasing:Ljava/lang/String;

    .line 313
    goto :goto_142

    .line 309
    :pswitch_f5
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    .line 310
    goto :goto_142

    .line 306
    :pswitch_fc
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    .line 307
    goto :goto_142

    .line 303
    :pswitch_103
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    .line 304
    goto :goto_142

    .line 300
    :pswitch_10a
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    .line 301
    goto :goto_142

    .line 297
    :pswitch_111
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    .line 298
    goto :goto_142

    .line 294
    :pswitch_118
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    .line 295
    goto :goto_142

    .line 291
    :pswitch_11f
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    .line 292
    goto :goto_142

    .line 288
    :pswitch_126
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    .line 289
    goto :goto_142

    .line 285
    :pswitch_12d
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    .line 286
    goto :goto_142

    .line 282
    :pswitch_134
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    .line 283
    goto :goto_142

    .line 279
    :pswitch_13b
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    .line 280
    nop

    .line 330
    :goto_142
    return-void

    nop

    :sswitch_data_144
    .sparse-switch
        -0x72062ffd -> :sswitch_b9
        -0x6c0d7d20 -> :sswitch_ae
        -0x4a771f66 -> :sswitch_a4
        -0x4a771f65 -> :sswitch_9a
        -0x490b9c39 -> :sswitch_8f
        -0x490b9c38 -> :sswitch_84
        -0x3ae243aa -> :sswitch_7a
        -0x3ae243a9 -> :sswitch_6f
        -0x3621dfb2 -> :sswitch_64
        -0x3621dfb1 -> :sswitch_59
        -0x266f082 -> :sswitch_4e
        -0x42d1a3 -> :sswitch_43
        0x2382115 -> :sswitch_37
        0x589b15e -> :sswitch_2c
        0x2283b8a2 -> :sswitch_21
        0x4e897cd6 -> :sswitch_15
        0x73b66312 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_13b
        :pswitch_134
        :pswitch_12d
        :pswitch_126
        :pswitch_11f
        :pswitch_118
        :pswitch_111
        :pswitch_10a
        :pswitch_103
        :pswitch_fc
        :pswitch_f5
        :pswitch_ee
        :pswitch_e7
        :pswitch_e0
        :pswitch_d9
        :pswitch_d1
        :pswitch_c9
    .end packed-switch
.end method
