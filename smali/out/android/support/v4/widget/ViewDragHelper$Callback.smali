.class public abstract Landroid/support/v4/widget/ViewDragHelper$Callback;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public getOrderedChildIndex(I)I
    .registers 2
    .param p1, "index"    # I

    .line 255
    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .registers 3
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .line 246
    return-void
.end method

.method public onEdgeLock(I)Z
    .registers 3
    .param p1, "edgeFlags"    # I

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouched(II)V
    .registers 3
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .line 220
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 3
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .line 187
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 163
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .line 176
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 4
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .line 207
    return-void
.end method

.method public abstract tryCaptureView(Landroid/view/View;I)Z
.end method
