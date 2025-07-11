.class public abstract Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
.super Ljava/lang/Object;
.source "WidgetRun.java"

# interfaces
.implements Landroid/support/constraint/solver/widgets/analyzer/Dependency;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;
    }
.end annotation


# instance fields
.field dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

.field protected dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

.field protected mRunType:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

.field public matchConstraintsType:I

.field public orientation:I

.field resolved:Z

.field runGroup:Landroid/support/constraint/solver/widgets/analyzer/RunGroup;

.field public start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

.field widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 3
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-direct {v0, p0}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;-><init>(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->orientation:I

    .line 37
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->resolved:Z

    .line 38
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v0, p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;-><init>(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 39
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v0, p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;-><init>(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 41
    sget-object v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;->NONE:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->mRunType:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$RunType;

    .line 44
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 45
    return-void
.end method

.method private resolveDimension(II)V
    .registers 10
    .param p1, "orientation"    # I
    .param p2, "distance"    # I

    .line 171
    iget v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    const/high16 v1, 0x3f000000    # 0.5f

    packed-switch v0, :pswitch_data_ae

    goto/16 :goto_ad

    .line 199
    :pswitch_9
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_30

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->matchConstraintsType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_30

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_30

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->matchConstraintsType:I

    if-ne v0, v2, :cond_30

    goto/16 :goto_ad

    .line 205
    :cond_30
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez p1, :cond_37

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    goto :goto_39

    :cond_37
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 206
    .local v0, "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    :goto_39
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v2, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v2, :cond_ad

    .line 207
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v2

    .line 209
    .local v2, "ratio":F
    const/4 v3, 0x1

    if-ne p1, v3, :cond_51

    .line 210
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    float-to-int v1, v3

    .local v1, "value":I
    goto :goto_5a

    .line 212
    .end local v1    # "value":I
    :cond_51
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    add-float/2addr v3, v1

    float-to-int v1, v3

    .line 214
    .restart local v1    # "value":I
    :goto_5a
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v3, v1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_ad

    .line 177
    .end local v0    # "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    .end local v1    # "value":I
    .end local v2    # "ratio":F
    :pswitch_60
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 178
    .local v0, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v0, :cond_90

    .line 179
    if-nez p1, :cond_6d

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    goto :goto_6f

    :cond_6d
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    .line 182
    .local v2, "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    :goto_6f
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v3, :cond_90

    .line 183
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez p1, :cond_7c

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    goto :goto_7e

    :cond_7c
    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 186
    .local v3, "percent":F
    :goto_7e
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v4, v4, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    .line 187
    .local v4, "targetDimensionValue":I
    int-to-float v5, v4

    mul-float v5, v5, v3

    add-float/2addr v5, v1

    float-to-int v1, v5

    .line 188
    .local v1, "size":I
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {p0, v1, p1}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 192
    .end local v0    # "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v1    # "size":I
    .end local v2    # "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    .end local v3    # "percent":F
    .end local v4    # "targetDimensionValue":I
    :cond_90
    goto :goto_ad

    .line 194
    :pswitch_91
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    invoke-virtual {p0, v0, p1}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    move-result v0

    .line 195
    .local v0, "wrapValue":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 197
    .end local v0    # "wrapValue":I
    goto :goto_ad

    .line 173
    :pswitch_a3
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {p0, p2, p1}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 175
    nop

    .line 220
    :cond_ad
    :goto_ad
    return-void

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_a3
        :pswitch_91
        :pswitch_60
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method protected final addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;I)V
    .registers 5
    .param p1, "node"    # Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .param p2, "target"    # Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .param p3, "margin"    # I

    .line 280
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iput p3, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    .line 282
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method protected final addTarget(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;ILandroid/support/constraint/solver/widgets/analyzer/DimensionDependency;)V
    .registers 7
    .param p1, "node"    # Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .param p2, "target"    # Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .param p3, "marginFactor"    # I
    .param p4, "dimensionDependency"    # Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    .line 286
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iput p3, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->marginFactor:I

    .line 289
    iput-object p4, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->marginDependency:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    .line 290
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p4, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    return-void
.end method

.method abstract apply()V
.end method

.method abstract applyToWidget()V
.end method

.method abstract clear()V
.end method

.method protected final getLimitedDimension(II)I
    .registers 6
    .param p1, "dimension"    # I
    .param p2, "orientation"    # I

    .line 233
    if-nez p2, :cond_18

    .line 234
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 235
    .local v0, "max":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 236
    .local v1, "min":I
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 237
    .local v2, "value":I
    if-lez v0, :cond_14

    .line 238
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 240
    :cond_14
    if-eq v2, p1, :cond_17

    .line 241
    move p1, v2

    .line 243
    .end local v0    # "max":I
    .end local v1    # "min":I
    .end local v2    # "value":I
    :cond_17
    goto :goto_2d

    .line 244
    :cond_18
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 245
    .restart local v0    # "max":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 246
    .restart local v1    # "min":I
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 247
    .restart local v2    # "value":I
    if-lez v0, :cond_2a

    .line 248
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 250
    :cond_2a
    if-eq v2, p1, :cond_2d

    .line 251
    move p1, v2

    .line 254
    .end local v0    # "max":I
    .end local v1    # "min":I
    .end local v2    # "value":I
    :cond_2d
    :goto_2d
    return p1
.end method

.method protected final getTarget(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .registers 7
    .param p1, "anchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 95
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v0, :cond_6

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_6
    const/4 v0, 0x0

    .line 99
    .local v0, "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 100
    .local v1, "targetWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 101
    .local v2, "targetType":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    sget-object v3, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_36

    goto :goto_34

    .line 119
    :pswitch_1b
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    .line 120
    .local v3, "run":Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;
    iget-object v0, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    goto :goto_34

    .line 115
    .end local v3    # "run":Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;
    :pswitch_20
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    .line 116
    .restart local v3    # "run":Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;
    iget-object v0, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 117
    .end local v3    # "run":Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;
    goto :goto_34

    .line 111
    :pswitch_25
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    .line 112
    .restart local v3    # "run":Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;
    iget-object v0, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 113
    .end local v3    # "run":Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;
    goto :goto_34

    .line 107
    :pswitch_2a
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 108
    .local v3, "run":Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;
    iget-object v0, v3, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 109
    .end local v3    # "run":Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;
    goto :goto_34

    .line 103
    :pswitch_2f
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 104
    .restart local v3    # "run":Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;
    iget-object v0, v3, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 105
    .end local v3    # "run":Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;
    nop

    .line 123
    :goto_34
    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
    .end packed-switch
.end method

.method protected final getTarget(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .registers 9
    .param p1, "anchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p2, "orientation"    # I

    .line 258
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v0, :cond_6

    .line 259
    const/4 v0, 0x0

    return-object v0

    .line 261
    :cond_6
    const/4 v0, 0x0

    .line 262
    .local v0, "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 263
    .local v1, "targetWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez p2, :cond_10

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    goto :goto_12

    :cond_10
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    .line 265
    .local v2, "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    :goto_12
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 266
    .local v3, "targetType":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    sget-object v4, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2a

    :pswitch_21
    goto :goto_28

    .line 273
    :pswitch_22
    iget-object v0, v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    goto :goto_28

    .line 269
    :pswitch_25
    iget-object v0, v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 270
    nop

    .line 276
    :goto_28
    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_22
        :pswitch_25
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method public getWrapDimension()J
    .registers 3

    .line 295
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v0, :cond_c

    .line 296
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    int-to-long v0, v0

    return-wide v0

    .line 298
    :cond_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCenterConnection()Z
    .registers 6

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "connections":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 61
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1f

    .line 62
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 63
    .local v3, "dependency":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    if-eq v4, p0, :cond_1c

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 61
    .end local v3    # "dependency":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 67
    .end local v2    # "i":I
    :cond_1f
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 68
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_28
    if-ge v2, v1, :cond_3d

    .line 69
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 70
    .restart local v3    # "dependency":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    if-eq v4, p0, :cond_3a

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 68
    .end local v3    # "dependency":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 74
    .end local v2    # "i":I
    :cond_3d
    const/4 v2, 0x2

    if-lt v0, v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    return v2
.end method

.method public isDimensionResolved()Z
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    return v0
.end method

.method public isResolved()Z
    .registers 2

    .line 301
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->resolved:Z

    return v0
.end method

.method abstract reset()V
.end method

.method abstract supportsWrapComputation()Z
.end method

.method public update(Landroid/support/constraint/solver/widgets/analyzer/Dependency;)V
    .registers 2
    .param p1, "dependency"    # Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 230
    return-void
.end method

.method protected updateRunCenter(Landroid/support/constraint/solver/widgets/analyzer/Dependency;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V
    .registers 15
    .param p1, "dependency"    # Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    .param p2, "startAnchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p3, "endAnchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p4, "orientation"    # I

    .line 127
    invoke-virtual {p0, p2}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->getTarget(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    move-result-object v0

    .line 128
    .local v0, "startTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    invoke-virtual {p0, p3}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->getTarget(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    move-result-object v1

    .line 130
    .local v1, "endTarget":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-boolean v2, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v2, :cond_82

    iget-boolean v2, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v2, :cond_11

    goto :goto_82

    .line 134
    :cond_11
    iget v2, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v2, v3

    .line 135
    .local v2, "startPos":I
    iget v3, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    sub-int/2addr v3, v4

    .line 136
    .local v3, "endPos":I
    sub-int v4, v3, v2

    .line 138
    .local v4, "distance":I
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v5, :cond_30

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_30

    .line 140
    invoke-direct {p0, p4, v4}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->resolveDimension(II)V

    .line 143
    :cond_30
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v5, :cond_37

    .line 144
    return-void

    .line 147
    :cond_37
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v5, v5, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    if-ne v5, v4, :cond_48

    .line 148
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v5, v2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 149
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v5, v3}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 150
    return-void

    .line 154
    :cond_48
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez p4, :cond_51

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v5

    goto :goto_55

    .line 155
    :cond_51
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v5

    :goto_55
    nop

    .line 157
    .local v5, "bias":F
    if-ne v0, v1, :cond_5e

    .line 158
    iget v2, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    .line 159
    iget v3, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    .line 162
    const/high16 v5, 0x3f000000    # 0.5f

    .line 165
    :cond_5e
    sub-int v6, v3, v2

    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v7, v7, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    sub-int/2addr v6, v7

    .line 166
    .local v6, "availableDistance":I
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/high16 v8, 0x3f000000    # 0.5f

    int-to-float v9, v2

    add-float/2addr v9, v8

    int-to-float v8, v6

    mul-float v8, v8, v5

    add-float/2addr v9, v8

    float-to-int v8, v9

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 167
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v8, v8, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v9, v9, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 168
    return-void

    .line 131
    .end local v2    # "startPos":I
    .end local v3    # "endPos":I
    .end local v4    # "distance":I
    .end local v5    # "bias":F
    .end local v6    # "availableDistance":I
    :cond_82
    :goto_82
    return-void
.end method

.method protected updateRunEnd(Landroid/support/constraint/solver/widgets/analyzer/Dependency;)V
    .registers 2
    .param p1, "dependency"    # Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 228
    return-void
.end method

.method protected updateRunStart(Landroid/support/constraint/solver/widgets/analyzer/Dependency;)V
    .registers 2
    .param p1, "dependency"    # Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 224
    return-void
.end method

.method public wrapSize(I)J
    .registers 6
    .param p1, "direction"    # I

    .line 78
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v0, :cond_2d

    .line 79
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    int-to-long v0, v0

    .line 80
    .local v0, "size":J
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->isCenterConnection()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 81
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_2c

    .line 83
    :cond_1d
    if-nez p1, :cond_26

    .line 84
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_2c

    .line 86
    :cond_26
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 89
    :goto_2c
    return-wide v0

    .line 91
    .end local v0    # "size":J
    :cond_2d
    const-wide/16 v0, 0x0

    return-wide v0
.end method
