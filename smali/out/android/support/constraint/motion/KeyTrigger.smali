.class public Landroid/support/constraint/motion/KeyTrigger;
.super Landroid/support/constraint/motion/Key;
.source "KeyTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/KeyTrigger$Loader;
    }
.end annotation


# static fields
.field public static final KEY_TYPE:I = 0x5

.field static final NAME:Ljava/lang/String; = "KeyTrigger"

.field private static final TAG:Ljava/lang/String; = "KeyTrigger"


# instance fields
.field mCollisionRect:Landroid/graphics/RectF;

.field private mCross:Ljava/lang/String;

.field private mCurveFit:I

.field private mFireCross:Ljava/lang/reflect/Method;

.field private mFireCrossReset:Z

.field private mFireLastPos:F

.field private mFireNegativeCross:Ljava/lang/reflect/Method;

.field private mFireNegativeReset:Z

.field private mFirePositiveCross:Ljava/lang/reflect/Method;

.field private mFirePositiveReset:Z

.field private mFireThreshold:F

.field private mNegativeCross:Ljava/lang/String;

.field private mPositiveCross:Ljava/lang/String;

.field private mPostLayout:Z

.field mTargetRect:Landroid/graphics/RectF;

.field private mTriggerCollisionId:I

.field private mTriggerCollisionView:Landroid/view/View;

.field private mTriggerID:I

.field private mTriggerReceiver:I

.field mTriggerSlack:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Landroid/support/constraint/motion/Key;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mCurveFit:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mCross:Ljava/lang/String;

    .line 46
    sget v1, Landroid/support/constraint/motion/KeyTrigger;->UNSET:I

    iput v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerReceiver:I

    .line 47
    iput-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    .line 49
    sget v1, Landroid/support/constraint/motion/KeyTrigger;->UNSET:I

    iput v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerID:I

    .line 50
    sget v1, Landroid/support/constraint/motion/KeyTrigger;->UNSET:I

    iput v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionId:I

    .line 51
    iput-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    .line 52
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerSlack:F

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCrossReset:Z

    .line 54
    iput-boolean v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeReset:Z

    .line 55
    iput-boolean v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveReset:Z

    .line 56
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireThreshold:F

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mPostLayout:Z

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    .line 70
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mType:I

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mCustomConstraints:Ljava/util/HashMap;

    .line 72
    return-void
.end method

