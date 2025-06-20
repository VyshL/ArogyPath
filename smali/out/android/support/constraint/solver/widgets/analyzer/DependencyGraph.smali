.class public Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;
.super Ljava/lang/Object;
.source "DependencyGraph.java"


# static fields
.field private static final USE_GROUPS:Z = true


# instance fields
.field private container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/analyzer/RunGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

.field private mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

.field private mNeedBuildGraph:Z

.field private mNeedRedoMeasures:Z

.field private mRuns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field

.field private runGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/analyzer/RunGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 3
    .param p1, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 45
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->runGroups:Ljava/util/ArrayList;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 57
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 53
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 54
    return-void
.end method

.method private applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V
    .registers 25
    .param p1, "node"    # Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .param p2, "orientation"    # I
    .param p3, "direction"    # I
    .param p4, "end"    # Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .param p6, "group"    # Landroid/support/constraint/solver/widgets/analyzer/RunGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;",
            "II",
            "Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/analyzer/RunGroup;",
            ">;",
            "Landroid/support/constraint/solver/widgets/analyzer/RunGroup;",
            ")V"
        }
    .end annotation

    .line 715
    .local p5, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/analyzer/RunGroup;>;"
    move-object/from16 v8, p0

    move/from16 v0, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p1

    iget-object v11, v10, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 716
    .local v11, "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    iget-object v1, v11, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->runGroup:Landroid/support/constraint/solver/widgets/analyzer/RunGroup;

    if-nez v1, :cond_156

    iget-object v1, v8, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eq v11, v1, :cond_156

    iget-object v1, v8, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-ne v11, v1, :cond_20

    move/from16 v12, p3

    move-object/from16 v13, p5

    goto/16 :goto_15a

    .line 720
    :cond_20
    if-nez p6, :cond_30

    .line 721
    new-instance v1, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;

    move/from16 v12, p3

    invoke-direct {v1, v11, v12}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;-><init>(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;I)V

    .line 722
    .end local p6    # "group":Landroid/support/constraint/solver/widgets/analyzer/RunGroup;
    .local v1, "group":Landroid/support/constraint/solver/widgets/analyzer/RunGroup;
    move-object/from16 v13, p5

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v1

    goto :goto_36

    .line 720
    .end local v1    # "group":Landroid/support/constraint/solver/widgets/analyzer/RunGroup;
    .restart local p6    # "group":Landroid/support/constraint/solver/widgets/analyzer/RunGroup;
    :cond_30
    move/from16 v12, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 725
    .end local p6    # "group":Landroid/support/constraint/solver/widgets/analyzer/RunGroup;
    .local v14, "group":Landroid/support/constraint/solver/widgets/analyzer/RunGroup;
    :goto_36
    iput-object v14, v11, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->runGroup:Landroid/support/constraint/solver/widgets/analyzer/RunGroup;

    .line 726
    invoke-virtual {v14, v11}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->add(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;)V

    .line 727
    iget-object v1, v11, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_43
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 728
    .local v7, "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    instance-of v1, v7, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_67

    .line 729
    move-object v2, v7

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v16, v7

    .end local v7    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    .local v16, "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    goto :goto_69

    .line 728
    .end local v16    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    .restart local v7    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    :cond_67
    move-object/from16 v16, v7

    .line 731
    .end local v7    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    :goto_69
    goto :goto_43

    .line 732
    :cond_6a
    iget-object v1, v11, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_72
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 733
    .restart local v7    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    instance-of v1, v7, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_96

    .line 734
    move-object v2, v7

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v16, v7

    .end local v7    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    .restart local v16    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    goto :goto_98

    .line 733
    .end local v16    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    .restart local v7    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    :cond_96
    move-object/from16 v16, v7

    .line 736
    .end local v7    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    :goto_98
    goto :goto_72

    .line 737
    :cond_99
    const/4 v15, 0x1

    if-ne v0, v15, :cond_d2

    instance-of v1, v11, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v1, :cond_d2

    .line 738
    move-object v1, v11

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_ab
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 739
    .restart local v7    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    instance-of v1, v7, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_cf

    .line 740
    move-object v2, v7

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v4, 0x2

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v17, v7

    .end local v7    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    .local v17, "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    goto :goto_d1

    .line 739
    .end local v17    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    .restart local v7    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    :cond_cf
    move-object/from16 v17, v7

    .line 742
    .end local v7    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    :goto_d1
    goto :goto_ab

    .line 744
    :cond_d2
    iget-object v1, v11, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_da
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fc

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 745
    .local v7, "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    if-ne v7, v9, :cond_eb

    .line 746
    iput-boolean v15, v14, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->dual:Z

    .line 748
    :cond_eb
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v2, v7

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v17, v7

    .end local v7    # "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .local v17, "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    .line 749
    .end local v17    # "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    goto :goto_da

    .line 750
    :cond_fc
    iget-object v1, v11, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_104
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_126

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 751
    .restart local v7    # "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    if-ne v7, v9, :cond_115

    .line 752
    iput-boolean v15, v14, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->dual:Z

    .line 754
    :cond_115
    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object v2, v7

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v17, v7

    .end local v7    # "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .restart local v17    # "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    .line 755
    .end local v17    # "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    goto :goto_104

    .line 756
    :cond_126
    if-ne v0, v15, :cond_155

    instance-of v1, v11, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v1, :cond_155

    .line 757
    move-object v1, v11

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_137
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_155

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 758
    .local v16, "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    const/4 v4, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v14

    :try_start_151
    invoke-direct/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V
    :try_end_154
    .catchall {:try_start_151 .. :try_end_154} :catchall_15b

    .line 759
    .end local v16    # "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    goto :goto_137

    .line 761
    .end local p0    # "this":Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;
    :cond_155
    return-void

    .line 716
    .end local v14    # "group":Landroid/support/constraint/solver/widgets/analyzer/RunGroup;
    .restart local p6    # "group":Landroid/support/constraint/solver/widgets/analyzer/RunGroup;
    :cond_156
    move/from16 v12, p3

    move-object/from16 v13, p5

    .line 717
    :goto_15a
    return-void

    .line 758
    .end local v11    # "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    .end local p1    # "node":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .end local p2    # "orientation":I
    .end local p3    # "direction":I
    .end local p4    # "end":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .end local p5    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/analyzer/RunGroup;>;"
    .end local p6    # "group":Landroid/support/constraint/solver/widgets/analyzer/RunGroup;
    :catchall_15b
    move-exception v0

    move-object v1, v0

    throw v1
