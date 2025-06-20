.class public Landroid/support/constraint/solver/widgets/Barrier;
.super Landroid/support/constraint/solver/widgets/HelperWidget;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final TOP:I = 0x2

.field private static final USE_RELAX_GONE:Z = false

.field private static final USE_RESOLUTION:Z = true


# instance fields
.field private mAllowsGoneWidget:Z

.field private mBarrierType:I

.field private mMargin:I

.field resolved:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/HelperWidget;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 39
    iput v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mMargin:I

    .line 40
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->resolved:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "debugName"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/HelperWidget;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 39
    iput v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mMargin:I

    .line 40
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->resolved:Z

    .line 44
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Barrier;->setDebugName(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;Z)V
    .registers 19
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "optimize"    # Z

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 120
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 121
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v6, 0x1

    aput-object v3, v2, v6

    .line 122
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 123
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length v3, v3

    if-ge v2, v3, :cond_37

    .line 124
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v2

    iget-object v8, v0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v2

    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    iput-object v8, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 126
    .end local v2    # "i":I
    :cond_37
    iget v2, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ltz v2, :cond_229

    const/4 v3, 0x4

    if-ge v2, v3, :cond_229

    .line 127
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    aget-object v2, v2, v3

    .line 133
    .local v2, "position":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-boolean v3, v0, Landroid/support/constraint/solver/widgets/Barrier;->resolved:Z

    if-nez v3, :cond_4b

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Barrier;->allSolved()Z

    .line 136
    :cond_4b
    iget-boolean v3, v0, Landroid/support/constraint/solver/widgets/Barrier;->resolved:Z

    if-eqz v3, :cond_82

    .line 137
    iput-boolean v4, v0, Landroid/support/constraint/solver/widgets/Barrier;->resolved:Z

    .line 138
    iget v3, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v3, :cond_6f

    if-ne v3, v6, :cond_58

    goto :goto_6f

    .line 141
    :cond_58
    if-eq v3, v5, :cond_5c

    if-ne v3, v7, :cond_81

    .line 142
    :cond_5c
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v4, v0, Landroid/support/constraint/solver/widgets/Barrier;->mY:I

    invoke-virtual {v1, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 143
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v4, v0, Landroid/support/constraint/solver/widgets/Barrier;->mY:I

    invoke-virtual {v1, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    goto :goto_81

    .line 139
    :cond_6f
    :goto_6f
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v4, v0, Landroid/support/constraint/solver/widgets/Barrier;->mX:I

    invoke-virtual {v1, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 140
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v4, v0, Landroid/support/constraint/solver/widgets/Barrier;->mX:I

    invoke-virtual {v1, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 145
    :cond_81
    :goto_81
    return-void

    .line 151
    :cond_82
    const/4 v3, 0x0

    .line 152
    .local v3, "hasMatchConstraintWidgets":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_84
    iget v9, v0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v8, v9, :cond_d2

    .line 153
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v9, v9, v8

    .line 154
    .local v9, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v10, v0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v10, :cond_97

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v10

    if-nez v10, :cond_97

    .line 155
    goto :goto_cf

    .line 157
    :cond_97
    iget v10, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v10, :cond_9d

    if-ne v10, v6, :cond_b3

    .line 158
    :cond_9d
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_b3

    iget-object v10, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_b3

    iget-object v10, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_b3

    .line 160
    const/4 v3, 0x1

    .line 161
    goto :goto_d2

    .line 162
    :cond_b3
    iget v10, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eq v10, v5, :cond_b9

    if-ne v10, v7, :cond_cf

    .line 163
    :cond_b9
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_cf

    iget-object v10, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_cf

    iget-object v10, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_cf

    .line 165
    const/4 v3, 0x1

    .line 166
    goto :goto_d2

    .line 152
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_cf
    :goto_cf
    add-int/lit8 v8, v8, 0x1

    goto :goto_84

    .line 170
    .end local v8    # "i":I
    :cond_d2
    :goto_d2
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v8

    if-nez v8, :cond_e5

    iget-object v8, v0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v8

    if-eqz v8, :cond_e3

    goto :goto_e5

    :cond_e3
    const/4 v8, 0x0

    goto :goto_e6

    :cond_e5
    :goto_e5
    const/4 v8, 0x1

    .line 171
    .local v8, "mHasHorizontalCenteredDependents":Z
    :goto_e6
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v9

    if-nez v9, :cond_f9

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v9

    if-eqz v9, :cond_f7

    goto :goto_f9

    :cond_f7
    const/4 v9, 0x0

    goto :goto_fa

    :cond_f9
    :goto_f9
    const/4 v9, 0x1

    .line 172
    .local v9, "mHasVerticalCenteredDependents":Z
    :goto_fa
    if-nez v3, :cond_110

    iget v10, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-nez v10, :cond_102

    if-nez v8, :cond_10e

    :cond_102
    if-ne v10, v5, :cond_106

    if-nez v9, :cond_10e

    :cond_106
    if-ne v10, v6, :cond_10a

    if-nez v8, :cond_10e

    :cond_10a
    if-ne v10, v7, :cond_110

    if-eqz v9, :cond_110

    :cond_10e
    const/4 v10, 0x1

    goto :goto_111

    :cond_110
    const/4 v10, 0x0

    .line 177
    .local v10, "applyEqualityOnReferences":Z
    :goto_111
    const/4 v11, 0x5

    .line 178
    .local v11, "equalityOnReferencesStrength":I
    if-nez v10, :cond_115

    .line 179
    const/4 v11, 0x4

    .line 181
    :cond_115
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_116
    iget v13, v0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v12, v13, :cond_180

    .line 182
    iget-object v13, v0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v13, v13, v12

    .line 183
    .local v13, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v14, v0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v14, :cond_129

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v14

    if-nez v14, :cond_129

    .line 184
    goto :goto_17b

    .line 186
    :cond_129
    iget-object v14, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    aget-object v14, v14, v15

    invoke-virtual {v1, v14}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v14

    .line 187
    .local v14, "target":Landroid/support/constraint/solver/SolverVariable;
    iget-object v15, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v7, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    aget-object v7, v15, v7

    iput-object v14, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 188
    const/4 v7, 0x0

    .line 189
    .local v7, "margin":I
    iget-object v15, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v6, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    aget-object v6, v15, v6

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_15b

    iget-object v6, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    aget-object v6, v6, v15

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v6, v0, :cond_15b

    .line 191
    iget-object v6, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    aget-object v6, v6, v15

    iget v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v7, v6

    .line 193
    :cond_15b
    iget v6, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v6, :cond_16b

    if-ne v6, v5, :cond_162

    goto :goto_16b

    .line 196
    :cond_162
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v15, v0, Landroid/support/constraint/solver/widgets/Barrier;->mMargin:I

    add-int/2addr v15, v7

    invoke-virtual {v1, v6, v14, v15, v3}, Landroid/support/constraint/solver/LinearSystem;->addGreaterBarrier(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)V

    goto :goto_173

    .line 194
    :cond_16b
    :goto_16b
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v15, v0, Landroid/support/constraint/solver/widgets/Barrier;->mMargin:I

    sub-int/2addr v15, v7

    invoke-virtual {v1, v6, v14, v15, v3}, Landroid/support/constraint/solver/LinearSystem;->addLowerBarrier(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)V

    .line 203
    :goto_173
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v15, v0, Landroid/support/constraint/solver/widgets/Barrier;->mMargin:I

    add-int/2addr v15, v7

    invoke-virtual {v1, v6, v14, v15, v11}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 181
    .end local v7    # "margin":I
    .end local v13    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "target":Landroid/support/constraint/solver/SolverVariable;
    :goto_17b
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x3

    goto :goto_116

    .line 207
    .end local v12    # "i":I
    :cond_180
    const/4 v6, 0x4

    .line 208
    .local v6, "barrierParentStrength":I
    const/4 v7, 0x0

    .line 210
    .local v7, "barrierParentStrengthOpposite":I
    iget v12, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    const/16 v13, 0x8

    if-nez v12, :cond_1af

    .line 211
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v13}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 212
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 213
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto/16 :goto_228

    .line 214
    :cond_1af
    const/4 v14, 0x1

    if-ne v12, v14, :cond_1d8

    .line 215
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v13}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 216
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 217
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_228

    .line 218
    :cond_1d8
    if-ne v12, v5, :cond_200

    .line 219
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v13}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 220
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 221
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_228

    .line 222
    :cond_200
    const/4 v5, 0x3

    if-ne v12, v5, :cond_228

    .line 223
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v13}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 224
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 225
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 227
    :cond_228
    :goto_228
    return-void

    .line 129
    .end local v2    # "position":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "hasMatchConstraintWidgets":Z
    .end local v6    # "barrierParentStrength":I
    .end local v7    # "barrierParentStrengthOpposite":I
    .end local v8    # "mHasHorizontalCenteredDependents":Z
    .end local v9    # "mHasVerticalCenteredDependents":Z
    .end local v10    # "applyEqualityOnReferences":Z
    .end local v11    # "equalityOnReferencesStrength":I
    :cond_229
    return-void
