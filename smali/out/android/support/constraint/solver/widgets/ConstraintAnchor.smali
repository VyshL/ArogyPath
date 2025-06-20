.class public Landroid/support/constraint/solver/widgets/ConstraintAnchor;
.super Ljava/lang/Object;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    }
.end annotation


# static fields
.field private static final ALLOW_BINARY:Z = false

.field private static final UNSET_GONE_MARGIN:I = -0x1


# instance fields
.field private mDependents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalValue:I

.field mGoneMargin:I

.field private mHasFinalValue:Z

.field public mMargin:I

.field public final mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

.field public mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field public final mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V
    .registers 4
    .param p1, "owner"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "type"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 132
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 133
    iput-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 134
    return-void
.end method

.method private isConnectionToMe(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z
    .registers 10
    .param p1, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashSet<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)Z"
        }
    .end annotation

    .line 464
    .local p2, "checked":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 465
    return v1

    .line 467
    :cond_8
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_13

    .line 470
    return v2

    .line 472
    :cond_13
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v0

    .line 473
    .local v0, "targetAnchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintAnchor;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "targetAnchorsSize":I
    :goto_1c
    if-ge v3, v4, :cond_42

    .line 474
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 475
    .local v5, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v5, p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isSimilarDimensionConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 476
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnectionToMe(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 477
    return v2

    .line 473
    .end local v5    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 481
    .end local v3    # "i":I
    .end local v4    # "targetAnchorsSize":I
    :cond_42
    return v1
.end method


# virtual methods
.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z
    .registers 5
    .param p1, "toAnchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p2, "margin"    # I

    .line 246
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIZ)Z

    move-result v0

    return v0
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIZ)Z
    .registers 8
    .param p1, "toAnchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p2, "margin"    # I
    .param p3, "goneMargin"    # I
    .param p4, "forceConnection"    # Z

    .line 215
    const/4 v0, 0x1

    if-nez p1, :cond_7

    .line 216
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 217
    return v0

    .line 219
    :cond_7
    const/4 v1, 0x0

    if-nez p4, :cond_11

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isValidConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 220
    return v1

    .line 222
    :cond_11
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 223
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-nez v2, :cond_1e

    .line 224
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 226
    :cond_1e
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v2, :cond_27

    .line 227
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_27
    if-lez p2, :cond_2c

    .line 230
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_2e

    .line 232
    :cond_2c
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 234
    :goto_2e
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 235
    return v0
.end method

.method public copyFrom(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Ljava/util/HashMap;)V
    .registers 6
    .param p1, "source"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            "Ljava/util/HashMap<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_b

    .line 105
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v0, :cond_b

    .line 106
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 109
    :cond_b
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_24

    .line 110
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v0

    .line 111
    .local v0, "type":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 112
    .local v1, "owner":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 113
    .end local v0    # "type":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .end local v1    # "owner":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_27

    .line 114
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 116
    :goto_27
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_3d

    .line 117
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-nez v1, :cond_36

    .line 118
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 120
    :cond_36
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_3d
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 123
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 124
    return-void
.end method

.method public findDependents(ILjava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;)V
    .registers 7
    .param p1, "orientation"    # I
    .param p3, "group"    # Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;",
            ">;",
            "Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;",
            ")V"
        }
    .end annotation

    .line 41
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;>;"
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v0, :cond_1a

    .line 42
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 43
    .local v1, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-static {v2, p1, p2, p3}, Landroid/support/constraint/solver/widgets/analyzer/Grouping;->findDependents(Landroid/support/constraint/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;)Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;

    .line 44
    .end local v1    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_8

    .line 46
    :cond_1a
    return-void
.end method

.method public getDependents()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    return-object v0
.end method

.method public getFinalValue()I
    .registers 2

    .line 75
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mHasFinalValue:Z

    if-nez v0, :cond_6

    .line 76
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_6
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mFinalValue:I

    return v0
.end method

.method public getMargin()I
    .registers 4

    .line 170
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    .line 171
    const/4 v0, 0x0

    return v0

    .line 173
    :cond_c
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_20

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_20

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 174
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_20

    .line 175
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    return v0

    .line 177
    :cond_20
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    return v0
.end method

.method public final getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .registers 3

    .line 489
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 509
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 500
    :pswitch_19
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 497
    :pswitch_1e
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 494
    :pswitch_23
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 491
    :pswitch_28
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 507
    :pswitch_2d
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getSolverVariable()Landroid/support/constraint/solver/SolverVariable;
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    return-object v0
.end method

.method public getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .registers 2

    .line 163
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    return-object v0
.end method

.method public hasCenteredDependents()Z
    .registers 6

    .line 57
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 58
    return v1

    .line 60
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 61
    .local v2, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 62
    .local v3, "opposite":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 63
    const/4 v0, 0x1

    return v0

    .line 65
    .end local v2    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "opposite":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_22
    goto :goto_a

    .line 66
    :cond_23
    return v1
.end method

