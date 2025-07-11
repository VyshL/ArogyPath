.class Landroid/support/constraint/solver/widgets/analyzer/RunGroup;
.super Ljava/lang/Object;
.source "RunGroup.java"


# static fields
.field public static final BASELINE:I = 0x2

.field public static final END:I = 0x1

.field public static final START:I

.field public static index:I


# instance fields
.field direction:I

.field public dual:Z

.field firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

.field groupIndex:I

.field lastRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

.field public position:I

.field runs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;I)V
    .registers 5
    .param p1, "run"    # Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    .param p2, "dir"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->position:I

    .line 34
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->dual:Z

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 37
    iput-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->lastRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->runs:Ljava/util/ArrayList;

    .line 40
    iput v0, p0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->groupIndex:I

    .line 44
    sget v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->index:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->groupIndex:I

    .line 45
    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->index:I

    .line 46
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 47
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->lastRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 48
    iput p2, p0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->direction:I

    .line 49
    return-void
.end method

.method private defineTerminalWidget(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;I)Z
    .registers 10
    .param p1, "run"    # Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    .param p2, "orientation"    # I

    .line 186
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v0, v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 187
    return v1

    .line 189
    :cond_a
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 190
    .local v2, "dependency":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eqz v3, :cond_5d

    .line 191
    move-object v3, v2

    check-cast v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 192
    .local v3, "node":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    if-ne v4, p1, :cond_2a

    .line 193
    goto :goto_12

    .line 195
    :cond_2a
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-ne v3, v4, :cond_5d

    .line 196
    instance-of v4, p1, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    if-eqz v4, :cond_4e

    .line 197
    move-object v4, p1

    check-cast v4, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    .line 198
    .local v4, "chainRun":Landroid/support/constraint/solver/widgets/analyzer/ChainRun;
    iget-object v5, v4, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 199
    .local v6, "widgetChainRun":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    invoke-direct {p0, v6, p2}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;I)Z

    .line 200
    .end local v6    # "widgetChainRun":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    goto :goto_3d

    .line 201
    .end local v4    # "chainRun":Landroid/support/constraint/solver/widgets/analyzer/ChainRun;
    :cond_4d
    goto :goto_58

    .line 202
    :cond_4e
    instance-of v4, p1, Landroid/support/constraint/solver/widgets/analyzer/HelperReferences;

    if-nez v4, :cond_58

    .line 203
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v1, v4, p2

    .line 206
    :cond_58
    :goto_58
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    invoke-direct {p0, v4, p2}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;I)Z

    .line 209
    .end local v2    # "dependency":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    .end local v3    # "node":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_5d
    goto :goto_12

    .line 210
    :cond_5e
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 211
    .restart local v2    # "dependency":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eqz v3, :cond_b1

    .line 212
    move-object v3, v2

    check-cast v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 213
    .restart local v3    # "node":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    if-ne v4, p1, :cond_7e

    .line 214
    goto :goto_66

    .line 216
    :cond_7e
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-ne v3, v4, :cond_b1

    .line 217
    instance-of v4, p1, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    if-eqz v4, :cond_a2

    .line 218
    move-object v4, p1

    check-cast v4, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    .line 219
    .restart local v4    # "chainRun":Landroid/support/constraint/solver/widgets/analyzer/ChainRun;
    iget-object v5, v4, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_91
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 220
    .restart local v6    # "widgetChainRun":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    invoke-direct {p0, v6, p2}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;I)Z

    .line 221
    .end local v6    # "widgetChainRun":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    goto :goto_91

    .line 222
    .end local v4    # "chainRun":Landroid/support/constraint/solver/widgets/analyzer/ChainRun;
    :cond_a1
    goto :goto_ac

    .line 223
    :cond_a2
    instance-of v4, p1, Landroid/support/constraint/solver/widgets/analyzer/HelperReferences;

    if-nez v4, :cond_ac

    .line 224
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v1, v4, p2

    .line 227
    :cond_ac
    :goto_ac
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    invoke-direct {p0, v4, p2}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;I)Z

    .line 230
    .end local v2    # "dependency":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    .end local v3    # "node":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_b1
    goto :goto_66

    .line 231
    :cond_b2
    return v1
.end method

