.class Landroid/support/constraint/motion/TimeCycleSplineSet$PathRotate;
.super Landroid/support/constraint/motion/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathRotate"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 261
    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setPathRotate(Landroid/view/View;Landroid/support/constraint/motion/KeyCache;FJDD)Z
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cache"    # Landroid/support/constraint/motion/KeyCache;
    .param p3, "t"    # F
    .param p4, "time"    # J
    .param p6, "dx"    # D
    .param p8, "dy"    # D

    .line 268
    move-object v0, p0

    move v1, p3

    move-wide v2, p4

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/motion/TimeCycleSplineSet$PathRotate;->get(FJLandroid/view/View;Landroid/support/constraint/motion/KeyCache;)F

    move-result v0

    invoke-static {p8, p9, p6, p7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 269
    iget-boolean v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet$PathRotate;->mContinue:Z

    return v0
.end method

.method public setProperty(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroid/support/constraint/motion/KeyCache;

    .line 264
    iget-boolean v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet$PathRotate;->mContinue:Z

    return v0
.end method
