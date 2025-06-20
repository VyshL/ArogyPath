.class public Landroid/support/constraint/motion/MotionHelper;
.super Landroid/support/constraint/ConstraintHelper;
.source "MotionHelper.java"

# interfaces
.implements Landroid/support/constraint/motion/Animatable;
.implements Landroid/support/constraint/motion/MotionLayout$TransitionListener;


# instance fields
.field private mProgress:F

.field private mUseOnHide:Z

.field private mUseOnShow:Z

.field protected views:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnShow:Z

    .line 18
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnHide:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnShow:Z

    .line 18
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnHide:Z

    .line 28
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/MotionHelper;->init(Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnShow:Z

    .line 18
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnHide:Z

    .line 33
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/MotionHelper;->init(Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getProgress()F
    .registers 2

    .line 76
    iget v0, p0, Landroid/support/constraint/motion/MotionHelper;->mProgress:F

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 41
    if-eqz p1, :cond_39

    .line 42
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->MotionHelper:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 44
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_36

    .line 45
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 46
    .local v3, "attr":I
    sget v4, Landroid/support/constraint/R$styleable;->MotionHelper_onShow:I

    if-ne v3, v4, :cond_27

    .line 47
    iget-boolean v4, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnShow:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnShow:Z

    goto :goto_33

    .line 48
    :cond_27
    sget v4, Landroid/support/constraint/R$styleable;->MotionHelper_onHide:I

    if-ne v3, v4, :cond_33

    .line 49
    iget-boolean v4, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnHide:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnHide:Z

    .line 44
    .end local v3    # "attr":I
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 52
    .end local v2    # "i":I
    :cond_36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "N":I
    :cond_39
    return-void
.end method

.method public isUseOnHide()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnHide:Z

    return v0
.end method

.method public isUsedOnShow()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnShow:Z

    return v0
.end method

.method public onTransitionChange(Landroid/support/constraint/motion/MotionLayout;IIF)V
    .registers 5
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;
    .param p2, "startId"    # I
    .param p3, "endId"    # I
    .param p4, "progress"    # F

    .line 121
    return-void
.end method

.method public onTransitionCompleted(Landroid/support/constraint/motion/MotionLayout;I)V
    .registers 3
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;
    .param p2, "currentId"    # I

    .line 126
    return-void
.end method

.method public onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V
    .registers 4
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;
    .param p2, "startId"    # I
    .param p3, "endId"    # I

    .line 116
    return-void
.end method

.method public onTransitionTrigger(Landroid/support/constraint/motion/MotionLayout;IZF)V
    .registers 5
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;
    .param p2, "triggerId"    # I
    .param p3, "positive"    # Z
    .param p4, "progress"    # F

    .line 131
    return-void
.end method

.method public setProgress(F)V
    .registers 7
    .param p1, "progress"    # F

    .line 81
    iput p1, p0, Landroid/support/constraint/motion/MotionHelper;->mProgress:F

    .line 82
    iget v0, p0, Landroid/support/constraint/motion/MotionHelper;->mCount:I

    if-lez v0, :cond_22

    .line 83
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionHelper;->getViews(Landroid/support/constraint/ConstraintLayout;)[Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionHelper;->views:[Landroid/view/View;

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget v1, p0, Landroid/support/constraint/motion/MotionHelper;->mCount:I

    if-ge v0, v1, :cond_21

    .line 86
    iget-object v1, p0, Landroid/support/constraint/motion/MotionHelper;->views:[Landroid/view/View;

    aget-object v1, v1, v0

    .line 87
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1, p1}, Landroid/support/constraint/motion/MotionHelper;->setProgress(Landroid/view/View;F)V

    .line 85
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .end local v0    # "i":I
    :cond_21
    goto :goto_3e

    .line 90
    :cond_22
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 91
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 93
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2d
    if-ge v2, v1, :cond_3e

    .line 94
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 95
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Landroid/support/constraint/motion/MotionHelper;

    if-eqz v4, :cond_38

    .line 96
    goto :goto_3b

    .line 98
    :cond_38
    invoke-virtual {p0, v3, p1}, Landroid/support/constraint/motion/MotionHelper;->setProgress(Landroid/view/View;F)V

    .line 93
    .end local v3    # "view":Landroid/view/View;
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 101
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3e
    :goto_3e
    return-void
.end method

.method public setProgress(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # F

    .line 111
    return-void
.end method
