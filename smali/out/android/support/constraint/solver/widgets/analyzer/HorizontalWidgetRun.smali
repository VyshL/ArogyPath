.class public Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;
.super Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
.source "HorizontalWidgetRun.java"


# static fields
.field private static tempDimensions:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 4
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 40
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 41
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->LEFT:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v1, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->type:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    .line 42
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v1, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->type:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->orientation:I

    .line 44
    return-void
.end method

.method private computeInsetRatio([IIIIIFI)V
    .registers 17
    .param p1, "dimensions"    # [I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "y1"    # I
    .param p5, "y2"    # I
    .param p6, "ratio"    # F
    .param p7, "side"    # I

    .line 271
    sub-int v0, p3, p2

    .line 272
    .local v0, "dx":I
    sub-int v1, p5, p4

    .line 273
    .local v1, "dy":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    packed-switch p7, :pswitch_data_3e

    goto :goto_3d

    .line 295
    :pswitch_c
    int-to-float v5, v0

    mul-float v5, v5, p6

    add-float/2addr v5, v4

    float-to-int v4, v5

    .line 296
    .local v4, "verticalSide":I
    aput v0, p1, v3

    .line 297
    aput v4, p1, v2

    goto :goto_3d

    .line 289
    .end local v4    # "verticalSide":I
    :pswitch_16
    int-to-float v5, v1

    mul-float v5, v5, p6

    add-float/2addr v5, v4

    float-to-int v4, v5

    .line 290
    .local v4, "horizontalSide":I
    aput v4, p1, v3

    .line 291
    aput v1, p1, v2

    .line 293
    .end local v4    # "horizontalSide":I
    goto :goto_3d

    .line 275
    :pswitch_20
    int-to-float v5, v1

    mul-float v5, v5, p6

    add-float/2addr v5, v4

    float-to-int v5, v5

    .line 276
    .local v5, "candidateX1":I
    move v6, v1

    .line 277
    .local v6, "candidateY1":I
    move v7, v0

    .line 278
    .local v7, "candidateX2":I
    int-to-float v8, v0

    div-float/2addr v8, p6

    add-float/2addr v8, v4

    float-to-int v4, v8

    .line 279
    .local v4, "candidateY2":I
    if-gt v5, v0, :cond_34

    if-gt v6, v1, :cond_34

    .line 280
    aput v5, p1, v3

    .line 281
    aput v6, p1, v2

    goto :goto_3c

    .line 282
    :cond_34
    if-gt v7, v0, :cond_3c

    if-gt v4, v1, :cond_3c

    .line 283
    aput v7, p1, v3

    .line 284
    aput v4, p1, v2

    .line 287
    .end local v4    # "candidateY2":I
    .end local v5    # "candidateX1":I
    .end local v6    # "candidateY1":I
    .end local v7    # "candidateX2":I
    :cond_3c
    :goto_3c
    nop

    .line 301
    :goto_3d
    return-void

    :pswitch_data_3e
    .packed-switch -0x1
        :pswitch_20
        :pswitch_16
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method apply()V
    .registers 7

    .line 83
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    if-eqz v0, :cond_11

    .line 84
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 86
    :cond_11
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v0, :cond_94

    .line 87
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 88
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v1, :cond_d6

    .line 89
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_82

    .line 90
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 91
    .local v0, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v0, :cond_3b

    .line 92
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v2, :cond_43

    .line 93
    :cond_3b
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_82

    .line 94
    :cond_43
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    sub-int/2addr v1, v2

    .line 95
    .local v1, "resolvedDimension":I
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;I)V

    .line 96
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;I)V

    .line 97
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 98
    return-void

    .line 101
    .end local v0    # "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v1    # "resolvedDimension":I
    :cond_82
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_d6

    .line 102
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_d6

    .line 106
    :cond_94
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_d6

    .line 107
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 108
    .restart local v0    # "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v0, :cond_aa

    .line 109
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v2, :cond_b2

    .line 110
    :cond_aa
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_d6

    .line 111
    :cond_b2
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;I)V

    .line 112
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;I)V

    .line 113
    return-void

    .line 127
    .end local v0    # "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_d6
    :goto_d6
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_202

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    if-eqz v0, :cond_202

    .line 128
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_160

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_160

    .line 129
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 130
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    .line 131
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    goto/16 :goto_436

    .line 133
    :cond_11f
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->getTarget(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    move-result-object v0

    .line 134
    .local v0, "startTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    if-eqz v0, :cond_13a

    .line 135
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v4, v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    invoke-virtual {p0, v3, v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;I)V

    .line 137
    :cond_13a
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->getTarget(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    move-result-object v1

    .line 138
    .local v1, "endTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    if-eqz v1, :cond_156

    .line 139
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0, v3, v1, v4}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;I)V

    .line 141
    :cond_156
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iput-boolean v2, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 142
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iput-boolean v2, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 143
    .end local v0    # "startTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .end local v1    # "endTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    goto/16 :goto_436

    .line 144
    :cond_160
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_192

    .line 145
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->getTarget(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    move-result-object v0

    .line 146
    .local v0, "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    if-eqz v0, :cond_190

    .line 147
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    invoke-virtual {p0, v2, v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;I)V

    .line 148
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;I)V

    .line 150
    .end local v0    # "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_190
    goto/16 :goto_436

    :cond_192
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1c6

    .line 151
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->getTarget(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    move-result-object v0

    .line 152
    .restart local v0    # "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    if-eqz v0, :cond_1c4

    .line 153
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;I)V

    .line 154
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    neg-int v3, v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;I)V

    .line 156
    .end local v0    # "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_1c4
    goto/16 :goto_436

    .line 158
    :cond_1c6
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/Helper;

    if-nez v0, :cond_436

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_436

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 159
    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v0, :cond_436

    .line 160
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 161
    .local v0, "left":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;I)V

    .line 162
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;I)V

    .line 163
    .end local v0    # "left":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    goto/16 :goto_436

    .line 166
    :cond_202
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_34f

    .line 167
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    packed-switch v0, :pswitch_data_438

    goto/16 :goto_34f

    .line 169
    :pswitch_211
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2c7

    .line 172
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iput-object p0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->updateDelegate:Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 173
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iput-object p0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->updateDelegate:Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 174
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iput-object p0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->updateDelegate:Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 175
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iput-object p0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->updateDelegate:Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 176
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iput-object p0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->updateDelegate:Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 178
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v0

    if-eqz v0, :cond_294

    .line 179
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->targets:Ljava/util/List;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iput-object p0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->updateDelegate:Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 182
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->targets:Ljava/util/List;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->targets:Ljava/util/List;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_34f

    .line 186
    :cond_294
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 187
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->targets:Ljava/util/List;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_34f

    .line 190
    :cond_2b8
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->targets:Ljava/util/List;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    goto/16 :goto_34f

    .line 195
    :cond_2c7
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    .line 196
    .local v0, "targetDimension":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->targets:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iput-boolean v2, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->delegateToWidgetRun:Z

    .line 201
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v0    # "targetDimension":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    goto :goto_34f

    .line 209
    :pswitch_31e
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 210
    .local v0, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v0, :cond_327

    .line 211
    goto :goto_34f

    .line 213
    :cond_327
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    .line 214
    .local v3, "targetDimension":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->targets:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iput-boolean v2, v4, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->delegateToWidgetRun:Z

    .line 217
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v0    # "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v3    # "targetDimension":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_34f
    :goto_34f
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_3aa

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_3aa

    .line 228
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-eqz v0, :cond_38a

    .line 229
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    .line 230
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    goto/16 :goto_436

    .line 232
    :cond_38a
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->getTarget(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    move-result-object v0

    .line 233
    .local v0, "startTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->getTarget(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    move-result-object v1

    .line 242
    .restart local v1    # "endTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->addDependency(Landroid/support/constraint/solver/widgets/analyzer/Dependency;)V

    .line 243
    invoke-virtual {v1, p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->addDependency(Landroid/support/constraint/solver/widgets/analyzer/Dependency;)V

    .line 245
    sget-object v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;->CENTER:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->mRunType:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    .line 246
    .end local v0    # "startTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .end local v1    # "endTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    goto/16 :goto_436

    .line 247
    :cond_3aa
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_3d9

    .line 248
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->getTarget(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    move-result-object v0

    .line 249
    .local v0, "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    if-eqz v0, :cond_3d8

    .line 250
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v4, v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    invoke-virtual {p0, v3, v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;I)V

    .line 251
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {p0, v1, v3, v2, v4}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;ILandroid/support/constraint/solver/widgets/analyzer/DimensionDependency;)V

    .line 253
    .end local v0    # "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_3d8
    goto :goto_436

    :cond_3d9
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_40a

    .line 254
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->getTarget(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    move-result-object v0

    .line 255
    .restart local v0    # "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    if-eqz v0, :cond_409

    .line 256
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;I)V

    .line 257
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v3, -0x1

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;ILandroid/support/constraint/solver/widgets/analyzer/DimensionDependency;)V

    .line 259
    .end local v0    # "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_409
    goto :goto_436

    .line 261
    :cond_40a
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/Helper;

    if-nez v0, :cond_436

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_436

    .line 262
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 263
    .local v0, "left":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v3

    invoke-virtual {p0, v1, v0, v3}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;I)V

    .line 264
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {p0, v1, v3, v2, v4}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;ILandroid/support/constraint/solver/widgets/analyzer/DimensionDependency;)V

    .line 268
    .end local v0    # "left":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_436
    :goto_436
    return-void

    nop

    :pswitch_data_438
    .packed-switch 0x2
        :pswitch_31e
        :pswitch_211
    .end packed-switch
