.class public Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;,
        Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    }
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field private static final DEBUG:Z = false

.field public static final EXACTLY:I = 0x40000000

.field public static final FIXED:I = -0x3

.field public static final MATCH_PARENT:I = -0x1

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I = 0x0

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constraintWidgetContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 3
    .param p1, "constraintWidgetContainer"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 71
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 72
    return-void
.end method

.method private measure(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z
    .registers 12
    .param p1, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p3, "measureStrategy"    # I

    .line 457
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 458
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 459
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 460
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 461
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 462
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput p3, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 464
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    .line 465
    .local v0, "horizontalMatchConstraints":Z
    :goto_35
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_3f

    const/4 v2, 0x1

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    .line 466
    .local v2, "verticalMatchConstraints":Z
    :goto_40
    const/4 v4, 0x0

    if-eqz v0, :cond_4b

    iget v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_4b

    const/4 v5, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v5, 0x0

    .line 467
    .local v5, "horizontalUseRatio":Z
    :goto_4c
    if-eqz v2, :cond_56

    iget v6, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_56

    const/4 v4, 0x1

    goto :goto_57

    :cond_56
    const/4 v4, 0x0

    .line 469
    .local v4, "verticalUseRatio":Z
    :goto_57
    const/4 v6, 0x4

    if-eqz v5, :cond_66

    .line 470
    iget-object v7, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v1, v7, v1

    if-ne v1, v6, :cond_66

    .line 471
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v7, v1, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 474
    :cond_66
    if-eqz v4, :cond_74

    .line 475
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v1, v1, v3

    if-ne v1, v6, :cond_74

    .line 476
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, v1, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 480
    :cond_74
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {p1, p2, v1}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 481
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 482
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 483
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v1, v1, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 484
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 485
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    sget v3, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    iput v3, v1, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 486
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v1, v1, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    return v1
.end method

.method private measureChildren(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 15
    .param p1, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 75
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 76
    .local v0, "childCount":I
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v1

    .line 77
    .local v1, "optimize":Z
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v2

    .line 78
    .local v2, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_c1

    .line 79
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 80
    .local v4, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v5, v4, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v5, :cond_21

    .line 81
    goto/16 :goto_bd

    .line 83
    :cond_21
    instance-of v5, v4, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v5, :cond_27

    .line 84
    goto/16 :goto_bd

    .line 86
    :cond_27
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 87
    goto/16 :goto_bd

    .line 90
    :cond_2f
    if-eqz v1, :cond_4b

    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v5, :cond_4b

    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v5, :cond_4b

    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v5, :cond_4b

    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v5, :cond_4b

    .line 93
    goto/16 :goto_bd

    .line 96
    :cond_4b
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    .line 97
    .local v6, "widthBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    .line 99
    .local v8, "heightBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v9, :cond_66

    iget v9, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v9, v7, :cond_66

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_66

    iget v9, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v9, v7, :cond_66

    const/4 v5, 0x1

    .line 104
    .local v5, "skip":Z
    :cond_66
    if-nez v5, :cond_a8

    invoke-virtual {p1, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v7

    if-eqz v7, :cond_a8

    instance-of v7, v4, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-nez v7, :cond_a8

    .line 106
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_85

    iget v7, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v7, :cond_85

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v7, :cond_85

    .line 109
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-nez v7, :cond_85

    .line 110
    const/4 v5, 0x1

    .line 113
    :cond_85
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v7, :cond_98

    iget v7, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v7, :cond_98

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_98

    .line 116
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-nez v7, :cond_98

    .line 117
    const/4 v5, 0x1

    .line 121
    :cond_98
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_a0

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v7, :cond_a8

    :cond_a0
    iget v7, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_a8

    .line 124
    const/4 v5, 0x1

    .line 128
    :cond_a8
    if-eqz v5, :cond_ab

    .line 131
    goto :goto_bd

    .line 134
    :cond_ab
    sget v7, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-direct {p0, v2, v4, v7}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->measure(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    .line 135
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v7, :cond_bd

    .line 136
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v9, v7, Landroid/support/constraint/solver/Metrics;->measuredWidgets:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v7, Landroid/support/constraint/solver/Metrics;->measuredWidgets:J

    .line 78
    .end local v4    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v5    # "skip":Z
    .end local v6    # "widthBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v8    # "heightBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_bd
    :goto_bd
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11

    .line 139
    .end local v3    # "i":I
    :cond_c1
    invoke-interface {v2}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;->didMeasures()V

    .line 140
    return-void
.end method

.method private solveLinearSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V
    .registers 8
    .param p1, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 148
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v0

    .line 149
    .local v0, "minWidth":I
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v1

    .line 150
    .local v1, "minHeight":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 151
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 152
    invoke-virtual {p1, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 153
    invoke-virtual {p1, p4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 154
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 155
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 159
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 164
    return-void
.end method


# virtual methods
.method public solverMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;IIIIIIIII)J
    .registers 46
    .param p1, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "optimizationLevel"    # I
    .param p3, "paddingX"    # I
    .param p4, "paddingY"    # I
    .param p5, "widthMode"    # I
    .param p6, "widthSize"    # I
    .param p7, "heightMode"    # I
    .param p8, "heightSize"    # I
    .param p9, "lastMeasureWidth"    # I
    .param p10, "lastMeasureHeight"    # I

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v5

    .line 186
    .local v5, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    const-wide/16 v6, 0x0

    .line 188
    .local v6, "layoutTime":J
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 189
    .local v8, "childCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v9

    .line 190
    .local v9, "startingWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v10

    .line 192
    .local v10, "startingHeight":I
    const/16 v11, 0x80

    invoke-static {v2, v11}, Landroid/support/constraint/solver/widgets/Optimizer;->enabled(II)Z

    move-result v11

    .line 193
    .local v11, "optimizeWrap":Z
    if-nez v11, :cond_31

    const/16 v14, 0x40

    invoke-static {v2, v14}, Landroid/support/constraint/solver/widgets/Optimizer;->enabled(II)Z

    move-result v14

    if-eqz v14, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v14, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v14, 0x1

    .line 195
    .local v14, "optimize":Z
    :goto_32
    if-eqz v14, :cond_a5

    .line 196
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_35
    if-ge v15, v8, :cond_a2

    .line 197
    iget-object v13, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 198
    .local v13, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v2, :cond_49

    const/4 v2, 0x1

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    .line 199
    .local v2, "matchWidth":Z
    :goto_4a
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    move/from16 v18, v14

    .end local v14    # "optimize":Z
    .local v18, "optimize":Z
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v14, :cond_56

    const/4 v12, 0x1

    goto :goto_57

    :cond_56
    const/4 v12, 0x0

    .line 200
    .local v12, "matchHeight":Z
    :goto_57
    if-eqz v2, :cond_67

    if-eqz v12, :cond_67

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v14

    const/16 v19, 0x0

    cmpl-float v14, v14, v19

    if-lez v14, :cond_67

    const/4 v14, 0x1

    goto :goto_68

    :cond_67
    const/4 v14, 0x0

    .line 201
    .local v14, "ratio":Z
    :goto_68
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v19

    if-eqz v19, :cond_75

    if-eqz v14, :cond_75

    .line 202
    const/16 v18, 0x0

    .line 203
    move/from16 v14, v18

    goto :goto_a9

    .line 205
    :cond_75
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v19

    if-eqz v19, :cond_82

    if-eqz v14, :cond_82

    .line 206
    const/16 v18, 0x0

    .line 207
    move/from16 v14, v18

    goto :goto_a9

    .line 209
    :cond_82
    move/from16 v19, v2

    .end local v2    # "matchWidth":Z
    .local v19, "matchWidth":Z
    instance-of v2, v13, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-eqz v2, :cond_8b

    .line 210
    const/4 v2, 0x0

    .line 211
    .end local v18    # "optimize":Z
    .local v2, "optimize":Z
    move v14, v2

    goto :goto_a9

    .line 213
    .end local v2    # "optimize":Z
    .restart local v18    # "optimize":Z
    :cond_8b
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v2

    if-nez v2, :cond_9f

    .line 214
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v2

    if-eqz v2, :cond_98

    goto :goto_9f

    .line 196
    .end local v12    # "matchHeight":Z
    .end local v13    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "ratio":Z
    .end local v19    # "matchWidth":Z
    :cond_98
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p2

    move/from16 v14, v18

    goto :goto_35

    .line 215
    .restart local v12    # "matchHeight":Z
    .restart local v13    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v14    # "ratio":Z
    .restart local v19    # "matchWidth":Z
    :cond_9f
    :goto_9f
    const/4 v2, 0x0

    .line 216
    .end local v18    # "optimize":Z
    .restart local v2    # "optimize":Z
    move v14, v2

    goto :goto_a9

    .line 196
    .end local v2    # "optimize":Z
    .end local v12    # "matchHeight":Z
    .end local v13    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v19    # "matchWidth":Z
    .local v14, "optimize":Z
    :cond_a2
    move/from16 v18, v14

    .end local v14    # "optimize":Z
    .restart local v18    # "optimize":Z
    goto :goto_a7

    .line 195
    .end local v15    # "i":I
    .end local v18    # "optimize":Z
    .restart local v14    # "optimize":Z
    :cond_a5
    move/from16 v18, v14

    .line 221
    .end local v14    # "optimize":Z
    .restart local v18    # "optimize":Z
    :goto_a7
    move/from16 v14, v18

    .end local v18    # "optimize":Z
    .restart local v14    # "optimize":Z
    :goto_a9
    const-wide/16 v12, 0x1

    if-eqz v14, :cond_bb

    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v2, :cond_bb

    .line 222
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-wide/from16 v18, v6

    .end local v6    # "layoutTime":J
    .local v18, "layoutTime":J
    iget-wide v6, v2, Landroid/support/constraint/solver/Metrics;->measures:J

    add-long/2addr v6, v12

    iput-wide v6, v2, Landroid/support/constraint/solver/Metrics;->measures:J

    goto :goto_bd

    .line 221
    .end local v18    # "layoutTime":J
    .restart local v6    # "layoutTime":J
    :cond_bb
    move-wide/from16 v18, v6

    .line 225
    .end local v6    # "layoutTime":J
    .restart local v18    # "layoutTime":J
    :goto_bd
    const/4 v2, 0x0

    .line 227
    .local v2, "allSolved":Z
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v3, v6, :cond_c4

    if-eq v4, v6, :cond_c6

    :cond_c4
    if-eqz v11, :cond_c8

    :cond_c6
    const/4 v7, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v7, 0x0

    :goto_c9
    and-int/2addr v7, v14

    .line 229
    .end local v14    # "optimize":Z
    .local v7, "optimize":Z
    const/4 v14, 0x0

    .line 231
    .local v14, "computations":I
    if-eqz v7, :cond_136

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMaxWidth()I

    move-result v15

    move/from16 v12, p6

    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 236
    .end local p6    # "widthSize":I
    .local v12, "widthSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMaxHeight()I

    move-result v13

    move/from16 v15, p8

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 238
    .end local p8    # "heightSize":I
    .local v13, "heightSize":I
    if-ne v3, v6, :cond_ef

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v15

    if-eq v15, v12, :cond_ef

    .line 239
    invoke-virtual {v1, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 242
    :cond_ef
    if-ne v4, v6, :cond_fd

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v15

    if-eq v15, v13, :cond_fd

    .line 243
    invoke-virtual {v1, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 246
    :cond_fd
    if-ne v3, v6, :cond_108

    if-ne v4, v6, :cond_108

    .line 247
    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->directMeasure(Z)Z

    move-result v2

    .line 248
    const/4 v14, 0x2

    const/4 v15, 0x1

    goto :goto_126

    .line 250
    :cond_108
    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->directMeasureSetup(Z)Z

    move-result v2

    .line 251
    if-ne v3, v6, :cond_118

    .line 252
    const/4 v15, 0x0

    invoke-virtual {v1, v11, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v17

    and-int v2, v2, v17

    .line 253
    add-int/lit8 v14, v14, 0x1

    goto :goto_119

    .line 251
    :cond_118
    const/4 v15, 0x0

    .line 255
    :goto_119
    if-ne v4, v6, :cond_125

    .line 256
    const/4 v15, 0x1

    invoke-virtual {v1, v11, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v16

    and-int v2, v2, v16

    .line 257
    add-int/lit8 v14, v14, 0x1

    goto :goto_126

    .line 255
    :cond_125
    const/4 v15, 0x1

    .line 260
    :goto_126
    if-eqz v2, :cond_134

    .line 261
    if-ne v3, v6, :cond_12b

    goto :goto_12c

    :cond_12b
    const/4 v15, 0x0

    :goto_12c
    if-ne v4, v6, :cond_130

    const/4 v6, 0x1

    goto :goto_131

    :cond_130
    const/4 v6, 0x0

    :goto_131
    invoke-virtual {v1, v15, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    .line 274
    :cond_134
    const/4 v15, 0x0

    goto :goto_13b

    .line 231
    .end local v12    # "widthSize":I
    .end local v13    # "heightSize":I
    .restart local p6    # "widthSize":I
    .restart local p8    # "heightSize":I
    :cond_136
    move/from16 v12, p6

    const/4 v15, 0x0

    move/from16 v13, p8

    .line 274
    .end local p6    # "widthSize":I
    .end local p8    # "heightSize":I
    .restart local v12    # "widthSize":I
    .restart local v13    # "heightSize":I
    :goto_13b
    if-eqz v2, :cond_154

    const/4 v6, 0x2

    if-eq v14, v6, :cond_141

    goto :goto_154

    :cond_141
    move/from16 p6, v2

    move-object/from16 v32, v5

    move/from16 v27, v7

    move/from16 v16, v8

    move v5, v9

    move/from16 v17, v11

    move/from16 p8, v12

    move/from16 v22, v13

    move/from16 v23, v14

    goto/16 :goto_3fc

    .line 275
    :cond_154
    :goto_154
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v6

    .line 276
    .local v6, "optimizations":I
    if-lez v8, :cond_15d

    .line 277
    invoke-direct/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->measureChildren(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 283
    :cond_15d
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 286
    iget-object v15, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 289
    .local v15, "sizeDependentWidgetsCount":I
    if-lez v8, :cond_170

    .line 290
    move/from16 p6, v2

    .end local v2    # "allSolved":Z
    .local p6, "allSolved":Z
    const-string v2, "First pass"

    invoke-direct {v0, v1, v2, v9, v10}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    goto :goto_172

    .line 289
    .end local p6    # "allSolved":Z
    .restart local v2    # "allSolved":Z
    :cond_170
    move/from16 p6, v2

    .line 297
    .end local v2    # "allSolved":Z
    .restart local p6    # "allSolved":Z
    :goto_172
    if-lez v15, :cond_3e4

    .line 298
    const/4 v2, 0x0

    .line 299
    .local v2, "needSolverPass":Z
    move/from16 p8, v2

    .end local v2    # "needSolverPass":Z
    .local p8, "needSolverPass":Z
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_181

    const/4 v2, 0x1

    goto :goto_182

    :cond_181
    const/4 v2, 0x0

    .line 301
    .local v2, "containerWrapWidth":Z
    :goto_182
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_18d

    const/16 v16, 0x1

    goto :goto_18f

    :cond_18d
    const/16 v16, 0x0

    :goto_18f
    move/from16 v3, v16

    .line 303
    .local v3, "containerWrapHeight":Z
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    move/from16 v16, v8

    .end local v8    # "childCount":I
    .local v16, "childCount":I
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 304
    .local v4, "minWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    move/from16 v17, v4

    .end local v4    # "minWidth":I
    .local v17, "minWidth":I
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 309
    .local v4, "minHeight":I
    const/4 v8, 0x0

    move/from16 v34, v4

    move/from16 v4, p8

    move/from16 p8, v12

    move v12, v8

    move/from16 v8, v17

    move/from16 v17, v11

    move/from16 v11, v34

    .local v4, "needSolverPass":Z
    .local v8, "minWidth":I
    .local v11, "minHeight":I
    .local v12, "i":I
    .local v17, "optimizeWrap":Z
    .local p8, "widthSize":I
    :goto_1bf
    if-ge v12, v15, :cond_278

    .line 310
    move/from16 v22, v13

    .end local v13    # "heightSize":I
    .local v22, "heightSize":I
    iget-object v13, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 311
    .local v13, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v23, v14

    .end local v14    # "computations":I
    .local v23, "computations":I
    instance-of v14, v13, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-nez v14, :cond_1d9

    .line 312
    move-object/from16 v26, v5

    move/from16 v24, v6

    move/from16 v25, v9

    goto/16 :goto_26a

    .line 314
    :cond_1d9
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    .line 315
    .local v14, "preWidth":I
    move/from16 v24, v6

    .end local v6    # "optimizations":I
    .local v24, "optimizations":I
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    .line 316
    .local v6, "preHeight":I
    move/from16 v25, v9

    .end local v9    # "startingWidth":I
    .local v25, "startingWidth":I
    sget v9, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    invoke-direct {v0, v5, v13, v9}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->measure(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    or-int/2addr v4, v9

    .line 317
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v9, :cond_1ff

    .line 318
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v27, v4

    move-object/from16 v26, v5

    .end local v4    # "needSolverPass":Z
    .end local v5    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v26, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v27, "needSolverPass":Z
    iget-wide v4, v9, Landroid/support/constraint/solver/Metrics;->measuredMatchWidgets:J

    const-wide/16 v20, 0x1

    add-long v4, v4, v20

    iput-wide v4, v9, Landroid/support/constraint/solver/Metrics;->measuredMatchWidgets:J

    goto :goto_203

    .line 317
    .end local v26    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v27    # "needSolverPass":Z
    .restart local v4    # "needSolverPass":Z
    .restart local v5    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    :cond_1ff
    move/from16 v27, v4

    move-object/from16 v26, v5

    .line 320
    .end local v4    # "needSolverPass":Z
    .end local v5    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v26    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v27    # "needSolverPass":Z
    :goto_203
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    .line 321
    .local v4, "measuredWidth":I
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    .line 322
    .local v5, "measuredHeight":I
    if-eq v4, v14, :cond_233

    .line 323
    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 324
    if-eqz v2, :cond_22f

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v9

    if-le v9, v8, :cond_22f

    .line 325
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v9

    move/from16 v28, v4

    .end local v4    # "measuredWidth":I
    .local v28, "measuredWidth":I
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 326
    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v9, v4

    .line 327
    .local v9, "w":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v8, v4

    .end local v8    # "minWidth":I
    .local v4, "minWidth":I
    goto :goto_231

    .line 324
    .end local v9    # "w":I
    .end local v28    # "measuredWidth":I
    .local v4, "measuredWidth":I
    .restart local v8    # "minWidth":I
    :cond_22f
    move/from16 v28, v4

    .line 329
    .end local v4    # "measuredWidth":I
    .restart local v28    # "measuredWidth":I
    :goto_231
    const/4 v4, 0x1

    .end local v27    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    goto :goto_237

    .line 322
    .end local v28    # "measuredWidth":I
    .local v4, "measuredWidth":I
    .restart local v27    # "needSolverPass":Z
    :cond_233
    move/from16 v28, v4

    .end local v4    # "measuredWidth":I
    .restart local v28    # "measuredWidth":I
    move/from16 v4, v27

    .line 331
    .end local v27    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    :goto_237
    if-eq v5, v6, :cond_25f

    .line 332
    invoke-virtual {v13, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 333
    if-eqz v3, :cond_25b

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v9

    if-le v9, v11, :cond_25b

    .line 334
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v9

    move/from16 v27, v4

    .end local v4    # "needSolverPass":Z
    .restart local v27    # "needSolverPass":Z
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 335
    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v9, v4

    .line 336
    .local v9, "h":I
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v11, v4

    .end local v11    # "minHeight":I
    .local v4, "minHeight":I
    goto :goto_25d

    .line 333
    .end local v9    # "h":I
    .end local v27    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    .restart local v11    # "minHeight":I
    :cond_25b
    move/from16 v27, v4

    .line 338
    .end local v4    # "needSolverPass":Z
    .restart local v27    # "needSolverPass":Z
    :goto_25d
    const/4 v4, 0x1

    .end local v27    # "needSolverPass":Z
    .restart local v4    # "needSolverPass":Z
    goto :goto_261

    .line 331
    :cond_25f
    move/from16 v27, v4

    .line 340
    :goto_261
    move-object v9, v13

    check-cast v9, Landroid/support/constraint/solver/widgets/VirtualLayout;

    .line 341
    .local v9, "virtualLayout":Landroid/support/constraint/solver/widgets/VirtualLayout;
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/VirtualLayout;->needSolverPass()Z

    move-result v27

    or-int v4, v4, v27

    .line 309
    .end local v5    # "measuredHeight":I
    .end local v6    # "preHeight":I
    .end local v9    # "virtualLayout":Landroid/support/constraint/solver/widgets/VirtualLayout;
    .end local v13    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "preWidth":I
    .end local v28    # "measuredWidth":I
    :goto_26a
    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v22

    move/from16 v14, v23

    move/from16 v6, v24

    move/from16 v9, v25

    move-object/from16 v5, v26

    goto/16 :goto_1bf

    .end local v22    # "heightSize":I
    .end local v23    # "computations":I
    .end local v24    # "optimizations":I
    .end local v25    # "startingWidth":I
    .end local v26    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v5, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "optimizations":I
    .local v9, "startingWidth":I
    .local v13, "heightSize":I
    .local v14, "computations":I
    :cond_278
    move-object/from16 v26, v5

    move/from16 v24, v6

    move/from16 v25, v9

    move/from16 v22, v13

    move/from16 v23, v14

    .line 345
    .end local v5    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v6    # "optimizations":I
    .end local v9    # "startingWidth":I
    .end local v12    # "i":I
    .end local v13    # "heightSize":I
    .end local v14    # "computations":I
    .restart local v22    # "heightSize":I
    .restart local v23    # "computations":I
    .restart local v24    # "optimizations":I
    .restart local v25    # "startingWidth":I
    .restart local v26    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    const/4 v5, 0x2

    .line 346
    .local v5, "maxIterations":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_284
    if-ge v6, v5, :cond_3b2

    .line 347
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_287
    if-ge v9, v15, :cond_389

    .line 348
    iget-object v12, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 349
    .local v12, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v13, v12, Landroid/support/constraint/solver/widgets/Helper;

    if-eqz v13, :cond_299

    instance-of v13, v12, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-eqz v13, :cond_2bf

    :cond_299
    instance-of v13, v12, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v13, :cond_29e

    .line 350
    goto :goto_2bf

    .line 352
    :cond_29e
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2a7

    .line 353
    goto :goto_2bf

    .line 355
    :cond_2a7
    if-eqz v7, :cond_2ba

    iget-object v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v13, v13, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v13, v13, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v13, :cond_2ba

    iget-object v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v13, v13, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v13, v13, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v13, :cond_2ba

    .line 357
    goto :goto_2bf

    .line 359
    :cond_2ba
    instance-of v13, v12, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-eqz v13, :cond_2cf

    .line 360
    nop

    .line 347
    .end local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2bf
    :goto_2bf
    move/from16 v33, v2

    move/from16 v28, v5

    move/from16 v31, v6

    move/from16 v27, v7

    move/from16 v29, v15

    move-object/from16 v32, v26

    const-wide/16 v20, 0x1

    goto/16 :goto_379

    .line 363
    .restart local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2cf
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    .line 364
    .local v13, "preWidth":I
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    .line 365
    .local v14, "preHeight":I
    move/from16 v27, v7

    .end local v7    # "optimize":Z
    .local v27, "optimize":Z
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v7

    .line 367
    .local v7, "preBaselineDistance":I
    sget v28, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    .line 368
    .local v28, "measureStrategy":I
    move/from16 v29, v15

    .end local v15    # "sizeDependentWidgetsCount":I
    .local v29, "sizeDependentWidgetsCount":I
    add-int/lit8 v15, v5, -0x1

    if-ne v6, v15, :cond_2ea

    .line 369
    sget v28, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    move/from16 v15, v28

    goto :goto_2ec

    .line 368
    :cond_2ea
    move/from16 v15, v28

    .line 371
    .end local v28    # "measureStrategy":I
    .local v15, "measureStrategy":I
    :goto_2ec
    move/from16 v28, v5

    move-object/from16 v5, v26

    .end local v26    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v5, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v28, "maxIterations":I
    invoke-direct {v0, v5, v12, v15}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->measure(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v26

    .line 375
    .local v26, "hasMeasure":Z
    or-int v4, v4, v26

    .line 379
    move/from16 v30, v4

    .end local v4    # "needSolverPass":Z
    .local v30, "needSolverPass":Z
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v4, :cond_30b

    .line 380
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v32, v5

    move/from16 v31, v6

    .end local v5    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v6    # "j":I
    .local v31, "j":I
    .local v32, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    iget-wide v5, v4, Landroid/support/constraint/solver/Metrics;->measuredMatchWidgets:J

    const-wide/16 v20, 0x1

    add-long v5, v5, v20

    iput-wide v5, v4, Landroid/support/constraint/solver/Metrics;->measuredMatchWidgets:J

    goto :goto_311

    .line 379
    .end local v31    # "j":I
    .end local v32    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v5    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v6    # "j":I
    :cond_30b
    move-object/from16 v32, v5

    move/from16 v31, v6

    const-wide/16 v20, 0x1

    .line 383
    .end local v5    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v6    # "j":I
    .restart local v31    # "j":I
    .restart local v32    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    :goto_311
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    .line 384
    .local v4, "measuredWidth":I
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    .line 386
    .local v5, "measuredHeight":I
    if-eq v4, v13, :cond_342

    .line 387
    invoke-virtual {v12, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 388
    if-eqz v2, :cond_33c

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v6

    if-le v6, v8, :cond_33c

    .line 389
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v6

    move/from16 v33, v2

    .end local v2    # "containerWrapWidth":Z
    .local v33, "containerWrapWidth":Z
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 390
    invoke-virtual {v12, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    add-int/2addr v6, v2

    .line 391
    .local v6, "w":I
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_33e

    .line 388
    .end local v6    # "w":I
    .end local v33    # "containerWrapWidth":Z
    .restart local v2    # "containerWrapWidth":Z
    :cond_33c
    move/from16 v33, v2

    .line 396
    .end local v2    # "containerWrapWidth":Z
    .restart local v33    # "containerWrapWidth":Z
    :goto_33e
    const/4 v2, 0x1

    move/from16 v30, v2

    .end local v30    # "needSolverPass":Z
    .local v2, "needSolverPass":Z
    goto :goto_344

    .line 386
    .end local v33    # "containerWrapWidth":Z
    .local v2, "containerWrapWidth":Z
    .restart local v30    # "needSolverPass":Z
    :cond_342
    move/from16 v33, v2

    .line 398
    .end local v2    # "containerWrapWidth":Z
    .restart local v33    # "containerWrapWidth":Z
    :goto_344
    if-eq v5, v14, :cond_368

    .line 399
    invoke-virtual {v12, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 400
    if-eqz v3, :cond_365

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    if-le v2, v11, :cond_365

    .line 401
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 402
    invoke-virtual {v12, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v2, v6

    .line 403
    .local v2, "h":I
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v11, v6

    .line 408
    .end local v2    # "h":I
    :cond_365
    const/4 v2, 0x1

    move/from16 v30, v2

    .line 410
    :cond_368
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_377

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v2

    if-eq v7, v2, :cond_377

    .line 414
    const/4 v2, 0x1

    move v4, v2

    .end local v30    # "needSolverPass":Z
    .local v2, "needSolverPass":Z
    goto :goto_379

    .line 347
    .end local v2    # "needSolverPass":Z
    .end local v4    # "measuredWidth":I
    .end local v5    # "measuredHeight":I
    .end local v7    # "preBaselineDistance":I
    .end local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "preWidth":I
    .end local v14    # "preHeight":I
    .end local v15    # "measureStrategy":I
    .end local v26    # "hasMeasure":Z
    .restart local v30    # "needSolverPass":Z
    :cond_377
    move/from16 v4, v30

    .end local v30    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    :goto_379
    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v27

    move/from16 v5, v28

    move/from16 v15, v29

    move/from16 v6, v31

    move-object/from16 v26, v32

    move/from16 v2, v33

    goto/16 :goto_287

    .end local v27    # "optimize":Z
    .end local v28    # "maxIterations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    .end local v31    # "j":I
    .end local v32    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v33    # "containerWrapWidth":Z
    .local v2, "containerWrapWidth":Z
    .local v5, "maxIterations":I
    .local v6, "j":I
    .local v7, "optimize":Z
    .local v15, "sizeDependentWidgetsCount":I
    .local v26, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    :cond_389
    move/from16 v33, v2

    move/from16 v28, v5

    move/from16 v31, v6

    move/from16 v27, v7

    move/from16 v29, v15

    move-object/from16 v32, v26

    const-wide/16 v20, 0x1

    .line 417
    .end local v2    # "containerWrapWidth":Z
    .end local v5    # "maxIterations":I
    .end local v6    # "j":I
    .end local v7    # "optimize":Z
    .end local v9    # "i":I
    .end local v15    # "sizeDependentWidgetsCount":I
    .end local v26    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v27    # "optimize":Z
    .restart local v28    # "maxIterations":I
    .restart local v29    # "sizeDependentWidgetsCount":I
    .restart local v31    # "j":I
    .restart local v32    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v33    # "containerWrapWidth":Z
    if-eqz v4, :cond_3af

    .line 418
    const-string v2, "intermediate pass"

    move/from16 v5, v25

    .end local v25    # "startingWidth":I
    .local v5, "startingWidth":I
    invoke-direct {v0, v1, v2, v5, v10}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 419
    const/4 v4, 0x0

    .line 346
    add-int/lit8 v6, v31, 0x1

    move/from16 v7, v27

    move/from16 v5, v28

    move/from16 v15, v29

    move-object/from16 v26, v32

    move/from16 v2, v33

    .end local v31    # "j":I
    .restart local v6    # "j":I
    goto/16 :goto_284

    .line 417
    .end local v5    # "startingWidth":I
    .end local v6    # "j":I
    .restart local v25    # "startingWidth":I
    .restart local v31    # "j":I
    :cond_3af
    move/from16 v5, v25

    .end local v25    # "startingWidth":I
    .restart local v5    # "startingWidth":I
    goto :goto_3c0

    .line 346
    .end local v27    # "optimize":Z
    .end local v28    # "maxIterations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    .end local v31    # "j":I
    .end local v32    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v33    # "containerWrapWidth":Z
    .restart local v2    # "containerWrapWidth":Z
    .local v5, "maxIterations":I
    .restart local v6    # "j":I
    .restart local v7    # "optimize":Z
    .restart local v15    # "sizeDependentWidgetsCount":I
    .restart local v25    # "startingWidth":I
    .restart local v26    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    :cond_3b2
    move/from16 v33, v2

    move/from16 v28, v5

    move/from16 v31, v6

    move/from16 v27, v7

    move/from16 v29, v15

    move/from16 v5, v25

    move-object/from16 v32, v26

    .line 424
    .end local v2    # "containerWrapWidth":Z
    .end local v6    # "j":I
    .end local v7    # "optimize":Z
    .end local v15    # "sizeDependentWidgetsCount":I
    .end local v25    # "startingWidth":I
    .end local v26    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v5, "startingWidth":I
    .restart local v27    # "optimize":Z
    .restart local v28    # "maxIterations":I
    .restart local v29    # "sizeDependentWidgetsCount":I
    .restart local v32    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v33    # "containerWrapWidth":Z
    :goto_3c0
    if-eqz v4, :cond_3f7

    .line 425
    const-string v2, "2nd pass"

    invoke-direct {v0, v1, v2, v5, v10}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 426
    const/4 v2, 0x0

    .line 427
    .end local v4    # "needSolverPass":Z
    .local v2, "needSolverPass":Z
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    if-ge v4, v8, :cond_3d2

    .line 428
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 429
    const/4 v2, 0x1

    .line 431
    :cond_3d2
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    if-ge v4, v11, :cond_3dc

    .line 432
    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 433
    const/4 v2, 0x1

    .line 435
    :cond_3dc
    if-eqz v2, :cond_3f7

    .line 436
    const-string v4, "3rd pass"

    invoke-direct {v0, v1, v4, v5, v10}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    goto :goto_3f7

    .line 297
    .end local v2    # "needSolverPass":Z
    .end local v3    # "containerWrapHeight":Z
    .end local v16    # "childCount":I
    .end local v17    # "optimizeWrap":Z
    .end local v22    # "heightSize":I
    .end local v23    # "computations":I
    .end local v24    # "optimizations":I
    .end local v27    # "optimize":Z
    .end local v28    # "maxIterations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    .end local v32    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v33    # "containerWrapWidth":Z
    .end local p8    # "widthSize":I
    .local v5, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "optimizations":I
    .restart local v7    # "optimize":Z
    .local v8, "childCount":I
    .local v9, "startingWidth":I
    .local v11, "optimizeWrap":Z
    .local v12, "widthSize":I
    .local v13, "heightSize":I
    .local v14, "computations":I
    .restart local v15    # "sizeDependentWidgetsCount":I
    :cond_3e4
    move-object/from16 v32, v5

    move/from16 v24, v6

    move/from16 v27, v7

    move/from16 v16, v8

    move v5, v9

    move/from16 v17, v11

    move/from16 p8, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v29, v15

    .line 440
    .end local v6    # "optimizations":I
    .end local v7    # "optimize":Z
    .end local v8    # "childCount":I
    .end local v9    # "startingWidth":I
    .end local v11    # "optimizeWrap":Z
    .end local v12    # "widthSize":I
    .end local v13    # "heightSize":I
    .end local v14    # "computations":I
    .end local v15    # "sizeDependentWidgetsCount":I
    .local v5, "startingWidth":I
    .restart local v16    # "childCount":I
    .restart local v17    # "optimizeWrap":Z
    .restart local v22    # "heightSize":I
    .restart local v23    # "computations":I
    .restart local v24    # "optimizations":I
    .restart local v27    # "optimize":Z
    .restart local v29    # "sizeDependentWidgetsCount":I
    .restart local v32    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local p8    # "widthSize":I
    :cond_3f7
    :goto_3f7
    move/from16 v2, v24

    .end local v24    # "optimizations":I
    .local v2, "optimizations":I
    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 445
    .end local v2    # "optimizations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    :goto_3fc
    return-wide v18
.end method

.method public updateHierarchy(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 7
    .param p1, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 56
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 58
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_2e

    .line 59
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 60
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_26

    .line 61
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_2b

    .line 62
    :cond_26
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 65
    .end local v1    # "i":I
    :cond_2e
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 66
    return-void
.end method
