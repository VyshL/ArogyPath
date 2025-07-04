.class abstract Landroid/support/v7/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8


# instance fields
.field protected mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field protected mContentHeight:I

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field protected mMenuView:Landroid/support/v7/widget/ActionMenuView;

.field protected final mPopupContext:Landroid/content/Context;

.field protected final mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Landroid/support/v7/widget/AbsActionBarView;)V

    iput-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    .line 62
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 63
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarPopupTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_2a

    .line 65
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    goto :goto_2c

    .line 67
    :cond_2a
    iput-object p1, p0, Landroid/support/v7/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    .line 69
    :goto_2c
    return-void
.end method

.method static synthetic access$001(Landroid/support/v7/widget/AbsActionBarView;I)V
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/AbsActionBarView;
    .param p1, "x1"    # I

    .line 34
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$101(Landroid/support/v7/widget/AbsActionBarView;I)V
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/AbsActionBarView;
    .param p1, "x1"    # I

    .line 34
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected static next(IIZ)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "val"    # I
    .param p2, "isRtl"    # Z

    .line 256
    if-eqz p2, :cond_5

    sub-int v0, p0, p1

    goto :goto_7

    :cond_5
    add-int v0, p0, p1

    :goto_7
    return v0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 179
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v7/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 180
    .local v0, "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 181
    return-void
.end method

.method public canShowOverflowMenu()Z
    .registers 2

    .line 235
    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public dismissPopupMenus()V
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_7

    .line 240
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 242
    :cond_7
    return-void
.end method

.method public getAnimatedVisibility()I
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_9

    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    return v0

    .line 154
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .registers 2

    .line 144
    iget v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_9

    .line 211
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    return v0

    .line 213
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_9

    .line 225
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    return v0

    .line 227
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .line 217
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_9

    .line 218
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    return v0

    .line 220
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    .line 231
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .line 246
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 250
    sub-int/2addr p2, p4

    .line 252
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 73
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 77
    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AbsActionBarView;->setContentHeight(I)V

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    iget-object v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_24

    .line 83
    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    :cond_24
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 119
    .local v0, "action":I
    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_b

    .line 120
    iput-boolean v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    .line 123
    :cond_b
    iget-boolean v3, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1a

    .line 124
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 125
    .local v3, "handled":Z
    if-ne v0, v2, :cond_1a

    if-nez v3, :cond_1a

    .line 126
    iput-boolean v4, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    .line 130
    .end local v3    # "handled":Z
    :cond_1a
    const/16 v2, 0xa

    if-eq v0, v2, :cond_21

    const/4 v2, 0x3

    if-ne v0, v2, :cond_23

    .line 132
    :cond_21
    iput-boolean v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    .line 135
    :cond_23
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 95
    .local v0, "action":I
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 96
    iput-boolean v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    .line 99
    :cond_9
    iget-boolean v2, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_18

    .line 100
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 101
    .local v2, "handled":Z
    if-nez v0, :cond_18

    if-nez v2, :cond_18

    .line 102
    iput-boolean v3, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    .line 106
    .end local v2    # "handled":Z
    :cond_18
    if-eq v0, v3, :cond_1d

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1f

    .line 107
    :cond_1d
    iput-boolean v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    .line 110
    :cond_1f
    return v3
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 261
    .local v0, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 262
    .local v1, "childHeight":I
    sub-int v2, p4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    .line 264
    .local v2, "childTop":I
    if-eqz p5, :cond_17

    .line 265
    sub-int v3, p2, v0

    add-int v4, v2, v1

    invoke-virtual {p1, v3, v2, p2, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1e

    .line 267
    :cond_17
    add-int v3, p2, v0

    add-int v4, v2, v1

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 270
    :goto_1e
    if-eqz p5, :cond_22

    neg-int v3, v0

    goto :goto_23

    :cond_22
    move v3, v0

    :goto_23
    return v3
.end method

.method public postShowOverflowMenu()V
    .registers 2

    .line 201
    new-instance v0, Landroid/support/v7/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AbsActionBarView$1;-><init>(Landroid/support/v7/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method

.method public setContentHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 139
    iput p1, p0, Landroid/support/v7/widget/AbsActionBarView;->mContentHeight:I

    .line 140
    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->requestLayout()V

    .line 141
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 185
    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_10

    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_d

    .line 187
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 189
    :cond_d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 191
    :cond_10
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 6
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_7

    .line 159
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 162
    :cond_7
    const/4 v0, 0x0

    if-nez p1, :cond_2a

    .line 163
    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_13

    .line 164
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AbsActionBarView;->setAlpha(F)V

    .line 166
    :cond_13
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 167
    .local v0, "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 168
    iget-object v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 169
    return-object v0

    .line 171
    .end local v0    # "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_2a
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 172
    .restart local v0    # "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 173
    iget-object v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 174
    return-object v0
.end method

.method public showOverflowMenu()Z
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_9

    .line 195
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    return v0

    .line 197
    :cond_9
    const/4 v0, 0x0

    return v0
.end method