.end method

.method private basicMeasureWidgets(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)Z
    .registers 18
    .param p1, "constraintWidgetContainer"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 387
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3b2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 388
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v3

    .line 389
    .local v4, "horiz":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    aget-object v5, v5, v10

    .line 391
    .local v5, "vert":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_29

    .line 392
    iput-boolean v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 393
    goto :goto_8

    .line 398
    :cond_29
    iget v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    cmpg-float v6, v6, v11

    if-gez v6, :cond_38

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_38

    .line 399
    iput v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 401
    :cond_38
    iget v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_44

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_44

    .line 402
    iput v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 404
    :cond_44
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x3

    cmpl-float v6, v6, v8

    if-lez v6, :cond_80

    .line 405
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_5d

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v6, :cond_5a

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_5d

    .line 406
    :cond_5a
    iput v9, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    goto :goto_80

    .line 407
    :cond_5d
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_6c

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v6, :cond_69

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_6c

    .line 408
    :cond_69
    iput v9, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    goto :goto_80

    .line 409
    :cond_6c
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_80

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_80

    .line 410
    iget v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v6, :cond_7a

    .line 411
    iput v9, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 413
    :cond_7a
    iget v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v6, :cond_80

    .line 414
    iput v9, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 419
    :cond_80
    :goto_80
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_98

    iget v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v6, v10, :cond_98

    .line 420
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_94

    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_98

    .line 421
    :cond_94
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v12, v4

    goto :goto_99

    .line 424
    :cond_98
    move-object v12, v4

    .end local v4    # "horiz":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .local v12, "horiz":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :goto_99
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v4, :cond_b1

    iget v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v4, v10, :cond_b1

    .line 425
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_ad

    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_b1

    .line 426
    :cond_ad
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v13, v5

    goto :goto_b2

    .line 430
    :cond_b1
    move-object v13, v5

    .end local v5    # "vert":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .local v13, "vert":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :goto_b2
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iput-object v12, v4, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 431
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iput v5, v4, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->matchConstraintsType:I

    .line 432
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iput-object v13, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 433
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iput v5, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->matchConstraintsType:I

    .line 435
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v12, v4, :cond_d2

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v12, v4, :cond_d2

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v4, :cond_e0

    :cond_d2
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v13, v4, :cond_359

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v13, v4, :cond_359

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v4, :cond_e0

    goto/16 :goto_359

    .line 454
    :cond_e0
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/high16 v14, 0x3f000000    # 0.5f

    if-ne v12, v4, :cond_1cb

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v13, v4, :cond_ee

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v4, :cond_1cb

    .line 455
    :cond_ee
    iget v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v4, v9, :cond_133

    .line 456
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v3, :cond_102

    .line 457
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 459
    :cond_102
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    .line 460
    .local v3, "height":I
    int-to-float v4, v3

    iget v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float v4, v4, v5

    add-float/2addr v4, v14

    float-to-int v11, v4

    .line 461
    .local v11, "width":I
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v4, p0

    move-object v5, v2

    move v7, v11

    move v9, v3

    invoke-direct/range {v4 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 462
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 463
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 464
    iput-boolean v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 465
    goto/16 :goto_8

    .line 466
    .end local v3    # "height":I
    .end local v11    # "width":I
    :cond_133
    iget v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v4, v10, :cond_14e

    .line 467
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v8, v13

    invoke-direct/range {v4 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 468
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 469
    goto/16 :goto_8

    .line 470
    :cond_14e
    iget v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v4, v7, :cond_196

    .line 471
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v3

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_162

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v3

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_1cb

    .line 473
    :cond_162
    iget v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 474
    .local v3, "percent":F
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    add-float/2addr v4, v14

    float-to-int v11, v4

    .line 475
    .restart local v11    # "width":I
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    .line 476
    .local v14, "height":I
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v4, p0

    move-object v5, v2

    move v7, v11

    move-object v8, v13

    move v9, v14

    invoke-direct/range {v4 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 477
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 478
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 479
    iput-boolean v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 480
    goto/16 :goto_8

    .line 484
    .end local v3    # "percent":F
    .end local v11    # "width":I
    .end local v14    # "height":I
    :cond_196
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v3

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1a6

    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v10

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_1cb

    .line 486
    :cond_1a6
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v8, v13

    invoke-direct/range {v4 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 487
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 488
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 489
    iput-boolean v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 490
    goto/16 :goto_8

    .line 494
    :cond_1cb
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v4, :cond_2c0

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v12, v4, :cond_1d7

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v4, :cond_2c0

    .line 495
    :cond_1d7
    iget v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v4, v9, :cond_228

    .line 496
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v3, :cond_1eb

    .line 497
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 499
    :cond_1eb
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    .line 500
    .local v3, "width":I
    iget v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 501
    .local v4, "ratio":F
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatioSide()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1fc

    .line 502
    div-float v4, v11, v4

    move v11, v4

    goto :goto_1fd

    .line 501
    :cond_1fc
    move v11, v4

    .line 504
    .end local v4    # "ratio":F
    .local v11, "ratio":F
    :goto_1fd
    int-to-float v4, v3

    mul-float v4, v4, v11

    add-float/2addr v4, v14

    float-to-int v14, v4

    .line 506
    .restart local v14    # "height":I
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v4, p0

    move-object v5, v2

    move v7, v3

    move v9, v14

    invoke-direct/range {v4 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 507
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 508
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 509
    iput-boolean v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 510
    goto/16 :goto_8

    .line 511
    .end local v3    # "width":I
    .end local v11    # "ratio":F
    .end local v14    # "height":I
    :cond_228
    iget v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v4, v10, :cond_243

    .line 512
    const/4 v7, 0x0

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v12

    invoke-direct/range {v4 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 513
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 514
    goto/16 :goto_8

    .line 515
    :cond_243
    iget v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v4, v7, :cond_28b

    .line 516
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v10

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_257

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v10

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_2c0

    .line 518
    :cond_257
    iget v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 519
    .local v3, "percent":F
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    .line 520
    .local v11, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    add-float/2addr v4, v14

    float-to-int v14, v4

    .line 521
    .restart local v14    # "height":I
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v12

    move v7, v11

    move v9, v14

    invoke-direct/range {v4 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 522
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 523
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 524
    iput-boolean v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 525
    goto/16 :goto_8

    .line 529
    .end local v3    # "percent":F
    .end local v11    # "width":I
    .end local v14    # "height":I
    :cond_28b
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v7

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_29b

    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v9

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_2c0

    .line 531
    :cond_29b
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v8, v13

    invoke-direct/range {v4 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 532
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 533
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 534
    iput-boolean v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 535
    goto/16 :goto_8

    .line 539
    :cond_2c0
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v4, :cond_357

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v4, :cond_357

    .line 540
    iget v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v4, v10, :cond_335

    iget v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v4, v10, :cond_2d1

    goto :goto_335

    .line 546
    :cond_2d1
    iget v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v4, v7, :cond_357

    iget v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v4, v7, :cond_357

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v3

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_2e9

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v4, v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_357

    :cond_2e9
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v10

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_2f9

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v10

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_357

    .line 552
    :cond_2f9
    iget v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 553
    .local v3, "horizPercent":F
    iget v11, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 554
    .local v11, "vertPercent":F
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    add-float/2addr v4, v14

    float-to-int v15, v4

    .line 555
    .local v15, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v11

    add-float/2addr v4, v14

    float-to-int v14, v4

    .line 556
    .restart local v14    # "height":I
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v4, p0

    move-object v5, v2

    move v7, v15

    move v9, v14

    invoke-direct/range {v4 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 557
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 558
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 559
    iput-boolean v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 560
    goto/16 :goto_8

    .line 542
    .end local v3    # "horizPercent":F
    .end local v11    # "vertPercent":F
    .end local v14    # "height":I
    .end local v15    # "width":I
    :cond_335
    :goto_335
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 543
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 544
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 545
    goto/16 :goto_8

    .line 563
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v12    # "horiz":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v13    # "vert":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_357
    goto/16 :goto_8

    .line 437
    .restart local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v12    # "horiz":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v13    # "vert":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_359
    :goto_359
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    .line 438
    .local v3, "width":I
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v4, :cond_372

    .line 439
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v4, v5

    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int v3, v4, v5

    .line 440
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 442
    :cond_372
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    .line 443
    .local v4, "height":I
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v5, :cond_38d

    .line 444
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v5

    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v5, v6

    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int v4, v5, v6

    .line 445
    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v11, v4

    goto :goto_38e

    .line 443
    :cond_38d
    move v11, v4

    .line 447
    .end local v4    # "height":I
    .local v11, "height":I
    :goto_38e
    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v12

    move v7, v3

    move-object v8, v13

    move v9, v11

    invoke-direct/range {v4 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 448
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 449
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 450
    iput-boolean v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 451
    goto/16 :goto_8

    .line 564
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v3    # "width":I
    .end local v11    # "height":I
    .end local v12    # "horiz":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v13    # "vert":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_3b2
    return v3
.end method

.method private computeWrap(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;I)I
    .registers 10
    .param p1, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "orientation"    # I

    .line 64
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 65
    .local v0, "count":I
    const-wide/16 v1, 0x0

    .line 66
    .local v1, "wrapSize":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_1e

    .line 67
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;

    .line 68
    .local v4, "run":Landroid/support/constraint/solver/widgets/analyzer/RunGroup;
    invoke-virtual {v4, p1, p2}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->computeWrapSize(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;I)J

    move-result-wide v5

    .line 69
    .local v5, "size":J
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 66
    .end local v4    # "run":Landroid/support/constraint/solver/widgets/analyzer/RunGroup;
    .end local v5    # "size":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 71
    .end local v3    # "i":I
    :cond_1e
    long-to-int v3, v1

    return v3
.end method

.method private displayGraph()V
    .registers 5

    .line 706
    const-string v0, "digraph {\n"

    .line 707
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 708
    .local v2, "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    invoke-direct {p0, v2, v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->generateDisplayGraph(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    .end local v2    # "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    goto :goto_8

    .line 710
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content:<<\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method private findGroup(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V
    .registers 14
    .param p1, "run"    # Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    .param p2, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/analyzer/RunGroup;",
            ">;)V"
        }
    .end annotation

    .line 764
    .local p3, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/analyzer/RunGroup;>;"
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 765
    .local v1, "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    instance-of v2, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eqz v2, :cond_27

    .line 766
    move-object v2, v1

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 767
    .local v2, "node":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    const/4 v6, 0x0

    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, v2

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    .end local v2    # "node":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    goto :goto_3b

    .line 768
    :cond_27
    instance-of v2, v1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    if-eqz v2, :cond_3b

    .line 769
    move-object v2, v1

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 770
    .local v2, "dependentRun":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v6, 0x0

    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    goto :goto_3c

    .line 768
    .end local v2    # "dependentRun":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    :cond_3b
    :goto_3b
    nop

    .line 772
    .end local v1    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    :goto_3c
    goto :goto_8

    .line 773
    :cond_3d
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 774
    .restart local v1    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    instance-of v2, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eqz v2, :cond_64

    .line 775
    move-object v2, v1

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 776
    .local v2, "node":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    const/4 v6, 0x1

    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, v2

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    .end local v2    # "node":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    goto :goto_78

    .line 777
    :cond_64
    instance-of v2, v1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    if-eqz v2, :cond_78

    .line 778
    move-object v2, v1

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 779
    .local v2, "dependentRun":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v6, 0x1

    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    goto :goto_79

    .line 777
    .end local v2    # "dependentRun":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    :cond_78
    :goto_78
    nop

    .line 781
    .end local v1    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    :goto_79
    goto :goto_45

    .line 782
    :cond_7a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a6

    .line 783
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 784
    .restart local v1    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    instance-of v2, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eqz v2, :cond_a5

    .line 785
    move-object v2, v1

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 786
    .local v2, "node":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, v2

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    .line 788
    .end local v1    # "dependent":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    .end local v2    # "node":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_a5
    goto :goto_88

    .line 790
    :cond_a6
    return-void
.end method

.method private generateChainDisplayGraph(Landroid/support/constraint/solver/widgets/analyzer/ChainRun;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "chain"    # Landroid/support/constraint/solver/widgets/analyzer/ChainRun;
    .param p2, "content"    # Ljava/lang/String;

    .line 896
    iget v0, p1, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;->orientation:I

    .line 897
    .local v0, "orientation":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cluster_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 898
    .local v1, "name":Ljava/lang/String;
    if-nez v0, :cond_31

    .line 899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    .line 901
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 903
    :goto_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subgraph "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " {\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 904
    .local v2, "subgroup":Ljava/lang/String;
    const-string v3, ""

    .line 905
    .local v3, "definitions":Ljava/lang/String;
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_65
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 906
    .local v5, "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v6

    .line 907
    .local v6, "runName":Ljava/lang/String;
    if-nez v0, :cond_8d

    .line 908
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_HORIZONTAL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_a0

    .line 910
    :cond_8d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_VERTICAL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 912
    :goto_a0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 913
    invoke-direct {p0, v5, v3}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->generateDisplayGraph(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 914
    .end local v5    # "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    .end local v6    # "runName":Ljava/lang/String;
    goto :goto_65

    .line 915
    :cond_bc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 916
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private generateDisplayGraph(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "root"    # Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    .param p2, "content"    # Ljava/lang/String;

    .line 936
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 937
    .local v0, "start":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 939
    .local v1, "end":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    instance-of v2, p1, Landroid/support/constraint/solver/widgets/analyzer/HelperReferences;

    if-nez v2, :cond_28

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_28

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 940
    return-object p2

    .line 942
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->nodeDefinition(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 944
    invoke-direct {p0, v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->isCenteredConnection(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;)Z

    move-result v2

    .line 945
    .local v2, "centeredConnection":Z
    invoke-direct {p0, v0, v2, p2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->generateDisplayNode(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 946
    invoke-direct {p0, v1, v2, p2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->generateDisplayNode(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 947
    instance-of v3, p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v3, :cond_56

    .line 948
    move-object v3, p1

    check-cast v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 949
    .local v3, "baseline":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    invoke-direct {p0, v3, v2, p2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->generateDisplayNode(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 952
    .end local v3    # "baseline":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_56
    instance-of v3, p1, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    const/4 v4, 0x0

    const-string v5, " -> "

    const-string v6, "\n"

    if-nez v3, :cond_151

    instance-of v3, p1, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    if-eqz v3, :cond_6c

    move-object v3, p1

    check-cast v3, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v3, :cond_6c

    goto/16 :goto_151

    .line 971
    :cond_6c
    instance-of v3, p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-nez v3, :cond_7c

    instance-of v3, p1, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    if-eqz v3, :cond_224

    move-object v3, p1

    check-cast v3, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;->orientation:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_224

    .line 973
    :cond_7c
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    .line 974
    .local v3, "behaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v7, :cond_c1

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v7, :cond_8b

    goto :goto_c1

    .line 984
    :cond_8b
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_225

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v5

    cmpl-float v4, v5, v4

    if-lez v4, :cond_225

    .line 985
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v4

    .line 986
    .local v4, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_VERTICAL -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_HORIZONTAL;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_225

    .line 976
    .end local v4    # "name":Ljava/lang/String;
    :cond_c1
    :goto_c1
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_109

    iget-object v4, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_109

    .line 977
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 978
    .local v4, "constraint":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 979
    .end local v4    # "constraint":Ljava/lang/String;
    :cond_107
    goto/16 :goto_225

    :cond_109
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_107

    iget-object v4, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_107

    .line 980
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 981
    .restart local v4    # "constraint":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 982
    .end local v4    # "constraint":Ljava/lang/String;
    goto/16 :goto_225

    .line 954
    .end local v3    # "behaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_151
    :goto_151
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    .line 955
    .restart local v3    # "behaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v7, :cond_196

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v7, :cond_160

    goto :goto_196

    .line 965
    :cond_160
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_224

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v5

    cmpl-float v4, v5, v4

    if-lez v4, :cond_224

    .line 966
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v4

    .line 967
    .local v4, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_HORIZONTAL -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_VERTICAL;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_224

    .line 957
    .end local v4    # "name":Ljava/lang/String;
    :cond_196
    :goto_196
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1dd

    iget-object v4, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1dd

    .line 958
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 959
    .local v4, "constraint":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 960
    .end local v4    # "constraint":Ljava/lang/String;
    :cond_1dc
    goto :goto_224

    :cond_1dd
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1dc

    iget-object v4, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1dc

    .line 961
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 962
    .restart local v4    # "constraint":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 963
    .end local v4    # "constraint":Ljava/lang/String;
    nop

    .line 971
    .end local v3    # "behaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_224
    :goto_224
    nop

    .line 991
    :cond_225
    :goto_225
    instance-of v3, p1, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    if-eqz v3, :cond_231

    .line 992
    move-object v3, p1

    check-cast v3, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    invoke-direct {p0, v3, p2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->generateChainDisplayGraph(Landroid/support/constraint/solver/widgets/analyzer/ChainRun;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 994
    :cond_231
    return-object p2
.end method

.method private generateDisplayNode(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "node"    # Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .param p2, "centeredConnection"    # Z
    .param p3, "content"    # Ljava/lang/String;

    .line 794
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_100

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 795
    .local v1, "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "constraint":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 797
    iget v4, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    if-gtz v4, :cond_50

    if-nez p2, :cond_50

    iget-object v4, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    instance-of v4, v4, Landroid/support/constraint/solver/widgets/analyzer/HelperReferences;

    if-eqz v4, :cond_dc

    .line 798
    :cond_50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 799
    iget v4, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    if-lez v4, :cond_9b

    .line 800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "label=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 801
    if-eqz p2, :cond_9b

    .line 802
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 805
    :cond_9b
    if-eqz p2, :cond_b0

    .line 806
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " style=dashed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 808
    :cond_b0
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    instance-of v4, v4, Landroid/support/constraint/solver/widgets/analyzer/HelperReferences;

    if-eqz v4, :cond_c9

    .line 809
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " style=bold,color=gray "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 811
    :cond_c9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 813
    :cond_dc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 815
    .end local v1    # "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .end local v2    # "constraint":Ljava/lang/String;
    goto/16 :goto_6

    .line 819
    :cond_100
    return-object p3
.end method

.method private isCenteredConnection(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;)Z
    .registers 7
    .param p1, "start"    # Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .param p2, "end"    # Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 920
    const/4 v0, 0x0

    .line 921
    .local v0, "startTargets":I
    const/4 v1, 0x0

    .line 922
    .local v1, "endTargets":I
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 923
    .local v3, "s":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    if-eq v3, p2, :cond_18

    .line 924
    add-int/lit8 v0, v0, 0x1

    .line 926
    .end local v3    # "s":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_18
    goto :goto_8

    .line 927
    :cond_19
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 928
    .local v3, "e":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    if-eq v3, p1, :cond_2f

    .line 929
    add-int/lit8 v1, v1, 0x1

    .line 931
    .end local v3    # "e":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_2f
    goto :goto_1f

    .line 932
    :cond_30
    if-lez v0, :cond_36

    if-lez v1, :cond_36

    const/4 v2, 0x1

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    return v2
.end method

.method private measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .registers 8
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "horizontalBehavior"    # Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .param p3, "horizontalDimension"    # I
    .param p4, "verticalBehavior"    # Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .param p5, "verticalDimension"    # I

    .line 375
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object p2, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 376
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object p4, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 377
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput p3, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 378
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput p5, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 379
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {v0, p1, v1}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 380
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 381
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 382
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 383
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 384
    return-void
.end method

.method private nodeDefinition(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;)Ljava/lang/String;
    .registers 12
    .param p1, "run"    # Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 823
    instance-of v0, p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    .line 824
    .local v0, "orientation":I
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    .line 826
    .local v2, "definition":Ljava/lang/String;
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_12

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    goto :goto_16

    .line 827
    :cond_12
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    :goto_16
    nop

    .line 828
    .local v3, "behaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->runGroup:Landroid/support/constraint/solver/widgets/analyzer/RunGroup;

    .line 830
    .local v4, "runGroup":Landroid/support/constraint/solver/widgets/analyzer/RunGroup;
    if-nez v0, :cond_2f

    .line 831
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_HORIZONTAL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_42

    .line 833
    :cond_2f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_VERTICAL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 835
    :goto_42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " [shape=none, label=<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 836
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<TABLE BORDER=\"0\" CELLSPACING=\"0\" CELLPADDING=\"2\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 837
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  <TR>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 838
    const-string v5, " BGCOLOR=\"green\""

    const-string v6, "    <TD "

    if-nez v0, :cond_bd

    .line 839
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 840
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v7, v7, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v7, :cond_a9

    .line 841
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 843
    :cond_a9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " PORT=\"LEFT\" BORDER=\"1\">L</TD>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f8

    .line 845
    :cond_bd
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 846
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v7, v7, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v7, :cond_e5

    .line 847
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 849
    :cond_e5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " PORT=\"TOP\" BORDER=\"1\">T</TD>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 851
    :goto_f8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    <TD BORDER=\"1\" "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 855
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v7, v7, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v7, :cond_12b

    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-boolean v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    if-nez v7, :cond_12b

    .line 856
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " BGCOLOR=\"green\" "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_16a

    .line 857
    :cond_12b
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v7, v7, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v7, :cond_14b

    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-boolean v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    if-eqz v7, :cond_14b

    .line 858
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " BGCOLOR=\"lightgray\" "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_16a

    .line 859
    :cond_14b
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v7, v7, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v7, :cond_16a

    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-boolean v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    if-eqz v7, :cond_16a

    .line 860
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " BGCOLOR=\"yellow\" "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 862
    :cond_16a
    :goto_16a
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v7, :cond_181

    .line 863
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "style=\"dashed\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 865
    :cond_181
    const-string v7, ""

    .line 866
    .local v7, "group":Ljava/lang/String;
    if-eqz v4, :cond_1ae

    .line 867
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->groupIndex:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 869
    :cond_1ae
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " </TD>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 870
    if-nez v0, :cond_20e

    .line 871
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 872
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v6, v6, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v6, :cond_1f9

    .line 873
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 875
    :cond_1f9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PORT=\"RIGHT\" BORDER=\"1\">R</TD>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_28b

    .line 877
    :cond_20e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 878
    instance-of v8, p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v8, :cond_23d

    .line 879
    move-object v8, p1

    check-cast v8, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v8, v8, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v8, :cond_23d

    .line 880
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 883
    :cond_23d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " PORT=\"BASELINE\" BORDER=\"1\">b</TD>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 884
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 885
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v6, v6, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v6, :cond_278

    .line 886
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 888
    :cond_278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PORT=\"BOTTOM\" BORDER=\"1\">B</TD>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 890
    :goto_28b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  </TR></TABLE>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 891
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">];\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 892
    return-object v2
.end method


# virtual methods
.method public buildGraph()V
    .registers 5

    .line 633
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->buildGraph(Ljava/util/ArrayList;)V

    .line 636
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 638
    const/4 v0, 0x0

    sput v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->index:I

    .line 639
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, v2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->findGroup(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 640
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->findGroup(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 642
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 643
    return-void
.end method

.method public buildGraph(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;",
            ">;)V"
        }
    .end annotation

    .line 646
    .local p1, "runs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 647
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->clear()V

    .line 648
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->clear()V

    .line 649
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, "chainRuns":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/constraint/solver/widgets/analyzer/ChainRun;>;"
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 653
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v3, :cond_41

    .line 654
    new-instance v3, Landroid/support/constraint/solver/widgets/analyzer/GuidelineReference;

    invoke-direct {v3, v2}, Landroid/support/constraint/solver/widgets/analyzer/GuidelineReference;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    goto :goto_28

    .line 657
    :cond_41
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 658
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalChainRun:Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    if-nez v3, :cond_53

    .line 660
    new-instance v3, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 661
    .local v3, "chainRun":Landroid/support/constraint/solver/widgets/analyzer/ChainRun;
    iput-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalChainRun:Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    .line 663
    .end local v3    # "chainRun":Landroid/support/constraint/solver/widgets/analyzer/ChainRun;
    :cond_53
    if-nez v0, :cond_5b

    .line 664
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v0, v3

    .line 666
    :cond_5b
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalChainRun:Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 668
    :cond_61
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    :goto_66
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 671
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalChainRun:Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    if-nez v3, :cond_78

    .line 673
    new-instance v3, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 674
    .restart local v3    # "chainRun":Landroid/support/constraint/solver/widgets/analyzer/ChainRun;
    iput-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalChainRun:Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    .line 676
    .end local v3    # "chainRun":Landroid/support/constraint/solver/widgets/analyzer/ChainRun;
    :cond_78
    if-nez v0, :cond_80

    .line 677
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v0, v3

    .line 679
    :cond_80
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalChainRun:Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 681
    :cond_86
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :goto_8b
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/HelperWidget;

    if-eqz v3, :cond_97

    .line 684
    new-instance v3, Landroid/support/constraint/solver/widgets/analyzer/HelperReferences;

    invoke-direct {v3, v2}, Landroid/support/constraint/solver/widgets/analyzer/HelperReferences;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_97
    goto :goto_28

    .line 687
    :cond_98
    if-eqz v0, :cond_9d

    .line 688
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 690
    :cond_9d
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 691
    .local v2, "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->clear()V

    .line 692
    .end local v2    # "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    goto :goto_a1

    .line 693
    :cond_b1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 694
    .restart local v2    # "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-ne v3, v4, :cond_c8

    .line 695
    goto :goto_b5

    .line 697
    :cond_c8
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->apply()V

    .line 698
    .end local v2    # "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    goto :goto_b5

    .line 701
    :cond_cc
    return-void
.end method

.method public defineTerminalWidgets(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .registers 10
    .param p1, "horizontalBehavior"    # Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .param p2, "verticalBehavior"    # Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 81
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    if-eqz v0, :cond_52

    .line 82
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "hasBarrier":Z
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 87
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v4, v5, v3

    .line 88
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v4, v3, v4

    .line 89
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v3, :cond_2b

    .line 90
    const/4 v0, 0x1

    .line 92
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2b
    goto :goto_10

    .line 93
    :cond_2c
    if-nez v0, :cond_52

    .line 94
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;

    .line 95
    .local v2, "group":Landroid/support/constraint/solver/widgets/analyzer/RunGroup;
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v5, :cond_46

    const/4 v5, 0x1

    goto :goto_47

    :cond_46
    const/4 v5, 0x0

    :goto_47
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v6, :cond_4d

    const/4 v6, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v6, 0x0

    :goto_4e
    invoke-virtual {v2, v5, v6}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->defineTerminalWidgets(ZZ)V

    .line 96
    .end local v2    # "group":Landroid/support/constraint/solver/widgets/analyzer/RunGroup;
    goto :goto_34

    .line 100
    .end local v0    # "hasBarrier":Z
    :cond_52
    return-void
.end method

.method public directMeasure(Z)Z
    .registers 13
    .param p1, "optimizeWrap"    # Z

    .line 109
    const/4 v0, 0x1

    and-int/2addr p1, v0

    .line 111
    iget-boolean v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    const/4 v2, 0x0

    if-nez v1, :cond_b

    iget-boolean v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    if-eqz v1, :cond_48

    .line 112
    :cond_b
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 113
    .local v3, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ensureWidgetRuns()V

    .line 114
    iput-boolean v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 115
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 116
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 117
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_13

    .line 118
    :cond_2f
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->ensureWidgetRuns()V

    .line 119
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iput-boolean v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measured:Z

    .line 120
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 121
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 122
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 125
    :cond_48
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->basicMeasureWidgets(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)Z

    move-result v1

    .line 126
    .local v1, "avoid":Z
    if-eqz v1, :cond_51

    .line 127
    return v2

    .line 130
    :cond_51
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 131
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 133
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    .line 134
    .local v3, "originalHorizontalDimension":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    .line 136
    .local v4, "originalVerticalDimension":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-boolean v5, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    if-eqz v5, :cond_6e

    .line 137
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 140
    :cond_6e
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getX()I

    move-result v5

    .line 141
    .local v5, "x1":I
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getY()I

    move-result v6

    .line 143
    .local v6, "y1":I
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v7, v5}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 144
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v7, v6}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 148
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 151
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v7, :cond_97

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v7, :cond_fe

    .line 152
    :cond_97
    if-eqz p1, :cond_b4

    .line 153
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 154
    .local v8, "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    move-result v9

    if-nez v9, :cond_b3

    .line 155
    const/4 p1, 0x0

    .line 156
    goto :goto_b4

    .line 158
    .end local v8    # "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    :cond_b3
    goto :goto_9f

    .line 161
    :cond_b4
    :goto_b4
    if-eqz p1, :cond_d9

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v7, :cond_d9

    .line 162
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 163
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v7, v2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->computeWrap(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 164
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 166
    :cond_d9
    if-eqz p1, :cond_fe

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v7, :cond_fe

    .line 167
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 168
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v7, v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->computeWrap(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 169
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 173
    :cond_fe
    const/4 v7, 0x0

    .line 178
    .local v7, "checkRoot":Z
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v2

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v9, :cond_113

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v8, v2

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v8, :cond_164

    .line 182
    :cond_113
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v2

    add-int/2addr v2, v5

    .line 183
    .local v2, "x2":I
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v8, v2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 184
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    sub-int v9, v2, v5

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 185
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 186
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v0

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v9, :cond_145

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v8, v0

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v8, :cond_160

    .line 188
    :cond_145
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v0

    add-int/2addr v0, v6

    .line 189
    .local v0, "y2":I
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 190
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    sub-int v9, v0, v6

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 192
    .end local v0    # "y2":I
    :cond_160
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 193
    const/4 v7, 0x1

    .line 199
    .end local v2    # "x2":I
    :cond_164
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_185

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 200
    .local v2, "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    iget-object v8, v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-ne v8, v9, :cond_181

    iget-boolean v8, v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->resolved:Z

    if-nez v8, :cond_181

    .line 201
    goto :goto_16a

    .line 203
    :cond_181
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 204
    .end local v2    # "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    goto :goto_16a

    .line 206
    :cond_185
    const/4 v0, 0x1

    .line 207
    .local v0, "allResolved":Z
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 208
    .restart local v8    # "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    if-nez v7, :cond_1a1

    iget-object v9, v8, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v10, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-ne v9, v10, :cond_1a1

    .line 209
    goto :goto_18c

    .line 211
    :cond_1a1
    iget-object v9, v8, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v9, v9, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v9, :cond_1a9

    .line 212
    const/4 v0, 0x0

    .line 213
    goto :goto_1c6

    .line 215
    :cond_1a9
    iget-object v9, v8, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v9, v9, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v9, :cond_1b5

    instance-of v9, v8, Landroid/support/constraint/solver/widgets/analyzer/GuidelineReference;

    if-nez v9, :cond_1b5

    .line 216
    const/4 v0, 0x0

    .line 217
    goto :goto_1c6

    .line 219
    :cond_1b5
    iget-object v9, v8, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v9, v9, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v9, :cond_1c5

    instance-of v9, v8, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    if-nez v9, :cond_1c5

    instance-of v9, v8, Landroid/support/constraint/solver/widgets/analyzer/GuidelineReference;

    if-nez v9, :cond_1c5

    .line 220
    const/4 v0, 0x0

    .line 221
    goto :goto_1c6

    .line 223
    .end local v8    # "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    :cond_1c5
    goto :goto_18c

    .line 225
    :cond_1c6
    :goto_1c6
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 226
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 228
    return v0
.end method

.method public directMeasureSetup(Z)Z
    .registers 6
    .param p1, "optimizeWrap"    # Z

    .line 232
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    .line 233
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 234
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ensureWidgetRuns()V

    .line 235
    iput-boolean v1, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 236
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iput-boolean v1, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 237
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iput-boolean v1, v3, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->resolved:Z

    .line 238
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 239
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iput-boolean v1, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 240
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iput-boolean v1, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->resolved:Z

    .line 241
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 242
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_d

    .line 243
    :cond_3d
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->ensureWidgetRuns()V

    .line 244
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iput-boolean v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measured:Z

    .line 245
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iput-boolean v1, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 246
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iput-boolean v1, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->resolved:Z

    .line 247
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 248
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iput-boolean v1, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 249
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iput-boolean v1, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->resolved:Z

    .line 250
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 251
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 254
    :cond_73
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->basicMeasureWidgets(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)Z

    move-result v0

    .line 255
    .local v0, "avoid":Z
    if-eqz v0, :cond_7c

    .line 256
    return v1

    .line 259
    :cond_7c
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 260
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 261
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 262
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 263
    const/4 v1, 0x1

    return v1
.end method

.method public directMeasureWithOrientation(ZI)Z
    .registers 13
    .param p1, "optimizeWrap"    # Z
    .param p2, "orientation"    # I

    .line 267
    const/4 v0, 0x1

    and-int/2addr p1, v0

    .line 269
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    .line 270
    .local v1, "originalHorizontalDimension":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    .line 272
    .local v3, "originalVerticalDimension":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getX()I

    move-result v4

    .line 273
    .local v4, "x1":I
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getY()I

    move-result v5

    .line 276
    .local v5, "y1":I
    if-eqz p1, :cond_91

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v6, :cond_25

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_91

    .line 277
    :cond_25
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 278
    .local v7, "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    iget v8, v7, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->orientation:I

    if-ne v8, p2, :cond_43

    .line 279
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    move-result v8

    if-nez v8, :cond_43

    .line 280
    const/4 p1, 0x0

    .line 281
    goto :goto_44

    .line 283
    .end local v7    # "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    :cond_43
    goto :goto_2b

    .line 285
    :cond_44
    :goto_44
    if-nez p2, :cond_6c

    .line 286
    if-eqz p1, :cond_91

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v6, :cond_91

    .line 287
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 288
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v6, v2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->computeWrap(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 289
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_91

    .line 292
    :cond_6c
    if-eqz p1, :cond_91

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_91

    .line 293
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 294
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v6, v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->computeWrap(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 295
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 300
    :cond_91
    :goto_91
    const/4 v6, 0x0

    .line 305
    .local v6, "checkRoot":Z
    if-nez p2, :cond_c5

    .line 306
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v2

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v7, :cond_a8

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v2

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_f5

    .line 308
    :cond_a8
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v0

    add-int/2addr v0, v4

    .line 309
    .local v0, "x2":I
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 310
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    sub-int v7, v0, v4

    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 311
    const/4 v6, 0x1

    .line 312
    .end local v0    # "x2":I
    goto :goto_f5

    .line 314
    :cond_c5
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v0

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v7, :cond_d9

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v2, v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_f5

    .line 316
    :cond_d9
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    .line 317
    .local v0, "y2":I
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 318
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    sub-int v7, v0, v5

    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 319
    const/4 v6, 0x1

    .line 322
    .end local v0    # "y2":I
    :cond_f5
    :goto_f5
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 325
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_fe
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 326
    .local v2, "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    iget v7, v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->orientation:I

    if-eq v7, p2, :cond_10f

    .line 327
    goto :goto_fe

    .line 329
    :cond_10f
    iget-object v7, v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-ne v7, v8, :cond_11a

    iget-boolean v7, v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->resolved:Z

    if-nez v7, :cond_11a

    .line 330
    goto :goto_fe

    .line 332
    :cond_11a
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 333
    .end local v2    # "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    goto :goto_fe

    .line 335
    :cond_11e
    const/4 v0, 0x1

    .line 336
    .local v0, "allResolved":Z
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_125
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 337
    .restart local v7    # "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    iget v8, v7, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->orientation:I

    if-eq v8, p2, :cond_136

    .line 338
    goto :goto_125

    .line 340
    :cond_136
    if-nez v6, :cond_13f

    iget-object v8, v7, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-ne v8, v9, :cond_13f

    .line 341
    goto :goto_125

    .line 343
    :cond_13f
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v8, v8, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v8, :cond_147

    .line 344
    const/4 v0, 0x0

    .line 345
    goto :goto_15c

    .line 347
    :cond_147
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v8, v8, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v8, :cond_14f

    .line 348
    const/4 v0, 0x0

    .line 349
    goto :goto_15c

    .line 351
    :cond_14f
    instance-of v8, v7, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    if-nez v8, :cond_15b

    iget-object v8, v7, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v8, v8, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v8, :cond_15b

    .line 352
    const/4 v0, 0x0

    .line 353
    goto :goto_15c

    .line 355
    .end local v7    # "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    :cond_15b
    goto :goto_125

    .line 357
    :cond_15c
    :goto_15c
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 358
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 360
    return v0
.end method

.method public invalidateGraph()V
    .registers 2

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 620
    return-void
.end method

.method public invalidateMeasures()V
    .registers 2

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 627
    return-void
.end method

.method public measureWidgets()V
    .registers 20

    .line 568
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_101

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 569
    .local v8, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    if-eqz v0, :cond_1c

    .line 570
    goto :goto_a

    .line 572
    :cond_1c
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v9, v0, v1

    .line 573
    .local v9, "horiz":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    aget-object v11, v0, v10

    .line 574
    .local v11, "vert":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v12, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 575
    .local v12, "horizMatchConstraintsType":I
    iget v13, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 577
    .local v13, "vertMatchConstraintsType":I
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v0, :cond_37

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v0, :cond_35

    if-ne v12, v10, :cond_35

    goto :goto_37

    :cond_35
    const/4 v0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v0, 0x1

    :goto_38
    move v14, v0

    .line 580
    .local v14, "horizWrap":Z
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v11, v0, :cond_43

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v0, :cond_44

    if-ne v13, v10, :cond_44

    :cond_43
    const/4 v1, 0x1

    :cond_44
    move v15, v1

    .line 583
    .local v15, "vertWrap":Z
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 584
    .local v5, "horizResolved":Z
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v4, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 586
    .local v4, "vertResolved":Z
    if-eqz v5, :cond_79

    if-eqz v4, :cond_79

    .line 587
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v3, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    sget-object v16, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v1, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    move-object/from16 v0, p0

    move/from16 v17, v1

    move-object v1, v8

    move/from16 v18, v4

    .end local v4    # "vertResolved":Z
    .local v18, "vertResolved":Z
    move-object/from16 v4, v16

    move/from16 v16, v5

    .end local v5    # "horizResolved":Z
    .local v16, "horizResolved":Z
    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 589
    iput-boolean v10, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_ea

    .line 586
    .end local v16    # "horizResolved":Z
    .end local v18    # "vertResolved":Z
    .restart local v4    # "vertResolved":Z
    .restart local v5    # "horizResolved":Z
    :cond_79
    move/from16 v18, v4

    move/from16 v16, v5

    .line 590
    .end local v4    # "vertResolved":Z
    .end local v5    # "horizResolved":Z
    .restart local v16    # "horizResolved":Z
    .restart local v18    # "vertResolved":Z
    if-eqz v16, :cond_b4

    if-eqz v15, :cond_b4

    .line 591
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v3, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v5, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 593
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v0, :cond_a6

    .line 594
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto :goto_ea

    .line 596
    :cond_a6
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 597
    iput-boolean v10, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    goto :goto_ea

    .line 599
    :cond_b4
    if-eqz v18, :cond_ea

    if-eqz v14, :cond_ea

    .line 600
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v3, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v5, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 602
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v0, :cond_dd

    .line 603
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto :goto_ea

    .line 605
    :cond_dd
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 606
    iput-boolean v10, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 609
    :cond_ea
    :goto_ea
    iget-boolean v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    if-eqz v0, :cond_ff

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baselineDimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    if-eqz v0, :cond_ff

    .line 610
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baselineDimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 612
    .end local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "horiz":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v11    # "vert":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v12    # "horizMatchConstraintsType":I
    .end local v13    # "vertMatchConstraintsType":I
    .end local v14    # "horizWrap":Z
    .end local v15    # "vertWrap":Z
    .end local v16    # "horizResolved":Z
    .end local v18    # "vertResolved":Z
    :cond_ff
    goto/16 :goto_a

    .line 613
    :cond_101
    return-void
.end method

.method public setMeasurer(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V
    .registers 2
    .param p1, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 60
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 61
    return-void
.end method
