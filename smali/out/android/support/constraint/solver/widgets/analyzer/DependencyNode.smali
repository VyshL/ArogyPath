.class public Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
.super Ljava/lang/Object;
.source "DependencyNode.java"

# interfaces
.implements Landroid/support/constraint/solver/widgets/analyzer/Dependency;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;
    }
.end annotation


# instance fields
.field public delegateToWidgetRun:Z

.field dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/analyzer/Dependency;",
            ">;"
        }
    .end annotation
.end field

.field margin:I

.field marginDependency:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

.field marginFactor:I

.field public readyToSolve:Z

.field public resolved:Z

.field run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

.field targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;",
            ">;"
        }
    .end annotation
.end field

.field type:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

.field public updateDelegate:Landroid/support/constraint/solver/widgets/analyzer/Dependency;

.field public value:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;)V
    .registers 5
    .param p1, "run"    # Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->updateDelegate:Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 24
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 25
    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 30
    sget-object v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->UNKNOWN:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->type:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    .line 33
    const/4 v2, 0x1

    iput v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->marginFactor:I

    .line 34
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->marginDependency:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    .line 35
    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 38
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 39
    return-void
.end method


# virtual methods
.method public addDependency(Landroid/support/constraint/solver/widgets/analyzer/Dependency;)V
    .registers 3
    .param p1, "dependency"    # Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 100
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_c

    .line 102
    invoke-interface {p1, p1}, Landroid/support/constraint/solver/widgets/analyzer/Dependency;->update(Landroid/support/constraint/solver/widgets/analyzer/Dependency;)V

    .line 104
    :cond_c
    return-void
.end method

.method public clear()V
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    .line 122
    iput v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    .line 123
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 124
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 125
    return-void
.end method

.method public name()Ljava/lang/String;
    .registers 4

    .line 107
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "definition":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->type:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    sget-object v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->LEFT:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    if-eq v1, v2, :cond_29

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->type:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    sget-object v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    if-ne v1, v2, :cond_15

    goto :goto_29

    .line 112
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_VERTICAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 110
    :cond_29
    :goto_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_HORIZONTAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->type:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    return-object v0
.end method

.method public resolve(I)V
    .registers 4
    .param p1, "value"    # I

    .line 50
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_5

    .line 51
    return-void

    .line 54
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    .line 55
    iput p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    .line 56
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 57
    .local v1, "node":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    invoke-interface {v1, v1}, Landroid/support/constraint/solver/widgets/analyzer/Dependency;->update(Landroid/support/constraint/solver/widgets/analyzer/Dependency;)V

    .line 58
    .end local v1    # "node":Landroid/support/constraint/solver/widgets/analyzer/Dependency;
    goto :goto_10

    .line 59
    :cond_20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->type:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v1, :cond_2e

    iget v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_30

    :cond_2e
    const-string v1, "unresolved"

    :goto_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") <t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    return-object v0
.end method

.method public update(Landroid/support/constraint/solver/widgets/analyzer/Dependency;)V
    .registers 8
    .param p1, "node"    # Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 62
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 63
    .local v1, "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    iget-boolean v2, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v2, :cond_17

    .line 64
    return-void

    .line 66
    .end local v1    # "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    :cond_17
    goto :goto_6

    .line 67
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 68
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->updateDelegate:Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    if-eqz v1, :cond_22

    .line 69
    invoke-interface {v1, p0}, Landroid/support/constraint/solver/widgets/analyzer/Dependency;->update(Landroid/support/constraint/solver/widgets/analyzer/Dependency;)V

    .line 71
    :cond_22
    iget-boolean v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    if-eqz v1, :cond_2c

    .line 72
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->update(Landroid/support/constraint/solver/widgets/analyzer/Dependency;)V

    .line 73
    return-void

    .line 75
    :cond_2c
    const/4 v1, 0x0

    .line 76
    .restart local v1    # "target":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    const/4 v2, 0x0

    .line 77
    .local v2, "numTargets":I
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 78
    .local v4, "t":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    instance-of v5, v4, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    if-eqz v5, :cond_45

    .line 79
    goto :goto_34

    .line 81
    :cond_45
    move-object v1, v4

    .line 82
    nop

    .end local v4    # "t":Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;
    add-int/lit8 v2, v2, 0x1

    .line 83
    goto :goto_34

    .line 84
    :cond_4a
    if-eqz v1, :cond_6e

    if-ne v2, v0, :cond_6e

    iget-boolean v0, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_6e

    .line 85
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->marginDependency:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    if-eqz v0, :cond_66

    .line 86
    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v0, :cond_65

    .line 87
    iget v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->marginFactor:I

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->marginDependency:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    mul-int v0, v0, v3

    iput v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    goto :goto_66

    .line 89
    :cond_65
    return-void

    .line 92
    :cond_66
    :goto_66
    iget v0, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    iget v3, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 94
    :cond_6e
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->updateDelegate:Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    if-eqz v0, :cond_75

    .line 95
    invoke-interface {v0, p0}, Landroid/support/constraint/solver/widgets/analyzer/Dependency;->update(Landroid/support/constraint/solver/widgets/analyzer/Dependency;)V

    .line 97
    :cond_75
    return-void
.end method