.end method

.method public allSolved()Z
    .registers 10

    .line 253
    const/4 v0, 0x1

    .line 254
    .local v0, "hasAllWidgetsResolved":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgetsCount:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v1, v2, :cond_36

    .line 255
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    .line 256
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v6, :cond_18

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v6

    if-nez v6, :cond_18

    .line 257
    goto :goto_33

    .line 259
    :cond_18
    iget v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v6, :cond_1e

    if-ne v6, v5, :cond_26

    :cond_1e
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v5

    if-nez v5, :cond_26

    .line 260
    const/4 v0, 0x0

    goto :goto_33

    .line 261
    :cond_26
    iget v5, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eq v5, v4, :cond_2c

    if-ne v5, v3, :cond_33

    :cond_2c
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v3

    if-nez v3, :cond_33

    .line 262
    const/4 v0, 0x0

    .line 254
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 266
    .end local v1    # "i":I
    :cond_36
    if-eqz v0, :cond_e8

    iget v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgetsCount:I

    if-lez v1, :cond_e8

    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, "barrierPosition":I
    const/4 v2, 0x0

    .line 270
    .local v2, "initialized":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3f
    iget v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v6, v7, :cond_d4

    .line 271
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v6

    .line 272
    .local v7, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v8, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v8, :cond_53

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v8

    if-nez v8, :cond_53

    .line 273
    goto/16 :goto_d0

    .line 275
    :cond_53
    if-nez v2, :cond_8b

    .line 276
    iget v8, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-nez v8, :cond_64

    .line 277
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    goto :goto_8a

    .line 278
    :cond_64
    if-ne v8, v5, :cond_71

    .line 279
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    goto :goto_8a

    .line 280
    :cond_71
    if-ne v8, v4, :cond_7e

    .line 281
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    goto :goto_8a

    .line 282
    :cond_7e
    if-ne v8, v3, :cond_8a

    .line 283
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    .line 285
    :cond_8a
    :goto_8a
    const/4 v2, 0x1

    .line 287
    :cond_8b
    iget v8, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-nez v8, :cond_9e

    .line 288
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_d0

    .line 289
    :cond_9e
    if-ne v8, v5, :cond_af

    .line 290
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_d0

    .line 291
    :cond_af
    if-ne v8, v4, :cond_c0

    .line 292
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_d0

    .line 293
    :cond_c0
    if-ne v8, v3, :cond_d0

    .line 294
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 270
    .end local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_d0
    :goto_d0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3f

    .line 297
    .end local v6    # "i":I
    :cond_d4
    iget v3, p0, Landroid/support/constraint/solver/widgets/Barrier;->mMargin:I

    add-int/2addr v1, v3

    .line 298
    iget v3, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v3, :cond_e2

    if-ne v3, v5, :cond_de

    goto :goto_e2

    .line 301
    :cond_de
    invoke-virtual {p0, v1, v1}, Landroid/support/constraint/solver/widgets/Barrier;->setFinalVertical(II)V

    goto :goto_e5

    .line 299
    :cond_e2
    :goto_e2
    invoke-virtual {p0, v1, v1}, Landroid/support/constraint/solver/widgets/Barrier;->setFinalHorizontal(II)V

    .line 306
    :goto_e5
    iput-boolean v5, p0, Landroid/support/constraint/solver/widgets/Barrier;->resolved:Z

    .line 307
    return v5

    .line 309
    .end local v1    # "barrierPosition":I
    .end local v2    # "initialized":Z
    :cond_e8
    const/4 v1, 0x0

    return v1
