.class public Landroid/support/constraint/solver/state/ConstraintReference;
.super Ljava/lang/Object;
.source "ConstraintReference.java"

# interfaces
.implements Landroid/support/constraint/solver/state/Reference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/state/ConstraintReference$IncorrectConstraintException;,
        Landroid/support/constraint/solver/state/ConstraintReference$ConstraintReferenceFactory;
    }
.end annotation


# instance fields
.field private key:Ljava/lang/Object;

.field mBaselineToBaseline:Ljava/lang/Object;

.field mBottomToBottom:Ljava/lang/Object;

.field mBottomToTop:Ljava/lang/Object;

.field private mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field mEndToEnd:Ljava/lang/Object;

.field mEndToStart:Ljava/lang/Object;

.field mHorizontalBias:F

.field mHorizontalChainStyle:I

.field mHorizontalDimension:Landroid/support/constraint/solver/state/Dimension;

.field mLast:Landroid/support/constraint/solver/state/State$Constraint;

.field mLeftToLeft:Ljava/lang/Object;

.field mLeftToRight:Ljava/lang/Object;

.field mMarginBottom:I

.field mMarginBottomGone:I

.field mMarginEnd:I

.field mMarginEndGone:I

.field mMarginLeft:I

.field mMarginLeftGone:I

.field mMarginRight:I

.field mMarginRightGone:I

.field mMarginStart:I

.field mMarginStartGone:I

.field mMarginTop:I

.field mMarginTopGone:I

.field mRightToLeft:Ljava/lang/Object;

.field mRightToRight:Ljava/lang/Object;

.field mStartToEnd:Ljava/lang/Object;

.field mStartToStart:Ljava/lang/Object;

.field final mState:Landroid/support/constraint/solver/state/State;

.field mTopToBottom:Ljava/lang/Object;

.field mTopToTop:Ljava/lang/Object;

.field mVerticalBias:F

.field mVerticalChainStyle:I

.field mVerticalDimension:Landroid/support/constraint/solver/state/Dimension;

