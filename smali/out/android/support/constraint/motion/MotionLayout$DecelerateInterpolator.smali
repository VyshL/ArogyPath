.class Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;
.super Landroid/support/constraint/motion/MotionInterpolator;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecelerateInterpolator"
.end annotation


# instance fields
.field currentP:F

.field initalV:F

.field maxA:F

.field final synthetic this$0:Landroid/support/constraint/motion/MotionLayout;


# direct methods
.method constructor <init>(Landroid/support/constraint/motion/MotionLayout;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 1695
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-direct {p0}, Landroid/support/constraint/motion/MotionInterpolator;-><init>()V

    .line 1696
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->initalV:F

    .line 1697
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->currentP:F

    return-void
.end method


# virtual methods
.method public config(FFF)V
    .registers 4
    .param p1, "velocity"    # F
    .param p2, "position"    # F
    .param p3, "maxAcceleration"    # F

    .line 1701
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->initalV:F

    .line 1702
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->currentP:F

    .line 1703
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->maxA:F

    .line 1704
    return-void
.end method

.method public getInterpolation(F)F
    .registers 6
    .param p1, "time"    # F

    .line 1708
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->initalV:F

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2a

    .line 1709
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->maxA:F

    div-float v3, v0, v2

    cmpg-float v3, v3, p1

    if-gez v3, :cond_13

    .line 1710
    div-float p1, v0, v2

    .line 1712
    :cond_13
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->this$0:Landroid/support/constraint/motion/MotionLayout;

    mul-float v2, v2, p1

    sub-float/2addr v0, v2

    iput v0, v3, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 1713
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->initalV:F

    mul-float v0, v0, p1

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->maxA:F

    mul-float v2, v2, p1

    mul-float v2, v2, p1

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 1714
    .local v0, "pos":F
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->currentP:F

    add-float/2addr v1, v0

    return v1

    .line 1717
    .end local v0    # "pos":F
    :cond_2a
    neg-float v2, v0

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->maxA:F

    div-float/2addr v2, v3

    cmpg-float v2, v2, p1

    if-gez v2, :cond_35

    .line 1718
    neg-float v2, v0

    div-float p1, v2, v3

    .line 1720
    :cond_35
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->this$0:Landroid/support/constraint/motion/MotionLayout;

    mul-float v3, v3, p1

    add-float/2addr v0, v3

    iput v0, v2, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 1721
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->initalV:F

    mul-float v0, v0, p1

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->maxA:F

    mul-float v2, v2, p1

    mul-float v2, v2, p1

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 1722
    .restart local v0    # "pos":F
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->currentP:F

    add-float/2addr v1, v0

    return v1
.end method

.method public getVelocity()F
    .registers 2

    .line 1728
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v0, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    return v0
.end method
