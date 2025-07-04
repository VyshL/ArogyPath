.class abstract Landroid/support/constraint/motion/KeyPositionBase;
.super Landroid/support/constraint/motion/Key;
.source "KeyPositionBase.java"


# static fields
.field protected static final SELECTION_SLOPE:F = 20.0f


# instance fields
.field mCurveFit:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/support/constraint/motion/Key;-><init>()V

    .line 31
    sget v0, Landroid/support/constraint/motion/KeyPositionBase;->UNSET:I

    iput v0, p0, Landroid/support/constraint/motion/KeyPositionBase;->mCurveFit:I

    return-void
.end method


# virtual methods
.method abstract calcPosition(IIFFFF)V
.end method

.method getAttributeNames(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "attributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    return-void
.end method

.method abstract getPositionX()F
.end method

.method abstract getPositionY()F
.end method

.method public abstract intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z
.end method

.method abstract positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
.end method