.method static synthetic access$002(Landroid/support/constraint/motion/KeyTrigger;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTrigger;
    .param p1, "x1"    # F

    .line 41
    iput p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireThreshold:F

    return p1
.end method

.method static synthetic access$102(Landroid/support/constraint/motion/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTrigger;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/support/constraint/motion/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTrigger;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/support/constraint/motion/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTrigger;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mCross:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroid/support/constraint/motion/KeyTrigger;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTrigger;

    .line 41
    iget v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerID:I

    return v0
.end method

.method static synthetic access$402(Landroid/support/constraint/motion/KeyTrigger;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTrigger;
    .param p1, "x1"    # I

    .line 41
    iput p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerID:I

    return p1
.end method

.method static synthetic access$500(Landroid/support/constraint/motion/KeyTrigger;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTrigger;

    .line 41
    iget v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionId:I

    return v0
.end method

.method static synthetic access$502(Landroid/support/constraint/motion/KeyTrigger;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTrigger;
    .param p1, "x1"    # I

    .line 41
    iput p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionId:I

    return p1
.end method

.method static synthetic access$600(Landroid/support/constraint/motion/KeyTrigger;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTrigger;

    .line 41
    iget-boolean v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mPostLayout:Z

    return v0
.end method

.method static synthetic access$602(Landroid/support/constraint/motion/KeyTrigger;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTrigger;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mPostLayout:Z

    return p1
.end method

.method static synthetic access$700(Landroid/support/constraint/motion/KeyTrigger;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTrigger;

    .line 41
    iget v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerReceiver:I

    return v0
.end method

.method static synthetic access$702(Landroid/support/constraint/motion/KeyTrigger;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/KeyTrigger;
    .param p1, "x1"    # I

    .line 41
    iput p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerReceiver:I

    return p1
.end method

.method private setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V
    .registers 5
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "postLayout"    # Z

    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 103
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 104
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 106
    if-eqz p3, :cond_25

    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 109
    :cond_25
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

    .line 95
    .local p1, "splines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/constraint/motion/SplineSet;>;"
    return-void
.end method

.method public conditionallyFire(FLandroid/view/View;)V
    .registers 16
    .param p1, "pos"    # F
    .param p2, "child"    # Landroid/view/View;

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "fireCross":Z
    const/4 v1, 0x0

    .line 114
    .local v1, "fireNegative":Z
    const/4 v2, 0x0

    .line 116
    .local v2, "firePositive":Z
    iget v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionId:I

    sget v4, Landroid/support/constraint/motion/KeyTrigger;->UNSET:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_5a

    .line 117
    iget-object v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    if-nez v3, :cond_1d

    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionId:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    .line 121
    :cond_1d
    iget-object v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    iget-boolean v7, p0, Landroid/support/constraint/motion/KeyTrigger;->mPostLayout:Z

    invoke-direct {p0, v3, v4, v7}, Landroid/support/constraint/motion/KeyTrigger;->setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 122
    iget-object v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    iget-boolean v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mPostLayout:Z

    invoke-direct {p0, v3, p2, v4}, Landroid/support/constraint/motion/KeyTrigger;->setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 123
    iget-object v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v3

    .line 125
    .local v3, "in":Z
    if-eqz v3, :cond_48

    .line 126
    iget-boolean v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCrossReset:Z

    if-eqz v4, :cond_3e

    .line 127
    const/4 v0, 0x1

    .line 128
    iput-boolean v6, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCrossReset:Z

    .line 130
    :cond_3e
    iget-boolean v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveReset:Z

    if-eqz v4, :cond_45

    .line 131
    const/4 v2, 0x1

    .line 132
    iput-boolean v6, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveReset:Z

    .line 134
    :cond_45
    iput-boolean v5, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeReset:Z

    goto :goto_58

    .line 136
    :cond_48
    iget-boolean v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCrossReset:Z

    if-nez v4, :cond_4f

    .line 137
    const/4 v0, 0x1

    .line 138
    iput-boolean v5, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCrossReset:Z

    .line 140
    :cond_4f
    iget-boolean v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeReset:Z

    if-eqz v4, :cond_56

    .line 141
    const/4 v1, 0x1

    .line 142
    iput-boolean v6, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeReset:Z

    .line 144
    :cond_56
    iput-boolean v5, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveReset:Z

    .line 147
    .end local v3    # "in":Z
    :goto_58
    goto/16 :goto_d2

    .line 150
    :cond_5a
    iget-boolean v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCrossReset:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_70

    .line 152
    iget v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireThreshold:F

    sub-float v7, p1, v3

    .line 153
    .local v7, "offset":F
    iget v8, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireLastPos:F

    sub-float/2addr v8, v3

    .line 155
    .local v8, "lastOffset":F
    mul-float v3, v7, v8

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6f

    .line 156
    const/4 v0, 0x1

    .line 157
    iput-boolean v6, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCrossReset:Z

    .line 159
    .end local v7    # "offset":F
    .end local v8    # "lastOffset":F
    :cond_6f
    goto :goto_80

    .line 160
    :cond_70
    iget v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireThreshold:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v7, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerSlack:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_80

    .line 161
    iput-boolean v5, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCrossReset:Z

    .line 166
    :cond_80
    :goto_80
    iget-boolean v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeReset:Z

    if-eqz v3, :cond_99

    .line 167
    iget v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireThreshold:F

    sub-float v7, p1, v3

    .line 168
    .restart local v7    # "offset":F
    iget v8, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireLastPos:F

    sub-float/2addr v8, v3

    .line 169
    .restart local v8    # "lastOffset":F
    mul-float v3, v7, v8

    cmpg-float v3, v3, v4

    if-gez v3, :cond_98

    cmpg-float v3, v7, v4

    if-gez v3, :cond_98

    .line 170
    const/4 v1, 0x1

    .line 171
    iput-boolean v6, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeReset:Z

    .line 173
    .end local v7    # "offset":F
    .end local v8    # "lastOffset":F
    :cond_98
    goto :goto_a9

    .line 174
    :cond_99
    iget v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireThreshold:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v7, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerSlack:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_a9

    .line 175
    iput-boolean v5, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeReset:Z

    .line 179
    :cond_a9
    :goto_a9
    iget-boolean v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveReset:Z

    if-eqz v3, :cond_c2

    .line 180
    iget v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireThreshold:F

    sub-float v5, p1, v3

    .line 181
    .local v5, "offset":F
    iget v7, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireLastPos:F

    sub-float/2addr v7, v3

    .line 182
    .local v7, "lastOffset":F
    mul-float v3, v5, v7

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c1

    cmpl-float v3, v5, v4

    if-lez v3, :cond_c1

    .line 183
    const/4 v2, 0x1

    .line 184
    iput-boolean v6, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveReset:Z

    .line 186
    .end local v5    # "offset":F
    .end local v7    # "lastOffset":F
    :cond_c1
    goto :goto_d2

    .line 187
    :cond_c2
    iget v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireThreshold:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerSlack:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_d2

    .line 188
    iput-boolean v5, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveReset:Z

    .line 192
    :cond_d2
    :goto_d2
    iput p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireLastPos:F

    .line 194
    if-nez v1, :cond_da

    if-nez v0, :cond_da

    if-eqz v2, :cond_e5

    .line 195
    :cond_da
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionLayout;

    iget v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerID:I

    invoke-virtual {v3, v4, v2, p1}, Landroid/support/constraint/motion/MotionLayout;->fireTrigger(IZF)V

    .line 197
    :cond_e5
    iget v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerReceiver:I

    sget v4, Landroid/support/constraint/motion/KeyTrigger;->UNSET:I

    if-ne v3, v4, :cond_ed

    move-object v3, p2

    goto :goto_f9

    :cond_ed
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionLayout;

    iget v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerReceiver:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 199
    .local v3, "call":Landroid/view/View;
    :goto_f9
    const-string v4, "Could not find method \""

    const-string v5, "Exception in call \""

    const-string v7, " "

    const-string v8, "\"on class "

    const-string v9, "KeyTrigger"

    if-eqz v1, :cond_18a

    iget-object v10, p0, Landroid/support/constraint/motion/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    if-eqz v10, :cond_18a

    .line 200
    iget-object v10, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeCross:Ljava/lang/reflect/Method;

    if-nez v10, :cond_14f

    .line 202
    :try_start_10d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    iget-object v11, p0, Landroid/support/constraint/motion/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    new-array v12, v6, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeCross:Ljava/lang/reflect/Method;
    :try_end_11b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10d .. :try_end_11b} :catch_11c

    .line 206
    goto :goto_14f

    .line 203
    :catch_11c
    move-exception v10

    .line 204
    .local v10, "e":Ljava/lang/NoSuchMethodException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/support/constraint/motion/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 205
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 204
    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v10    # "e":Ljava/lang/NoSuchMethodException;
    :cond_14f
    :goto_14f
    :try_start_14f
    iget-object v10, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeCross:Ljava/lang/reflect/Method;

    new-array v11, v6, [Ljava/lang/Object;

    invoke-virtual {v10, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_156} :catch_157

    .line 213
    goto :goto_18a

    .line 210
    :catch_157
    move-exception v10

    .line 211
    .local v10, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/support/constraint/motion/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 212
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 211
    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_18a
    :goto_18a
    if-eqz v2, :cond_211

    iget-object v10, p0, Landroid/support/constraint/motion/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    if-eqz v10, :cond_211

    .line 216
    iget-object v10, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveCross:Ljava/lang/reflect/Method;

    if-nez v10, :cond_1d6

    .line 218
    :try_start_194
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    iget-object v11, p0, Landroid/support/constraint/motion/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    new-array v12, v6, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveCross:Ljava/lang/reflect/Method;
    :try_end_1a2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_194 .. :try_end_1a2} :catch_1a3

    .line 222
    goto :goto_1d6

    .line 219
    :catch_1a3
    move-exception v10

    .line 220
    .local v10, "e":Ljava/lang/NoSuchMethodException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/support/constraint/motion/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 221
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 220
    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v10    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1d6
    :goto_1d6
    :try_start_1d6
    iget-object v10, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveCross:Ljava/lang/reflect/Method;

    new-array v11, v6, [Ljava/lang/Object;

    invoke-virtual {v10, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_1dd} :catch_1de

    .line 229
    goto :goto_211

    .line 226
    :catch_1de
    move-exception v10

    .line 227
    .local v10, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/support/constraint/motion/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 228
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 227
    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_211
    :goto_211
    if-eqz v0, :cond_298

    iget-object v10, p0, Landroid/support/constraint/motion/KeyTrigger;->mCross:Ljava/lang/String;

    if-eqz v10, :cond_298

    .line 232
    iget-object v10, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCross:Ljava/lang/reflect/Method;

    if-nez v10, :cond_25d

    .line 234
    :try_start_21b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    iget-object v11, p0, Landroid/support/constraint/motion/KeyTrigger;->mCross:Ljava/lang/String;

    new-array v12, v6, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCross:Ljava/lang/reflect/Method;
    :try_end_229
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21b .. :try_end_229} :catch_22a

    .line 238
    goto :goto_25d

    .line 235
    :catch_22a
    move-exception v10

    .line 236
    .local v10, "e":Ljava/lang/NoSuchMethodException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v11, p0, Landroid/support/constraint/motion/KeyTrigger;->mCross:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 237
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v10    # "e":Ljava/lang/NoSuchMethodException;
    :cond_25d
    :goto_25d
    :try_start_25d
    iget-object v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCross:Ljava/lang/reflect/Method;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_264
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_264} :catch_265

    .line 245
    goto :goto_298

    .line 242
    :catch_265
    move-exception v4

    .line 243
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/constraint/motion/KeyTrigger;->mCross:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 244
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 243
    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_298
    :goto_298
    return-void
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "attributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    return-void
.end method

.method getCurveFit()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mCurveFit:I

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 76
    sget-object v0, Landroid/support/constraint/R$styleable;->KeyTrigger:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {p0, v0, p1}, Landroid/support/constraint/motion/KeyTrigger$Loader;->read(Landroid/support/constraint/motion/KeyTrigger;Landroid/content/res/TypedArray;Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 99
    return-void
.end method
