.class public Landroid/support/constraint/solver/state/helpers/GuidelineReference;
.super Ljava/lang/Object;
.source "GuidelineReference.java"

# interfaces
.implements Landroid/support/constraint/solver/state/Reference;


# instance fields
.field private key:Ljava/lang/Object;

.field private mEnd:I

.field private mGuidelineWidget:Landroid/support/constraint/solver/widgets/Guideline;

.field private mOrientation:I

.field private mPercent:F

.field private mStart:I

.field final mState:Landroid/support/constraint/solver/state/State;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/state/State;)V
    .registers 3
    .param p1, "state"    # Landroid/support/constraint/solver/state/State;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mStart:I

    .line 30
    iput v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mEnd:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mPercent:F

    .line 43
    iput-object p1, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mState:Landroid/support/constraint/solver/state/State;

    .line 44
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 3

    .line 73
    iget-object v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroid/support/constraint/solver/widgets/Guideline;

    iget v1, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mOrientation:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 74
    iget v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 75
    iget-object v1, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroid/support/constraint/solver/widgets/Guideline;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_23

    .line 76
    :cond_12
    iget v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mEnd:I

    if-eq v0, v1, :cond_1c

    .line 77
    iget-object v1, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroid/support/constraint/solver/widgets/Guideline;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_23

    .line 79
    :cond_1c
    iget-object v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroid/support/constraint/solver/widgets/Guideline;

    iget v1, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mPercent:F

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 81
    :goto_23
    return-void
.end method

.method public end(Ljava/lang/Object;)V
    .registers 3
    .param p1, "margin"    # Ljava/lang/Object;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mStart:I

    .line 54
    iget-object v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mState:Landroid/support/constraint/solver/state/State;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mEnd:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mPercent:F

    .line 56
    return-void
.end method

.method public getConstraintWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v0, :cond_b

    .line 86
    new-instance v0, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroid/support/constraint/solver/widgets/Guideline;

    .line 88
    :cond_b
    iget-object v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroid/support/constraint/solver/widgets/Guideline;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .line 39
    iget-object v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .line 69
    iget v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mOrientation:I

    return v0
.end method

.method public percent(F)V
    .registers 3
    .param p1, "percent"    # F

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mStart:I

    .line 60
    iput v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mEnd:I

    .line 61
    iput p1, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mPercent:F

    .line 62
    return-void
.end method

.method public setConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 3
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 93
    instance-of v0, p1, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v0, :cond_a

    .line 94
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/solver/widgets/Guideline;

    iput-object v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroid/support/constraint/solver/widgets/Guideline;

    goto :goto_d

    .line 96
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroid/support/constraint/solver/widgets/Guideline;

    .line 98
    :goto_d
    return-void
.end method

.method public setKey(Ljava/lang/Object;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->key:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .line 65
    iput p1, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mOrientation:I

    .line 66
    return-void
.end method

.method public start(Ljava/lang/Object;)V
    .registers 3
    .param p1, "margin"    # Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mState:Landroid/support/constraint/solver/state/State;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mStart:I

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mEnd:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->mPercent:F

    .line 50
    return-void
.end method
