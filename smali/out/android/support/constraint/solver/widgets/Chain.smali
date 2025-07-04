.class public Landroid/support/constraint/solver/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final USE_CHAIN_OPTIMIZATION:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)V
    .registers 50
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroid/support/constraint/solver/widgets/ChainHead;

    .line 83
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    iget-object v12, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 84
    .local v12, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 85
    .local v13, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v14, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 86
    .local v14, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v15, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 87
    .local v15, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v9, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 89
    .local v9, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v1, v12

    .line 90
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    .line 91
    .local v2, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v3, 0x0

    .line 93
    .local v3, "done":Z
    iget v4, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    .line 94
    .local v4, "totalWeights":F
    iget-object v8, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 95
    .local v8, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v7, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 97
    .local v7, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, p2

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v16, v1

    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v16, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-ne v5, v6, :cond_25

    const/4 v5, 0x1

    goto :goto_26

    :cond_25
    const/4 v5, 0x0

    :goto_26
    move/from16 v18, v5

    .line 98
    .local v18, "isWrapContent":Z
    const/4 v5, 0x0

    .line 99
    .local v5, "isChainSpread":Z
    const/4 v6, 0x0

    .line 100
    .local v6, "isChainSpreadInside":Z
    const/16 v19, 0x0

    .line 102
    .local v19, "isChainPacked":Z
    if-nez p2, :cond_52

    .line 103
    iget v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    .line 104
    .end local v5    # "isChainSpread":Z
    .local v1, "isChainSpread":Z
    :goto_35
    iget v5, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "isChainSpread":Z
    .local v22, "isChainSpread":Z
    if-ne v5, v1, :cond_3e

    const/4 v1, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    .line 105
    .end local v6    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_3f
    iget v5, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_46

    const/4 v5, 0x1

    goto :goto_47

    :cond_46
    const/4 v5, 0x0

    :goto_47
    move-object/from16 v19, v2

    move/from16 v21, v3

    move/from16 v23, v5

    move-object/from16 v6, v16

    move/from16 v16, v1

    .end local v19    # "isChainPacked":Z
    .local v5, "isChainPacked":Z
    goto :goto_75

    .line 107
    .end local v1    # "isChainSpreadInside":Z
    .end local v22    # "isChainSpread":Z
    .local v5, "isChainSpread":Z
    .restart local v6    # "isChainSpreadInside":Z
    .restart local v19    # "isChainPacked":Z
    :cond_52
    iget v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v1, :cond_58

    const/4 v1, 0x1

    goto :goto_59

    :cond_58
    const/4 v1, 0x0

    .line 108
    .end local v5    # "isChainSpread":Z
    .local v1, "isChainSpread":Z
    :goto_59
    iget v5, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "isChainSpread":Z
    .restart local v22    # "isChainSpread":Z
    if-ne v5, v1, :cond_62

    const/4 v1, 0x1

    goto :goto_63

    :cond_62
    const/4 v1, 0x0

    .line 109
    .end local v6    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_63
    iget v5, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6a

    const/4 v5, 0x1

    goto :goto_6b

    :cond_6a
    const/4 v5, 0x0

    :goto_6b
    move-object/from16 v19, v2

    move/from16 v21, v3

    move/from16 v23, v5

    move-object/from16 v6, v16

    move/from16 v16, v1

    .line 125
    .end local v1    # "isChainSpreadInside":Z
    .end local v2    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v3    # "done":Z
    .local v6, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v16, "isChainSpreadInside":Z
    .local v19, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v21, "done":Z
    .local v23, "isChainPacked":Z
    :goto_75
    if-nez v21, :cond_164

    .line 126
    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    .line 128
    .local v3, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/16 v24, 0x4

    .line 129
    .local v24, "strength":I
    if-eqz v23, :cond_81

    .line 130
    const/16 v24, 0x1

    .line 132
    :cond_81
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v25

    .line 133
    .local v25, "margin":I
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, p2

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v5, :cond_95

    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v1, v1, p2

    if-nez v1, :cond_95

    const/4 v1, 0x1

    goto :goto_96

    :cond_95
    const/4 v1, 0x0

    .line 136
    .local v1, "isSpreadOnly":Z
    :goto_96
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_a7

    if-eq v6, v12, :cond_a7

    .line 137
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int v25, v25, v5

    move/from16 v5, v25

    goto :goto_a9

    .line 140
    :cond_a7
    move/from16 v5, v25

    .end local v25    # "margin":I
    .local v5, "margin":I
    :goto_a9
    if-eqz v23, :cond_b1

    if-eq v6, v12, :cond_b1

    if-eq v6, v14, :cond_b1

    .line 141
    const/16 v24, 0x8

    .line 144
    :cond_b1
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_e9

    .line 145
    if-ne v6, v14, :cond_c6

    .line 146
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v28, v4

    .end local v4    # "totalWeights":F
    .local v28, "totalWeights":F
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v29, v7

    const/4 v7, 0x6

    .end local v7    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v29, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v10, v2, v4, v5, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_d5

    .line 149
    .end local v28    # "totalWeights":F
    .end local v29    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v4    # "totalWeights":F
    .restart local v7    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_c6
    move/from16 v28, v4

    move-object/from16 v29, v7

    .end local v4    # "totalWeights":F
    .end local v7    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v28    # "totalWeights":F
    .restart local v29    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v7, 0x8

    invoke-virtual {v10, v2, v4, v5, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 152
    :goto_d5
    if-eqz v1, :cond_db

    if-nez v23, :cond_db

    .line 153
    const/4 v2, 0x5

    .end local v24    # "strength":I
    .local v2, "strength":I
    goto :goto_dd

    .line 155
    .end local v2    # "strength":I
    .restart local v24    # "strength":I
    :cond_db
    move/from16 v2, v24

    .end local v24    # "strength":I
    .restart local v2    # "strength":I
    :goto_dd
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v10, v4, v7, v5, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    move/from16 v24, v2

    goto :goto_ed

    .line 144
    .end local v2    # "strength":I
    .end local v28    # "totalWeights":F
    .end local v29    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v4    # "totalWeights":F
    .restart local v7    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v24    # "strength":I
    :cond_e9
    move/from16 v28, v4

    move-object/from16 v29, v7

    .line 159
    .end local v4    # "totalWeights":F
    .end local v7    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v28    # "totalWeights":F
    .restart local v29    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_ed
    if-eqz v18, :cond_12a

    .line 160
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_115

    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p2

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_115

    .line 162
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v25, v1

    const/4 v1, 0x0

    const/4 v7, 0x5

    .end local v1    # "isSpreadOnly":Z
    .local v25, "isSpreadOnly":Z
    invoke-virtual {v10, v2, v4, v1, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_117

    .line 160
    .end local v25    # "isSpreadOnly":Z
    .restart local v1    # "isSpreadOnly":Z
    :cond_115
    move/from16 v25, v1

    .line 166
    .end local v1    # "isSpreadOnly":Z
    .restart local v25    # "isSpreadOnly":Z
    :goto_117
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v4, 0x8

    const/4 v7, 0x0

    invoke-virtual {v10, v1, v2, v7, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_12c

    .line 159
    .end local v25    # "isSpreadOnly":Z
    .restart local v1    # "isSpreadOnly":Z
    :cond_12a
    move/from16 v25, v1

    .line 172
    .end local v1    # "isSpreadOnly":Z
    .restart local v25    # "isSpreadOnly":Z
    :goto_12c
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 173
    .local v1, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_152

    .line 174
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 175
    .end local v19    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_14e

    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v4, v6, :cond_14b

    goto :goto_14e

    :cond_14b
    move-object/from16 v19, v2

    goto :goto_155

    .line 176
    :cond_14e
    :goto_14e
    const/4 v2, 0x0

    move-object/from16 v19, v2

    goto :goto_155

    .line 179
    .end local v2    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v19    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_152
    const/4 v2, 0x0

    move-object/from16 v19, v2

    .line 181
    :goto_155
    if-eqz v19, :cond_15b

    .line 182
    move-object/from16 v2, v19

    move-object v6, v2

    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_15e

    .line 184
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_15b
    const/4 v2, 0x1

    move/from16 v21, v2

    .line 186
    .end local v1    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v5    # "margin":I
    .end local v24    # "strength":I
    .end local v25    # "isSpreadOnly":Z
    :goto_15e
    move/from16 v4, v28

    move-object/from16 v7, v29

    goto/16 :goto_75

    .line 189
    .end local v28    # "totalWeights":F
    .end local v29    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v4    # "totalWeights":F
    .restart local v7    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_164
    move/from16 v28, v4

    move-object/from16 v29, v7

    .end local v4    # "totalWeights":F
    .end local v7    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v28    # "totalWeights":F
    .restart local v29    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v15, :cond_1d1

    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1d1

    .line 190
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 191
    .local v2, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, p2

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_18a

    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v3, v3, p2

    if-nez v3, :cond_18a

    const/4 v3, 0x1

    goto :goto_18b

    :cond_18a
    const/4 v3, 0x0

    .line 193
    .local v3, "isSpreadOnly":Z
    :goto_18b
    if-eqz v3, :cond_1a5

    if-nez v23, :cond_1a5

    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v4, v0, :cond_1a5

    .line 194
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    neg-int v7, v7

    const/4 v1, 0x5

    invoke-virtual {v10, v4, v5, v7, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_1bc

    .line 196
    :cond_1a5
    if-eqz v23, :cond_1bc

    iget-object v1, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v1, v0, :cond_1bc

    .line 197
    iget-object v1, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    const/4 v7, 0x4

    invoke-virtual {v10, v1, v4, v5, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 200
    :cond_1bc
    :goto_1bc
    iget-object v1, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 201
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    .line 200
    const/4 v7, 0x6

    invoke-virtual {v10, v1, v4, v5, v7}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 206
    .end local v2    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "isSpreadOnly":Z
    :cond_1d1
    if-eqz v18, :cond_1f2

    .line 207
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    .line 209
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 207
    const/16 v4, 0x8

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 213
    :cond_1f2
    iget-object v7, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 214
    .local v7, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    if-eqz v7, :cond_2da

    .line 215
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 216
    .local v1, "count":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_2d1

    .line 217
    const/4 v3, 0x0

    .line 218
    .local v3, "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v4, 0x0

    .line 220
    .local v4, "lastWeight":F
    iget-boolean v5, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v5, :cond_20c

    iget-boolean v5, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-nez v5, :cond_20c

    .line 221
    iget v5, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    int-to-float v5, v5

    move/from16 v28, v5

    .line 224
    :cond_20c
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20d
    if-ge v5, v1, :cond_2c6

    .line 225
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v2, v20

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 226
    .local v2, "match":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v0, v0, p2

    .line 228
    .local v0, "currentWeight":F
    const/16 v20, 0x0

    cmpg-float v26, v0, v20

    if-gez v26, :cond_24f

    .line 229
    move/from16 v26, v0

    .end local v0    # "currentWeight":F
    .local v26, "currentWeight":F
    iget-boolean v0, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-eqz v0, :cond_245

    .line 230
    iget-object v0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v20, p3, 0x1

    aget-object v0, v0, v20

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v38, v1

    .end local v1    # "count":I
    .local v38, "count":I
    iget-object v1, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v39, v6

    move-object/from16 v24, v7

    const/4 v6, 0x4

    const/4 v7, 0x0

    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .local v24, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .local v39, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v10, v0, v1, v7, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 232
    move-object/from16 v17, v8

    const/4 v8, 0x0

    goto/16 :goto_2b7

    .line 234
    .end local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .end local v38    # "count":I
    .end local v39    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v1    # "count":I
    .restart local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    :cond_245
    move/from16 v38, v1

    move-object/from16 v39, v6

    move-object/from16 v24, v7

    const/4 v6, 0x4

    .end local v1    # "count":I
    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v38    # "count":I
    .restart local v39    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/high16 v0, 0x3f800000    # 1.0f

    .end local v26    # "currentWeight":F
    .restart local v0    # "currentWeight":F
    goto :goto_258

    .line 228
    .end local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .end local v38    # "count":I
    .end local v39    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v1    # "count":I
    .restart local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    :cond_24f
    move/from16 v26, v0

    move/from16 v38, v1

    move-object/from16 v39, v6

    move-object/from16 v24, v7

    const/4 v6, 0x4

    .line 236
    .end local v1    # "count":I
    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v38    # "count":I
    .restart local v39    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_258
    cmpl-float v1, v0, v20

    if-nez v1, :cond_273

    .line 237
    iget-object v1, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v1, v1, v7

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v17, v8

    const/16 v6, 0x8

    const/4 v8, 0x0

    .end local v8    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v17, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v10, v1, v7, v8, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 239
    goto :goto_2b7

    .line 242
    .end local v17    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_273
    move-object/from16 v17, v8

    const/4 v8, 0x0

    .end local v8    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v17    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_2b1

    .line 243
    iget-object v1, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 244
    .local v1, "begin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v6, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 245
    .local v6, "end":Landroid/support/constraint/solver/SolverVariable;
    iget-object v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 246
    .local v7, "nextBegin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v8, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v30, p3, 0x1

    aget-object v8, v8, v30

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 247
    .local v8, "nextEnd":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v40, v3

    .end local v3    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v40, "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v3

    .line 248
    .local v3, "row":Landroid/support/constraint/solver/ArrayRow;
    move-object/from16 v30, v3

    move/from16 v31, v4

    move/from16 v32, v28

    move/from16 v33, v0

    move-object/from16 v34, v1

    move-object/from16 v35, v6

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    invoke-virtual/range {v30 .. v37}, Landroid/support/constraint/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    .line 250
    invoke-virtual {v10, v3}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_2b3

    .line 242
    .end local v1    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v6    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v7    # "nextBegin":Landroid/support/constraint/solver/SolverVariable;
    .end local v8    # "nextEnd":Landroid/support/constraint/solver/SolverVariable;
    .end local v40    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v3, "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2b1
    move-object/from16 v40, v3

    .line 253
    .end local v3    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v40    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2b3
    move-object v1, v2

    .line 254
    .end local v40    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move v3, v0

    move v4, v3

    move-object v3, v1

    .line 224
    .end local v0    # "currentWeight":F
    .end local v1    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v2    # "match":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v3    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2b7
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v8, v17

    move-object/from16 v7, v24

    move/from16 v1, v38

    move-object/from16 v6, v39

    const/4 v2, 0x1

    goto/16 :goto_20d

    .end local v17    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .end local v38    # "count":I
    .end local v39    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "count":I
    .local v6, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v7, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .local v8, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2c6
    move/from16 v38, v1

    move-object/from16 v40, v3

    move-object/from16 v39, v6

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    .end local v1    # "count":I
    .end local v3    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .end local v8    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v17    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v38    # "count":I
    .restart local v39    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v40    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_2e0

    .line 216
    .end local v4    # "lastWeight":F
    .end local v5    # "i":I
    .end local v17    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .end local v38    # "count":I
    .end local v39    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v40    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v1    # "count":I
    .restart local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v8    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2d1
    move/from16 v38, v1

    move-object/from16 v39, v6

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    .end local v1    # "count":I
    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .end local v8    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v17    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v38    # "count":I
    .restart local v39    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_2e0

    .line 214
    .end local v17    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .end local v38    # "count":I
    .end local v39    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v8    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2da
    move-object/from16 v39, v6

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    .line 271
    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .end local v8    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v17    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v39    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2e0
    if-eqz v14, :cond_372

    if-eq v14, v15, :cond_2f3

    if-eqz v23, :cond_2e7

    goto :goto_2f3

    :cond_2e7
    move-object/from16 v35, v9

    move-object/from16 v32, v39

    move-object/from16 v44, v29

    move-object/from16 v29, v24

    move-object/from16 v24, v44

    goto/16 :goto_37c

    .line 272
    :cond_2f3
    :goto_2f3
    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 273
    .local v1, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 274
    .local v2, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_306

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_307

    :cond_306
    const/4 v3, 0x0

    :goto_307
    move-object/from16 v20, v3

    .line 275
    .local v20, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_312

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_313

    :cond_312
    const/4 v3, 0x0

    :goto_313
    move-object/from16 v25, v3

    .line 276
    .local v25, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v3, p3

    .line 277
    .end local v1    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v8, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v7, v1, v3

    .line 278
    .end local v2    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v7, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v20, :cond_362

    if-eqz v25, :cond_362

    .line 279
    const/high16 v1, 0x3f000000    # 0.5f

    .line 280
    .local v1, "bias":F
    if-nez p2, :cond_32c

    .line 281
    iget v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v26, v1

    goto :goto_330

    .line 283
    :cond_32c
    iget v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v26, v1

    .line 285
    .end local v1    # "bias":F
    .local v26, "bias":F
    :goto_330
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v27

    .line 286
    .local v27, "beginMargin":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v30

    .line 287
    .local v30, "endMargin":I
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v31, 0x7

    move-object/from16 v1, p1

    move-object/from16 v3, v20

    move/from16 v4, v27

    move/from16 v5, v26

    move-object/from16 v33, v6

    move-object/from16 v32, v39

    .end local v39    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v32, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v6, v25

    move-object/from16 v34, v7

    move-object/from16 v44, v29

    move-object/from16 v29, v24

    move-object/from16 v24, v44

    .end local v7    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v24, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v29, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .local v34, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v7, v33

    move-object/from16 v33, v8

    .end local v8    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v33, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v8, v30

    move-object/from16 v35, v9

    .end local v9    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v35, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v9, v31

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_370

    .line 278
    .end local v26    # "bias":F
    .end local v27    # "beginMargin":I
    .end local v30    # "endMargin":I
    .end local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v33    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v34    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v35    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v8    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v9    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v24, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .local v29, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v39    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_362
    move-object/from16 v34, v7

    move-object/from16 v33, v8

    move-object/from16 v35, v9

    move-object/from16 v32, v39

    move-object/from16 v44, v29

    move-object/from16 v29, v24

    move-object/from16 v24, v44

    .line 290
    .end local v7    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v8    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v9    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v20    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v39    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v24, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v29, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v35    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_370
    goto/16 :goto_666

    .line 271
    .end local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v35    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v24, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .local v29, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v39    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_372
    move-object/from16 v35, v9

    move-object/from16 v32, v39

    move-object/from16 v44, v29

    move-object/from16 v29, v24

    move-object/from16 v24, v44

    .line 290
    .end local v9    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v39    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v24, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v29, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v35    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_37c
    if-eqz v22, :cond_4cc

    if-eqz v14, :cond_4cc

    .line 292
    move-object v1, v14

    .line 293
    .end local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v2, v14

    .line 294
    .local v2, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v3, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v3, :cond_38f

    iget v3, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v4, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v3, v4, :cond_38f

    const/16 v25, 0x1

    goto :goto_391

    :cond_38f
    const/16 v25, 0x0

    :goto_391
    move/from16 v20, v25

    move-object v8, v1

    move-object v9, v2

    .line 295
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v2    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v8, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v9, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v20, "applyFixedEquality":Z
    :goto_395
    if-eqz v8, :cond_4c4

    .line 296
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    move-object v7, v1

    .line 297
    .end local v19    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v7, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_39c
    if-eqz v7, :cond_3ab

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_3ad

    .line 298
    iget-object v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v1, p2

    goto :goto_39c

    .line 297
    :cond_3ab
    const/16 v5, 0x8

    .line 300
    :cond_3ad
    if-nez v7, :cond_3bc

    if-ne v8, v15, :cond_3b2

    goto :goto_3bc

    :cond_3b2
    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    const/16 v0, 0x8

    goto/16 :goto_4b2

    .line 301
    :cond_3bc
    :goto_3bc
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v1, p3

    .line 302
    .local v6, "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v4, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 303
    .local v4, "begin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_3cb

    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_3cc

    :cond_3cb
    const/4 v1, 0x0

    .line 304
    .local v1, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_3cc
    if-eq v9, v8, :cond_3d9

    .line 305
    iget-object v2, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v1, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v19, v1

    goto :goto_3f5

    .line 306
    :cond_3d9
    if-ne v8, v14, :cond_3f3

    if-ne v9, v8, :cond_3f3

    .line 307
    iget-object v2, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_3ee

    iget-object v2, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_3ef

    :cond_3ee
    const/4 v2, 0x0

    :goto_3ef
    move-object v1, v2

    move-object/from16 v19, v1

    goto :goto_3f5

    .line 310
    :cond_3f3
    move-object/from16 v19, v1

    .end local v1    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v19, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_3f5
    const/4 v1, 0x0

    .line 311
    .local v1, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    .line 312
    .local v2, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    const/4 v3, 0x0

    .line 313
    .local v3, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v25

    .line 314
    .local v25, "beginMargin":I
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v26, p3, 0x1

    aget-object v0, v0, v26

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 316
    .local v0, "nextMargin":I
    if-eqz v7, :cond_41d

    .line 317
    iget-object v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v5, p3

    .line 318
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 319
    iget-object v5, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v30, p3, 0x1

    aget-object v5, v5, v30

    iget-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    goto :goto_437

    .line 321
    :cond_41d
    iget-object v5, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v30, p3, 0x1

    aget-object v5, v5, v30

    iget-object v1, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 322
    if-eqz v1, :cond_429

    .line 323
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 325
    :cond_429
    iget-object v5, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v30, p3, 0x1

    aget-object v5, v5, v30

    iget-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    .line 328
    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v2    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v3    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v30, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v31, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v32, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_437
    if-eqz v30, :cond_43e

    .line 329
    invoke-virtual/range {v30 .. v30}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v0, v1

    .line 331
    :cond_43e
    if-eqz v9, :cond_44c

    .line 332
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v25, v25, v1

    .line 334
    :cond_44c
    if-eqz v4, :cond_4a4

    if-eqz v19, :cond_4a4

    if-eqz v31, :cond_4a4

    if-eqz v32, :cond_4a4

    .line 335
    move/from16 v1, v25

    .line 336
    .local v1, "margin1":I
    if-ne v8, v14, :cond_463

    .line 337
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move/from16 v33, v1

    goto :goto_465

    .line 336
    :cond_463
    move/from16 v33, v1

    .line 339
    .end local v1    # "margin1":I
    .local v33, "margin1":I
    :goto_465
    move v1, v0

    .line 340
    .local v1, "margin2":I
    if-ne v8, v15, :cond_475

    .line 341
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move/from16 v34, v1

    goto :goto_477

    .line 340
    :cond_475
    move/from16 v34, v1

    .line 343
    .end local v1    # "margin2":I
    .local v34, "margin2":I
    :goto_477
    const/4 v1, 0x5

    .line 344
    .local v1, "strength":I
    if-eqz v20, :cond_47f

    .line 345
    const/16 v1, 0x8

    move/from16 v36, v1

    goto :goto_481

    .line 344
    :cond_47f
    move/from16 v36, v1

    .line 347
    .end local v1    # "strength":I
    .local v36, "strength":I
    :goto_481
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, v19

    move-object/from16 v37, v4

    .end local v4    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .local v37, "begin":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v4, v33

    move/from16 v38, v0

    const/16 v0, 0x8

    .end local v0    # "nextMargin":I
    .local v38, "nextMargin":I
    move-object/from16 v26, v6

    .end local v6    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v26, "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v6, v31

    move-object/from16 v39, v7

    .end local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v39, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v7, v32

    move-object/from16 v40, v8

    .end local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v40, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v8, v34

    move-object/from16 v41, v9

    .end local v9    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v41, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v9, v36

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_4b2

    .line 334
    .end local v26    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v33    # "margin1":I
    .end local v34    # "margin2":I
    .end local v36    # "strength":I
    .end local v37    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v38    # "nextMargin":I
    .end local v39    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v40    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v41    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v0    # "nextMargin":I
    .restart local v4    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v6    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_4a4
    move/from16 v38, v0

    move-object/from16 v37, v4

    move-object/from16 v26, v6

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    const/16 v0, 0x8

    .line 352
    .end local v0    # "nextMargin":I
    .end local v4    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v6    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v19    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v25    # "beginMargin":I
    .end local v30    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v31    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v32    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v39    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v40    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v41    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_4b2
    invoke-virtual/range {v40 .. v40}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_4bc

    .line 353
    move-object/from16 v1, v40

    move-object v9, v1

    .end local v41    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_4be

    .line 352
    .end local v1    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v41    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_4bc
    move-object/from16 v9, v41

    .line 355
    .end local v41    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_4be
    move-object/from16 v8, v39

    move-object/from16 v19, v39

    .end local v40    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto/16 :goto_395

    .line 295
    .end local v39    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v19, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_4c4
    move-object/from16 v40, v8

    move-object/from16 v41, v9

    .line 357
    .end local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v20    # "applyFixedEquality":Z
    .restart local v40    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v32, v40

    goto/16 :goto_666

    .line 290
    .end local v40    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v32, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_4cc
    const/16 v0, 0x8

    .line 357
    if-eqz v16, :cond_666

    if-eqz v14, :cond_666

    .line 359
    move-object v1, v14

    .line 360
    .end local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v2, v14

    .line 361
    .local v2, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v3, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v3, :cond_4e1

    iget v3, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v4, v11, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v3, v4, :cond_4e1

    const/16 v25, 0x1

    goto :goto_4e3

    :cond_4e1
    const/16 v25, 0x0

    :goto_4e3
    move/from16 v20, v25

    move-object v8, v1

    move-object v9, v2

    .line 362
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v2    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v20    # "applyFixedEquality":Z
    :goto_4e7
    if-eqz v8, :cond_5d5

    .line 363
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    .line 364
    .end local v19    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_4ed
    if-eqz v1, :cond_4fa

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    if-ne v2, v0, :cond_4fa

    .line 365
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v2, p2

    goto :goto_4ed

    .line 367
    :cond_4fa
    if-eq v8, v14, :cond_5bb

    if-eq v8, v15, :cond_5bb

    if-eqz v1, :cond_5bb

    .line 368
    if-ne v1, v15, :cond_505

    .line 369
    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_506

    .line 368
    :cond_505
    move-object v7, v1

    .line 371
    .end local v1    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_506
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v1, p3

    .line 372
    .restart local v6    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 373
    .local v5, "begin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_515

    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_516

    :cond_515
    const/4 v1, 0x0

    .line 374
    .local v1, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_516
    iget-object v2, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 375
    .end local v1    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v4, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    const/4 v1, 0x0

    .line 376
    .local v1, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    .line 377
    .local v2, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    const/4 v3, 0x0

    .line 378
    .restart local v3    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v19

    .line 379
    .local v19, "beginMargin":I
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v25, p3, 0x1

    aget-object v0, v0, v25

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 381
    .restart local v0    # "nextMargin":I
    if-eqz v7, :cond_54c

    .line 382
    move-object/from16 v25, v1

    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v25, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 383
    .end local v25    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 384
    move-object/from16 v25, v2

    .end local v2    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v25, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_544

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_545

    :cond_544
    const/4 v2, 0x0

    :goto_545
    move-object/from16 v30, v2

    move-object/from16 v31, v25

    move-object/from16 v25, v1

    .end local v3    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v2, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    goto :goto_564

    .line 386
    .end local v25    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v2, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .restart local v3    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_54c
    move-object/from16 v25, v1

    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v25, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 387
    .end local v25    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_556

    .line 388
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 390
    :cond_556
    move-object/from16 v25, v1

    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v25    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v30, p3, 0x1

    aget-object v1, v1, v30

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v30, v1

    move-object/from16 v31, v2

    .line 393
    .end local v2    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v3    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v30, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v31    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    :goto_564
    if-eqz v25, :cond_56b

    .line 394
    invoke-virtual/range {v25 .. v25}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v0, v1

    .line 396
    :cond_56b
    if-eqz v9, :cond_579

    .line 397
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v19, v19, v1

    .line 399
    :cond_579
    const/4 v1, 0x4

    .line 400
    .local v1, "strength":I
    if-eqz v20, :cond_581

    .line 401
    const/16 v1, 0x8

    move/from16 v32, v1

    goto :goto_583

    .line 400
    :cond_581
    move/from16 v32, v1

    .line 403
    .end local v1    # "strength":I
    .local v32, "strength":I
    :goto_583
    if-eqz v5, :cond_5ac

    if-eqz v4, :cond_5ac

    if-eqz v31, :cond_5ac

    if-eqz v30, :cond_5ac

    .line 404
    const/high16 v33, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v4

    move-object/from16 v34, v4

    .end local v4    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v34, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v4, v19

    move-object/from16 v36, v5

    .end local v5    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .local v36, "begin":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v5, v33

    move-object/from16 v33, v6

    .end local v6    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v33, "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v6, v31

    move-object/from16 v37, v7

    .end local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v37, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v7, v30

    move-object/from16 v38, v8

    .end local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v38, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move v8, v0

    move-object/from16 v39, v9

    .end local v9    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v39, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v9, v32

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_5b8

    .line 403
    .end local v33    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v34    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v36    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v37    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v38    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v39    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v4    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v5    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v6    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_5ac
    move-object/from16 v34, v4

    move-object/from16 v36, v5

    move-object/from16 v33, v6

    move-object/from16 v37, v7

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    .line 409
    .end local v0    # "nextMargin":I
    .end local v4    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v5    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v6    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v19    # "beginMargin":I
    .end local v25    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v30    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v31    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v32    # "strength":I
    .restart local v37    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v38    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v39    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_5b8
    move-object/from16 v19, v37

    goto :goto_5c1

    .line 367
    .end local v37    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v38    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v39    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_5bb
    move-object/from16 v38, v8

    move-object/from16 v39, v9

    .line 409
    .end local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v38    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v39    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v19, v1

    .end local v1    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v19, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_5c1
    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5cd

    .line 410
    move-object/from16 v0, v38

    move-object v9, v0

    .end local v39    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v0, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_5cf

    .line 409
    .end local v0    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v39    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_5cd
    move-object/from16 v9, v39

    .line 412
    .end local v39    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_5cf
    move-object/from16 v8, v19

    const/16 v0, 0x8

    .end local v38    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto/16 :goto_4e7

    .line 414
    :cond_5d5
    move-object/from16 v38, v8

    move-object/from16 v39, v9

    .end local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v38    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v39    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v0, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 415
    .local v0, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 416
    .local v9, "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v8, v1, v2

    .line 417
    .local v8, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 418
    .local v7, "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v6, 0x5

    .line 419
    .local v6, "endPointsStrength":I
    if-eqz v9, :cond_641

    .line 420
    if-eq v14, v15, :cond_60a

    .line 421
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    invoke-virtual {v10, v1, v2, v3, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    move/from16 v31, v6

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v25, v9

    goto :goto_649

    .line 422
    :cond_60a
    if-eqz v7, :cond_638

    .line 423
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 424
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v26

    .line 423
    move-object/from16 v30, v1

    move-object/from16 v1, p1

    move-object/from16 v25, v5

    const/high16 v5, 0x3f000000    # 0.5f

    move/from16 v31, v6

    .end local v6    # "endPointsStrength":I
    .local v31, "endPointsStrength":I
    move-object/from16 v6, v30

    move-object/from16 v42, v7

    .end local v7    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v42, "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v7, v25

    move-object/from16 v43, v8

    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v43, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v8, v26

    move-object/from16 v25, v9

    .end local v9    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v25, "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v9, v31

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_649

    .line 422
    .end local v25    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v31    # "endPointsStrength":I
    .end local v42    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v43    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v6    # "endPointsStrength":I
    .restart local v7    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v9    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_638
    move/from16 v31, v6

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v25, v9

    .end local v6    # "endPointsStrength":I
    .end local v7    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v9    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v25    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v31    # "endPointsStrength":I
    .restart local v42    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v43    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_649

    .line 419
    .end local v25    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v31    # "endPointsStrength":I
    .end local v42    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v43    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v6    # "endPointsStrength":I
    .restart local v7    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v9    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_641
    move/from16 v31, v6

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v25, v9

    .line 427
    .end local v6    # "endPointsStrength":I
    .end local v7    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v9    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v25    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v31    # "endPointsStrength":I
    .restart local v42    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v43    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_649
    move-object/from16 v1, v42

    .end local v42    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v1, "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_660

    if-eq v14, v15, :cond_660

    .line 428
    move-object/from16 v2, v43

    .end local v43    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v2, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    move/from16 v6, v31

    .end local v31    # "endPointsStrength":I
    .restart local v6    # "endPointsStrength":I
    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_664

    .line 427
    .end local v2    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v6    # "endPointsStrength":I
    .restart local v31    # "endPointsStrength":I
    .restart local v43    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_660
    move/from16 v6, v31

    move-object/from16 v2, v43

    .line 434
    .end local v0    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v1    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v20    # "applyFixedEquality":Z
    .end local v25    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v31    # "endPointsStrength":I
    .end local v39    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v43    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_664
    move-object/from16 v32, v38

    .end local v38    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v32, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_666
    :goto_666
    if-nez v22, :cond_66a

    if-eqz v16, :cond_6ed

    :cond_66a
    if-eqz v14, :cond_6ed

    if-eq v14, v15, :cond_6ed

    .line 435
    iget-object v0, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 436
    .restart local v0    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 437
    .local v1, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_681

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_682

    :cond_681
    const/4 v2, 0x0

    :goto_682
    move-object/from16 v20, v2

    .line 438
    .local v20, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_68d

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_68e

    :cond_68d
    const/4 v2, 0x0

    .line 439
    .local v2, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_68e
    if-eq v13, v15, :cond_6a8

    .line 440
    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    .line 441
    .local v3, "realEnd":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_6a1

    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v27, v4

    goto :goto_6a3

    :cond_6a1
    const/16 v27, 0x0

    :goto_6a3
    move-object/from16 v2, v27

    move-object/from16 v25, v2

    goto :goto_6aa

    .line 439
    .end local v3    # "realEnd":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_6a8
    move-object/from16 v25, v2

    .line 443
    .end local v2    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v25, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_6aa
    if-ne v14, v15, :cond_6b8

    .line 444
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v2, p3

    .line 445
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v1, v2, v3

    move-object v9, v1

    goto :goto_6b9

    .line 443
    :cond_6b8
    move-object v9, v1

    .line 447
    .end local v1    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v9, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_6b9
    if-eqz v20, :cond_6eb

    if-eqz v25, :cond_6eb

    .line 448
    const/high16 v26, 0x3f000000    # 0.5f

    .line 449
    .local v26, "bias":F
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v27

    .line 450
    .restart local v27    # "beginMargin":I
    if-nez v15, :cond_6c7

    .line 452
    move-object v1, v13

    move-object v15, v1

    .line 454
    :cond_6c7
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v30

    .line 455
    .local v30, "endMargin":I
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v31, 0x5

    move-object/from16 v1, p1

    move-object/from16 v3, v20

    move/from16 v4, v27

    move/from16 v5, v26

    move-object/from16 v6, v25

    move/from16 v8, v30

    move-object/from16 v33, v9

    .end local v9    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v33, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v9, v31

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_6ed

    .line 447
    .end local v26    # "bias":F
    .end local v27    # "beginMargin":I
    .end local v30    # "endMargin":I
    .end local v33    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v9    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_6eb
    move-object/from16 v33, v9

    .line 459
    .end local v0    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v9    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v20    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_6ed
    :goto_6ed
    return-void
.end method

.method public static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Ljava/util/ArrayList;I)V
    .registers 10
    .param p0, "constraintWidgetContainer"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p3, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;",
            "Landroid/support/constraint/solver/LinearSystem;",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;I)V"
        }
    .end annotation

    .line 47
    .local p2, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    const/4 v0, 0x0

    .line 48
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 49
    .local v1, "chainsSize":I
    const/4 v2, 0x0

    .line 50
    .local v2, "chainsArray":[Landroid/support/constraint/solver/widgets/ChainHead;
    if-nez p3, :cond_b

    .line 51
    const/4 v0, 0x0

    .line 52
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 53
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ChainHead;

    goto :goto_10

    .line 55
    :cond_b
    const/4 v0, 0x2

    .line 56
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 57
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ChainHead;

    .line 60
    :goto_10
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_2a

    .line 61
    aget-object v4, v2, v3

    .line 64
    .local v4, "first":Landroid/support/constraint/solver/widgets/ChainHead;
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ChainHead;->define()V

    .line 65
    if-eqz p2, :cond_24

    if-eqz p2, :cond_27

    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 66
    :cond_24
    invoke-static {p0, p1, p3, v0, v4}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)V

    .line 60
    .end local v4    # "first":Landroid/support/constraint/solver/widgets/ChainHead;
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 69
    .end local v3    # "i":I
    :cond_2a
    return-void
.end method
