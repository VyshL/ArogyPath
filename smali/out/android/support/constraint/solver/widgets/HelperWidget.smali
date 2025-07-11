.class public Landroid/support/constraint/solver/widgets/HelperWidget;
.super Landroid/support/constraint/solver/widgets/ConstraintWidget;
.source "HelperWidget.java"

# interfaces
.implements Landroid/support/constraint/solver/widgets/Helper;


# instance fields
.field public mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field public mWidgetsCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgetsCount:I

    return-void
.end method


# virtual methods
.method public add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 5
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 28
    if-eq p1, p0, :cond_24

    if-nez p1, :cond_5

    goto :goto_24

    .line 31
    :cond_5
    iget v0, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgetsCount:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v2, v1

    if-le v0, v2, :cond_19

    .line 32
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 34
    :cond_19
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v1, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgetsCount:I

    aput-object p1, v0, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgetsCount:I

    .line 36
    return-void

    .line 29
    :cond_24
    :goto_24
    return-void
.end method

.method public addDependents(Ljava/util/ArrayList;ILandroid/support/constraint/solver/widgets/analyzer/WidgetGroup;)V
    .registers 6
    .param p2, "orientation"    # I
    .param p3, "group"    # Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;",
            ">;I",
            "Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;",
            ")V"
        }
    .end annotation

    .line 58
    .local p1, "dependencyLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v0, v1, :cond_f

    .line 59
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    .line 60
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {p3, v1}, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    .line 58
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    .end local v0    # "i":I
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_10
    iget v1, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v0, v1, :cond_1e

    .line 63
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    .line 64
    .restart local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-static {v1, p2, p1, p3}, Landroid/support/constraint/solver/widgets/analyzer/Grouping;->findDependents(Landroid/support/constraint/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;)Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;

    .line 62
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 66
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method public copy(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .registers 7
    .param p1, "src"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-super {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 41
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/solver/widgets/HelperWidget;

    .line 42
    .local v0, "srcHelper":Landroid/support/constraint/solver/widgets/HelperWidget;
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgetsCount:I

    .line 43
    iget v1, v0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgetsCount:I

    .line 44
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_1e

    .line 45
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v3, v3, v2

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/HelperWidget;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 47
    .end local v2    # "i":I
    :cond_1e
    return-void
.end method

.method public findGroupInDependents(I)I
    .registers 6
    .param p1, "orientation"    # I

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgetsCount:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_20

    .line 70
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    .line 71
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez p1, :cond_13

    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalGroup:I

    if-eq v3, v2, :cond_13

    .line 72
    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalGroup:I

    return v2

    .line 74
    :cond_13
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1d

    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalGroup:I

    if-eq v3, v2, :cond_1d

    .line 75
    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalGroup:I

    return v2

    .line 69
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    .end local v0    # "i":I
    :cond_20
    return v2
.end method

.method public removeAllIds()V
    .registers 3

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgetsCount:I

    .line 54
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/HelperWidget;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public updateConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 2
    .param p1, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 20
    return-void
.end method