.method private traverseEnd(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;J)J
    .registers 14
    .param p1, "node"    # Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .param p2, "startPosition"    # J

    .line 89
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 90
    .local v0, "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    instance-of v1, v0, Landroid/support/constraint/solver/widgets/analyzer/HelperReferences;

    if-eqz v1, :cond_7

    .line 91
    return-wide p2

    .line 93
    :cond_7
    move-wide v1, p2

    .line 97
    .local v1, "position":J
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 98
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v3, :cond_34

    .line 99
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 100
    .local v5, "dependency":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    instance-of v6, v5, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eqz v6, :cond_31

    .line 101
    move-object v6, v5

    check-cast v6, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 102
    .local v6, "nextNode":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    if-ne v7, v0, :cond_25

    .line 104
    goto :goto_31

    .line 106
    :cond_25
    iget v7, v6, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    invoke-direct {p0, v6, v7, v8}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->traverseEnd(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v7

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 98
    .end local v5    # "dependency":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    .end local v6    # "nextNode":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_31
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 110
    .end local v4    # "i":I
    :cond_34
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-ne p1, v4, :cond_54

    .line 112
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v4

    .line 113
    .local v4, "dimension":J
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    sub-long v7, p2, v4

    invoke-direct {p0, v6, v7, v8}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->traverseEnd(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 114
    sub-long v6, p2, v4

    iget-object v8, v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v8, v8, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 117
    .end local v4    # "dimension":J
    :cond_54
    return-wide v1
.end method

.method private traverseStart(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;J)J
    .registers 14
    .param p1, "node"    # Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .param p2, "startPosition"    # J

    .line 57
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 58
    .local v0, "run":Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    instance-of v1, v0, Landroid/support/constraint/solver/widgets/analyzer/HelperReferences;

    if-eqz v1, :cond_7

    .line 59
    return-wide p2

    .line 61
    :cond_7
    move-wide v1, p2

    .line 65
    .local v1, "position":J
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 66
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v3, :cond_34

    .line 67
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 68
    .local v5, "dependency":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    instance-of v6, v5, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eqz v6, :cond_31

    .line 69
    move-object v6, v5

    check-cast v6, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 70
    .local v6, "nextNode":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    if-ne v7, v0, :cond_25

    .line 72
    goto :goto_31

    .line 74
    :cond_25
    iget v7, v6, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    invoke-direct {p0, v6, v7, v8}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->traverseStart(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v7

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 66
    .end local v5    # "dependency":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    .end local v6    # "nextNode":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_31
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 78
    .end local v4    # "i":I
    :cond_34
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-ne p1, v4, :cond_54

    .line 80
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v4

    .line 81
    .local v4, "dimension":J
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    add-long v7, p2, v4

    invoke-direct {p0, v6, v7, v8}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->traverseStart(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 82
    add-long v6, p2, v4

    iget-object v8, v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v8, v8, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 85
    .end local v4    # "dimension":J
    :cond_54
    return-wide v1
.end method


# virtual methods
.method public add(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;)V
    .registers 3
    .param p1, "run"    # Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 52
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->runs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->lastRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 54
    return-void
.end method

.method public computeWrapSize(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;I)J
    .registers 29
    .param p1, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "orientation"    # I

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    instance-of v4, v3, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_16

    .line 122
    check-cast v3, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    .line 123
    .local v3, "chainRun":Landroid/support/constraint/solver/widgets/analyzer/ChainRun;
    iget v4, v3, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;->orientation:I

    if-eq v4, v2, :cond_15

    .line 124
    return-wide v5

    .line 126
    .end local v3    # "chainRun":Landroid/support/constraint/solver/widgets/analyzer/ChainRun;
    :cond_15
    goto :goto_22

    .line 127
    :cond_16
    if-nez v2, :cond_1d

    .line 128
    instance-of v3, v3, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    if-nez v3, :cond_22

    .line 129
    return-wide v5

    .line 132
    :cond_1d
    instance-of v3, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-nez v3, :cond_22

    .line 133
    return-wide v5

    .line 137
    :cond_22
    :goto_22
    if-nez v2, :cond_29

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    goto :goto_2d

    :cond_29
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 138
    .local v3, "containerStart":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :goto_2d
    if-nez v2, :cond_34

    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    goto :goto_38

    :cond_34
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 140
    .local v4, "containerEnd":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :goto_38
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 141
    .local v7, "runWithStartTarget":Z
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 143
    .local v8, "runWithEndTarget":Z
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v9

    .line 145
    .local v9, "dimension":J
    if-eqz v7, :cond_e5

    if-eqz v8, :cond_e5

    .line 146
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v0, v11, v5, v6}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->traverseStart(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v11

    .line 147
    .local v11, "maxPosition":J
    iget-object v13, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v13, v13, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v0, v13, v5, v6}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->traverseEnd(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v5

    .line 150
    .local v5, "minPosition":J
    sub-long v13, v11, v9

    .line 151
    .local v13, "endGap":J
    iget-object v15, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v15, v15, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v15, v15, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v15, v15

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "containerStart":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .end local v4    # "containerEnd":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .local v16, "containerStart":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .local v17, "containerEnd":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    int-to-long v3, v15

    cmp-long v15, v13, v3

    if-ltz v15, :cond_80

    .line 152
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v3, v3

    add-long/2addr v13, v3

    .line 154
    :cond_80
    neg-long v3, v5

    sub-long/2addr v3, v9

    iget-object v15, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v15, v15, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v15, v15, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    move-wide/from16 v18, v5

    .end local v5    # "minPosition":J
    .local v18, "minPosition":J
    int-to-long v5, v15

    sub-long/2addr v3, v5

    .line 155
    .local v3, "startGap":J
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v5, v5, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v5, v5

    cmp-long v15, v3, v5

    if-ltz v15, :cond_9f

    .line 156
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v5, v5, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    .line 158
    :cond_9f
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v5, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBiasPercent(I)F

    move-result v5

    .line 159
    .local v5, "bias":F
    const-wide/16 v20, 0x0

    .line 160
    .local v20, "gap":J
    const/4 v6, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_ba

    .line 161
    long-to-float v6, v3

    div-float/2addr v6, v5

    long-to-float v1, v13

    sub-float v22, v15, v5

    div-float v1, v1, v22

    add-float/2addr v6, v1

    float-to-long v1, v6

    .end local v20    # "gap":J
    .local v1, "gap":J
    goto :goto_bc

    .line 160
    .end local v1    # "gap":J
    .restart local v20    # "gap":J
    :cond_ba
    move-wide/from16 v1, v20

    .line 164
    .end local v20    # "gap":J
    .restart local v1    # "gap":J
    :goto_bc
    long-to-float v6, v1

    mul-float v6, v6, v5

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v6, v6, v20

    float-to-long v3, v6

    .line 165
    long-to-float v6, v1

    sub-float/2addr v15, v5

    mul-float v6, v6, v15

    add-float v6, v6, v20

    float-to-long v13, v6

    .line 167
    add-long v20, v3, v9

    add-long v20, v20, v13

    .line 168
    .local v20, "runDimension":J
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v6, v6, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    move-wide/from16 v22, v1

    .end local v1    # "gap":J
    .local v22, "gap":J
    int-to-long v1, v6

    add-long v1, v1, v20

    iget-object v6, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v6, v6, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    move-wide/from16 v24, v3

    .end local v3    # "startGap":J
    .local v24, "startGap":J
    int-to-long v3, v6

    sub-long/2addr v1, v3

    .line 170
    .end local v5    # "bias":F
    .end local v9    # "dimension":J
    .end local v11    # "maxPosition":J
    .end local v13    # "endGap":J
    .end local v18    # "minPosition":J
    .end local v20    # "runDimension":J
    .end local v22    # "gap":J
    .end local v24    # "startGap":J
    .local v1, "dimension":J
    goto :goto_13d

    .line 145
    .end local v1    # "dimension":J
    .end local v16    # "containerStart":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .end local v17    # "containerEnd":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .local v3, "containerStart":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .restart local v4    # "containerEnd":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .restart local v9    # "dimension":J
    :cond_e5
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 170
    .end local v3    # "containerStart":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .end local v4    # "containerEnd":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .restart local v16    # "containerStart":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    .restart local v17    # "containerEnd":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    if-eqz v7, :cond_107

    .line 171
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->traverseStart(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v1

    .line 172
    .local v1, "maxPosition":J
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v3, v3

    add-long/2addr v3, v9

    .line 173
    .local v3, "runDimension":J
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 174
    .end local v3    # "runDimension":J
    .end local v9    # "dimension":J
    .local v1, "dimension":J
    goto :goto_13d

    .end local v1    # "dimension":J
    .restart local v9    # "dimension":J
    :cond_107
    if-eqz v8, :cond_127

    .line 175
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->traverseEnd(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v1

    .line 176
    .local v1, "minPosition":J
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v3, v3

    int-to-long v3, v3

    add-long/2addr v3, v9

    .line 177
    .restart local v3    # "runDimension":J
    neg-long v5, v1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 178
    .end local v3    # "runDimension":J
    .end local v9    # "dimension":J
    .local v1, "dimension":J
    goto :goto_13d

    .line 179
    .end local v1    # "dimension":J
    .restart local v9    # "dimension":J
    :cond_127
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v1, v1

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 182
    .end local v9    # "dimension":J
    .restart local v1    # "dimension":J
    :goto_13d
    return-wide v1
.end method

.method public defineTerminalWidgets(ZZ)V
    .registers 5
    .param p1, "horizontalCheck"    # Z
    .param p2, "verticalCheck"    # Z

    .line 236
    if-eqz p1, :cond_c

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    instance-of v1, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v1, :cond_c

    .line 237
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;I)Z

    .line 239
    :cond_c
    if-eqz p2, :cond_18

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->firstRun:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    instance-of v1, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v1, :cond_18

    .line 240
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;I)Z

    .line 242
    :cond_18
    return-void
.end method
