.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
.implements Landroid/support/v7/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuView$LayoutParams;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 83
    .local v1, "density":F
    const/high16 v2, 0x42600000    # 56.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    .line 84
    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 85
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 86
    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 87
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .registers 20
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .line 404
    move-object v0, p0

    move/from16 v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 406
    .local v2, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int v3, v3, p4

    .line 408
    .local v3, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 409
    .local v4, "childHeightMode":I
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 411
    .local v5, "childHeightSpec":I
    instance-of v6, v0, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_1f

    move-object v6, v0

    check-cast v6, Landroid/support/v7/view/menu/ActionMenuItemView;

    goto :goto_20

    :cond_1f
    const/4 v6, 0x0

    .line 413
    .local v6, "itemView":Landroid/support/v7/view/menu/ActionMenuItemView;
    :goto_20
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v9

    if-eqz v9, :cond_2c

    const/4 v9, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v9, 0x0

    .line 415
    .local v9, "hasText":Z
    :goto_2d
    const/4 v10, 0x0

    .line 416
    .local v10, "cellsUsed":I
    if-lez v1, :cond_51

    const/4 v11, 0x2

    if-eqz v9, :cond_35

    if-lt v1, v11, :cond_51

    .line 417
    :cond_35
    mul-int v12, p1, v1

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 419
    .local v12, "childWidthSpec":I
    invoke-virtual {p0, v12, v5}, Landroid/view/View;->measure(II)V

    .line 421
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 422
    .local v13, "measuredWidth":I
    div-int v10, v13, p1

    .line 423
    rem-int v14, v13, p1

    if-eqz v14, :cond_4c

    add-int/lit8 v10, v10, 0x1

    .line 424
    :cond_4c
    if-eqz v9, :cond_51

    if-ge v10, v11, :cond_51

    const/4 v10, 0x2

    .line 427
    .end local v12    # "childWidthSpec":I
    .end local v13    # "measuredWidth":I
    :cond_51
    iget-boolean v11, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_58

    if-eqz v9, :cond_58

    const/4 v7, 0x1

    .line 428
    .local v7, "expandable":Z
    :cond_58
    iput-boolean v7, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 430
    iput v10, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 431
    mul-int v8, v10, p1

    .line 432
    .local v8, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v5}, Landroid/view/View;->measure(II)V

    .line 434
    return v10
.end method

