.class Landroid/support/constraint/motion/SplineSet$PathRotate;
.super Landroid/support/constraint/motion/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathRotate"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setPathRotate(Landroid/view/View;FDD)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "dx"    # D
    .param p5, "dy"    # D

    .line 213
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/SplineSet$PathRotate;->get(F)F

    move-result v0

    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 214
    return-void
.end method

.method public setProperty(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 210
    return-void
.end method
