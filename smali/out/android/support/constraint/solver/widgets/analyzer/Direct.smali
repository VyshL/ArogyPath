.class public Landroid/support/constraint/solver/widgets/analyzer/Direct;
.super Ljava/lang/Object;
.source "Direct.java"


# static fields
.field private static final APPLY_MATCH_PARENT:Z = false

.field private static final DEBUG:Z = false

.field private static measure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    sput-object v0, Landroid/support/constraint/solver/widgets/analyzer/Direct;->measure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z
    .registers 12
    .param p0, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 647
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    .line 648
    .local v0, "horizontalBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    .line 649
    .local v1, "verticalBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    .line 650
    .local v2, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    :goto_16
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_24

    const/4 v5, 0x1

    goto :goto_25

    :cond_24
    const/4 v5, 0x0

    .line 651
    .local v5, "isParentHorizontalFixed":Z
    :goto_25
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_31

    const/4 v6, 0x1

    goto :goto_32

    :cond_31
    const/4 v6, 0x0

    .line 652
    .local v6, "isParentVerticalFixed":Z
    :goto_32
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    if-eq v0, v7, :cond_58

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v7, :cond_58

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v7, :cond_4f

    iget v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v7, :cond_4f

    iget v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_4f

    .line 658
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v7

    if-nez v7, :cond_58

    .line 659
    :cond_4f
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v7

    if-eqz v7, :cond_56

    goto :goto_58

    :cond_56
    const/4 v7, 0x0

    goto :goto_59

    :cond_58
    :goto_58
    const/4 v7, 0x1

    .line 660
    .local v7, "isHorizontalFixed":Z
    :goto_59
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v9, :cond_7e

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v9, :cond_7e

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v9, :cond_75

    iget v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v9, :cond_75

    iget v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v9, v9, v8

    if-nez v9, :cond_75

    .line 666
    invoke-virtual {p0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v9

    if-nez v9, :cond_7e

    .line 667
    :cond_75
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v9

    if-eqz v9, :cond_7c

    goto :goto_7e

    :cond_7c
    const/4 v9, 0x0

    goto :goto_7f

    :cond_7e
    :goto_7e
    const/4 v9, 0x1

    .line 668
    .local v9, "isVerticalFixed":Z
    :goto_7f
    iget v10, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v8, v10, v8

    if-lez v8, :cond_8a

    if-nez v7, :cond_89

    if-eqz v9, :cond_8a

    .line 669
    :cond_89
    return v4

    .line 676
    :cond_8a
    if-eqz v7, :cond_8f

    if-eqz v9, :cond_8f

    const/4 v3, 0x1

    :cond_8f
    return v3
.end method

.method private static horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V
    .registers 22
    .param p0, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "isRtl"    # Z

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    instance-of v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-nez v3, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 233
    new-instance v3, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 234
    .local v3, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    sget v4, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v0, v1, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 237
    .end local v3    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_20
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 238
    .local v3, "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 239
    .local v4, "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v5

    .line 240
    .local v5, "l":I
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v6

    .line 242
    .local v6, "r":I
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    if-eqz v7, :cond_148

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v7

    if-eqz v7, :cond_148

    .line 243
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_148

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 244
    .local v12, "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v13, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 245
    .local v13, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v14, 0x0

    .line 246
    .local v14, "x1":I
    const/4 v15, 0x0

    .line 247
    .local v15, "x2":I
    invoke-static {v13}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v16

    .line 248
    .local v16, "canMeasure":Z
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v17

    if-eqz v17, :cond_75

    if-eqz v16, :cond_75

    .line 249
    new-instance v17, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct/range {v17 .. v17}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object/from16 v18, v17

    .line 250
    .local v18, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    sget v10, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    move-object/from16 v11, v18

    .end local v18    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    .local v11, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    invoke-static {v13, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 253
    .end local v11    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_75
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_e5

    if-eqz v16, :cond_80

    goto :goto_e5

    .line 279
    :cond_80
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_146

    iget v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-ltz v10, :cond_146

    iget v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-ltz v10, :cond_146

    .line 281
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-eq v10, v9, :cond_a2

    iget v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v10, :cond_146

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v10

    cmpl-float v10, v10, v8

    if-nez v10, :cond_146

    .line 282
    :cond_a2
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v10

    if-nez v10, :cond_146

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v10

    if-nez v10, :cond_146

    .line 283
    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v12, v10, :cond_c2

    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_c2

    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v10

    if-nez v10, :cond_d6

    :cond_c2
    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v12, v10, :cond_d8

    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_d8

    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 284
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v10

    if-eqz v10, :cond_d8

    :cond_d6
    const/4 v10, 0x1

    goto :goto_d9

    :cond_d8
    const/4 v10, 0x0

    .line 285
    .local v10, "bothConnected":Z
    :goto_d9
    if-eqz v10, :cond_146

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v11

    if-nez v11, :cond_146

    .line 286
    invoke-static {v0, v1, v13, v2}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveHorizontalMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)V

    goto :goto_146

    .line 255
    .end local v10    # "bothConnected":Z
    :cond_e5
    :goto_e5
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v10

    if-eqz v10, :cond_ed

    .line 260
    goto/16 :goto_4b

    .line 262
    :cond_ed
    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v12, v10, :cond_10a

    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_10a

    .line 263
    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    add-int/2addr v10, v5

    .line 264
    .end local v14    # "x1":I
    .local v10, "x1":I
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    add-int/2addr v11, v10

    .line 265
    .end local v15    # "x2":I
    .local v11, "x2":I
    invoke-virtual {v13, v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 266
    invoke-static {v13, v1, v2}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_146

    .line 267
    .end local v10    # "x1":I
    .end local v11    # "x2":I
    .restart local v14    # "x1":I
    .restart local v15    # "x2":I
    :cond_10a
    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v12, v10, :cond_129

    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_129

    .line 268
    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    sub-int v10, v5, v10

    .line 269
    .end local v15    # "x2":I
    .local v10, "x2":I
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    sub-int v11, v10, v11

    .line 270
    .end local v14    # "x1":I
    .local v11, "x1":I
    invoke-virtual {v13, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 271
    invoke-static {v13, v1, v2}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_146

    .line 272
    .end local v10    # "x2":I
    .end local v11    # "x1":I
    .restart local v14    # "x1":I
    .restart local v15    # "x2":I
    :cond_129
    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v12, v10, :cond_146

    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_146

    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 273
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v10

    if-eqz v10, :cond_146

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v10

    if-nez v10, :cond_146

    .line 274
    invoke-static {v1, v13, v2}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveHorizontalCenterConstraints(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)V

    .line 289
    .end local v12    # "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v13    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "x1":I
    .end local v15    # "x2":I
    .end local v16    # "canMeasure":Z
    :cond_146
    :goto_146
    goto/16 :goto_4b

    .line 291
    :cond_148
    instance-of v7, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v7, :cond_14d

    .line 292
    return-void

    .line 294
    :cond_14d
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v7

    if-eqz v7, :cond_262

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v7

    if-eqz v7, :cond_262

    .line 295
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_161
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_262

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 296
    .local v10, "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 297
    .local v11, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-static {v11}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v12

    .line 298
    .local v12, "canMeasure":Z
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v13

    if-eqz v13, :cond_185

    if-eqz v12, :cond_185

    .line 299
    new-instance v13, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v13}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 300
    .local v13, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    sget v14, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v11, v1, v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 303
    .end local v13    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_185
    const/4 v13, 0x0

    .line 304
    .local v13, "x1":I
    const/4 v14, 0x0

    .line 305
    .local v14, "x2":I
    iget-object v15, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v10, v15, :cond_19b

    iget-object v15, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v15, :cond_19b

    iget-object v15, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v15

    if-nez v15, :cond_1af

    :cond_19b
    iget-object v15, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v10, v15, :cond_1b1

    iget-object v15, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v15, :cond_1b1

    iget-object v15, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 306
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v15

    if-eqz v15, :cond_1b1

    :cond_1af
    const/4 v15, 0x1

    goto :goto_1b2

    :cond_1b1
    const/4 v15, 0x0

    .line 307
    .local v15, "bothConnected":Z
    :goto_1b2
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_20b

    if-eqz v12, :cond_1c1

    const/16 v9, 0x8

    const/16 v16, 0x0

    goto :goto_20f

    .line 329
    :cond_1c1
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_206

    iget v8, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-ltz v8, :cond_206

    iget v8, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-ltz v8, :cond_206

    .line 331
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1ec

    iget v8, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v8, :cond_1e8

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v8

    const/16 v16, 0x0

    cmpl-float v8, v8, v16

    if-nez v8, :cond_25f

    goto :goto_1ee

    :cond_1e8
    const/16 v16, 0x0

    goto/16 :goto_25f

    :cond_1ec
    const/16 v16, 0x0

    .line 332
    :goto_1ee
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v8

    if-nez v8, :cond_25f

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v8

    if-nez v8, :cond_25f

    .line 333
    if-eqz v15, :cond_25f

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v8

    if-nez v8, :cond_25f

    .line 334
    invoke-static {v0, v1, v11, v2}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveHorizontalMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)V

    goto :goto_25f

    .line 329
    :cond_206
    const/16 v9, 0x8

    const/16 v16, 0x0

    goto :goto_25f

    .line 307
    :cond_20b
    const/16 v9, 0x8

    const/16 v16, 0x0

    .line 309
    :goto_20f
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v8

    if-eqz v8, :cond_218

    .line 314
    const/4 v8, 0x0

    goto/16 :goto_161

    .line 316
    :cond_218
    iget-object v8, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v10, v8, :cond_235

    iget-object v8, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_235

    .line 317
    iget-object v8, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    add-int/2addr v8, v6

    .line 318
    .end local v13    # "x1":I
    .local v8, "x1":I
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    add-int/2addr v13, v8

    .line 319
    .end local v14    # "x2":I
    .local v13, "x2":I
    invoke-virtual {v11, v8, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 320
    invoke-static {v11, v1, v2}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_25f

    .line 321
    .end local v8    # "x1":I
    .local v13, "x1":I
    .restart local v14    # "x2":I
    :cond_235
    iget-object v8, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v10, v8, :cond_254

    iget-object v8, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_254

    .line 322
    iget-object v8, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    sub-int v8, v6, v8

    .line 323
    .end local v14    # "x2":I
    .local v8, "x2":I
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    sub-int v13, v8, v14

    .line 324
    invoke-virtual {v11, v13, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 325
    invoke-static {v11, v1, v2}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_25f

    .line 326
    .end local v8    # "x2":I
    .restart local v14    # "x2":I
    :cond_254
    if-eqz v15, :cond_25f

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v8

    if-nez v8, :cond_25f

    .line 327
    invoke-static {v1, v11, v2}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveHorizontalCenterConstraints(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)V

    .line 337
    .end local v10    # "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v11    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v12    # "canMeasure":Z
    .end local v13    # "x1":I
    .end local v14    # "x2":I
    .end local v15    # "bothConnected":Z
    :cond_25f
    :goto_25f
    const/4 v8, 0x0

    goto/16 :goto_161

    .line 339
    :cond_262
    return-void
.end method

.method private static solveBarrier(Landroid/support/constraint/solver/widgets/Barrier;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;IZ)V
    .registers 5
    .param p0, "barrier"    # Landroid/support/constraint/solver/widgets/Barrier;
    .param p1, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "orientation"    # I
    .param p3, "isRtl"    # Z

    .line 211
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Barrier;->allSolved()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 212
    if-nez p2, :cond_c

    .line 213
    invoke-static {p0, p1, p3}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_f

    .line 215
    :cond_c
    invoke-static {p0, p1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 218
    :cond_f
    :goto_f
    return-void
.end method

.method public static solveChain(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;ZZZ)Z
    .registers 36
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroid/support/constraint/solver/widgets/ChainHead;
    .param p5, "isChainSpread"    # Z
    .param p6, "isChainSpreadInside"    # Z
    .param p7, "isChainPacked"    # Z

    .line 699
    const/4 v0, 0x0

    if-eqz p7, :cond_4

    .line 700
    return v0

    .line 702
    :cond_4
    if-nez p2, :cond_d

    .line 703
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    move-result v1

    if-nez v1, :cond_14

    .line 704
    return v0

    .line 707
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    move-result v1

    if-nez v1, :cond_14

    .line 708
    return v0

    .line 712
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v1

    .line 714
    .local v1, "isRtl":Z
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ChainHead;->getFirst()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 715
    .local v2, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ChainHead;->getLast()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 716
    .local v3, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ChainHead;->getFirstVisibleWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 717
    .local v4, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ChainHead;->getLastVisibleWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    .line 718
    .local v5, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ChainHead;->getHead()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    .line 720
    .local v6, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v7, v2

    .line 721
    .local v7, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v8, 0x0

    .line 722
    .local v8, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v9, 0x0

    .line 724
    .local v9, "done":Z
    iget-object v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    .line 725
    .local v10, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v11, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    .line 726
    .local v11, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v12, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v12, :cond_2ea

    iget-object v12, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v12, :cond_4b

    move-object/from16 v26, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    goto/16 :goto_2f2

    .line 729
    :cond_4b
    iget-object v12, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v12

    if-eqz v12, :cond_2e1

    iget-object v12, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v12

    if-nez v12, :cond_65

    move-object/from16 v26, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    goto/16 :goto_2e9

    .line 733
    :cond_65
    if-eqz v4, :cond_2d8

    if-nez v5, :cond_73

    move-object/from16 v26, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    goto/16 :goto_2e0

    .line 737
    :cond_73
    iget-object v12, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v12

    iget-object v13, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, p3

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    add-int/2addr v12, v13

    .line 738
    .local v12, "startPoint":I
    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v13

    iget-object v14, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v15, p3, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    sub-int/2addr v13, v14

    .line 740
    .local v13, "endPoint":I
    sub-int v14, v13, v12

    .line 741
    .local v14, "distance":I
    if-gtz v14, :cond_98

    .line 742
    return v0

    .line 744
    :cond_98
    const/4 v15, 0x0

    .line 745
    .local v15, "totalSize":I
    new-instance v16, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct/range {v16 .. v16}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object/from16 v17, v16

    .line 747
    .local v17, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    const/16 v16, 0x0

    .line 748
    .local v16, "numWidgets":I
    const/16 v18, 0x0

    move/from16 v19, v16

    move/from16 v20, v18

    .line 750
    .end local v16    # "numWidgets":I
    .local v19, "numWidgets":I
    .local v20, "numVisibleWidgets":I
    :goto_a8
    if-nez v9, :cond_149

    .line 751
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v0, p3

    .line 752
    invoke-static {v7}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v0

    .line 753
    .local v0, "canMeasure":Z
    if-nez v0, :cond_b7

    .line 754
    const/16 v16, 0x0

    return v16

    .line 756
    :cond_b7
    const/16 v16, 0x0

    move/from16 v21, v0

    .end local v0    # "canMeasure":Z
    .local v21, "canMeasure":Z
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p2

    move-object/from16 v22, v3

    .end local v3    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v22, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_c6

    .line 757
    return v16

    .line 760
    :cond_c6
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 761
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    sget v3, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    move-object/from16 v23, v8

    move-object/from16 v8, v17

    .end local v17    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    .local v8, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    .local v23, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-static {v7, v0, v8, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    goto :goto_de

    .line 760
    .end local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v8, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v17    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_da
    move-object/from16 v23, v8

    move-object/from16 v8, v17

    .line 764
    .end local v17    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    .local v8, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    .restart local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_de
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int/2addr v15, v0

    .line 765
    if-nez p2, :cond_ef

    .line 766
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    add-int/2addr v15, v0

    goto :goto_f4

    .line 768
    :cond_ef
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    add-int/2addr v15, v0

    .line 770
    :goto_f4
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int/2addr v15, v0

    .line 772
    move/from16 v0, v19

    .end local v19    # "numWidgets":I
    .local v0, "numWidgets":I
    add-int/lit8 v19, v0, 0x1

    .line 773
    .end local v0    # "numWidgets":I
    .restart local v19    # "numWidgets":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_110

    .line 774
    move/from16 v3, v20

    .end local v20    # "numVisibleWidgets":I
    .local v3, "numVisibleWidgets":I
    add-int/lit8 v20, v3, 0x1

    .end local v3    # "numVisibleWidgets":I
    .restart local v20    # "numVisibleWidgets":I
    goto :goto_112

    .line 773
    :cond_110
    move/from16 v3, v20

    .line 779
    :goto_112
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 780
    .local v0, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v0, :cond_137

    .line 781
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 782
    .end local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v3, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v17, v0

    .end local v0    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v17, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v0, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_135

    iget-object v0, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v0, v7, :cond_133

    goto :goto_135

    :cond_133
    move-object v0, v3

    goto :goto_13a

    .line 784
    :cond_135
    :goto_135
    const/4 v0, 0x0

    .end local v3    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v0, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_13a

    .line 787
    .end local v17    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v0, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_137
    move-object/from16 v17, v0

    .end local v0    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v17    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v0, 0x0

    .line 789
    .end local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v0, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_13a
    if-eqz v0, :cond_13f

    .line 790
    move-object v3, v0

    move-object v7, v3

    .end local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v3, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_141

    .line 792
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_13f
    const/4 v3, 0x1

    move v9, v3

    .line 794
    .end local v17    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v21    # "canMeasure":Z
    :goto_141
    move-object/from16 v17, v8

    move-object/from16 v3, v22

    move-object v8, v0

    const/4 v0, 0x0

    goto/16 :goto_a8

    .line 796
    .end local v0    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v22    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v3, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v8, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v17, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_149
    move-object/from16 v22, v3

    move-object/from16 v23, v8

    move-object/from16 v8, v17

    move/from16 v0, v19

    move/from16 v3, v20

    .end local v17    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    .end local v19    # "numWidgets":I
    .end local v20    # "numVisibleWidgets":I
    .local v0, "numWidgets":I
    .local v3, "numVisibleWidgets":I
    .local v8, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    .restart local v22    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v3, :cond_158

    .line 797
    const/16 v16, 0x0

    return v16

    .line 800
    :cond_158
    const/16 v16, 0x0

    if-eq v3, v0, :cond_15d

    .line 801
    return v16

    .line 804
    :cond_15d
    if-ge v14, v15, :cond_160

    .line 805
    return v16

    .line 808
    :cond_160
    sub-int v17, v14, v15

    .line 809
    .local v17, "gap":I
    move/from16 v19, v0

    .end local v0    # "numWidgets":I
    .restart local v19    # "numWidgets":I
    if-eqz p5, :cond_170

    .line 810
    add-int/lit8 v21, v3, 0x1

    div-int v17, v17, v21

    move-object/from16 v24, v7

    move/from16 v0, v17

    const/4 v7, 0x1

    goto :goto_188

    .line 811
    :cond_170
    if-eqz p6, :cond_183

    .line 812
    const/4 v0, 0x2

    if-le v3, v0, :cond_17f

    .line 813
    div-int v0, v17, v3

    move-object/from16 v24, v7

    const/4 v7, 0x1

    .end local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v24, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v17, v0, -0x1

    move/from16 v0, v17

    goto :goto_188

    .line 812
    .end local v24    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_17f
    move-object/from16 v24, v7

    const/4 v7, 0x1

    .end local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v24    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_186

    .line 811
    .end local v24    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_183
    move-object/from16 v24, v7

    const/4 v7, 0x1

    .line 817
    .end local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v24    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_186
    move/from16 v0, v17

    .end local v17    # "gap":I
    .local v0, "gap":I
    :goto_188
    if-ne v3, v7, :cond_1c1

    .line 818
    const/high16 v7, 0x3f000000    # 0.5f

    .line 819
    .local v7, "bias":F
    if-nez p2, :cond_193

    .line 820
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v7

    goto :goto_197

    .line 822
    :cond_193
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v7

    .line 824
    :goto_197
    const/high16 v16, 0x3f000000    # 0.5f

    move-object/from16 v17, v6

    .end local v6    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v17, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    int-to-float v6, v12

    add-float v6, v6, v16

    move-object/from16 v25, v8

    .end local v8    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    .local v25, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    int-to-float v8, v0

    mul-float v8, v8, v7

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 825
    .local v6, "p1":I
    if-nez p2, :cond_1b0

    .line 826
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v4, v6, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    goto :goto_1b8

    .line 828
    :cond_1b0
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v4, v6, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 830
    :goto_1b8
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v8

    invoke-static {v4, v8, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 831
    const/4 v8, 0x1

    return v8

    .line 834
    .end local v7    # "bias":F
    .end local v17    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v25    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    .local v6, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_1c1
    move-object/from16 v17, v6

    move-object/from16 v25, v8

    .end local v6    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    .restart local v17    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v25    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    if-eqz p5, :cond_282

    .line 835
    const/4 v6, 0x0

    .line 837
    .end local v9    # "done":Z
    .local v6, "done":Z
    add-int v7, v12, v0

    .line 838
    .local v7, "current":I
    move-object v8, v2

    move v9, v6

    .line 839
    .end local v6    # "done":Z
    .end local v24    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v8, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "done":Z
    :goto_1cc
    if-nez v9, :cond_277

    .line 840
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v6, p3

    .line 841
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    move-object/from16 v26, v2

    const/16 v2, 0x8

    .end local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v26, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-ne v6, v2, :cond_1f4

    .line 842
    if-nez p2, :cond_1e9

    .line 843
    invoke-virtual {v8, v7, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 844
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v6

    invoke-static {v8, v6, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_234

    .line 846
    :cond_1e9
    invoke-virtual {v8, v7, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 847
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_234

    .line 850
    :cond_1f4
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v7, v6

    .line 851
    if-nez p2, :cond_214

    .line 852
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v8, v7, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 853
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v6

    invoke-static {v8, v6, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 854
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    add-int/2addr v7, v6

    goto :goto_228

    .line 856
    :cond_214
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v8, v7, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 857
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 858
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    add-int/2addr v7, v6

    .line 860
    :goto_228
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v6, v6, v18

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v7, v6

    .line 861
    add-int/2addr v7, v0

    .line 864
    :goto_234
    move-object/from16 v6, p1

    const/4 v2, 0x0

    invoke-virtual {v8, v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addToSolver(Landroid/support/constraint/solver/LinearSystem;Z)V

    .line 867
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v20, p3, 0x1

    aget-object v2, v2, v20

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 868
    .local v2, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v2, :cond_264

    .line 869
    move/from16 v27, v0

    .end local v0    # "gap":I
    .local v27, "gap":I
    iget-object v0, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 870
    .end local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v0, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v20, v2

    .end local v2    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v20, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_260

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v2, v8, :cond_25d

    goto :goto_260

    :cond_25d
    move-object/from16 v23, v0

    goto :goto_26b

    .line 872
    :cond_260
    :goto_260
    const/4 v0, 0x0

    move-object/from16 v23, v0

    goto :goto_26b

    .line 875
    .end local v20    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v27    # "gap":I
    .local v0, "gap":I
    .restart local v2    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_264
    move/from16 v27, v0

    move-object/from16 v20, v2

    .end local v0    # "gap":I
    .end local v2    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v20    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v27    # "gap":I
    const/4 v0, 0x0

    move-object/from16 v23, v0

    .line 877
    :goto_26b
    if-eqz v23, :cond_270

    .line 878
    move-object/from16 v8, v23

    goto :goto_271

    .line 880
    :cond_270
    const/4 v9, 0x1

    .line 882
    .end local v20    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_271
    move-object/from16 v2, v26

    move/from16 v0, v27

    goto/16 :goto_1cc

    .line 839
    .end local v26    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v27    # "gap":I
    .restart local v0    # "gap":I
    .local v2, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_277
    move-object/from16 v6, p1

    move/from16 v27, v0

    move-object/from16 v26, v2

    .line 883
    .end local v0    # "gap":I
    .end local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "current":I
    .restart local v26    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v27    # "gap":I
    move-object v7, v8

    move-object/from16 v8, v23

    const/4 v0, 0x1

    goto :goto_2d7

    .end local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v26    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v27    # "gap":I
    .restart local v0    # "gap":I
    .restart local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v24    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_282
    move-object/from16 v6, p1

    move/from16 v27, v0

    move-object/from16 v26, v2

    .end local v0    # "gap":I
    .end local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v26    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v27    # "gap":I
    if-eqz p6, :cond_2d2

    .line 884
    const/4 v0, 0x2

    if-ne v3, v0, :cond_2d0

    .line 885
    if-nez p2, :cond_2af

    .line 886
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {v4, v12, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 887
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    sub-int v0, v13, v0

    invoke-virtual {v5, v0, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 888
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 889
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    invoke-static {v5, v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_2ce

    .line 891
    :cond_2af
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {v4, v12, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 892
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    sub-int v0, v13, v0

    invoke-virtual {v5, v0, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 893
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 894
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 896
    :goto_2ce
    const/4 v0, 0x1

    return v0

    .line 898
    :cond_2d0
    const/4 v0, 0x0

    return v0

    .line 883
    :cond_2d2
    const/4 v0, 0x1

    move-object/from16 v8, v23

    move-object/from16 v7, v24

    .line 900
    .end local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v24    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v7, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v8, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2d7
    return v0

    .line 733
    .end local v12    # "startPoint":I
    .end local v13    # "endPoint":I
    .end local v14    # "distance":I
    .end local v15    # "totalSize":I
    .end local v17    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v19    # "numWidgets":I
    .end local v22    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v25    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    .end local v26    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v27    # "gap":I
    .restart local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v3, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v6, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2d8
    move-object/from16 v26, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    .line 734
    .end local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v3    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v6    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v17    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v22    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v26    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2e0
    return v0

    .line 729
    .end local v17    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v22    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v26    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v3    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2e1
    move-object/from16 v26, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    .line 730
    .end local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v3    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v6    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v17    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v22    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v26    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2e9
    return v0

    .line 726
    .end local v17    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v22    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v26    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v3    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2ea
    move-object/from16 v26, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    .line 727
    .end local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v3    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v6    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v17    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v22    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v26    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2f2
    return v0
.end method

.method private static solveHorizontalCenterConstraints(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)V
    .registers 13
    .param p0, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "isRtl"    # Z

    .line 499
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v0

    .line 500
    .local v0, "bias":F
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    .line 501
    .local v1, "start":I
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    .line 502
    .local v2, "end":I
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v3, v1

    .line 503
    .local v3, "s1":I
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    sub-int v4, v2, v4

    .line 504
    .local v4, "s2":I
    if-ne v1, v2, :cond_29

    .line 505
    const/high16 v0, 0x3f000000    # 0.5f

    .line 506
    move v3, v1

    .line 507
    move v4, v2

    .line 509
    :cond_29
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    .line 510
    .local v5, "width":I
    sub-int v6, v4, v3

    sub-int/2addr v6, v5

    .line 511
    .local v6, "distance":I
    if-le v3, v4, :cond_36

    .line 512
    sub-int v7, v3, v4

    sub-int v6, v7, v5

    .line 514
    :cond_36
    const/high16 v7, 0x3f000000    # 0.5f

    int-to-float v8, v6

    mul-float v8, v8, v0

    add-float/2addr v8, v7

    float-to-int v7, v8

    .line 515
    .local v7, "d1":I
    add-int v8, v3, v7

    .line 516
    .local v8, "x1":I
    add-int v9, v8, v5

    .line 517
    .local v9, "x2":I
    if-le v3, v4, :cond_47

    .line 518
    add-int v8, v3, v7

    .line 519
    sub-int v9, v8, v5

    .line 521
    :cond_47
    invoke-virtual {p1, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 522
    invoke-static {p1, p0, p2}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 523
    return-void
.end method

.method private static solveHorizontalMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)V
    .registers 12
    .param p0, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p3, "isRtl"    # Z

    .line 569
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v0

    .line 570
    .local v0, "bias":F
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    add-int/2addr v1, v2

    .line 571
    .local v1, "s1":I
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    iget-object v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    sub-int/2addr v2, v3

    .line 572
    .local v2, "s2":I
    if-lt v2, v1, :cond_7e

    .line 573
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    .line 574
    .local v3, "width":I
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_6c

    .line 575
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_54

    .line 576
    const/4 v4, 0x0

    .line 577
    .local v4, "parentWidth":I
    instance-of v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_41

    .line 578
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    goto :goto_49

    .line 580
    :cond_41
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    .line 582
    :goto_49
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v5

    mul-float v5, v5, v6

    int-to-float v7, v4

    mul-float v5, v5, v7

    float-to-int v3, v5

    .end local v4    # "parentWidth":I
    goto :goto_5b

    .line 583
    :cond_54
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v4, :cond_5b

    .line 584
    sub-int v3, v2, v1

    goto :goto_5c

    .line 583
    :cond_5b
    :goto_5b
    nop

    .line 586
    :goto_5c
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 587
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v4, :cond_6c

    .line 588
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 591
    :cond_6c
    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    .line 592
    .local v4, "distance":I
    int-to-float v5, v4

    mul-float v5, v5, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 593
    .local v5, "d1":I
    add-int v6, v1, v5

    .line 594
    .local v6, "x1":I
    add-int v7, v6, v3

    .line 595
    .local v7, "x2":I
    invoke-virtual {p2, v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 596
    invoke-static {p2, p1, p3}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 598
    .end local v3    # "width":I
    .end local v4    # "distance":I
    .end local v5    # "d1":I
    .end local v6    # "x1":I
    .end local v7    # "x2":I
    :cond_7e
    return-void
.end method

.method private static solveVerticalCenterConstraints(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 12
    .param p0, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 534
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v0

    .line 535
    .local v0, "bias":F
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    .line 536
    .local v1, "start":I
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    .line 537
    .local v2, "end":I
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v3, v1

    .line 538
    .local v3, "s1":I
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    sub-int v4, v2, v4

    .line 539
    .local v4, "s2":I
    if-ne v1, v2, :cond_29

    .line 540
    const/high16 v0, 0x3f000000    # 0.5f

    .line 541
    move v3, v1

    .line 542
    move v4, v2

    .line 544
    :cond_29
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    .line 545
    .local v5, "height":I
    sub-int v6, v4, v3

    sub-int/2addr v6, v5

    .line 546
    .local v6, "distance":I
    if-le v3, v4, :cond_36

    .line 547
    sub-int v7, v3, v4

    sub-int v6, v7, v5

    .line 549
    :cond_36
    const/high16 v7, 0x3f000000    # 0.5f

    int-to-float v8, v6

    mul-float v8, v8, v0

    add-float/2addr v8, v7

    float-to-int v7, v8

    .line 550
    .local v7, "d1":I
    add-int v8, v3, v7

    .line 551
    .local v8, "y1":I
    add-int v9, v8, v5

    .line 552
    .local v9, "y2":I
    if-le v3, v4, :cond_47

    .line 553
    sub-int v8, v3, v7

    .line 554
    sub-int v9, v8, v5

    .line 556
    :cond_47
    invoke-virtual {p1, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 557
    invoke-static {p1, p0}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 558
    return-void
.end method

.method private static solveVerticalMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 11
    .param p0, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 609
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v0

    .line 610
    .local v0, "bias":F
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    add-int/2addr v1, v2

    .line 611
    .local v1, "s1":I
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    iget-object v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    sub-int/2addr v2, v3

    .line 612
    .local v2, "s2":I
    if-lt v2, v1, :cond_7a

    .line 613
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    .line 614
    .local v3, "height":I
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_68

    .line 615
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_50

    .line 616
    const/4 v4, 0x0

    .line 617
    .local v4, "parentHeight":I
    instance-of v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_41

    .line 618
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    goto :goto_49

    .line 620
    :cond_41
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    .line 622
    :goto_49
    mul-float v5, v0, v6

    int-to-float v7, v4

    mul-float v5, v5, v7

    float-to-int v3, v5

    .end local v4    # "parentHeight":I
    goto :goto_57

    .line 623
    :cond_50
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v4, :cond_57

    .line 624
    sub-int v3, v2, v1

    goto :goto_58

    .line 623
    :cond_57
    :goto_57
    nop

    .line 626
    :goto_58
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 627
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v4, :cond_68

    .line 628
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 631
    :cond_68
    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    .line 632
    .local v4, "distance":I
    int-to-float v5, v4

    mul-float v5, v5, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 633
    .local v5, "d1":I
    add-int v6, v1, v5

    .line 634
    .local v6, "y1":I
    add-int v7, v6, v3

    .line 635
    .local v7, "y2":I
    invoke-virtual {p2, v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 636
    invoke-static {p2, p1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 638
    .end local v3    # "height":I
    .end local v4    # "distance":I
    .end local v5    # "d1":I
    .end local v6    # "y1":I
    .end local v7    # "y2":I
    :cond_7a
    return-void
.end method

.method public static solvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V
    .registers 19
    .param p0, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 54
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    .line 55
    .local v2, "horizontal":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    .line 59
    .local v3, "vertical":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetFinalResolution()V

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v4

    .line 61
    .local v4, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 62
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_18
    if-ge v6, v5, :cond_26

    .line 63
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 64
    .local v7, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetFinalResolution()V

    .line 62
    .end local v7    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 67
    .end local v6    # "i":I
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v6

    .line 74
    .local v6, "isRtl":Z
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    if-ne v2, v7, :cond_37

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v7

    invoke-virtual {v0, v8, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setFinalHorizontal(II)V

    goto :goto_3a

    .line 77
    :cond_37
    invoke-virtual {v0, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setFinalLeft(I)V

    .line 81
    :goto_3a
    const/4 v7, 0x0

    .line 82
    .local v7, "hasGuideline":Z
    const/4 v9, 0x0

    .line 83
    .local v9, "hasBarrier":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3d
    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ge v10, v5, :cond_a7

    .line 84
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 85
    .local v14, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v15, v14, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v15, :cond_95

    .line 86
    move-object v15, v14

    check-cast v15, Landroid/support/constraint/solver/widgets/Guideline;

    .line 87
    .local v15, "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v8

    if-ne v8, v13, :cond_94

    .line 88
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeBegin()I

    move-result v8

    if-eq v8, v12, :cond_64

    .line 89
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeBegin()I

    move-result v8

    invoke-virtual {v15, v8}, Landroid/support/constraint/solver/widgets/Guideline;->setFinalValue(I)V

    goto :goto_93

    .line 90
    :cond_64
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeEnd()I

    move-result v8

    if-eq v8, v12, :cond_7d

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v8

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeEnd()I

    move-result v11

    sub-int/2addr v8, v11

    invoke-virtual {v15, v8}, Landroid/support/constraint/solver/widgets/Guideline;->setFinalValue(I)V

    goto :goto_93

    .line 92
    :cond_7d
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    move-result v8

    if-eqz v8, :cond_93

    .line 93
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativePercent()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float v8, v8, v12

    add-float/2addr v8, v11

    float-to-int v8, v8

    .line 94
    .local v8, "position":I
    invoke-virtual {v15, v8}, Landroid/support/constraint/solver/widgets/Guideline;->setFinalValue(I)V

    .line 96
    .end local v8    # "position":I
    :cond_93
    :goto_93
    const/4 v7, 0x1

    .line 98
    .end local v15    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    :cond_94
    goto :goto_a3

    :cond_95
    instance-of v8, v14, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v8, :cond_94

    .line 99
    move-object v8, v14

    check-cast v8, Landroid/support/constraint/solver/widgets/Barrier;

    .line 100
    .local v8, "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/Barrier;->getOrientation()I

    move-result v11

    if-nez v11, :cond_a3

    .line 101
    const/4 v9, 0x1

    .line 83
    .end local v8    # "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    .end local v14    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_a3
    :goto_a3
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    goto :goto_3d

    .line 105
    .end local v10    # "i":I
    :cond_a7
    if-eqz v7, :cond_c5

    .line 106
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_aa
    if-ge v8, v5, :cond_c5

    .line 107
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 108
    .local v10, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v14, v10, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v14, :cond_c2

    .line 109
    move-object v14, v10

    check-cast v14, Landroid/support/constraint/solver/widgets/Guideline;

    .line 110
    .local v14, "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v15

    if-ne v15, v13, :cond_c2

    .line 111
    invoke-static {v14, v1, v6}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 106
    .end local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    :cond_c2
    add-int/lit8 v8, v8, 0x1

    goto :goto_aa

    .line 118
    .end local v8    # "i":I
    :cond_c5
    invoke-static {v0, v1, v6}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 121
    if-eqz v9, :cond_e7

    .line 122
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_cb
    if-ge v8, v5, :cond_e7

    .line 123
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 124
    .restart local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v14, v10, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v14, :cond_e4

    .line 125
    move-object v14, v10

    check-cast v14, Landroid/support/constraint/solver/widgets/Barrier;

    .line 126
    .local v14, "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Barrier;->getOrientation()I

    move-result v15

    if-nez v15, :cond_e4

    .line 127
    const/4 v15, 0x0

    invoke-static {v14, v1, v15, v6}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveBarrier(Landroid/support/constraint/solver/widgets/Barrier;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;IZ)V

    .line 122
    .end local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    :cond_e4
    add-int/lit8 v8, v8, 0x1

    goto :goto_cb

    .line 134
    .end local v8    # "i":I
    :cond_e7
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v8, :cond_f4

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setFinalVertical(II)V

    goto :goto_f8

    .line 137
    :cond_f4
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setFinalTop(I)V

    .line 141
    :goto_f8
    const/4 v7, 0x0

    .line 142
    const/4 v8, 0x0

    .line 143
    .end local v9    # "hasBarrier":Z
    .local v8, "hasBarrier":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_fb
    if-ge v9, v5, :cond_162

    .line 144
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 145
    .restart local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v14, v10, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v14, :cond_150

    .line 146
    move-object v14, v10

    check-cast v14, Landroid/support/constraint/solver/widgets/Guideline;

    .line 147
    .local v14, "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v15

    if-nez v15, :cond_14f

    .line 148
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeBegin()I

    move-result v15

    if-eq v15, v12, :cond_11e

    .line 149
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeBegin()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/Guideline;->setFinalValue(I)V

    goto :goto_14e

    .line 150
    :cond_11e
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeEnd()I

    move-result v15

    if-eq v15, v12, :cond_138

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    move-result v15

    if-eqz v15, :cond_138

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v15

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeEnd()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/Guideline;->setFinalValue(I)V

    goto :goto_14e

    .line 152
    :cond_138
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    move-result v15

    if-eqz v15, :cond_14e

    .line 153
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativePercent()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float v15, v15, v12

    add-float/2addr v15, v11

    float-to-int v12, v15

    .line 154
    .local v12, "position":I
    invoke-virtual {v14, v12}, Landroid/support/constraint/solver/widgets/Guideline;->setFinalValue(I)V

    .line 156
    .end local v12    # "position":I
    :cond_14e
    :goto_14e
    const/4 v7, 0x1

    .line 158
    .end local v14    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    :cond_14f
    goto :goto_15e

    :cond_150
    instance-of v12, v10, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v12, :cond_14f

    .line 159
    move-object v12, v10

    check-cast v12, Landroid/support/constraint/solver/widgets/Barrier;

    .line 160
    .local v12, "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/Barrier;->getOrientation()I

    move-result v14

    if-ne v14, v13, :cond_15e

    .line 161
    const/4 v8, 0x1

    .line 143
    .end local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v12    # "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    :cond_15e
    :goto_15e
    add-int/lit8 v9, v9, 0x1

    const/4 v12, -0x1

    goto :goto_fb

    .line 165
    .end local v9    # "i":I
    :cond_162
    if-eqz v7, :cond_180

    .line 166
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_165
    if-ge v9, v5, :cond_180

    .line 167
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 168
    .restart local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v11, v10, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v11, :cond_17d

    .line 169
    move-object v11, v10

    check-cast v11, Landroid/support/constraint/solver/widgets/Guideline;

    .line 170
    .local v11, "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v12

    if-nez v12, :cond_17d

    .line 171
    invoke-static {v11, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 166
    .end local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    :cond_17d
    add-int/lit8 v9, v9, 0x1

    goto :goto_165

    .line 178
    .end local v9    # "i":I
    :cond_180
    invoke-static/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 181
    if-eqz v8, :cond_1a1

    .line 182
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_186
    if-ge v9, v5, :cond_1a1

    .line 183
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 184
    .restart local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v11, v10, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v11, :cond_19e

    .line 185
    move-object v11, v10

    check-cast v11, Landroid/support/constraint/solver/widgets/Barrier;

    .line 186
    .local v11, "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/Barrier;->getOrientation()I

    move-result v12

    if-ne v12, v13, :cond_19e

    .line 187
    invoke-static {v11, v1, v13, v6}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveBarrier(Landroid/support/constraint/solver/widgets/Barrier;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;IZ)V

    .line 182
    .end local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    :cond_19e
    add-int/lit8 v9, v9, 0x1

    goto :goto_186

    .line 194
    .end local v9    # "i":I
    :cond_1a1
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1a2
    if-ge v9, v5, :cond_1c6

    .line 195
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 196
    .restart local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v11

    if-eqz v11, :cond_1c3

    invoke-static {v10}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v11

    if-eqz v11, :cond_1c3

    .line 197
    sget-object v11, Landroid/support/constraint/solver/widgets/analyzer/Direct;->measure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    sget v12, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v10, v1, v11, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 198
    invoke-static {v10, v1, v6}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 199
    invoke-static {v10, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 194
    .end local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1c3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a2

    .line 202
    .end local v9    # "i":I
    :cond_1c6
    return-void
.end method

.method private static verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V
    .registers 20
    .param p0, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-nez v2, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 354
    new-instance v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v2}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 355
    .local v2, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    sget v3, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 358
    .end local v2    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_1e
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 359
    .local v2, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 360
    .local v3, "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v4

    .line 361
    .local v4, "t":I
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v5

    .line 363
    .local v5, "b":I
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-eqz v6, :cond_140

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v6

    if-eqz v6, :cond_140

    .line 364
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_49
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_140

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 365
    .local v11, "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v12, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 366
    .local v12, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v13, 0x0

    .line 367
    .local v13, "y1":I
    const/4 v14, 0x0

    .line 368
    .local v14, "y2":I
    invoke-static {v12}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v15

    .line 369
    .local v15, "canMeasure":Z
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v16

    if-eqz v16, :cond_73

    if-eqz v15, :cond_73

    .line 370
    new-instance v16, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct/range {v16 .. v16}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object/from16 v17, v16

    .line 371
    .local v17, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    sget v9, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    move-object/from16 v10, v17

    .end local v17    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    .local v10, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    invoke-static {v12, v1, v10, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 374
    .end local v10    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_73
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_e3

    if-eqz v15, :cond_7e

    goto :goto_e3

    .line 400
    :cond_7e
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_13e

    iget v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-ltz v9, :cond_13e

    iget v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-ltz v9, :cond_13e

    .line 402
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    if-eq v9, v8, :cond_a0

    iget v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v9, :cond_13e

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v9

    cmpl-float v9, v9, v7

    if-nez v9, :cond_13e

    .line 403
    :cond_a0
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v9

    if-nez v9, :cond_13e

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v9

    if-nez v9, :cond_13e

    .line 404
    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v9, :cond_c0

    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_c0

    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v9

    if-nez v9, :cond_d4

    :cond_c0
    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v9, :cond_d6

    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_d6

    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 405
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v9

    if-eqz v9, :cond_d6

    :cond_d4
    const/4 v9, 0x1

    goto :goto_d7

    :cond_d6
    const/4 v9, 0x0

    .line 406
    .local v9, "bothConnected":Z
    :goto_d7
    if-eqz v9, :cond_13e

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v10

    if-nez v10, :cond_13e

    .line 407
    invoke-static {v0, v1, v12}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveVerticalMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_13e

    .line 376
    .end local v9    # "bothConnected":Z
    :cond_e3
    :goto_e3
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v9

    if-eqz v9, :cond_eb

    .line 381
    goto/16 :goto_49

    .line 383
    :cond_eb
    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v9, :cond_108

    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_108

    .line 384
    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    add-int/2addr v9, v4

    .line 385
    .end local v13    # "y1":I
    .local v9, "y1":I
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    add-int/2addr v10, v9

    .line 386
    .end local v14    # "y2":I
    .local v10, "y2":I
    invoke-virtual {v12, v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 387
    invoke-static {v12, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_13e

    .line 388
    .end local v9    # "y1":I
    .end local v10    # "y2":I
    .restart local v13    # "y1":I
    .restart local v14    # "y2":I
    :cond_108
    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v9, :cond_127

    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_127

    .line 389
    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    sub-int v9, v4, v9

    .line 390
    .end local v14    # "y2":I
    .local v9, "y2":I
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    sub-int v10, v9, v10

    .line 391
    .end local v13    # "y1":I
    .local v10, "y1":I
    invoke-virtual {v12, v10, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 392
    invoke-static {v12, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_13e

    .line 393
    .end local v9    # "y2":I
    .end local v10    # "y1":I
    .restart local v13    # "y1":I
    .restart local v14    # "y2":I
    :cond_127
    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v9, :cond_13e

    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_13e

    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 394
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v9

    if-eqz v9, :cond_13e

    .line 395
    invoke-static {v1, v12}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveVerticalCenterConstraints(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 410
    .end local v11    # "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "y1":I
    .end local v14    # "y2":I
    .end local v15    # "canMeasure":Z
    :cond_13e
    :goto_13e
    goto/16 :goto_49

    .line 412
    :cond_140
    instance-of v6, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v6, :cond_145

    .line 413
    return-void

    .line 415
    :cond_145
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v6

    if-eqz v6, :cond_24c

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v6

    if-eqz v6, :cond_24c

    .line 416
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_159
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_24c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 417
    .local v9, "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v10, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 418
    .local v10, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-static {v10}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v11

    .line 419
    .local v11, "canMeasure":Z
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v12

    if-eqz v12, :cond_17d

    if-eqz v11, :cond_17d

    .line 420
    new-instance v12, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v12}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 421
    .local v12, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    sget v13, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v10, v1, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 424
    .end local v12    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_17d
    const/4 v12, 0x0

    .line 425
    .local v12, "y1":I
    const/4 v13, 0x0

    .line 426
    .local v13, "y2":I
    iget-object v14, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v9, v14, :cond_193

    iget-object v14, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v14, :cond_193

    iget-object v14, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v14

    if-nez v14, :cond_1a7

    :cond_193
    iget-object v14, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v9, v14, :cond_1a9

    iget-object v14, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v14, :cond_1a9

    iget-object v14, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 427
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v14

    if-eqz v14, :cond_1a9

    :cond_1a7
    const/4 v14, 0x1

    goto :goto_1aa

    :cond_1a9
    const/4 v14, 0x0

    .line 428
    .local v14, "bothConnected":Z
    :goto_1aa
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v7, :cond_1f8

    if-eqz v11, :cond_1b6

    const/4 v15, 0x0

    goto :goto_1f9

    .line 450
    :cond_1b6
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v15, :cond_1f6

    iget v7, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-ltz v7, :cond_1f6

    iget v7, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-ltz v7, :cond_1f6

    .line 452
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-eq v7, v8, :cond_1dd

    iget v7, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v7, :cond_1da

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v7

    const/4 v15, 0x0

    cmpl-float v7, v7, v15

    if-nez v7, :cond_249

    goto :goto_1de

    :cond_1da
    const/4 v15, 0x0

    goto/16 :goto_249

    :cond_1dd
    const/4 v15, 0x0

    .line 453
    :goto_1de
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v7

    if-nez v7, :cond_249

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v7

    if-nez v7, :cond_249

    .line 454
    if-eqz v14, :cond_249

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v7

    if-nez v7, :cond_249

    .line 455
    invoke-static {v0, v1, v10}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveVerticalMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_249

    .line 450
    :cond_1f6
    const/4 v15, 0x0

    goto :goto_249

    .line 428
    :cond_1f8
    const/4 v15, 0x0

    .line 430
    :goto_1f9
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v7

    if-eqz v7, :cond_202

    .line 435
    const/4 v7, 0x0

    goto/16 :goto_159

    .line 437
    :cond_202
    iget-object v7, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v9, v7, :cond_21f

    iget-object v7, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_21f

    .line 438
    iget-object v7, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v7, v5

    .line 439
    .end local v12    # "y1":I
    .local v7, "y1":I
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    add-int/2addr v12, v7

    .line 440
    .end local v13    # "y2":I
    .local v12, "y2":I
    invoke-virtual {v10, v7, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 441
    invoke-static {v10, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_249

    .line 442
    .end local v7    # "y1":I
    .local v12, "y1":I
    .restart local v13    # "y2":I
    :cond_21f
    iget-object v7, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v9, v7, :cond_23e

    iget-object v7, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_23e

    .line 443
    iget-object v7, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    sub-int v7, v5, v7

    .line 444
    .end local v13    # "y2":I
    .local v7, "y2":I
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v13

    sub-int v12, v7, v13

    .line 445
    invoke-virtual {v10, v12, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 446
    invoke-static {v10, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_249

    .line 447
    .end local v7    # "y2":I
    .restart local v13    # "y2":I
    :cond_23e
    if-eqz v14, :cond_249

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v7

    if-nez v7, :cond_249

    .line 448
    invoke-static {v1, v10}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveVerticalCenterConstraints(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 458
    .end local v9    # "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "canMeasure":Z
    .end local v12    # "y1":I
    .end local v13    # "y2":I
    .end local v14    # "bothConnected":Z
    :cond_249
    :goto_249
    const/4 v7, 0x0

    goto/16 :goto_159

    .line 461
    :cond_24c
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    .line 462
    .local v6, "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v7

    if-eqz v7, :cond_2aa

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v7

    if-eqz v7, :cond_2aa

    .line 463
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v7

    .line 464
    .local v7, "baselineValue":I
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_26a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2aa

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 465
    .restart local v9    # "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v10, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 466
    .restart local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-static {v10}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v11

    .line 467
    .restart local v11    # "canMeasure":Z
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v12

    if-eqz v12, :cond_28e

    if-eqz v11, :cond_28e

    .line 468
    new-instance v12, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v12}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 469
    .local v12, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    sget v13, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v10, v1, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 471
    .end local v12    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_28e
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v13, :cond_298

    if-eqz v11, :cond_2a9

    .line 473
    :cond_298
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v12

    if-eqz v12, :cond_29f

    .line 478
    goto :goto_26a

    .line 480
    :cond_29f
    iget-object v12, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v9, v12, :cond_2a9

    .line 481
    invoke-virtual {v10, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalBaseline(I)V

    .line 482
    :try_start_2a6
    invoke-static {v10, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V
    :try_end_2a9
    .catchall {:try_start_2a6 .. :try_end_2a9} :catchall_2ab

    .line 485
    .end local v9    # "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "canMeasure":Z
    :cond_2a9
    goto :goto_26a

    .line 488
    .end local v7    # "baselineValue":I
    :cond_2aa
    return-void

    .line 482
    .end local v2    # "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "t":I
    .end local v5    # "b":I
    .end local v6    # "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local p0    # "layout":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local p1    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    :catchall_2ab
    move-exception v0

    move-object v1, v0

    throw v1
.end method
