.class public Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Measure"
.end annotation


# static fields
.field public static SELF_DIMENSIONS:I

.field public static TRY_GIVEN_DIMENSIONS:I

.field public static USE_GIVEN_DIMENSIONS:I


# instance fields
.field public horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public horizontalDimension:I

.field public measureStrategy:I

.field public measuredBaseline:I

.field public measuredHasBaseline:Z

.field public measuredHeight:I

.field public measuredNeedsSolverPass:Z

.field public measuredWidth:I

.field public verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public verticalDimension:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 495
    const/4 v0, 0x0

    sput v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    .line 496
    const/4 v0, 0x1

    sput v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    .line 497
    const/4 v0, 0x2

    sput v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
