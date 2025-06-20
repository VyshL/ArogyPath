.class public Landroid/support/constraint/solver/widgets/ChainHead;
.super Ljava/lang/Object;
.source "ChainHead.java"


# instance fields
.field private mDefined:Z

.field protected mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field protected mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field protected mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field protected mHasComplexMatchWeights:Z

.field protected mHasDefinedWeights:Z

.field protected mHasRatio:Z

.field protected mHasUndefinedWeights:Z

.field protected mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mIsRtl:Z

.field protected mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field protected mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field protected mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field mOptimizable:Z

.field private mOrientation:I

.field mTotalMargins:I

.field mTotalSize:I

.field protected mTotalWeight:F

.field mVisibleWidgets:I

.field protected mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field protected mWidgetsCount:I

.field protected mWidgetsMatchCount:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZ)V
    .registers 5
    .param p1, "first"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "orientation"    # I
    .param p3, "isRtl"    # Z

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mIsRtl:Z

    .line 64
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 65
    iput p2, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    .line 66
    iput-boolean p3, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mIsRtl:Z

    .line 67
    return-void
.end method

.method private defineChainProperties()V
    .registers 14

    .line 84
    iget v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 85
    .local v0, "offset":I
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 86
    .local v2, "lastVisited":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOptimizable:Z

    .line 89
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 90
    .local v4, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 91
    .local v5, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v6, 0x0

    .line 92
    .local v6, "done":Z
    :goto_f
    const/4 v7, 0x0

    if-nez v6, :cond_155

    .line 93
    iget v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsCount:I

    add-int/2addr v8, v3

    iput v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsCount:I

    .line 94
    iget-object v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v9, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 95
    iget-object v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v9, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aput-object v10, v8, v9

    .line 96
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_124

    .line 97
    iget v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mVisibleWidgets:I

    add-int/2addr v8, v3

    iput v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mVisibleWidgets:I

    .line 98
    iget v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v9, :cond_46

    .line 99
    iget v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalSize:I

    iget v9, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalSize:I

    .line 101
    :cond_46
    iget v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalSize:I

    iget-object v9, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalSize:I

    .line 102
    iget-object v9, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v10, v0, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalSize:I

    .line 103
    iget v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalMargins:I

    iget-object v9, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalMargins:I

    .line 104
    iget-object v9, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v10, v0, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalMargins:I

    .line 106
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v8, :cond_80

    .line 107
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 109
    :cond_80
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 112
    iget-object v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v9, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aget-object v8, v8, v9

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_124

    .line 113
    iget-object v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    iget v9, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aget v8, v8, v9

    const/4 v9, 0x0

    if-eqz v8, :cond_a6

    iget-object v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    iget v10, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aget v8, v8, v10

    const/4 v10, 0x3

    if-eq v8, v10, :cond_a6

    iget-object v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    iget v10, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aget v8, v8, v10

    if-ne v8, v1, :cond_f3

    .line 116
    :cond_a6
    iget v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    add-int/2addr v8, v3

    iput v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 117
    iget-object v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    iget v10, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aget v8, v8, v10

    .line 118
    .local v8, "weight":F
    cmpl-float v10, v8, v9

    if-lez v10, :cond_c0

    .line 119
    iget v10, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    iget-object v11, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    iget v12, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aget v11, v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    .line 122
    :cond_c0
    iget v10, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    invoke-static {v4, v10}, Landroid/support/constraint/solver/widgets/ChainHead;->isMatchConstraintEqualityCandidate(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v10

    if-eqz v10, :cond_e1

    .line 123
    cmpg-float v10, v8, v9

    if-gez v10, :cond_cf

    .line 124
    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    goto :goto_d1

    .line 126
    :cond_cf
    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHasDefinedWeights:Z

    .line 128
    :goto_d1
    iget-object v10, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    if-nez v10, :cond_dc

    .line 129
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 131
    :cond_dc
    iget-object v10, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_e1
    iget-object v10, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v10, :cond_e7

    .line 135
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 137
    :cond_e7
    iget-object v10, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v10, :cond_f1

    .line 138
    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v11, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aput-object v4, v10, v11

    .line 140
    :cond_f1
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 142
    .end local v8    # "weight":F
    :cond_f3
    iget v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    if-nez v8, :cond_109

    .line 143
    iget v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v8, :cond_fe

    .line 144
    iput-boolean v7, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOptimizable:Z

    goto :goto_11a

    .line 145
    :cond_fe
    iget v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v8, :cond_106

    iget v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v8, :cond_11a

    .line 146
    :cond_106
    iput-boolean v7, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOptimizable:Z

    goto :goto_11a

    .line 149
    :cond_109
    iget v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v8, :cond_110

    .line 150
    iput-boolean v7, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOptimizable:Z

    goto :goto_11a

    .line 151
    :cond_110
    iget v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v8, :cond_118

    iget v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v8, :cond_11a

    .line 152
    :cond_118
    iput-boolean v7, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOptimizable:Z

    .line 155
    :cond_11a
    :goto_11a
    iget v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_124

    .line 157
    iput-boolean v7, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOptimizable:Z

    .line 158
    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHasRatio:Z

    .line 162
    :cond_124
    if-eq v2, v4, :cond_12c

    .line 163
    iget-object v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aput-object v4, v7, v8

    .line 165
    :cond_12c
    move-object v2, v4

    .line 168
    iget-object v7, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, v0, 0x1

    aget-object v7, v7, v8

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 169
    .local v7, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v7, :cond_14d

    .line 170
    iget-object v5, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 171
    iget-object v8, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_14b

    iget-object v8, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v8, v4, :cond_14e

    .line 173
    :cond_14b
    const/4 v5, 0x0

    goto :goto_14e

    .line 176
    :cond_14d
    const/4 v5, 0x0

    .line 178
    :cond_14e
    :goto_14e
    if-eqz v5, :cond_152

    .line 179
    move-object v4, v5

    goto :goto_153

    .line 181
    :cond_152
    const/4 v6, 0x1

    .line 183
    .end local v7    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_153
    goto/16 :goto_f

    .line 184
    :cond_155
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_166

    .line 185
    iget v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalSize:I

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    sub-int/2addr v8, v1

    iput v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalSize:I

    .line 187
    :cond_166
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_179

    .line 188
    iget v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalSize:I

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v9, v0, 0x1

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    sub-int/2addr v8, v1

    iput v8, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalSize:I

    .line 190
    :cond_179
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 192
    iget v1, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    if-nez v1, :cond_186

    iget-boolean v1, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mIsRtl:Z

    if-eqz v1, :cond_186

    .line 193
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_18a

    .line 195
    :cond_186
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 198
    :goto_18a
    iget-boolean v1, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHasDefinedWeights:Z

    if-eqz v1, :cond_193

    iget-boolean v1, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v1, :cond_193

    goto :goto_194

    :cond_193
    const/4 v3, 0x0

    :goto_194
    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 199
    return-void
.end method

.method private static isMatchConstraintEqualityCandidate(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z
    .registers 4
    .param p0, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I

    .line 77
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v0, v0, p1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method


# virtual methods
.method public define()V
    .registers 2

    .line 234
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mDefined:Z

    if-nez v0, :cond_7

    .line 235
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ChainHead;->defineChainProperties()V

    .line 237
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mDefined:Z

    .line 238
    return-void
.end method

.method public getFirst()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 2

    .line 202
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getFirstMatchConstraintWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getFirstVisibleWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 2

    .line 206
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getHead()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getLast()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getLastMatchConstraintWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getLastVisibleWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 2

    .line 214
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getTotalWeight()F
    .registers 2

    .line 230
    iget v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    return v0
.end method
