.class public Landroid/support/constraint/solver/PriorityGoalRow;
.super Landroid/support/constraint/solver/ArrayRow;
.source "PriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final NOT_FOUND:I = -0x1

.field private static final epsilon:F = 1.0E-4f


# instance fields
.field private TABLE_SIZE:I

.field accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

.field private arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

.field mCache:Landroid/support/constraint/solver/Cache;

.field private numGoals:I

.field private sortArray:[Landroid/support/constraint/solver/SolverVariable;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/Cache;)V
    .registers 4
    .param p1, "cache"    # Landroid/support/constraint/solver/Cache;

    .line 160
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/ArrayRow;-><init>(Landroid/support/constraint/solver/Cache;)V

    .line 29
    const/16 v0, 0x80

    iput v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->TABLE_SIZE:I

    .line 30
    new-array v1, v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v1, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    .line 31
    new-array v0, v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->sortArray:[Landroid/support/constraint/solver/SolverVariable;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    .line 33
    new-instance v0, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-direct {v0, p0, p0}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;-><init>(Landroid/support/constraint/solver/PriorityGoalRow;Landroid/support/constraint/solver/PriorityGoalRow;)V

    iput-object v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    .line 161
    iput-object p1, p0, Landroid/support/constraint/solver/PriorityGoalRow;->mCache:Landroid/support/constraint/solver/Cache;

    .line 162
    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/solver/PriorityGoalRow;Landroid/support/constraint/solver/SolverVariable;)V
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/PriorityGoalRow;
    .param p1, "x1"    # Landroid/support/constraint/solver/SolverVariable;

    .line 25
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/PriorityGoalRow;->removeGoal(Landroid/support/constraint/solver/SolverVariable;)V

    return-void
.end method