.method private onMeasureExactFormat(II)V
    .registers 43
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 178
    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 179
    .local v1, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 180
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 182
    .local v3, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 183
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 185
    .local v5, "heightPadding":I
    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    .line 188
    .local v6, "itemHeightSpec":I
    sub-int/2addr v2, v4

    .line 191
    iget v8, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    div-int v9, v2, v8

    .line 192
    .local v9, "cellCount":I
    rem-int v10, v2, v8

    .line 194
    .local v10, "cellSizeRemaining":I
    const/4 v11, 0x0

    if-nez v9, :cond_35

    .line 196
    invoke-virtual {v0, v2, v11}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 197
    return-void

    .line 200
    :cond_35
    div-int v12, v10, v9

    add-int/2addr v8, v12

    .line 202
    .local v8, "cellSize":I
    move v12, v9

    .line 203
    .local v12, "cellsRemaining":I
    const/4 v13, 0x0

    .line 204
    .local v13, "maxChildHeight":I
    const/4 v14, 0x0

    .line 205
    .local v14, "maxCellsUsed":I
    const/4 v15, 0x0

    .line 206
    .local v15, "expandableItemCount":I
    const/16 v16, 0x0

    .line 207
    .local v16, "visibleItemCount":I
    const/16 v17, 0x0

    .line 210
    .local v17, "hasOverflow":Z
    const-wide/16 v18, 0x0

    .line 212
    .local v18, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v11

    .line 213
    .local v11, "childCount":I
    const/16 v21, 0x0

    move/from16 v38, v16

    move/from16 v16, v3

    move/from16 v3, v38

    move/from16 v39, v21

    move/from16 v21, v4

    move/from16 v4, v39

    .local v3, "visibleItemCount":I
    .local v4, "i":I
    .local v16, "heightSize":I
    .local v21, "widthPadding":I
    :goto_54
    if-ge v4, v11, :cond_e6

    .line 214
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 215
    .local v7, "child":Landroid/view/View;
    move/from16 v23, v9

    .end local v9    # "cellCount":I
    .local v23, "cellCount":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v24, v10

    .end local v10    # "cellSizeRemaining":I
    .local v24, "cellSizeRemaining":I
    const/16 v10, 0x8

    if-ne v9, v10, :cond_68

    goto/16 :goto_dc

    .line 217
    :cond_68
    instance-of v9, v7, Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 218
    .local v9, "isGeneratedItem":Z
    add-int/lit8 v3, v3, 0x1

    .line 220
    if-eqz v9, :cond_77

    .line 223
    iget v10, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "visibleItemCount":I
    .local v25, "visibleItemCount":I
    invoke-virtual {v7, v10, v3, v10, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_7a

    .line 220
    .end local v25    # "visibleItemCount":I
    .restart local v3    # "visibleItemCount":I
    :cond_77
    move/from16 v25, v3

    const/4 v3, 0x0

    .line 226
    .end local v3    # "visibleItemCount":I
    .restart local v25    # "visibleItemCount":I
    :goto_7a
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 227
    .local v10, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iput-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 228
    iput v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 229
    iput v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 230
    iput-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 231
    iput v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 232
    iput v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 233
    if-eqz v9, :cond_99

    move-object v3, v7

    check-cast v3, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    if-eqz v3, :cond_99

    const/4 v3, 0x1

    goto :goto_9a

    :cond_99
    const/4 v3, 0x0

    :goto_9a
    iput-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 236
    iget-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_a2

    const/4 v3, 0x1

    goto :goto_a3

    :cond_a2
    move v3, v12

    .line 238
    .local v3, "cellsAvailable":I
    :goto_a3
    move/from16 v26, v9

    .end local v9    # "isGeneratedItem":Z
    .local v26, "isGeneratedItem":Z
    invoke-static {v7, v8, v3, v6, v5}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 241
    .local v9, "cellsUsed":I
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 242
    move/from16 v27, v3

    .end local v3    # "cellsAvailable":I
    .local v27, "cellsAvailable":I
    iget-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v3, :cond_b5

    add-int/lit8 v15, v15, 0x1

    .line 243
    :cond_b5
    iget-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_bb

    const/16 v17, 0x1

    .line 245
    :cond_bb
    sub-int/2addr v12, v9

    .line 246
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 247
    .end local v13    # "maxChildHeight":I
    .local v3, "maxChildHeight":I
    const/4 v13, 0x1

    if-ne v9, v13, :cond_d5

    shl-int/2addr v13, v4

    move/from16 v28, v9

    move-object/from16 v22, v10

    .end local v9    # "cellsUsed":I
    .end local v10    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .local v22, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .local v28, "cellsUsed":I
    int-to-long v9, v13

    or-long v9, v18, v9

    move v13, v3

    move-wide/from16 v18, v9

    move/from16 v3, v25

    .end local v18    # "smallestItemsAt":J
    .local v9, "smallestItemsAt":J
    goto :goto_dc

    .end local v22    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v28    # "cellsUsed":I
    .local v9, "cellsUsed":I
    .restart local v10    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .restart local v18    # "smallestItemsAt":J
    :cond_d5
    move/from16 v28, v9

    move-object/from16 v22, v10

    .end local v9    # "cellsUsed":I
    .end local v10    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .restart local v22    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .restart local v28    # "cellsUsed":I
    move v13, v3

    move/from16 v3, v25

    .line 213
    .end local v7    # "child":Landroid/view/View;
    .end local v22    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v25    # "visibleItemCount":I
    .end local v26    # "isGeneratedItem":Z
    .end local v27    # "cellsAvailable":I
    .end local v28    # "cellsUsed":I
    .local v3, "visibleItemCount":I
    .restart local v13    # "maxChildHeight":I
    :goto_dc
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, p2

    move/from16 v9, v23

    move/from16 v10, v24

    goto/16 :goto_54

    .end local v23    # "cellCount":I
    .end local v24    # "cellSizeRemaining":I
    .local v9, "cellCount":I
    .local v10, "cellSizeRemaining":I
    :cond_e6
    move/from16 v23, v9

    move/from16 v24, v10

    .line 252
    .end local v4    # "i":I
    .end local v9    # "cellCount":I
    .end local v10    # "cellSizeRemaining":I
    .restart local v23    # "cellCount":I
    .restart local v24    # "cellSizeRemaining":I
    const/4 v4, 0x2

    if-eqz v17, :cond_f1

    if-ne v3, v4, :cond_f1

    const/4 v7, 0x1

    goto :goto_f2

    :cond_f1
    const/4 v7, 0x0

    .line 257
    .local v7, "centerSingleExpandedItem":Z
    :goto_f2
    const/4 v9, 0x0

    .line 258
    .local v9, "needsExpansion":Z
    :goto_f3
    const-wide/16 v25, 0x1

    const-wide/16 v27, 0x0

    if-lez v15, :cond_1a8

    if-lez v12, :cond_1a8

    .line 259
    const v10, 0x7fffffff

    .line 260
    .local v10, "minCells":I
    const-wide/16 v29, 0x0

    .line 261
    .local v29, "minCellsAt":J
    const/16 v31, 0x0

    .line 262
    .local v31, "minCellsItemCount":I
    const/16 v32, 0x0

    move/from16 v4, v31

    move/from16 v38, v32

    move/from16 v32, v5

    move/from16 v5, v38

    .end local v31    # "minCellsItemCount":I
    .local v4, "minCellsItemCount":I
    .local v5, "i":I
    .local v32, "heightPadding":I
    :goto_10c
    if-ge v5, v11, :cond_13e

    .line 263
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    .line 264
    .local v33, "child":Landroid/view/View;
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    move/from16 v35, v9

    .end local v9    # "needsExpansion":Z
    .local v35, "needsExpansion":Z
    move-object/from16 v9, v34

    check-cast v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 267
    .local v9, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move/from16 v34, v15

    .end local v15    # "expandableItemCount":I
    .local v34, "expandableItemCount":I
    iget-boolean v15, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v15, :cond_123

    goto :goto_137

    .line 270
    :cond_123
    iget v15, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v15, v10, :cond_12d

    .line 271
    iget v10, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 272
    shl-long v29, v25, v5

    .line 273
    const/4 v4, 0x1

    goto :goto_137

    .line 274
    :cond_12d
    iget v15, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v15, v10, :cond_137

    .line 275
    shl-long v36, v25, v5

    or-long v29, v29, v36

    .line 276
    add-int/lit8 v4, v4, 0x1

    .line 262
    .end local v9    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v33    # "child":Landroid/view/View;
    :cond_137
    :goto_137
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v34

    move/from16 v9, v35

    goto :goto_10c

    .end local v34    # "expandableItemCount":I
    .end local v35    # "needsExpansion":Z
    .local v9, "needsExpansion":Z
    .restart local v15    # "expandableItemCount":I
    :cond_13e
    move/from16 v35, v9

    move/from16 v34, v15

    .line 281
    .end local v5    # "i":I
    .end local v9    # "needsExpansion":Z
    .end local v15    # "expandableItemCount":I
    .restart local v34    # "expandableItemCount":I
    .restart local v35    # "needsExpansion":Z
    or-long v18, v18, v29

    .line 283
    if-le v4, v12, :cond_14c

    move/from16 v36, v1

    move/from16 v37, v2

    goto/16 :goto_1b2

    .line 286
    :cond_14c
    add-int/lit8 v10, v10, 0x1

    .line 288
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_14f
    if-ge v5, v11, :cond_19a

    .line 289
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 290
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 291
    .local v15, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move/from16 v33, v4

    const/16 v22, 0x1

    .end local v4    # "minCellsItemCount":I
    .local v33, "minCellsItemCount":I
    shl-int v4, v22, v5

    move/from16 v36, v1

    move/from16 v37, v2

    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .local v36, "heightMode":I
    .local v37, "widthSize":I
    int-to-long v1, v4

    and-long v1, v29, v1

    cmp-long v4, v1, v27

    if-nez v4, :cond_176

    .line 293
    iget v1, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v1, v10, :cond_191

    shl-int v1, v22, v5

    int-to-long v1, v1

    or-long v18, v18, v1

    goto :goto_191

    .line 297
    :cond_176
    if-eqz v7, :cond_187

    iget-boolean v1, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v1, :cond_187

    const/4 v1, 0x1

    if-ne v12, v1, :cond_187

    .line 299
    iget v1, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int v2, v1, v8

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v4, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 301
    :cond_187
    iget v1, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 302
    iput-boolean v2, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 303
    add-int/lit8 v12, v12, -0x1

    .line 288
    .end local v9    # "child":Landroid/view/View;
    .end local v15    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_191
    :goto_191
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v33

    move/from16 v1, v36

    move/from16 v2, v37

    goto :goto_14f

    .end local v33    # "minCellsItemCount":I
    .end local v36    # "heightMode":I
    .end local v37    # "widthSize":I
    .restart local v1    # "heightMode":I
    .restart local v2    # "widthSize":I
    .restart local v4    # "minCellsItemCount":I
    :cond_19a
    move/from16 v36, v1

    move/from16 v37, v2

    move/from16 v33, v4

    .line 306
    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .end local v4    # "minCellsItemCount":I
    .end local v5    # "i":I
    .restart local v33    # "minCellsItemCount":I
    .restart local v36    # "heightMode":I
    .restart local v37    # "widthSize":I
    const/4 v9, 0x1

    .line 307
    .end local v10    # "minCells":I
    .end local v29    # "minCellsAt":J
    .end local v33    # "minCellsItemCount":I
    .end local v35    # "needsExpansion":Z
    .local v9, "needsExpansion":Z
    move/from16 v5, v32

    move/from16 v15, v34

    const/4 v4, 0x2

    goto/16 :goto_f3

    .line 258
    .end local v32    # "heightPadding":I
    .end local v34    # "expandableItemCount":I
    .end local v36    # "heightMode":I
    .end local v37    # "widthSize":I
    .restart local v1    # "heightMode":I
    .restart local v2    # "widthSize":I
    .local v5, "heightPadding":I
    .local v15, "expandableItemCount":I
    :cond_1a8
    move/from16 v36, v1

    move/from16 v37, v2

    move/from16 v32, v5

    move/from16 v35, v9

    move/from16 v34, v15

    .line 312
    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .end local v5    # "heightPadding":I
    .end local v9    # "needsExpansion":Z
    .end local v15    # "expandableItemCount":I
    .restart local v32    # "heightPadding":I
    .restart local v34    # "expandableItemCount":I
    .restart local v35    # "needsExpansion":Z
    .restart local v36    # "heightMode":I
    .restart local v37    # "widthSize":I
    :goto_1b2
    if-nez v17, :cond_1b9

    const/4 v1, 0x1

    if-ne v3, v1, :cond_1b9

    const/4 v1, 0x1

    goto :goto_1ba

    :cond_1b9
    const/4 v1, 0x0

    .line 313
    .local v1, "singleItem":Z
    :goto_1ba
    if-lez v12, :cond_282

    cmp-long v2, v18, v27

    if-eqz v2, :cond_282

    add-int/lit8 v2, v3, -0x1

    if-lt v12, v2, :cond_1cd

    if-nez v1, :cond_1cd

    const/4 v2, 0x1

    if-le v14, v2, :cond_1ca

    goto :goto_1cd

    :cond_1ca
    move v10, v1

    goto/16 :goto_283

    .line 315
    :cond_1cd
    :goto_1cd
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    int-to-float v2, v2

    .line 317
    .local v2, "expandCount":F
    if-nez v1, :cond_20b

    .line 319
    and-long v4, v18, v25

    const/high16 v9, 0x3f000000    # 0.5f

    cmp-long v10, v4, v27

    if-eqz v10, :cond_1ed

    .line 320
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 321
    .local v5, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iget-boolean v10, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v10, :cond_1ee

    sub-float/2addr v2, v9

    goto :goto_1ee

    .line 319
    .end local v5    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_1ed
    const/4 v4, 0x0

    .line 323
    :cond_1ee
    :goto_1ee
    add-int/lit8 v5, v11, -0x1

    const/4 v10, 0x1

    shl-int v5, v10, v5

    int-to-long v4, v5

    and-long v4, v18, v4

    cmp-long v10, v4, v27

    if-eqz v10, :cond_20b

    .line 324
    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 325
    .local v4, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iget-boolean v5, v4, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v5, :cond_20b

    sub-float/2addr v2, v9

    .line 329
    .end local v4    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_20b
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_218

    mul-int v4, v12, v8

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    move/from16 v20, v4

    goto :goto_21a

    :cond_218
    const/16 v20, 0x0

    :goto_21a
    move/from16 v4, v20

    .line 332
    .local v4, "extraPixels":I
    const/4 v5, 0x0

    move/from16 v9, v35

    .end local v35    # "needsExpansion":Z
    .local v5, "i":I
    .restart local v9    # "needsExpansion":Z
    :goto_21f
    if-ge v5, v11, :cond_27d

    .line 333
    const/4 v10, 0x1

    shl-int v15, v10, v5

    move v10, v1

    move/from16 v20, v2

    .end local v1    # "singleItem":Z
    .end local v2    # "expandCount":F
    .local v10, "singleItem":Z
    .local v20, "expandCount":F
    int-to-long v1, v15

    and-long v1, v18, v1

    cmp-long v15, v1, v27

    if-nez v15, :cond_231

    const/16 v25, 0x2

    goto :goto_277

    .line 335
    :cond_231
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 336
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 337
    .local v2, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    instance-of v15, v1, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v15, :cond_255

    .line 339
    iput v4, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 340
    const/4 v15, 0x1

    iput-boolean v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 341
    if-nez v5, :cond_251

    iget-boolean v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v15, :cond_251

    .line 344
    neg-int v15, v4

    const/16 v25, 0x2

    div-int/lit8 v15, v15, 0x2

    iput v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 346
    :cond_251
    const/4 v9, 0x1

    const/16 v25, 0x2

    goto :goto_277

    .line 347
    :cond_255
    iget-boolean v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v15, :cond_267

    .line 348
    iput v4, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 349
    const/4 v15, 0x1

    iput-boolean v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 350
    neg-int v15, v4

    const/16 v25, 0x2

    div-int/lit8 v15, v15, 0x2

    iput v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 351
    const/4 v9, 0x1

    goto :goto_277

    .line 356
    :cond_267
    const/16 v25, 0x2

    if-eqz v5, :cond_26f

    .line 357
    div-int/lit8 v15, v4, 0x2

    iput v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 359
    :cond_26f
    add-int/lit8 v15, v11, -0x1

    if-eq v5, v15, :cond_277

    .line 360
    div-int/lit8 v15, v4, 0x2

    iput v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 332
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_277
    :goto_277
    add-int/lit8 v5, v5, 0x1

    move v1, v10

    move/from16 v2, v20

    goto :goto_21f

    .end local v10    # "singleItem":Z
    .end local v20    # "expandCount":F
    .local v1, "singleItem":Z
    .local v2, "expandCount":F
    :cond_27d
    move v10, v1

    move/from16 v20, v2

    .line 365
    .end local v1    # "singleItem":Z
    .end local v2    # "expandCount":F
    .end local v5    # "i":I
    .restart local v10    # "singleItem":Z
    .restart local v20    # "expandCount":F
    const/4 v12, 0x0

    goto :goto_285

    .line 313
    .end local v4    # "extraPixels":I
    .end local v9    # "needsExpansion":Z
    .end local v10    # "singleItem":Z
    .end local v20    # "expandCount":F
    .restart local v1    # "singleItem":Z
    .restart local v35    # "needsExpansion":Z
    :cond_282
    move v10, v1

    .line 369
    .end local v1    # "singleItem":Z
    .restart local v10    # "singleItem":Z
    :goto_283
    move/from16 v9, v35

    .end local v35    # "needsExpansion":Z
    .restart local v9    # "needsExpansion":Z
    :goto_285
    if-eqz v9, :cond_2b5

    .line 370
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_288
    if-ge v2, v11, :cond_2b2

    .line 371
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 372
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 374
    .local v5, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iget-boolean v15, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v15, :cond_29b

    move/from16 v22, v3

    goto :goto_2ad

    .line 376
    :cond_29b
    iget v15, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v15, v15, v8

    iget v1, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v15, v1

    .line 377
    .local v15, "width":I
    move/from16 v22, v3

    const/high16 v1, 0x40000000    # 2.0f

    .end local v3    # "visibleItemCount":I
    .local v22, "visibleItemCount":I
    invoke-static {v15, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 370
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v15    # "width":I
    :goto_2ad
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v22

    goto :goto_288

    .end local v22    # "visibleItemCount":I
    .restart local v3    # "visibleItemCount":I
    :cond_2b2
    move/from16 v22, v3

    .end local v3    # "visibleItemCount":I
    .restart local v22    # "visibleItemCount":I
    goto :goto_2b7

    .line 369
    .end local v2    # "i":I
    .end local v22    # "visibleItemCount":I
    .restart local v3    # "visibleItemCount":I
    :cond_2b5
    move/from16 v22, v3

    .line 382
    .end local v3    # "visibleItemCount":I
    .restart local v22    # "visibleItemCount":I
    :goto_2b7
    move/from16 v1, v36

    const/high16 v2, 0x40000000    # 2.0f

    .end local v36    # "heightMode":I
    .local v1, "heightMode":I
    if-eq v1, v2, :cond_2bf

    .line 383
    move v3, v13

    .end local v16    # "heightSize":I
    .local v3, "heightSize":I
    goto :goto_2c1

    .line 382
    .end local v3    # "heightSize":I
    .restart local v16    # "heightSize":I
    :cond_2bf
    move/from16 v3, v16

    .line 386
    .end local v16    # "heightSize":I
    .restart local v3    # "heightSize":I
    :goto_2c1
    move/from16 v2, v37

    .end local v37    # "widthSize":I
    .local v2, "widthSize":I
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 387
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 610
    if-eqz p1, :cond_8

    instance-of v0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public dismissPopupMenus()V
    .registers 2

    .line 723
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_7

    .line 724
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 726
    :cond_7
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 3

    .line 583
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 585
    .local v0, "params":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 586
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    .line 48
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 48
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 591
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 596
    if-eqz p1, :cond_1d

    .line 597
    instance-of v0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_f

    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/support/v7/widget/ActionMenuView$LayoutParams;)V

    goto :goto_14

    :cond_f
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    .local v0, "result":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :goto_14
    iget v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_1c

    .line 601
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 603
    :cond_1c
    return-object v0

    .line 605
    .end local v0    # "result":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 3

    .line 616
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 617
    .local v0, "result":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 618
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 5

    .line 651
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_3f

    .line 652
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 653
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 654
    new-instance v2, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 655
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 656
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 657
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_29

    goto :goto_2e

    :cond_29
    new-instance v2, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v2}, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    :goto_2e
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 659
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 660
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    .line 663
    .end local v0    # "context":Landroid/content/Context;
    :cond_3f
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 565
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 566
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .line 733
    if-nez p1, :cond_4

    .line 734
    const/4 v0, 0x0

    return v0

    .line 736
    :cond_4
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 737
    .local v0, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 738
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 739
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_21

    instance-of v3, v0, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_21

    .line 740
    move-object v3, v0

    check-cast v3, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 742
    :cond_21
    if-lez p1, :cond_2f

    instance-of v3, v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2f

    .line 743
    move-object v3, v1

    check-cast v3, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 745
    :cond_2f
    return v2
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .line 700
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .line 639
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 640
    return-void
