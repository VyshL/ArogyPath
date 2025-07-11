.class public Landroid/support/constraint/solver/widgets/Guideline;
.super Landroid/support/constraint/solver/widgets/ConstraintWidget;
.source "Guideline.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final RELATIVE_BEGIN:I = 0x1

.field public static final RELATIVE_END:I = 0x2

.field public static final RELATIVE_PERCENT:I = 0x0

.field public static final RELATIVE_UNKNWON:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mMinimumPosition:I

.field private mOrientation:I

.field protected mRelativeBegin:I

.field protected mRelativeEnd:I

.field protected mRelativePercent:F

.field private resolved:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 46
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    .line 37
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 39
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 41
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    .line 43
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mMinimumPosition:I

    .line 47
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 48
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length v0, v0

    .line 50
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, v0, :cond_30

    .line 51
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v3, v2, v1

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 53
    .end local v1    # "i":I
    :cond_30
    return-void
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;Z)V
    .registers 13
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "optimize"    # Z

    .line 215
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 216
    .local v0, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    if-nez v0, :cond_9

    .line 217
    return-void

    .line 219
    :cond_9
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 220
    .local v1, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 221
    .local v2, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_27

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v5

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    .line 222
    .local v3, "parentWrapContent":Z
    :goto_28
    iget v6, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v6, :cond_49

    .line 223
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 224
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 225
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/Guideline;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v6, :cond_47

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/Guideline;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v4

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_47

    goto :goto_48

    :cond_47
    const/4 v4, 0x0

    :goto_48
    move v3, v4

    .line 227
    :cond_49
    iget-boolean v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->resolved:Z

    const/4 v6, -0x1

    const/4 v7, 0x5

    if-eqz v4, :cond_8b

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 228
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 232
    .local v4, "guide":Landroid/support/constraint/solver/SolverVariable;
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v8

    invoke-virtual {p1, v4, v8}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 233
    iget v8, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq v8, v6, :cond_74

    .line 234
    if-eqz v3, :cond_88

    .line 235
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_88

    .line 237
    :cond_74
    iget v8, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v8, v6, :cond_88

    .line 238
    if-eqz v3, :cond_88

    .line 239
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 240
    .local v6, "parentRight":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    invoke-virtual {p1, v4, v8, v5, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 241
    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 244
    .end local v6    # "parentRight":Landroid/support/constraint/solver/SolverVariable;
    :cond_88
    :goto_88
    iput-boolean v5, p0, Landroid/support/constraint/solver/widgets/Guideline;->resolved:Z

    .line 245
    return-void

    .line 247
    .end local v4    # "guide":Landroid/support/constraint/solver/SolverVariable;
    :cond_8b
    iget v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/16 v8, 0x8

    if-eq v4, v6, :cond_aa

    .line 248
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 249
    .restart local v4    # "guide":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 250
    .local v6, "parentLeft":Landroid/support/constraint/solver/SolverVariable;
    iget v9, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {p1, v4, v6, v9, v8}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 251
    if-eqz v3, :cond_a9

    .line 252
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    invoke-virtual {p1, v8, v4, v5, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 254
    .end local v4    # "guide":Landroid/support/constraint/solver/SolverVariable;
    .end local v6    # "parentLeft":Landroid/support/constraint/solver/SolverVariable;
    :cond_a9
    goto :goto_e8

    :cond_aa
    iget v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v4, v6, :cond_cb

    .line 255
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 256
    .restart local v4    # "guide":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 257
    .local v6, "parentRight":Landroid/support/constraint/solver/SolverVariable;
    iget v9, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v9, v9

    invoke-virtual {p1, v4, v6, v9, v8}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 258
    if-eqz v3, :cond_e7

    .line 259
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    invoke-virtual {p1, v4, v8, v5, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 260
    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_e7

    .line 262
    .end local v4    # "guide":Landroid/support/constraint/solver/SolverVariable;
    .end local v6    # "parentRight":Landroid/support/constraint/solver/SolverVariable;
    :cond_cb
    iget v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_e7

    .line 263
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 264
    .restart local v4    # "guide":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 265
    .local v5, "parentRight":Landroid/support/constraint/solver/SolverVariable;
    iget v6, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 266
    invoke-static {p1, v4, v5, v6}, Landroid/support/constraint/solver/LinearSystem;->createRowDimensionPercent(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v6

    .line 265
    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_e8

    .line 262
    .end local v4    # "guide":Landroid/support/constraint/solver/SolverVariable;
    .end local v5    # "parentRight":Landroid/support/constraint/solver/SolverVariable;
    :cond_e7
    :goto_e7
    nop

    .line 269
    :goto_e8
    return-void
.end method

.method public allowedInBarrier()Z
    .registers 2

    .line 67
    const/4 v0, 0x1

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

    .line 57
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-super {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 58
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/solver/widgets/Guideline;

    .line 59
    .local v0, "srcGuideline":Landroid/support/constraint/solver/widgets/Guideline;
    iget v1, v0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    iput v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 60
    iget v1, v0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 61
    iget v1, v0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 62
    iget v1, v0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 63
    return-void
.end method

.method public cyclePosition()V
    .registers 4

    .line 315
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 317
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativePercentPosition()V

    goto :goto_1c

    .line 318
    :cond_9
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_15

    .line 320
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativeEndPosition()V

    goto :goto_1c

    .line 321
    :cond_15
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v1, :cond_1c

    .line 323
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativeBeginPosition()V

    .line 325
    :cond_1c
    :goto_1c
    return-void
.end method

.method public getAnchor()Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .registers 4
    .param p1, "anchorType"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 125
    sget-object v0, Landroid/support/constraint/solver/widgets/Guideline$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    goto :goto_1d

    .line 145
    :pswitch_c
    const/4 v0, 0x0

    return-object v0

    .line 135
    :pswitch_e
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v0, :cond_1d

    .line 136
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 128
    :pswitch_15
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 129
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 147
    :cond_1d
    :goto_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public getOrientation()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    return v0
.end method

.method public getRelativeBegin()I
    .registers 2

    .line 183
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    return v0
.end method

.method public getRelativeBehaviour()I
    .registers 3

    .line 71
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 72
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_a
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 75
    const/4 v0, 0x1

    return v0

    .line 77
    :cond_11
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v1, :cond_17

    .line 78
    const/4 v0, 0x2

    return v0

    .line 80
    :cond_17
    return v1
.end method

.method public getRelativeEnd()I
    .registers 2

    .line 187
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    return v0
.end method

.method public getRelativePercent()F
    .registers 2

    .line 179
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 112
    const-string v0, "Guideline"

    return-object v0
.end method

.method inferRelativeBeginPosition()V
    .registers 3

    .line 299
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v0

    .line 300
    .local v0, "position":I
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_c

    .line 301
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v0

    .line 303
    :cond_c
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    .line 304
    return-void
.end method

.method inferRelativeEndPosition()V
    .registers 4

    .line 307
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 308
    .local v0, "position":I
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_1f

    .line 309
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v2

    sub-int v0, v1, v2

    .line 311
    :cond_1f
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 312
    return-void
.end method

.method inferRelativePercentPosition()V
    .registers 4

    .line 291
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 292
    .local v0, "percent":F
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_23

    .line 293
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 295
    :cond_23
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 296
    return-void
.end method

.method public isPercent()Z
    .registers 3

    .line 328
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public isResolvedHorizontally()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->resolved:Z

    return v0
.end method

.method public isResolvedVertically()Z
    .registers 2

    .line 203
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->resolved:Z

    return v0
.end method

.method public setFinalValue(I)V
    .registers 3
    .param p1, "position"    # I

    .line 194
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->resolved:Z

    .line 196
    return-void
.end method

.method public setGuideBegin(I)V
    .registers 4
    .param p1, "value"    # I

    .line 163
    const/4 v0, -0x1

    if-le p1, v0, :cond_b

    .line 164
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 165
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 166
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 168
    :cond_b
    return-void
.end method

.method public setGuideEnd(I)V
    .registers 4
    .param p1, "value"    # I

    .line 171
    const/4 v0, -0x1

    if-le p1, v0, :cond_b

    .line 172
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 173
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 174
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 176
    :cond_b
    return-void
.end method

.method public setGuidePercent(F)V
    .registers 3
    .param p1, "value"    # F

    .line 155
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    .line 156
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 158
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 160
    :cond_d
    return-void
.end method

.method public setGuidePercent(I)V
    .registers 4
    .param p1, "value"    # I

    .line 151
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 152
    return-void
.end method

.method public setMinimumPosition(I)V
    .registers 2
    .param p1, "minimum"    # I

    .line 120
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mMinimumPosition:I

    .line 121
    return-void
.end method

.method public setOrientation(I)V
    .registers 6
    .param p1, "orientation"    # I

    .line 84
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-ne v0, p1, :cond_5

    .line 85
    return-void

    .line 87
    :cond_5
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    .line 88
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 90
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_1a

    .line 92
    :cond_16
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 94
    :goto_1a
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length v0, v0

    .line 96
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, v0, :cond_30

    .line 97
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v3, v2, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 99
    .end local v1    # "i":I
    :cond_30
    return-void
.end method

.method public updateFromSolver(Landroid/support/constraint/solver/LinearSystem;Z)V
    .registers 7
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "optimize"    # Z

    .line 273
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-nez v0, :cond_7

    .line 274
    return-void

    .line 276
    :cond_7
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    .line 277
    .local v0, "value":I
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_28

    .line 278
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setX(I)V

    .line 279
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setY(I)V

    .line 280
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setHeight(I)V

    .line 281
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setWidth(I)V

    goto :goto_3c

    .line 283
    :cond_28
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setX(I)V

    .line 284
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setY(I)V

    .line 285
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setWidth(I)V

    .line 286
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setHeight(I)V

    .line 288
    :goto_3c
    return-void
.end method