.method private final addToGoal(Landroid/support/constraint/solver/SolverVariable;)V
    .registers 7
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .line 203
    iget v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    array-length v3, v2

    if-le v0, v3, :cond_1f

    .line 204
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    .line 205
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->sortArray:[Landroid/support/constraint/solver/SolverVariable;

    .line 207
    :cond_1f
    iget-object v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    aput-object p1, v0, v2

    .line 208
    add-int/2addr v2, v1

    iput v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    .line 210
    if-le v2, v1, :cond_5e

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    iget v0, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    iget v2, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-le v0, v2, :cond_5e

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_34
    iget v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    if-ge v0, v2, :cond_43

    .line 212
    iget-object v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->sortArray:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 214
    .end local v0    # "i":I
    :cond_43
    iget-object v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->sortArray:[Landroid/support/constraint/solver/SolverVariable;

    const/4 v3, 0x0

    new-instance v4, Landroid/support/constraint/solver/PriorityGoalRow$1;

    invoke-direct {v4, p0}, Landroid/support/constraint/solver/PriorityGoalRow$1;-><init>(Landroid/support/constraint/solver/PriorityGoalRow;)V

    invoke-static {v0, v3, v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 220
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4f
    iget v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    if-ge v0, v2, :cond_5e

    .line 221
    iget-object v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/PriorityGoalRow;->sortArray:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 225
    .end local v0    # "i":I
    :cond_5e
    iput-boolean v1, p1, Landroid/support/constraint/solver/SolverVariable;->inGoal:Z

    .line 226
    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/SolverVariable;->addToRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 227
    return-void
.end method

.method private final removeGoal(Landroid/support/constraint/solver/SolverVariable;)V
    .registers 6
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    if-ge v0, v1, :cond_28

    .line 231
    iget-object v1, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_25

    .line 232
    move v1, v0

    .local v1, "j":I
    :goto_c
    iget v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_1d

    .line 233
    iget-object v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v2, v3

    aput-object v3, v2, v1

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 235
    .end local v1    # "j":I
    :cond_1d
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    .line 236
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/support/constraint/solver/SolverVariable;->inGoal:Z

    .line 237
    return-void

    .line 230
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    .end local v0    # "i":I
    :cond_28
    return-void
.end method


# virtual methods
.method public addError(Landroid/support/constraint/solver/SolverVariable;)V
    .registers 5
    .param p1, "error"    # Landroid/support/constraint/solver/SolverVariable;

    .line 196
    iget-object v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;->init(Landroid/support/constraint/solver/SolverVariable;)V

    .line 197
    iget-object v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;->reset()V

    .line 198
    iget-object v0, p1, Landroid/support/constraint/solver/SolverVariable;->goalStrengthVector:[F

    iget v1, p1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 199
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/PriorityGoalRow;->addToGoal(Landroid/support/constraint/solver/SolverVariable;)V

    .line 200
    return-void
.end method

.method public clear()V
    .registers 2

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->constantValue:F

    .line 155
    return-void
.end method

.method public getPivotCandidate(Landroid/support/constraint/solver/LinearSystem;[Z)Landroid/support/constraint/solver/SolverVariable;
    .registers 8
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "avoid"    # [Z

    .line 173
    const/4 v0, -0x1

    .line 174
    .local v0, "pivot":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    const/4 v3, -0x1

    if-ge v1, v2, :cond_33

    .line 175
    iget-object v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v2, v2, v1

    .line 176
    .local v2, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget v4, v2, Landroid/support/constraint/solver/SolverVariable;->id:I

    aget-boolean v4, p2, v4

    if-eqz v4, :cond_12

    .line 177
    goto :goto_30

    .line 179
    :cond_12
    iget-object v4, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v4, v2}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;->init(Landroid/support/constraint/solver/SolverVariable;)V

    .line 180
    if-ne v0, v3, :cond_23

    .line 181
    iget-object v3, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 182
    move v0, v1

    goto :goto_30

    .line 184
    :cond_23
    iget-object v3, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    iget-object v4, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;->isSmallerThan(Landroid/support/constraint/solver/SolverVariable;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 185
    move v0, v1

    .line 174
    .end local v2    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 188
    .end local v1    # "i":I
    :cond_33
    if-ne v0, v3, :cond_37

    .line 189
    const/4 v1, 0x0

    return-object v1

    .line 191
    :cond_37
    iget-object v1, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 166
    iget v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 265
    const-string v0, ""

    .line 266
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " goal -> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->constantValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    iget v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    if-ge v1, v2, :cond_4b

    .line 268
    iget-object v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v2, v2, v1

    .line 269
    .local v2, "v":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3, v2}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;->init(Landroid/support/constraint/solver/SolverVariable;)V

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .end local v2    # "v":Landroid/support/constraint/solver/SolverVariable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 272
    .end local v1    # "i":I
    :cond_4b
    return-object v0
.end method

.method public updateFromRow(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/ArrayRow;Z)V
    .registers 12
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "definition"    # Landroid/support/constraint/solver/ArrayRow;
    .param p3, "removeFromDefinition"    # Z

    .line 244
    iget-object v0, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 245
    .local v0, "goalVariable":Landroid/support/constraint/solver/SolverVariable;
    if-nez v0, :cond_5

    .line 246
    return-void

    .line 249
    :cond_5
    iget-object v1, p2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    .line 250
    .local v1, "rowVariables":Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;
    invoke-interface {v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v2

    .line 251
    .local v2, "currentSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_32

    .line 252
    invoke-interface {v1, v3}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 253
    .local v4, "solverVariable":Landroid/support/constraint/solver/SolverVariable;
    invoke-interface {v1, v3}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v5

    .line 254
    .local v5, "value":F
    iget-object v6, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v6, v4}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;->init(Landroid/support/constraint/solver/SolverVariable;)V

    .line 255
    iget-object v6, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v6, v0, v5}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;->addToGoal(Landroid/support/constraint/solver/SolverVariable;F)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 256
    invoke-direct {p0, v4}, Landroid/support/constraint/solver/PriorityGoalRow;->addToGoal(Landroid/support/constraint/solver/SolverVariable;)V

    .line 258
    :cond_26
    iget v6, p0, Landroid/support/constraint/solver/PriorityGoalRow;->constantValue:F

    iget v7, p2, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float v7, v7, v5

    add-float/2addr v6, v7

    iput v6, p0, Landroid/support/constraint/solver/PriorityGoalRow;->constantValue:F

    .line 251
    .end local v4    # "solverVariable":Landroid/support/constraint/solver/SolverVariable;
    .end local v5    # "value":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 260
    .end local v3    # "i":I
    :cond_32
    invoke-direct {p0, v0}, Landroid/support/constraint/solver/PriorityGoalRow;->removeGoal(Landroid/support/constraint/solver/SolverVariable;)V

    .line 261
    return-void
.end method