.field private mView:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/state/State;)V
    .registers 4
    .param p1, "state"    # Landroid/support/constraint/solver/state/State;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mHorizontalChainStyle:I

    .line 46
    iput v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mVerticalChainStyle:I

    .line 48
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mHorizontalBias:F

    .line 49
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mVerticalBias:F

    .line 51
    iput v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginLeft:I

    .line 52
    iput v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginRight:I

    .line 53
    iput v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginStart:I

    .line 54
    iput v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginEnd:I

    .line 55
    iput v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginTop:I

    .line 56
    iput v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginBottom:I

    .line 58
    iput v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginLeftGone:I

    .line 59
    iput v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginRightGone:I

    .line 60
    iput v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginStartGone:I

    .line 61
    iput v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginEndGone:I

    .line 62
    iput v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginTopGone:I

    .line 63
    iput v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginBottomGone:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    .line 66
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    .line 67
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    .line 68
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    .line 69
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    .line 70
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    .line 71
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    .line 72
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    .line 73
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    .line 74
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    .line 75
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    .line 76
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    .line 77
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    .line 79
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 81
    sget-object v0, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/constraint/solver/state/Dimension;->Fixed(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mHorizontalDimension:Landroid/support/constraint/solver/state/Dimension;

    .line 82
    sget-object v0, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/constraint/solver/state/Dimension;->Fixed(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mVerticalDimension:Landroid/support/constraint/solver/state/Dimension;

    .line 173
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mState:Landroid/support/constraint/solver/state/State;

    return-void
.end method

.method private applyConnection(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Constraint;)V
    .registers 11
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "opaqueTarget"    # Ljava/lang/Object;
    .param p3, "type"    # Landroid/support/constraint/solver/state/State$Constraint;

    .line 620
    invoke-direct {p0, p2}, Landroid/support/constraint/solver/state/ConstraintReference;->getTarget(Ljava/lang/Object;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    .line 621
    .local v6, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v6, :cond_7

    .line 622
    return-void

    .line 624
    :cond_7
    sget-object v0, Landroid/support/constraint/solver/state/ConstraintReference$1;->$SwitchMap$android$support$constraint$solver$state$State$Constraint:[I

    invoke-virtual {p3}, Landroid/support/constraint/solver/state/State$Constraint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 627
    sget-object v0, Landroid/support/constraint/solver/state/ConstraintReference$1;->$SwitchMap$android$support$constraint$solver$state$State$Constraint:[I

    invoke-virtual {p3}, Landroid/support/constraint/solver/state/State$Constraint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_122

    goto/16 :goto_120

    .line 677
    :pswitch_1d
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_120

    .line 673
    :pswitch_2a
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginBottom:I

    iget v4, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginBottomGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 675
    goto/16 :goto_120

    .line 669
    :pswitch_3f
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginBottom:I

    iget v4, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginBottomGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 671
    goto/16 :goto_120

    .line 665
    :pswitch_54
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginTop:I

    iget v4, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginTopGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 667
    goto/16 :goto_120

    .line 661
    :pswitch_69
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginTop:I

    iget v4, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginTopGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 663
    goto/16 :goto_120

    .line 641
    :pswitch_7e
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginEnd:I

    iget v4, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginEndGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 643
    goto/16 :goto_120

    .line 637
    :pswitch_93
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginEnd:I

    iget v4, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginEndGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 639
    goto/16 :goto_120

    .line 633
    :pswitch_a8
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginStart:I

    iget v4, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginStartGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 635
    goto :goto_120

    .line 629
    :pswitch_bc
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginStart:I

    iget v4, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginStartGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 631
    goto :goto_120

    .line 657
    :pswitch_d0
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginRight:I

    iget v4, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginRightGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 659
    goto :goto_120

    .line 653
    :pswitch_e4
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginRight:I

    iget v4, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginRightGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 655
    goto :goto_120

    .line 649
    :pswitch_f8
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginLeft:I

    iget v4, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginLeftGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 651
    goto :goto_120

    .line 645
    :pswitch_10c
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginLeft:I

    iget v4, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginLeftGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 647
    nop

    .line 680
    :goto_120
    return-void

    nop

    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_10c
        :pswitch_f8
        :pswitch_e4
        :pswitch_d0
        :pswitch_bc
        :pswitch_a8
        :pswitch_93
        :pswitch_7e
        :pswitch_69
        :pswitch_54
        :pswitch_3f
        :pswitch_2a
        :pswitch_1d
    .end packed-switch
.end method

.method private dereference()V
    .registers 2

    .line 266
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    .line 279
    return-void
.end method

.method private get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 164
    if-nez p1, :cond_4

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_4
    instance-of v0, p1, Landroid/support/constraint/solver/state/ConstraintReference;

    if-nez v0, :cond_f

    .line 168
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mState:Landroid/support/constraint/solver/state/State;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/state/State;->reference(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Reference;

    move-result-object v0

    return-object v0

    .line 170
    :cond_f
    return-object p1
.end method

.method private getTarget(Ljava/lang/Object;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 4
    .param p1, "target"    # Ljava/lang/Object;

    .line 612
    instance-of v0, p1, Landroid/support/constraint/solver/state/Reference;

    if-eqz v0, :cond_c

    .line 613
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/solver/state/Reference;

    .line 614
    .local v0, "referenceTarget":Landroid/support/constraint/solver/state/Reference;
    invoke-interface {v0}, Landroid/support/constraint/solver/state/Reference;->getConstraintWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    return-object v1

    .line 616
    .end local v0    # "referenceTarget":Landroid/support/constraint/solver/state/Reference;
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public apply()V
    .registers 5

    .line 683
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_5

    .line 684
    return-void

    .line 686
    :cond_5
    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mHorizontalDimension:Landroid/support/constraint/solver/state/Dimension;

    iget-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mState:Landroid/support/constraint/solver/state/State;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/constraint/solver/state/Dimension;->apply(Landroid/support/constraint/solver/state/State;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 687
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mVerticalDimension:Landroid/support/constraint/solver/state/Dimension;

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mState:Landroid/support/constraint/solver/state/State;

    iget-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/constraint/solver/state/Dimension;->apply(Landroid/support/constraint/solver/state/State;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 688
    invoke-direct {p0}, Landroid/support/constraint/solver/state/ConstraintReference;->dereference()V

    .line 690
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    sget-object v2, Landroid/support/constraint/solver/state/State$Constraint;->LEFT_TO_LEFT:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->applyConnection(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Constraint;)V

    .line 691
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    sget-object v2, Landroid/support/constraint/solver/state/State$Constraint;->LEFT_TO_RIGHT:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->applyConnection(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Constraint;)V

    .line 692
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    sget-object v2, Landroid/support/constraint/solver/state/State$Constraint;->RIGHT_TO_LEFT:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->applyConnection(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Constraint;)V

    .line 693
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    sget-object v2, Landroid/support/constraint/solver/state/State$Constraint;->RIGHT_TO_RIGHT:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->applyConnection(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Constraint;)V

    .line 694
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    sget-object v2, Landroid/support/constraint/solver/state/State$Constraint;->START_TO_START:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->applyConnection(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Constraint;)V

    .line 695
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    sget-object v2, Landroid/support/constraint/solver/state/State$Constraint;->START_TO_END:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->applyConnection(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Constraint;)V

    .line 696
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    sget-object v2, Landroid/support/constraint/solver/state/State$Constraint;->END_TO_START:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->applyConnection(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Constraint;)V

    .line 697
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    sget-object v2, Landroid/support/constraint/solver/state/State$Constraint;->END_TO_END:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->applyConnection(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Constraint;)V

    .line 698
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    sget-object v2, Landroid/support/constraint/solver/state/State$Constraint;->TOP_TO_TOP:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->applyConnection(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Constraint;)V

    .line 699
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    sget-object v2, Landroid/support/constraint/solver/state/State$Constraint;->TOP_TO_BOTTOM:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->applyConnection(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Constraint;)V

    .line 700
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    sget-object v2, Landroid/support/constraint/solver/state/State$Constraint;->BOTTOM_TO_TOP:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->applyConnection(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Constraint;)V

    .line 701
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    sget-object v2, Landroid/support/constraint/solver/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->applyConnection(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Constraint;)V

    .line 702
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    sget-object v2, Landroid/support/constraint/solver/state/State$Constraint;->BASELINE_TO_BASELINE:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->applyConnection(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Constraint;)V

    .line 704
    iget v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mHorizontalChainStyle:I

    if-eqz v0, :cond_98

    .line 705
    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 707
    :cond_98
    iget v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mVerticalChainStyle:I

    if-eqz v0, :cond_a1

    .line 708
    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 711
    :cond_a1
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mHorizontalBias:F

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 712
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mVerticalBias:F

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 713
    return-void
.end method

.method public baseline()Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 2

    .line 261
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->BASELINE_TO_BASELINE:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 262
    return-object p0
.end method

.method public baselineToBaseline(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 354
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->BASELINE_TO_BASELINE:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 355
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    .line 356
    return-object p0
.end method

.method public bias(F)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 4
    .param p1, "value"    # F

    .line 497
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    if-nez v0, :cond_5

    .line 498
    return-object p0

    .line 500
    :cond_5
    sget-object v0, Landroid/support/constraint/solver/state/ConstraintReference$1;->$SwitchMap$android$support$constraint$solver$state$State$Constraint:[I

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-virtual {v1}, Landroid/support/constraint/solver/state/State$Constraint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    :pswitch_12
    goto :goto_19

    .line 517
    :pswitch_13
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mVerticalBias:F

    goto :goto_19

    .line 510
    :pswitch_16
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mHorizontalBias:F

    .line 511
    nop

    .line 520
    :goto_19
    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method public bottom()Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 2

    .line 252
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 253
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->BOTTOM_TO_TOP:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    goto :goto_d

    .line 255
    :cond_9
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 257
    :goto_d
    return-object p0
.end method

.method public bottomToBottom(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 348
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 349
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    .line 350
    return-object p0
.end method

.method public bottomToTop(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 342
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->BOTTOM_TO_TOP:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 343
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    .line 344
    return-object p0
.end method

.method public centerHorizontally(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 4
    .param p1, "reference"    # Ljava/lang/Object;

    .line 360
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 361
    .local v0, "ref":Ljava/lang/Object;
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    .line 362
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    .line 363
    sget-object v1, Landroid/support/constraint/solver/state/State$Constraint;->CENTER_HORIZONTALLY:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 364
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mHorizontalBias:F

    .line 365
    return-object p0
.end method

.method public centerVertically(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 4
    .param p1, "reference"    # Ljava/lang/Object;

    .line 369
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 370
    .local v0, "ref":Ljava/lang/Object;
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    .line 371
    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    .line 372
    sget-object v1, Landroid/support/constraint/solver/state/State$Constraint;->CENTER_VERTICALLY:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 373
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mVerticalBias:F

    .line 374
    return-object p0
.end method

.method public clear()Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 5

    .line 524
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 525
    sget-object v0, Landroid/support/constraint/solver/state/ConstraintReference$1;->$SwitchMap$android$support$constraint$solver$state$State$Constraint:[I

    iget-object v3, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-virtual {v3}, Landroid/support/constraint/solver/state/State$Constraint;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_88

    goto :goto_4d

    .line 575
    :pswitch_14
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    goto :goto_4d

    .line 568
    :pswitch_17
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    .line 569
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    .line 570
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginBottom:I

    .line 571
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginBottomGone:I

    .line 573
    goto :goto_4d

    .line 560
    :pswitch_20
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    .line 561
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    .line 562
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginTop:I

    .line 563
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginTopGone:I

    .line 565
    goto :goto_4d

    .line 552
    :pswitch_29
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    .line 553
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    .line 554
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginEnd:I

    .line 555
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginEndGone:I

    .line 557
    goto :goto_4d

    .line 544
    :pswitch_32
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    .line 545
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    .line 546
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginStart:I

    .line 547
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginStartGone:I

    .line 549
    goto :goto_4d

    .line 536
    :pswitch_3b
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    .line 537
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    .line 538
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginRight:I

    .line 539
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginRightGone:I

    .line 541
    goto :goto_4d

    .line 528
    :pswitch_44
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    .line 529
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    .line 530
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginLeft:I

    .line 531
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginLeftGone:I

    .line 533
    nop

    .line 577
    :goto_4d
    goto :goto_86

    .line 580
    :cond_4e
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    .line 581
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    .line 582
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginLeft:I

    .line 583
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    .line 584
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    .line 585
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginRight:I

    .line 586
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    .line 587
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    .line 588
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginStart:I

    .line 589
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    .line 590
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    .line 591
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginEnd:I

    .line 592
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    .line 593
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    .line 594
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginTop:I

    .line 595
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    .line 596
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    .line 597
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginBottom:I

    .line 598
    iput-object v2, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    .line 599
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mHorizontalBias:F

    .line 600
    iput v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mVerticalBias:F

    .line 601
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginLeftGone:I

    .line 602
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginRightGone:I

    .line 603
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginStartGone:I

    .line 604
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginEndGone:I

    .line 605
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginTopGone:I

    .line 606
    iput v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginBottomGone:I

    .line 608
    :goto_86
    return-object p0

    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_44
        :pswitch_44
        :pswitch_3b
        :pswitch_3b
        :pswitch_32
        :pswitch_32
        :pswitch_29
        :pswitch_29
        :pswitch_20
        :pswitch_20
        :pswitch_17
        :pswitch_17
        :pswitch_14
    .end packed-switch
.end method

.method public clearHorizontal()Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 2

    .line 199
    invoke-virtual {p0}, Landroid/support/constraint/solver/state/ConstraintReference;->start()Landroid/support/constraint/solver/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/state/ConstraintReference;->clear()Landroid/support/constraint/solver/state/ConstraintReference;

    .line 200
    invoke-virtual {p0}, Landroid/support/constraint/solver/state/ConstraintReference;->end()Landroid/support/constraint/solver/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/state/ConstraintReference;->clear()Landroid/support/constraint/solver/state/ConstraintReference;

    .line 201
    invoke-virtual {p0}, Landroid/support/constraint/solver/state/ConstraintReference;->left()Landroid/support/constraint/solver/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/state/ConstraintReference;->clear()Landroid/support/constraint/solver/state/ConstraintReference;

    .line 202
    invoke-virtual {p0}, Landroid/support/constraint/solver/state/ConstraintReference;->right()Landroid/support/constraint/solver/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/state/ConstraintReference;->clear()Landroid/support/constraint/solver/state/ConstraintReference;

    .line 203
    return-object p0
.end method

.method public clearVertical()Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 2

    .line 192
    invoke-virtual {p0}, Landroid/support/constraint/solver/state/ConstraintReference;->top()Landroid/support/constraint/solver/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/state/ConstraintReference;->clear()Landroid/support/constraint/solver/state/ConstraintReference;

    .line 193
    invoke-virtual {p0}, Landroid/support/constraint/solver/state/ConstraintReference;->baseline()Landroid/support/constraint/solver/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/state/ConstraintReference;->clear()Landroid/support/constraint/solver/state/ConstraintReference;

    .line 194
    invoke-virtual {p0}, Landroid/support/constraint/solver/state/ConstraintReference;->bottom()Landroid/support/constraint/solver/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/state/ConstraintReference;->clear()Landroid/support/constraint/solver/state/ConstraintReference;

    .line 195
    return-object p0
.end method

.method public createConstraintWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 4

    .line 116
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 117
    invoke-virtual {p0}, Landroid/support/constraint/solver/state/ConstraintReference;->getWidth()Landroid/support/constraint/solver/state/Dimension;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/state/Dimension;->getValue()I

    move-result v1

    .line 118
    invoke-virtual {p0}, Landroid/support/constraint/solver/state/ConstraintReference;->getHeight()Landroid/support/constraint/solver/state/Dimension;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/state/Dimension;->getValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>(II)V

    .line 116
    return-object v0
.end method

.method public end()Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 235
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->END_TO_START:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    goto :goto_d

    .line 237
    :cond_9
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->END_TO_END:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 239
    :goto_d
    return-object p0
.end method

.method public endToEnd(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 324
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->END_TO_END:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 325
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    .line 326
    return-object p0
.end method

.method public endToStart(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 318
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->END_TO_START:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 319
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    .line 320
    return-object p0
.end method

.method public getConstraintWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 3

    .line 108
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_f

    .line 109
    invoke-virtual {p0}, Landroid/support/constraint/solver/state/ConstraintReference;->createConstraintWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 110
    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mView:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 112
    :cond_f
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getHeight()Landroid/support/constraint/solver/state/Dimension;
    .registers 2

    .line 392
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mVerticalDimension:Landroid/support/constraint/solver/state/Dimension;

    return-object v0
.end method

.method public getHorizontalChainStyle()I
    .registers 2

    .line 180
    iget v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mHorizontalChainStyle:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .line 36
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getVerticalChainStyle(I)I
    .registers 3
    .param p1, "chainStyle"    # I

    .line 188
    iget v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mVerticalChainStyle:I

    return v0
.end method

.method public getView()Ljava/lang/Object;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mView:Ljava/lang/Object;

    return-object v0
.end method

.method public getWidth()Landroid/support/constraint/solver/state/Dimension;
    .registers 2

    .line 385
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mHorizontalDimension:Landroid/support/constraint/solver/state/Dimension;

    return-object v0
.end method

.method public height(Landroid/support/constraint/solver/state/Dimension;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "dimension"    # Landroid/support/constraint/solver/state/Dimension;

    .line 382
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/state/ConstraintReference;->setHeight(Landroid/support/constraint/solver/state/Dimension;)Landroid/support/constraint/solver/state/ConstraintReference;

    move-result-object v0

    return-object v0
.end method

.method public horizontalBias(F)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 2
    .param p1, "value"    # F

    .line 487
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mHorizontalBias:F

    .line 488
    return-object p0
.end method

.method public left()Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 208
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->LEFT_TO_LEFT:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    goto :goto_d

    .line 210
    :cond_9
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->LEFT_TO_RIGHT:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 212
    :goto_d
    return-object p0
.end method

.method public leftToLeft(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 282
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->LEFT_TO_LEFT:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 283
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    .line 284
    return-object p0
.end method

.method public leftToRight(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 288
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->LEFT_TO_RIGHT:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 289
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    .line 290
    return-object p0
.end method

.method public margin(I)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 4
    .param p1, "value"    # I

    .line 403
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    if-eqz v0, :cond_25

    .line 404
    sget-object v0, Landroid/support/constraint/solver/state/ConstraintReference$1;->$SwitchMap$android$support$constraint$solver$state$State$Constraint:[I

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-virtual {v1}, Landroid/support/constraint/solver/state/State$Constraint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    goto :goto_24

    .line 427
    :pswitch_12
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginBottom:I

    .line 428
    goto :goto_24

    .line 423
    :pswitch_15
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginTop:I

    .line 424
    goto :goto_24

    .line 419
    :pswitch_18
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginEnd:I

    .line 420
    goto :goto_24

    .line 415
    :pswitch_1b
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginStart:I

    .line 416
    goto :goto_24

    .line 411
    :pswitch_1e
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginRight:I

    .line 412
    goto :goto_24

    .line 407
    :pswitch_21
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginLeft:I

    .line 408
    nop

    .line 431
    :goto_24
    goto :goto_31

    .line 434
    :cond_25
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginLeft:I

    .line 435
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginRight:I

    .line 436
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginStart:I

    .line 437
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginEnd:I

    .line 438
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginTop:I

    .line 439
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginBottom:I

    .line 441
    :goto_31
    return-object p0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_21
        :pswitch_21
        :pswitch_1e
        :pswitch_1e
        :pswitch_1b
        :pswitch_1b
        :pswitch_18
        :pswitch_18
        :pswitch_15
        :pswitch_15
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public margin(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "marginValue"    # Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mState:Landroid/support/constraint/solver/state/State;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/state/ConstraintReference;->margin(I)Landroid/support/constraint/solver/state/ConstraintReference;

    move-result-object v0

    return-object v0
.end method

.method public marginGone(I)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 4
    .param p1, "value"    # I

    .line 445
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    if-eqz v0, :cond_25

    .line 446
    sget-object v0, Landroid/support/constraint/solver/state/ConstraintReference$1;->$SwitchMap$android$support$constraint$solver$state$State$Constraint:[I

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    invoke-virtual {v1}, Landroid/support/constraint/solver/state/State$Constraint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    goto :goto_24

    .line 469
    :pswitch_12
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginBottomGone:I

    .line 470
    goto :goto_24

    .line 465
    :pswitch_15
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginTopGone:I

    .line 466
    goto :goto_24

    .line 461
    :pswitch_18
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginEndGone:I

    .line 462
    goto :goto_24

    .line 457
    :pswitch_1b
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginStartGone:I

    .line 458
    goto :goto_24

    .line 453
    :pswitch_1e
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginRightGone:I

    .line 454
    goto :goto_24

    .line 449
    :pswitch_21
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginLeftGone:I

    .line 450
    nop

    .line 473
    :goto_24
    goto :goto_31

    .line 476
    :cond_25
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginLeftGone:I

    .line 477
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginRightGone:I

    .line 478
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginStartGone:I

    .line 479
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginEndGone:I

    .line 480
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginTopGone:I

    .line 481
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mMarginBottomGone:I

    .line 483
    :goto_31
    return-object p0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_21
        :pswitch_21
        :pswitch_1e
        :pswitch_1e
        :pswitch_1b
        :pswitch_1b
        :pswitch_18
        :pswitch_18
        :pswitch_15
        :pswitch_15
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public right()Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 2

    .line 216
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 217
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->RIGHT_TO_LEFT:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    goto :goto_d

    .line 219
    :cond_9
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->RIGHT_TO_RIGHT:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 221
    :goto_d
    return-object p0
.end method

.method public rightToLeft(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 294
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->RIGHT_TO_LEFT:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 295
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    .line 296
    return-object p0
.end method

.method public rightToRight(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 300
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->RIGHT_TO_RIGHT:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 301
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    .line 302
    return-object p0
.end method

.method public setConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 3
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 99
    if-nez p1, :cond_3

    .line 100
    return-void

    .line 102
    :cond_3
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 103
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mView:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public setHeight(Landroid/support/constraint/solver/state/Dimension;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 2
    .param p1, "dimension"    # Landroid/support/constraint/solver/state/Dimension;

    .line 394
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mVerticalDimension:Landroid/support/constraint/solver/state/Dimension;

    .line 395
    return-object p0
.end method

.method public setHorizontalChainStyle(I)V
    .registers 2
    .param p1, "chainStyle"    # I

    .line 176
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mHorizontalChainStyle:I

    .line 177
    return-void
.end method

.method public setKey(Ljava/lang/Object;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->key:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public setVerticalChainStyle(I)V
    .registers 2
    .param p1, "chainStyle"    # I

    .line 184
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mVerticalChainStyle:I

    .line 185
    return-void
.end method

.method public setView(Ljava/lang/Object;)V
    .registers 3
    .param p1, "view"    # Ljava/lang/Object;

    .line 88
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mView:Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_9

    .line 90
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 92
    :cond_9
    return-void
.end method

.method public setWidth(Landroid/support/constraint/solver/state/Dimension;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 2
    .param p1, "dimension"    # Landroid/support/constraint/solver/state/Dimension;

    .line 388
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mHorizontalDimension:Landroid/support/constraint/solver/state/Dimension;

    .line 389
    return-object p0
.end method

.method public start()Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 2

    .line 225
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 226
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->START_TO_START:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    goto :goto_d

    .line 228
    :cond_9
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->START_TO_END:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 230
    :goto_d
    return-object p0
.end method

.method public startToEnd(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 312
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->START_TO_END:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 313
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    .line 314
    return-object p0
.end method

.method public startToStart(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 306
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->START_TO_START:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 307
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    .line 308
    return-object p0
.end method

.method public top()Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 244
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->TOP_TO_TOP:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    goto :goto_d

    .line 246
    :cond_9
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->TOP_TO_BOTTOM:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 248
    :goto_d
    return-object p0
.end method

.method public topToBottom(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 336
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->TOP_TO_BOTTOM:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 337
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    .line 338
    return-object p0
.end method

.method public topToTop(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 330
    sget-object v0, Landroid/support/constraint/solver/state/State$Constraint;->TOP_TO_TOP:Landroid/support/constraint/solver/state/State$Constraint;

    iput-object v0, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLast:Landroid/support/constraint/solver/state/State$Constraint;

    .line 331
    iput-object p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    .line 332
    return-object p0
.end method

.method public validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/constraint/solver/state/ConstraintReference$IncorrectConstraintException;
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "errors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    if-eqz v1, :cond_12

    .line 143
    const-string v1, "LeftToLeft and LeftToRight both defined"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_12
    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    if-eqz v1, :cond_1f

    .line 146
    const-string v1, "RightToLeft and RightToRight both defined"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_1f
    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    if-eqz v1, :cond_2c

    .line 149
    const-string v1, "StartToStart and StartToEnd both defined"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_2c
    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    if-eqz v1, :cond_39

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    if-eqz v1, :cond_39

    .line 152
    const-string v1, "EndToStart and EndToEnd both defined"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_39
    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    if-nez v1, :cond_49

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    if-nez v1, :cond_49

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    if-nez v1, :cond_49

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    if-eqz v1, :cond_5e

    :cond_49
    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    if-nez v1, :cond_59

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    if-nez v1, :cond_59

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    if-nez v1, :cond_59

    iget-object v1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    if-eqz v1, :cond_5e

    .line 156
    :cond_59
    const-string v1, "Both left/right and start/end constraints defined"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_5e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_65

    .line 161
    return-void

    .line 159
    :cond_65
    new-instance v1, Landroid/support/constraint/solver/state/ConstraintReference$IncorrectConstraintException;

    invoke-direct {v1, p0, v0}, Landroid/support/constraint/solver/state/ConstraintReference$IncorrectConstraintException;-><init>(Landroid/support/constraint/solver/state/ConstraintReference;Ljava/util/ArrayList;)V

    throw v1
.end method

.method public verticalBias(F)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 2
    .param p1, "value"    # F

    .line 492
    iput p1, p0, Landroid/support/constraint/solver/state/ConstraintReference;->mVerticalBias:F

    .line 493
    return-object p0
.end method

.method public width(Landroid/support/constraint/solver/state/Dimension;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "dimension"    # Landroid/support/constraint/solver/state/Dimension;

    .line 378
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/state/ConstraintReference;->setWidth(Landroid/support/constraint/solver/state/Dimension;)Landroid/support/constraint/solver/state/ConstraintReference;

    move-result-object v0

    return-object v0
.end method
