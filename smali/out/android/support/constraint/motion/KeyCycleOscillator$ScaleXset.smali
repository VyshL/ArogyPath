.class Landroid/support/constraint/motion/KeyCycleOscillator$ScaleXset;
.super Landroid/support/constraint/motion/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaleXset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 245
    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 248
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycleOscillator$ScaleXset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 249
    return-void
.end method