.method public hasDependents()Z
    .registers 3

    .line 50
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 51
    return v1

    .line 53
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public hasFinalValue()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mHasFinalValue:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .line 254
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isConnectionAllowed(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z
    .registers 7
    .param p1, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 442
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 443
    .local v0, "checked":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-direct {p0, p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnectionToMe(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 444
    return v2

    .line 446
    :cond_d
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 447
    .local v1, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v3, 0x1

    if-ne v1, p1, :cond_19

    .line 448
    return v3

    .line 450
    :cond_19
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v4, v1, :cond_20

    .line 451
    return v3

    .line 453
    :cond_20
    return v2
.end method

.method public isConnectionAllowed(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z
    .registers 4
    .param p1, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "anchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 429
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnectionAllowed(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v0

    return v0
.end method

.method public isSideAnchor()Z
    .registers 3

    .line 311
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 324
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 316
    :pswitch_19
    const/4 v0, 0x1

    return v0

    .line 322
    :pswitch_1b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public isSimilarDimensionConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z
    .registers 6
    .param p1, "anchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 335
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v0

    .line 336
    .local v0, "target":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    .line 337
    return v2

    .line 339
    :cond_a
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_4e

    .line 357
    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 355
    :pswitch_24
    return v3

    .line 352
    :pswitch_25
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_37

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_37

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_37

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :cond_37
    :goto_37
    return v2

    .line 346
    :pswitch_38
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_46

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_46

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v2, 0x0

    :cond_46
    :goto_46
    return v2

    .line 341
    :pswitch_47
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v2, 0x0

    :goto_4d
    return v2

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_47
        :pswitch_38
        :pswitch_38
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_38
        :pswitch_25
        :pswitch_24
    .end packed-switch
.end method

.method public isValidConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z
    .registers 7
    .param p1, "anchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 263
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 264
    return v0

    .line 266
    :cond_4
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    .line 267
    .local v1, "target":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_27

    .line 268
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v4, :cond_26

    .line 269
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-nez v2, :cond_26

    .line 270
    :cond_25
    return v0

    .line 272
    :cond_26
    return v3

    .line 274
    :cond_27
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_8a

    .line 302
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 300
    :pswitch_40
    return v0

    .line 290
    :pswitch_41
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_4c

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_4a

    goto :goto_4c

    :cond_4a
    const/4 v2, 0x0

    goto :goto_4d

    :cond_4c
    :goto_4c
    const/4 v2, 0x1

    .line 291
    .local v2, "isCompatible":Z
    :goto_4d
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    instance-of v4, v4, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v4, :cond_5d

    .line 292
    if-nez v2, :cond_5b

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v4, :cond_5c

    :cond_5b
    const/4 v0, 0x1

    :cond_5c
    move v2, v0

    .line 294
    :cond_5d
    return v2

    .line 282
    .end local v2    # "isCompatible":Z
    :pswitch_5e
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_69

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_67

    goto :goto_69

    :cond_67
    const/4 v2, 0x0

    goto :goto_6a

    :cond_69
    :goto_69
    const/4 v2, 0x1

    .line 283
    .restart local v2    # "isCompatible":Z
    :goto_6a
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    instance-of v4, v4, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v4, :cond_7a

    .line 284
    if-nez v2, :cond_78

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v4, :cond_79

    :cond_78
    const/4 v0, 0x1

    :cond_79
    move v2, v0

    .line 286
    :cond_7a
    return v2

    .line 277
    .end local v2    # "isCompatible":Z
    :pswitch_7b
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_88

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_88

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_88

    const/4 v0, 0x1

    :cond_88
    return v0

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_5e
        :pswitch_5e
        :pswitch_41
        :pswitch_41
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
    .end packed-switch
.end method

.method public isVerticalAnchor()Z
    .registers 3

    .line 386
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 399
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 397
    :pswitch_19
    const/4 v0, 0x1

    return v0

    .line 391
    :pswitch_1b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1b
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method public reset()V
    .registers 3

    .line 190
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v0, :cond_1a

    .line 191
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 193
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 196
    :cond_1a
    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 197
    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 199
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 200
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mHasFinalValue:Z

    .line 201
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mFinalValue:I

    .line 202
    return-void
.end method

.method public resetFinalResolution()V
    .registers 2

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mHasFinalValue:Z

    .line 83
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mFinalValue:I

    .line 84
    return-void
.end method

.method public resetSolverVariable(Landroid/support/constraint/solver/Cache;)V
    .registers 5
    .param p1, "cache"    # Landroid/support/constraint/solver/Cache;

    .line 146
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    if-nez v0, :cond_f

    .line 147
    new-instance v0, Landroid/support/constraint/solver/SolverVariable;

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/SolverVariable;-><init>(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_12

    .line 149
    :cond_f
    invoke-virtual {v0}, Landroid/support/constraint/solver/SolverVariable;->reset()V

    .line 151
    :goto_12
    return-void
.end method

.method public setFinalValue(I)V
    .registers 3
    .param p1, "finalValue"    # I

    .line 70
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mFinalValue:I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mHasFinalValue:Z

    .line 72
    return-void
.end method

.method public setGoneMargin(I)V
    .registers 3
    .param p1, "margin"    # I

    .line 375
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 376
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 378
    :cond_8
    return-void
.end method

.method public setMargin(I)V
    .registers 3
    .param p1, "margin"    # I

    .line 365
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 366
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 368
    :cond_8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
