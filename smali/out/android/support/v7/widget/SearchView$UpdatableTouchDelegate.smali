.class Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdatableTouchDelegate"
.end annotation


# instance fields
.field private final mActualBounds:Landroid/graphics/Rect;

.field private mDelegateTargeted:Z

.field private final mDelegateView:Landroid/view/View;

.field private final mSlop:I

.field private final mSlopBounds:Landroid/graphics/Rect;

.field private final mTargetBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 5
    .param p1, "targetBounds"    # Landroid/graphics/Rect;
    .param p2, "actualBounds"    # Landroid/graphics/Rect;
    .param p3, "delegateView"    # Landroid/view/View;

    .line 1755
    invoke-direct {p0, p1, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1756
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    .line 1757
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    .line 1758
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 1759
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    .line 1760
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1761
    iput-object p3, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 1762
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1773
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1774
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1775
    .local v1, "y":I
    const/4 v2, 0x0

    .line 1776
    .local v2, "sendToDelegate":Z
    const/4 v3, 0x1

    .line 1777
    .local v3, "hit":Z
    const/4 v4, 0x0

    .line 1779
    .local v4, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_70

    goto :goto_35

    .line 1796
    :pswitch_15
    iget-boolean v2, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    .line 1797
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    goto :goto_35

    .line 1788
    :pswitch_1b
    iget-boolean v2, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    .line 1789
    if-eqz v2, :cond_35

    .line 1790
    iget-object v5, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_35

    .line 1791
    const/4 v3, 0x0

    goto :goto_35

    .line 1781
    :pswitch_29
    iget-object v5, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1782
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    .line 1783
    const/4 v2, 0x1

    .line 1800
    :cond_35
    :goto_35
    if-eqz v2, :cond_6e

    .line 1801
    if-eqz v3, :cond_57

    iget-object v5, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_57

    .line 1805
    iget-object v5, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 1806
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 1805
    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_68

    .line 1809
    :cond_57
    iget-object v5, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1812
    :goto_68
    iget-object v5, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1814
    :cond_6e
    return v4

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_29
        :pswitch_1b
        :pswitch_1b
        :pswitch_15
    .end packed-switch
.end method

.method public setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "desiredBounds"    # Landroid/graphics/Rect;
    .param p2, "actualBounds"    # Landroid/graphics/Rect;

    .line 1765
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1766
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1767
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    neg-int v2, v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 1768
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1769
    return-void
.end method