.end method

.method public allowedInBarrier()Z
    .registers 2

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public allowsGoneWidget()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return v0
.end method

.method public copy(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .registers 5
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

    .line 72
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-super {p0, p1, p2}, Landroid/support/constraint/solver/widgets/HelperWidget;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 73
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/solver/widgets/Barrier;

    .line 74
    .local v0, "srcBarrier":Landroid/support/constraint/solver/widgets/Barrier;
    iget v1, v0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    .line 75
    iget-boolean v1, v0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 76
    iget v1, v0, Landroid/support/constraint/solver/widgets/Barrier;->mMargin:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mMargin:I

    .line 77
    return-void
.end method

.method public getBarrierType()I
    .registers 2

    .line 52
    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    return v0
.end method

.method public getMargin()I
    .registers 2

    .line 234
    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mMargin:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 238
    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    packed-switch v0, :pswitch_data_c

    .line 246
    const/4 v0, -0x1

    return v0

    .line 244
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 241
    :pswitch_9
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public isResolvedHorizontally()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->resolved:Z

    return v0
.end method

.method public isResolvedVertically()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->resolved:Z

    return v0
.end method

.method protected markWidgets()V
    .registers 6

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v0, v1, :cond_22

    .line 95
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    .line 96
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    if-ne v2, v3, :cond_11

    goto :goto_1b

    .line 98
    :cond_11
    const/4 v4, 0x2

    if-eq v2, v4, :cond_17

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1f

    .line 99
    :cond_17
    invoke-virtual {v1, v3, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setInBarrier(IZ)V

    goto :goto_1f

    .line 97
    :cond_1b
    :goto_1b
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setInBarrier(IZ)V

    .line 94
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .registers 2
    .param p1, "allowsGoneWidget"    # Z

    .line 58
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method

.method public setBarrierType(I)V
    .registers 2
    .param p1, "barrierType"    # I

    .line 55
    iput p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    .line 56
    return-void
.end method

.method public setMargin(I)V
    .registers 2
    .param p1, "margin"    # I

    .line 230
    iput p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mMargin:I

    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Barrier] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Barrier;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "debug":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    iget v2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v1, v2, :cond_53

    .line 83
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    .line 84
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-lez v1, :cond_3b

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 89
    .end local v1    # "i":I
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    return-object v0
.end method
