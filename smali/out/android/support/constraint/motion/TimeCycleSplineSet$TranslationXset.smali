.class Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationXset;
.super Landroid/support/constraint/motion/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslationXset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 289
    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroid/support/constraint/motion/KeyCache;

    .line 292
    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationXset;->get(FJLandroid/view/View;Landroid/support/constraint/motion/KeyCache;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 293
    iget-boolean v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationXset;->mContinue:Z

    return v0
.end method