.end method

.method public invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .line 625
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    .line 716
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .line 710
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    .line 572
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 128
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1d

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 133
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 134
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 135
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 138
    :cond_1d
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 544
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 545
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    .line 546
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 27
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 439
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-nez v1, :cond_a

    .line 440
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 441
    return-void

    .line 444
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 445
    .local v1, "childCount":I
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    .line 446
    .local v2, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getDividerWidth()I

    move-result v3

    .line 447
    .local v3, "dividerWidth":I
    const/4 v4, 0x0

    .line 448
    .local v4, "overflowWidth":I
    const/4 v5, 0x0

    .line 449
    .local v5, "nonOverflowWidth":I
    const/4 v6, 0x0

    .line 450
    .local v6, "nonOverflowCount":I
    sub-int v7, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    .line 451
    .local v7, "widthRemaining":I
    const/4 v8, 0x0

    .line 452
    .local v8, "hasOverflow":Z
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    .line 453
    .local v9, "isLayoutRtl":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2b
    const/16 v11, 0x8

    if-ge v10, v1, :cond_a3

    .line 454
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 455
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v11, :cond_3e

    .line 456
    move/from16 v16, v2

    move/from16 v17, v9

    goto :goto_9c

    .line 459
    :cond_3e
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 460
    .local v11, "p":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iget-boolean v13, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v13, :cond_83

    .line 461
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 462
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v13

    if-eqz v13, :cond_53

    .line 463
    add-int/2addr v4, v3

    .line 465
    :cond_53
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 468
    .local v13, "height":I
    if-eqz v9, :cond_63

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v14

    iget v15, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    .line 470
    .local v14, "l":I
    add-int v15, v14, v4

    .local v15, "r":I
    goto :goto_72

    .line 472
    .end local v14    # "l":I
    .end local v15    # "r":I
    :cond_63
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget v15, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v15, v14, v15

    .line 473
    .restart local v15    # "r":I
    sub-int v14, v15, v4

    .line 475
    .restart local v14    # "l":I
    :goto_72
    div-int/lit8 v16, v13, 0x2

    move/from16 v17, v9

    .end local v9    # "isLayoutRtl":Z
    .local v17, "isLayoutRtl":Z
    sub-int v9, v2, v16

    .line 476
    .local v9, "t":I
    move/from16 v16, v2

    .end local v2    # "midVertical":I
    .local v16, "midVertical":I
    add-int v2, v9, v13

    .line 477
    .local v2, "b":I
    invoke-virtual {v12, v14, v9, v15, v2}, Landroid/view/View;->layout(IIII)V

    .line 479
    sub-int/2addr v7, v4

    .line 480
    const/4 v2, 0x1

    .line 481
    .end local v8    # "hasOverflow":Z
    .end local v9    # "t":I
    .end local v13    # "height":I
    .end local v14    # "l":I
    .end local v15    # "r":I
    .local v2, "hasOverflow":Z
    move v8, v2

    goto :goto_9c

    .line 482
    .end local v16    # "midVertical":I
    .end local v17    # "isLayoutRtl":Z
    .local v2, "midVertical":I
    .restart local v8    # "hasOverflow":Z
    .local v9, "isLayoutRtl":Z
    :cond_83
    move/from16 v16, v2

    move/from16 v17, v9

    .end local v2    # "midVertical":I
    .end local v9    # "isLayoutRtl":Z
    .restart local v16    # "midVertical":I
    .restart local v17    # "isLayoutRtl":Z
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v9, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v9

    iget v9, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v9

    .line 483
    .local v2, "size":I
    add-int/2addr v5, v2

    .line 484
    sub-int/2addr v7, v2

    .line 485
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_9a

    .line 486
    add-int/2addr v5, v3

    .line 488
    :cond_9a
    add-int/lit8 v6, v6, 0x1

    .line 453
    .end local v2    # "size":I
    .end local v11    # "p":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v12    # "v":Landroid/view/View;
    :goto_9c
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    move/from16 v9, v17

    goto :goto_2b

    .end local v16    # "midVertical":I
    .end local v17    # "isLayoutRtl":Z
    .local v2, "midVertical":I
    .restart local v9    # "isLayoutRtl":Z
    :cond_a3
    move/from16 v16, v2

    move/from16 v17, v9

    .line 492
    .end local v2    # "midVertical":I
    .end local v9    # "isLayoutRtl":Z
    .end local v10    # "i":I
    .restart local v16    # "midVertical":I
    .restart local v17    # "isLayoutRtl":Z
    const/4 v2, 0x0

    const/4 v9, 0x1

    if-ne v1, v9, :cond_cd

    if-nez v8, :cond_cd

    .line 494
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 495
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 496
    .local v9, "width":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 497
    .local v10, "height":I
    sub-int v11, p4, p2

    div-int/lit8 v11, v11, 0x2

    .line 498
    .local v11, "midHorizontal":I
    div-int/lit8 v12, v9, 0x2

    sub-int v12, v11, v12

    .line 499
    .local v12, "l":I
    div-int/lit8 v13, v10, 0x2

    sub-int v13, v16, v13

    .line 500
    .local v13, "t":I
    add-int v14, v12, v9

    add-int v15, v13, v10

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 501
    return-void

    .line 504
    .end local v2    # "v":Landroid/view/View;
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "midHorizontal":I
    .end local v12    # "l":I
    .end local v13    # "t":I
    :cond_cd
    xor-int/lit8 v9, v8, 0x1

    sub-int v9, v6, v9

    .line 505
    .local v9, "spacerCount":I
    if-lez v9, :cond_d6

    div-int v10, v7, v9

    goto :goto_d7

    :cond_d6
    const/4 v10, 0x0

    :goto_d7
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 507
    .local v2, "spacerSize":I
    if-eqz v17, :cond_134

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v10, v12

    .line 509
    .local v10, "startRight":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_e7
    if-ge v12, v1, :cond_12f

    .line 510
    invoke-virtual {v0, v12}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 511
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 512
    .local v14, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v11, :cond_122

    iget-boolean v15, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v15, :cond_102

    .line 513
    move/from16 v19, v3

    move/from16 v20, v4

    goto :goto_126

    .line 516
    :cond_102
    iget v15, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v10, v15

    .line 517
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 518
    .local v15, "width":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    .line 519
    .local v18, "height":I
    div-int/lit8 v19, v18, 0x2

    sub-int v11, v16, v19

    .line 520
    .local v11, "t":I
    move/from16 v19, v3

    .end local v3    # "dividerWidth":I
    .local v19, "dividerWidth":I
    sub-int v3, v10, v15

    move/from16 v20, v4

    .end local v4    # "overflowWidth":I
    .local v20, "overflowWidth":I
    add-int v4, v11, v18

    invoke-virtual {v13, v3, v11, v10, v4}, Landroid/view/View;->layout(IIII)V

    .line 521
    iget v3, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v15

    add-int/2addr v3, v2

    sub-int/2addr v10, v3

    goto :goto_126

    .line 512
    .end local v11    # "t":I
    .end local v15    # "width":I
    .end local v18    # "height":I
    .end local v19    # "dividerWidth":I
    .end local v20    # "overflowWidth":I
    .restart local v3    # "dividerWidth":I
    .restart local v4    # "overflowWidth":I
    :cond_122
    move/from16 v19, v3

    move/from16 v20, v4

    .line 509
    .end local v3    # "dividerWidth":I
    .end local v4    # "overflowWidth":I
    .end local v13    # "v":Landroid/view/View;
    .end local v14    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .restart local v19    # "dividerWidth":I
    .restart local v20    # "overflowWidth":I
    :goto_126
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v19

    move/from16 v4, v20

    const/16 v11, 0x8

    goto :goto_e7

    .end local v19    # "dividerWidth":I
    .end local v20    # "overflowWidth":I
    .restart local v3    # "dividerWidth":I
    .restart local v4    # "overflowWidth":I
    :cond_12f
    move/from16 v19, v3

    move/from16 v20, v4

    .line 523
    .end local v3    # "dividerWidth":I
    .end local v4    # "overflowWidth":I
    .end local v10    # "startRight":I
    .end local v12    # "i":I
    .restart local v19    # "dividerWidth":I
    .restart local v20    # "overflowWidth":I
    goto :goto_176

    .line 524
    .end local v19    # "dividerWidth":I
    .end local v20    # "overflowWidth":I
    .restart local v3    # "dividerWidth":I
    .restart local v4    # "overflowWidth":I
    :cond_134
    move/from16 v19, v3

    move/from16 v20, v4

    .end local v3    # "dividerWidth":I
    .end local v4    # "overflowWidth":I
    .restart local v19    # "dividerWidth":I
    .restart local v20    # "overflowWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v3

    .line 525
    .local v3, "startLeft":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13d
    if-ge v4, v1, :cond_176

    .line 526
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 527
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 528
    .local v11, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_171

    iget-boolean v12, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v12, :cond_156

    .line 529
    goto :goto_171

    .line 532
    :cond_156
    iget v12, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v12

    .line 533
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 534
    .local v12, "width":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 535
    .local v14, "height":I
    div-int/lit8 v15, v14, 0x2

    sub-int v15, v16, v15

    .line 536
    .local v15, "t":I
    add-int v13, v3, v12

    add-int v0, v15, v14

    invoke-virtual {v10, v3, v15, v13, v0}, Landroid/view/View;->layout(IIII)V

    .line 537
    iget v0, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v12

    add-int/2addr v0, v2

    add-int/2addr v3, v0

    .line 525
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v12    # "width":I
    .end local v14    # "height":I
    .end local v15    # "t":I
    :cond_171
    :goto_171
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_13d

    .line 540
    .end local v3    # "startLeft":I
    .end local v4    # "i":I
    :cond_176
    :goto_176
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 148
    .local v0, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iput-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 150
    if-eq v0, v1, :cond_15

    .line 151
    iput v3, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 156
    :cond_15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 157
    .local v1, "widthSize":I
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_2a

    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v4, :cond_2a

    iget v5, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v5, :cond_2a

    .line 158
    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 159
    invoke-virtual {v4, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 162
    :cond_2a
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v2

    .line 163
    .local v2, "childCount":I
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_38

    if-lez v2, :cond_38

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_4f

    .line 167
    :cond_38
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_39
    if-ge v4, v2, :cond_4c

    .line 168
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 169
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 170
    .local v6, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iput v3, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v3, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 167
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 172
    .end local v4    # "i":I
    :cond_4c
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 174
    :goto_4f
    return-void
.end method

.method public peekMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .registers 2

    .line 682
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 3
    .param p1, "exclusive"    # Z

    .line 756
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 757
    return-void
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .registers 3
    .param p1, "pcb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 672
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 673
    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 674
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 141
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 142
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 554
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 555
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 556
    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2
    .param p1, "reserveOverflow"    # Z

    .line 578
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    .line 579
    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 97
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_1a

    .line 98
    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 99
    if-nez p1, :cond_f

    .line 100
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_1a

    .line 102
    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 105
    :cond_1a
    :goto_1a
    return-void
.end method

.method public setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .registers 2
    .param p1, "presenter"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .line 122
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 123
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    .line 124
    return-void
.end method

.method public showOverflowMenu()Z
    .registers 2

    .line 691
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