.end method

.method public applyToWidget()V
    .registers 3

    .line 548
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_f

    .line 549
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setX(I)V

    .line 551
    :cond_f
    return-void
.end method

.method clear()V
    .registers 2

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->runGroup:Landroid/support/constraint/solver/widgets/analyzer/RunGroup;

    .line 54
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->clear()V

    .line 55
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->clear()V

    .line 56
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->clear()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->resolved:Z

    .line 58
    return-void
.end method

.method reset()V
    .registers 3

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->resolved:Z

    .line 63
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->clear()V

    .line 64
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iput-boolean v0, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    .line 65
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->clear()V

    .line 66
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iput-boolean v0, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    .line 67
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iput-boolean v0, v1, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 68
    return-void
.end method

.method supportsWrapComputation()Z
    .registers 4

    .line 72
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_10

    .line 73
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v0, :cond_e

    .line 74
    return v2

    .line 76
    :cond_e
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_10
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HorizontalRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/constraint/solver/widgets/analyzer/Dependency;)V
    .registers 27
    .param p1, "dependency"    # Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 305
    move-object/from16 v8, p0

    sget-object v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun$1;->$SwitchMap$android$support$constraint$solver$widgets$analyzer$WidgetRun$RunType:[I

    iget-object v1, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->mRunType:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_4ac

    move-object/from16 v10, p1

    goto :goto_2d

    .line 315
    :pswitch_13
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v10, p1

    invoke-virtual {v8, v10, v0, v1, v9}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->updateRunCenter(Landroid/support/constraint/solver/widgets/analyzer/Dependency;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 316
    return-void

    .line 311
    :pswitch_21
    move-object/from16 v10, p1

    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->updateRunEnd(Landroid/support/constraint/solver/widgets/analyzer/Dependency;)V

    .line 313
    goto :goto_2d

    .line 307
    :pswitch_27
    move-object/from16 v10, p1

    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->updateRunStart(Landroid/support/constraint/solver/widgets/analyzer/Dependency;)V

    .line 309
    nop

    .line 320
    :goto_2d
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    if-nez v0, :cond_37b

    .line 321
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_37b

    .line 322
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    packed-switch v0, :pswitch_data_4b6

    goto/16 :goto_37b

    .line 324
    :pswitch_45
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v0, :cond_9f

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_53

    goto :goto_9f

    .line 445
    :cond_53
    const/4 v0, 0x0

    .line 446
    .local v0, "size":I
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatioSide()I

    move-result v1

    .line 447
    .local v1, "ratioSide":I
    packed-switch v1, :pswitch_data_4be

    goto :goto_98

    .line 453
    :pswitch_5e
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v2, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    int-to-float v2, v2

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v2, v12

    float-to-int v0, v2

    .line 455
    goto :goto_98

    .line 449
    :pswitch_72
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v2, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    int-to-float v2, v2

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v2, v12

    float-to-int v0, v2

    .line 451
    goto :goto_98

    .line 457
    :pswitch_85
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v2, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    int-to-float v2, v2

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v2, v12

    float-to-int v0, v2

    .line 461
    :goto_98
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 464
    .end local v0    # "size":I
    .end local v1    # "ratioSide":I
    goto/16 :goto_37b

    .line 326
    :cond_9f
    :goto_9f
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v13, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 327
    .local v13, "secondStart":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v14, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 328
    .local v14, "secondEnd":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_b5

    const/4 v0, 0x1

    goto :goto_b6

    :cond_b5
    const/4 v0, 0x0

    :goto_b6
    move v15, v0

    .line 329
    .local v15, "s1":Z
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_c1

    const/4 v0, 0x1

    goto :goto_c2

    :cond_c1
    const/4 v0, 0x0

    :goto_c2
    move/from16 v16, v0

    .line 330
    .local v16, "s2":Z
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_ce

    const/4 v0, 0x1

    goto :goto_cf

    :cond_ce
    const/4 v0, 0x0

    :goto_cf
    move/from16 v17, v0

    .line 331
    .local v17, "e1":Z
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_db

    const/4 v0, 0x1

    goto :goto_dc

    :cond_db
    const/4 v0, 0x0

    :goto_dc
    move/from16 v18, v0

    .line 333
    .local v18, "e2":Z
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatioSide()I

    move-result v19

    .line 335
    .local v19, "definedSide":I
    if-eqz v15, :cond_252

    if-eqz v16, :cond_252

    if-eqz v17, :cond_252

    if-eqz v18, :cond_252

    .line 336
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v20

    .line 337
    .local v20, "ratio":F
    iget-boolean v0, v13, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_161

    iget-boolean v0, v14, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_161

    .line 338
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    if-eqz v0, :cond_160

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    if-nez v0, :cond_107

    goto :goto_160

    .line 341
    :cond_107
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v1, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int v12, v0, v1

    .line 342
    .local v12, "x1":I
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v1, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    sub-int v21, v0, v1

    .line 343
    .local v21, "x2":I
    iget v0, v13, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget v1, v13, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int v22, v0, v1

    .line 344
    .local v22, "y1":I
    iget v0, v14, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget v1, v14, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    sub-int v23, v0, v1

    .line 345
    .local v23, "y2":I
    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    move-object/from16 v0, p0

    move v2, v12

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v5, v23

    move/from16 v6, v20

    move/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->computeInsetRatio([IIIIIFI)V

    .line 346
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 347
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    aget v1, v1, v11

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 348
    return-void

    .line 339
    .end local v12    # "x1":I
    .end local v21    # "x2":I
    .end local v22    # "y1":I
    .end local v23    # "y2":I
    :cond_160
    :goto_160
    return-void

    .line 350
    :cond_161
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_1d1

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_1d1

    .line 351
    iget-boolean v0, v13, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    if-eqz v0, :cond_1d0

    iget-boolean v0, v14, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    if-nez v0, :cond_176

    goto :goto_1d0

    .line 354
    :cond_176
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v1, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int v21, v0, v1

    .line 355
    .local v21, "x1":I
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v1, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    sub-int v22, v0, v1

    .line 356
    .local v22, "x2":I
    iget-object v0, v13, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget v1, v13, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int v23, v0, v1

    .line 357
    .local v23, "y1":I
    iget-object v0, v14, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget v1, v14, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    sub-int v24, v0, v1

    .line 358
    .local v24, "y2":I
    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    move-object/from16 v0, p0

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v24

    move/from16 v6, v20

    move/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->computeInsetRatio([IIIIIFI)V

    .line 359
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 360
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    aget v1, v1, v11

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_1d1

    .line 352
    .end local v21    # "x1":I
    .end local v22    # "x2":I
    .end local v23    # "y1":I
    .end local v24    # "y2":I
    :cond_1d0
    :goto_1d0
    return-void

    .line 362
    :cond_1d1
    :goto_1d1
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    if-eqz v0, :cond_251

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    if-eqz v0, :cond_251

    iget-boolean v0, v13, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    if-eqz v0, :cond_251

    iget-boolean v0, v14, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    if-nez v0, :cond_1e6

    goto :goto_251

    .line 367
    :cond_1e6
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v1, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int v21, v0, v1

    .line 368
    .restart local v21    # "x1":I
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v1, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    sub-int v22, v0, v1

    .line 369
    .restart local v22    # "x2":I
    iget-object v0, v13, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget v1, v13, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int v23, v0, v1

    .line 370
    .restart local v23    # "y1":I
    iget-object v0, v14, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget v1, v14, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    sub-int v24, v0, v1

    .line 371
    .restart local v24    # "y2":I
    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    move-object/from16 v0, p0

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v24

    move/from16 v6, v20

    move/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->computeInsetRatio([IIIIIFI)V

    .line 372
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 373
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    sget-object v1, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->tempDimensions:[I

    aget v1, v1, v11

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 374
    .end local v20    # "ratio":F
    .end local v21    # "x1":I
    .end local v22    # "x2":I
    .end local v23    # "y1":I
    .end local v24    # "y2":I
    goto/16 :goto_356

    .line 365
    .restart local v20    # "ratio":F
    :cond_251
    :goto_251
    return-void

    .line 374
    .end local v20    # "ratio":F
    :cond_252
    if-eqz v15, :cond_2db

    if-eqz v17, :cond_2db

    .line 375
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    if-eqz v0, :cond_2da

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    if-nez v0, :cond_263

    goto :goto_2da

    .line 378
    :cond_263
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v0

    .line 379
    .local v0, "ratio":F
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v2, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v1, v2

    .line 380
    .local v1, "x1":I
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    sub-int/2addr v2, v3

    .line 382
    .local v2, "x2":I
    packed-switch v19, :pswitch_data_4c8

    goto/16 :goto_355

    .line 397
    :pswitch_290
    sub-int v3, v2, v1

    .line 398
    .local v3, "dx":I
    invoke-virtual {v8, v3, v9}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->getLimitedDimension(II)I

    move-result v4

    .line 399
    .local v4, "ldx":I
    int-to-float v5, v4

    div-float/2addr v5, v0

    add-float/2addr v5, v12

    float-to-int v5, v5

    .line 400
    .local v5, "dy":I
    invoke-virtual {v8, v5, v11}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->getLimitedDimension(II)I

    move-result v6

    .line 401
    .local v6, "ldy":I
    if-eq v5, v6, :cond_2a5

    .line 402
    int-to-float v7, v6

    mul-float v7, v7, v0

    add-float/2addr v7, v12

    float-to-int v4, v7

    .line 404
    :cond_2a5
    iget-object v7, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v7, v4}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 405
    iget-object v7, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v7, v6}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto/16 :goto_355

    .line 385
    .end local v3    # "dx":I
    .end local v4    # "ldx":I
    .end local v5    # "dy":I
    .end local v6    # "ldy":I
    :pswitch_2b5
    sub-int v3, v2, v1

    .line 386
    .restart local v3    # "dx":I
    invoke-virtual {v8, v3, v9}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->getLimitedDimension(II)I

    move-result v4

    .line 387
    .restart local v4    # "ldx":I
    int-to-float v5, v4

    mul-float v5, v5, v0

    add-float/2addr v5, v12

    float-to-int v5, v5

    .line 388
    .restart local v5    # "dy":I
    invoke-virtual {v8, v5, v11}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->getLimitedDimension(II)I

    move-result v6

    .line 389
    .restart local v6    # "ldy":I
    if-eq v5, v6, :cond_2ca

    .line 390
    int-to-float v7, v6

    div-float/2addr v7, v0

    add-float/2addr v7, v12

    float-to-int v4, v7

    .line 392
    :cond_2ca
    iget-object v7, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v7, v4}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 393
    iget-object v7, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v7, v6}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 395
    .end local v3    # "dx":I
    .end local v4    # "ldx":I
    .end local v5    # "dy":I
    .end local v6    # "ldy":I
    goto/16 :goto_355

    .line 376
    .end local v0    # "ratio":F
    .end local v1    # "x1":I
    .end local v2    # "x2":I
    :cond_2da
    :goto_2da
    return-void

    .line 408
    :cond_2db
    if-eqz v16, :cond_355

    if-eqz v18, :cond_355

    .line 409
    iget-boolean v0, v13, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    if-eqz v0, :cond_354

    iget-boolean v0, v14, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    if-nez v0, :cond_2e8

    goto :goto_354

    .line 412
    :cond_2e8
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v0

    .line 413
    .restart local v0    # "ratio":F
    iget-object v1, v13, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget v2, v13, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v1, v2

    .line 414
    .local v1, "y1":I
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget v3, v14, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    sub-int/2addr v2, v3

    .line 416
    .local v2, "y2":I
    packed-switch v19, :pswitch_data_4d2

    goto :goto_356

    .line 431
    :pswitch_30c
    sub-int v3, v2, v1

    .line 432
    .local v3, "dy":I
    invoke-virtual {v8, v3, v11}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->getLimitedDimension(II)I

    move-result v4

    .line 433
    .local v4, "ldy":I
    int-to-float v5, v4

    mul-float v5, v5, v0

    add-float/2addr v5, v12

    float-to-int v5, v5

    .line 434
    .local v5, "dx":I
    invoke-virtual {v8, v5, v9}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->getLimitedDimension(II)I

    move-result v6

    .line 435
    .local v6, "ldx":I
    if-eq v5, v6, :cond_321

    .line 436
    int-to-float v7, v6

    div-float/2addr v7, v0

    add-float/2addr v7, v12

    float-to-int v4, v7

    .line 438
    :cond_321
    iget-object v7, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v7, v6}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 439
    iget-object v7, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v7, v4}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_356

    .line 419
    .end local v3    # "dy":I
    .end local v4    # "ldy":I
    .end local v5    # "dx":I
    .end local v6    # "ldx":I
    :pswitch_330
    sub-int v3, v2, v1

    .line 420
    .restart local v3    # "dy":I
    invoke-virtual {v8, v3, v11}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->getLimitedDimension(II)I

    move-result v4

    .line 421
    .restart local v4    # "ldy":I
    int-to-float v5, v4

    div-float/2addr v5, v0

    add-float/2addr v5, v12

    float-to-int v5, v5

    .line 422
    .restart local v5    # "dx":I
    invoke-virtual {v8, v5, v9}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->getLimitedDimension(II)I

    move-result v6

    .line 423
    .restart local v6    # "ldx":I
    if-eq v5, v6, :cond_345

    .line 424
    int-to-float v7, v6

    mul-float v7, v7, v0

    add-float/2addr v7, v12

    float-to-int v4, v7

    .line 426
    :cond_345
    iget-object v7, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v7, v6}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 427
    iget-object v7, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v7, v4}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 429
    .end local v3    # "dy":I
    .end local v4    # "ldy":I
    .end local v5    # "dx":I
    .end local v6    # "ldx":I
    goto :goto_356

    .line 410
    .end local v0    # "ratio":F
    .end local v1    # "y1":I
    .end local v2    # "y2":I
    :cond_354
    :goto_354
    return-void

    .line 408
    :cond_355
    :goto_355
    nop

    .line 444
    .end local v13    # "secondStart":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .end local v14    # "secondEnd":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .end local v15    # "s1":Z
    .end local v16    # "s2":Z
    .end local v17    # "e1":Z
    .end local v18    # "e2":Z
    .end local v19    # "definedSide":I
    :goto_356
    goto :goto_37b

    .line 466
    :pswitch_357
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 467
    .local v0, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v0, :cond_37b

    .line 468
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v1, :cond_37b

    .line 469
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 470
    .local v1, "percent":F
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v2, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    .line 471
    .local v2, "targetDimensionValue":I
    int-to-float v3, v2

    mul-float v3, v3, v1

    add-float/2addr v3, v12

    float-to-int v3, v3

    .line 472
    .local v3, "size":I
    iget-object v4, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 481
    .end local v0    # "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v1    # "percent":F
    .end local v2    # "targetDimensionValue":I
    .end local v3    # "size":I
    :cond_37b
    :goto_37b
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    if-eqz v0, :cond_4aa

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    if-nez v0, :cond_389

    goto/16 :goto_4aa

    .line 485
    :cond_389
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_39c

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_39c

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v0, :cond_39c

    .line 486
    return-void

    .line 489
    :cond_39c
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v0, :cond_3ea

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_3ea

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v0, :cond_3ea

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 492
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-nez v0, :cond_3ea

    .line 494
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 495
    .local v0, "startTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 496
    .local v1, "endTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget v2, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v2, v3

    .line 497
    .local v2, "startPos":I
    iget v3, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v4, v4, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v3, v4

    .line 499
    .local v3, "endPos":I
    sub-int v4, v3, v2

    .line 500
    .local v4, "distance":I
    iget-object v5, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v5, v2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 501
    iget-object v5, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v5, v3}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 502
    iget-object v5, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v5, v4}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 503
    return-void

    .line 506
    .end local v0    # "startTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .end local v1    # "endTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .end local v2    # "startPos":I
    .end local v3    # "endPos":I
    .end local v4    # "distance":I
    :cond_3ea
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v0, :cond_451

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_451

    iget v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->matchConstraintsType:I

    if-ne v0, v11, :cond_451

    .line 509
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_451

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_451

    .line 510
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 511
    .restart local v0    # "startTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 512
    .restart local v1    # "endTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget v2, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v2, v3

    .line 513
    .restart local v2    # "startPos":I
    iget v3, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v4, v4, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v3, v4

    .line 514
    .restart local v3    # "endPos":I
    sub-int v4, v3, v2

    .line 515
    .local v4, "availableSpace":I
    iget-object v5, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v5, v5, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 516
    .local v5, "value":I
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 517
    .local v6, "max":I
    iget-object v7, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 518
    .local v7, "min":I
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 519
    if-lez v6, :cond_44c

    .line 520
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 522
    :cond_44c
    iget-object v11, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v11, v5}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 526
    .end local v0    # "startTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .end local v1    # "endTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .end local v2    # "startPos":I
    .end local v3    # "endPos":I
    .end local v4    # "availableSpace":I
    .end local v5    # "value":I
    .end local v6    # "max":I
    .end local v7    # "min":I
    :cond_451
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v0, :cond_458

    .line 527
    return-void

    .line 530
    :cond_458
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 531
    .restart local v0    # "startTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 532
    .restart local v1    # "endTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget v2, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v2, v3

    .line 533
    .restart local v2    # "startPos":I
    iget v3, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v4, v4, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v3, v4

    .line 534
    .restart local v3    # "endPos":I
    iget-object v4, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v4

    .line 535
    .local v4, "bias":F
    if-ne v0, v1, :cond_488

    .line 536
    iget v2, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    .line 537
    iget v3, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    .line 540
    const/high16 v4, 0x3f000000    # 0.5f

    .line 542
    :cond_488
    sub-int v5, v3, v2

    iget-object v6, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v6, v6, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    sub-int/2addr v5, v6

    .line 543
    .local v5, "distance":I
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    int-to-float v7, v2

    add-float/2addr v7, v12

    int-to-float v9, v5

    mul-float v9, v9, v4

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 544
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v7, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v7, v7, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v9, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v9, v9, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    add-int/2addr v7, v9

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 545
    return-void

    .line 482
    .end local v0    # "startTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .end local v1    # "endTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .end local v2    # "startPos":I
    .end local v3    # "endPos":I
    .end local v4    # "bias":F
    .end local v5    # "distance":I
    :cond_4aa
    :goto_4aa
    return-void

    nop

    :pswitch_data_4ac
    .packed-switch 0x1
        :pswitch_27
        :pswitch_21
        :pswitch_13
    .end packed-switch

    :pswitch_data_4b6
    .packed-switch 0x2
        :pswitch_357
        :pswitch_45
    .end packed-switch

    :pswitch_data_4be
    .packed-switch -0x1
        :pswitch_85
        :pswitch_72
        :pswitch_5e
    .end packed-switch

    :pswitch_data_4c8
    .packed-switch -0x1
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_290
    .end packed-switch

    :pswitch_data_4d2
    .packed-switch -0x1
        :pswitch_330
        :pswitch_30c
        :pswitch_330
    .end packed-switch
.end method
