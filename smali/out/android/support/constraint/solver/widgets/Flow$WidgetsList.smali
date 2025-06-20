.class Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
.super Ljava/lang/Object;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/widgets/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetsList"
.end annotation


# instance fields
.field private biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field biggestDimension:I

.field private mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mCount:I

.field private mHeight:I

.field private mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mMax:I

.field private mNbMatchConstraintsWidgets:I

.field private mOrientation:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mStartIndex:I

.field private mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mWidth:I

.field final synthetic this$0:Landroid/support/constraint/solver/widgets/Flow;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/Flow;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V
    .registers 10
    .param p2, "orientation"    # I
    .param p3, "left"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p4, "top"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p5, "right"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p6, "bottom"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p7, "max"    # I

    .line 355
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 335
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 336
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 341
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 342
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 343
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 344
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 345
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 346
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 347
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 348
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 349
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 350
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    .line 356
    iput p2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 357
    iput-object p3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 358
    iput-object p4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 359
    iput-object p5, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 360
    iput-object p6, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 361
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 362
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingTop()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 363
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingRight()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 364
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 365
    iput p7, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    .line 366
    return-void
.end method

.method static synthetic access$2000(Landroid/support/constraint/solver/widgets/Flow$WidgetsList;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow$WidgetsList;

    .line 333
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method private recomputeDimensions()V
    .registers 9

    .line 723
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 724
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 725
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 726
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 727
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 728
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_92

    .line 729
    iget v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v2, v1

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v3}, Landroid/support/constraint/solver/widgets/Flow;->access$400(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v3

    if-lt v2, v3, :cond_1c

    .line 730
    goto/16 :goto_92

    .line 732
    :cond_1c
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v2}, Landroid/support/constraint/solver/widgets/Flow;->access$500(Landroid/support/constraint/solver/widgets/Flow;)[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v3, v1

    aget-object v2, v2, v3

    .line 733
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    const/16 v4, 0x8

    if-nez v3, :cond_5c

    .line 734
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    .line 735
    .local v3, "width":I
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v5}, Landroid/support/constraint/solver/widgets/Flow;->access$000(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v5

    .line 736
    .local v5, "gap":I
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    if-ne v6, v4, :cond_3e

    .line 737
    const/4 v5, 0x0

    .line 739
    :cond_3e
    iget v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    add-int v6, v3, v5

    add-int/2addr v4, v6

    iput v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 740
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    iget v6, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v4, v2, v6}, Landroid/support/constraint/solver/widgets/Flow;->access$300(Landroid/support/constraint/solver/widgets/Flow;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v4

    .line 741
    .local v4, "height":I
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v6, :cond_55

    iget v6, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v6, v4, :cond_5b

    .line 742
    :cond_55
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 743
    iput v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 744
    iput v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 746
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "gap":I
    :cond_5b
    goto :goto_8e

    .line 747
    :cond_5c
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    iget v5, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v3, v2, v5}, Landroid/support/constraint/solver/widgets/Flow;->access$200(Landroid/support/constraint/solver/widgets/Flow;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v3

    .line 748
    .restart local v3    # "width":I
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    iget v6, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v5, v2, v6}, Landroid/support/constraint/solver/widgets/Flow;->access$300(Landroid/support/constraint/solver/widgets/Flow;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v5

    .line 749
    .local v5, "height":I
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v6}, Landroid/support/constraint/solver/widgets/Flow;->access$100(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v6

    .line 750
    .local v6, "gap":I
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v4, :cond_79

    .line 751
    const/4 v6, 0x0

    .line 753
    :cond_79
    iget v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    add-int v7, v5, v6

    add-int/2addr v4, v7

    iput v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 754
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_88

    iget v4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v4, v3, :cond_8e

    .line 755
    :cond_88
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 756
    iput v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 757
    iput v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 728
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v3    # "width":I
    .end local v5    # "height":I
    .end local v6    # "gap":I
    :cond_8e
    :goto_8e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    .line 761
    .end local v1    # "i":I
    :cond_92
    :goto_92
    return-void
.end method


# virtual methods
.method public add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 7
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 411
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    const/16 v1, 0x8

    if-nez v0, :cond_48

    .line 412
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    iget v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v0, p1, v2}, Landroid/support/constraint/solver/widgets/Flow;->access$200(Landroid/support/constraint/solver/widgets/Flow;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v0

    .line 413
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1d

    .line 414
    iget v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 415
    const/4 v0, 0x0

    .line 417
    :cond_1d
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v2}, Landroid/support/constraint/solver/widgets/Flow;->access$000(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v2

    .line 418
    .local v2, "gap":I
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    if-ne v3, v1, :cond_2a

    .line 419
    const/4 v2, 0x0

    .line 421
    :cond_2a
    iget v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    add-int v3, v0, v2

    add-int/2addr v1, v3

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 422
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    iget v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v1, p1, v3}, Landroid/support/constraint/solver/widgets/Flow;->access$300(Landroid/support/constraint/solver/widgets/Flow;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v1

    .line 423
    .local v1, "height":I
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v3, :cond_41

    iget v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v3, v1, :cond_47

    .line 424
    :cond_41
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 425
    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 426
    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 428
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "gap":I
    :cond_47
    goto :goto_89

    .line 429
    :cond_48
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    iget v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v0, p1, v2}, Landroid/support/constraint/solver/widgets/Flow;->access$200(Landroid/support/constraint/solver/widgets/Flow;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v0

    .line 430
    .restart local v0    # "width":I
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    iget v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v2, p1, v3}, Landroid/support/constraint/solver/widgets/Flow;->access$300(Landroid/support/constraint/solver/widgets/Flow;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v2

    .line 431
    .local v2, "height":I
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_67

    .line 432
    iget v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 433
    const/4 v2, 0x0

    .line 435
    :cond_67
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v3}, Landroid/support/constraint/solver/widgets/Flow;->access$100(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v3

    .line 436
    .local v3, "gap":I
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    if-ne v4, v1, :cond_74

    .line 437
    const/4 v3, 0x0

    .line 439
    :cond_74
    iget v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    add-int v4, v2, v3

    add-int/2addr v1, v4

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 440
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_83

    iget v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v1, v0, :cond_89

    .line 441
    :cond_83
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 442
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 443
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 446
    .end local v0    # "width":I
    .end local v2    # "height":I
    .end local v3    # "gap":I
    :cond_89
    :goto_89
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 447
    return-void
.end method

.method public clear()V
    .registers 3

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 386
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 387
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 388
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 389
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 390
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 391
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 392
    return-void
.end method

.method public createConstraints(ZIZ)V
    .registers 20
    .param p1, "isInRtl"    # Z
    .param p2, "chainIndex"    # I
    .param p3, "isLastChain"    # Z

    .line 450
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 451
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_26

    .line 452
    iget v3, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v3, v2

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v4}, Landroid/support/constraint/solver/widgets/Flow;->access$400(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v4

    if-lt v3, v4, :cond_13

    .line 453
    goto :goto_26

    .line 455
    :cond_13
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v3}, Landroid/support/constraint/solver/widgets/Flow;->access$500(Landroid/support/constraint/solver/widgets/Flow;)[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    iget v4, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    .line 456
    .local v3, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_23

    .line 457
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 451
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 460
    .end local v2    # "i":I
    :cond_26
    :goto_26
    if-eqz v1, :cond_363

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v2, :cond_2e

    goto/16 :goto_363

    .line 464
    :cond_2e
    const/4 v2, 0x0

    if-eqz p3, :cond_35

    if-nez p2, :cond_35

    const/4 v3, 0x1

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    .line 465
    .local v3, "singleChain":Z
    :goto_36
    const/4 v4, -0x1

    .line 466
    .local v4, "firstVisible":I
    const/4 v5, -0x1

    .line 467
    .local v5, "lastVisible":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_39
    const/4 v7, -0x1

    if-ge v6, v1, :cond_67

    .line 468
    move v8, v6

    .line 469
    .local v8, "index":I
    if-eqz p1, :cond_43

    .line 470
    add-int/lit8 v9, v1, -0x1

    sub-int v8, v9, v6

    .line 472
    :cond_43
    iget v9, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v9, v8

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v10}, Landroid/support/constraint/solver/widgets/Flow;->access$400(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v10

    if-lt v9, v10, :cond_4f

    .line 473
    goto :goto_67

    .line 475
    :cond_4f
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v9}, Landroid/support/constraint/solver/widgets/Flow;->access$500(Landroid/support/constraint/solver/widgets/Flow;)[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    iget v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v10, v8

    aget-object v9, v9, v10

    .line 476
    .local v9, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-nez v10, :cond_64

    .line 477
    if-ne v4, v7, :cond_63

    .line 478
    move v4, v6

    .line 480
    :cond_63
    move v5, v6

    .line 467
    .end local v8    # "index":I
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 484
    .end local v6    # "i":I
    :cond_67
    :goto_67
    const/4 v6, 0x0

    .line 485
    .local v6, "previous":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v8, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v8, :cond_1ef

    .line 486
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 487
    .local v8, "verticalWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v9}, Landroid/support/constraint/solver/widgets/Flow;->access$600(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 488
    iget v9, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 489
    .local v9, "padding":I
    if-lez p2, :cond_82

    .line 490
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v10}, Landroid/support/constraint/solver/widgets/Flow;->access$100(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v10

    add-int/2addr v9, v10

    .line 492
    :cond_82
    iget-object v10, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v11, v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 493
    if-eqz p3, :cond_94

    .line 494
    iget-object v10, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v10, v11, v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 496
    :cond_94
    if-lez p2, :cond_a1

    .line 497
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 498
    .local v10, "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 501
    .end local v10    # "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_a1
    move-object v10, v8

    .line 502
    .local v10, "baselineVerticalWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v11}, Landroid/support/constraint/solver/widgets/Flow;->access$700(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_dd

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v11

    if-nez v11, :cond_dd

    .line 503
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_b2
    if-ge v11, v1, :cond_dd

    .line 504
    move v13, v11

    .line 505
    .local v13, "index":I
    if-eqz p1, :cond_bb

    .line 506
    add-int/lit8 v14, v1, -0x1

    sub-int v13, v14, v11

    .line 508
    :cond_bb
    iget v14, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v14, v13

    iget-object v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v15}, Landroid/support/constraint/solver/widgets/Flow;->access$400(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v15

    if-lt v14, v15, :cond_c7

    .line 509
    goto :goto_dd

    .line 511
    :cond_c7
    iget-object v14, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v14}, Landroid/support/constraint/solver/widgets/Flow;->access$500(Landroid/support/constraint/solver/widgets/Flow;)[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v14

    iget v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    .line 512
    .local v14, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v15

    if-eqz v15, :cond_da

    .line 513
    move-object v10, v14

    .line 514
    goto :goto_dd

    .line 503
    .end local v13    # "index":I
    .end local v14    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_da
    add-int/lit8 v11, v11, 0x1

    goto :goto_b2

    .line 519
    .end local v11    # "i":I
    :cond_dd
    :goto_dd
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_de
    if-ge v11, v1, :cond_1ed

    .line 520
    move v13, v11

    .line 521
    .restart local v13    # "index":I
    if-eqz p1, :cond_e7

    .line 522
    add-int/lit8 v14, v1, -0x1

    sub-int v13, v14, v11

    .line 524
    :cond_e7
    iget v14, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v14, v13

    iget-object v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v15}, Landroid/support/constraint/solver/widgets/Flow;->access$400(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v15

    if-lt v14, v15, :cond_f4

    .line 525
    goto/16 :goto_1ed

    .line 527
    :cond_f4
    iget-object v14, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v14}, Landroid/support/constraint/solver/widgets/Flow;->access$500(Landroid/support/constraint/solver/widgets/Flow;)[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v14

    iget v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    .line 528
    .restart local v14    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v11, :cond_10a

    .line 529
    iget-object v15, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v2, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    invoke-virtual {v14, v15, v12, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 534
    :cond_10a
    if-nez v13, :cond_14d

    .line 535
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v2}, Landroid/support/constraint/solver/widgets/Flow;->access$800(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v2

    .line 536
    .local v2, "style":I
    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v12}, Landroid/support/constraint/solver/widgets/Flow;->access$900(Landroid/support/constraint/solver/widgets/Flow;)F

    move-result v12

    .line 537
    .local v12, "bias":F
    iget v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    if-nez v15, :cond_131

    iget-object v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v15}, Landroid/support/constraint/solver/widgets/Flow;->access$1000(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v15

    if-eq v15, v7, :cond_131

    .line 538
    iget-object v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v15}, Landroid/support/constraint/solver/widgets/Flow;->access$1000(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v2

    .line 539
    iget-object v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v15}, Landroid/support/constraint/solver/widgets/Flow;->access$1100(Landroid/support/constraint/solver/widgets/Flow;)F

    move-result v12

    goto :goto_147

    .line 540
    :cond_131
    if-eqz p3, :cond_147

    iget-object v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v15}, Landroid/support/constraint/solver/widgets/Flow;->access$1200(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v15

    if-eq v15, v7, :cond_147

    .line 541
    iget-object v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v15}, Landroid/support/constraint/solver/widgets/Flow;->access$1200(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v2

    .line 542
    iget-object v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v15}, Landroid/support/constraint/solver/widgets/Flow;->access$1300(Landroid/support/constraint/solver/widgets/Flow;)F

    move-result v12

    .line 544
    :cond_147
    :goto_147
    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 545
    invoke-virtual {v14, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 547
    .end local v2    # "style":I
    .end local v12    # "bias":F
    :cond_14d
    add-int/lit8 v2, v1, -0x1

    if-ne v11, v2, :cond_15a

    .line 548
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v14, v2, v12, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 550
    :cond_15a
    if-eqz v6, :cond_185

    .line 551
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v15}, Landroid/support/constraint/solver/widgets/Flow;->access$000(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v15

    invoke-virtual {v2, v12, v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 552
    if-ne v11, v4, :cond_172

    .line 553
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    invoke-virtual {v2, v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 555
    :cond_172
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 556
    add-int/lit8 v2, v5, 0x1

    if-ne v11, v2, :cond_185

    .line 557
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v2, v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 560
    :cond_185
    if-eq v14, v8, :cond_1e6

    .line 561
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v2}, Landroid/support/constraint/solver/widgets/Flow;->access$700(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v2

    const/4 v12, 0x3

    if-ne v2, v12, :cond_1a7

    .line 562
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_1a7

    if-eq v14, v10, :cond_1a7

    .line 564
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_1a7

    .line 565
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v15, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v12, 0x0

    invoke-virtual {v2, v15, v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_1e6

    .line 567
    :cond_1a7
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v2}, Landroid/support/constraint/solver/widgets/Flow;->access$700(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v2

    packed-switch v2, :pswitch_data_364

    .line 578
    if-eqz v3, :cond_1d7

    .line 579
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    invoke-virtual {v2, v12, v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 580
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v2, v12, v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_1e6

    .line 573
    :pswitch_1c5
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 575
    goto :goto_1e6

    .line 569
    :pswitch_1ce
    const/4 v15, 0x0

    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, v12, v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 571
    goto :goto_1e6

    .line 582
    :cond_1d7
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 583
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, v12, v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 589
    :cond_1e6
    :goto_1e6
    move-object v6, v14

    .line 519
    .end local v13    # "index":I
    .end local v14    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x3

    goto/16 :goto_de

    .line 591
    .end local v8    # "verticalWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "padding":I
    .end local v10    # "baselineVerticalWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "i":I
    :cond_1ed
    :goto_1ed
    goto/16 :goto_362

    .line 592
    :cond_1ef
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->biggest:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 593
    .local v2, "horizontalWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v8}, Landroid/support/constraint/solver/widgets/Flow;->access$800(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 594
    iget v8, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 595
    .local v8, "padding":I
    if-lez p2, :cond_205

    .line 596
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v9}, Landroid/support/constraint/solver/widgets/Flow;->access$000(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v9

    add-int/2addr v8, v9

    .line 598
    :cond_205
    if-eqz p1, :cond_228

    .line 599
    iget-object v9, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 600
    if-eqz p3, :cond_219

    .line 601
    iget-object v9, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v9, v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 603
    :cond_219
    if-lez p2, :cond_248

    .line 604
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 605
    .local v9, "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 606
    .end local v9    # "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_248

    .line 608
    :cond_228
    iget-object v9, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 609
    if-eqz p3, :cond_23a

    .line 610
    iget-object v9, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v9, v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 612
    :cond_23a
    if-lez p2, :cond_248

    .line 613
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 614
    .local v9, "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 617
    .end local v9    # "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_248
    :goto_248
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_249
    if-ge v9, v1, :cond_362

    .line 618
    iget v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v10, v9

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v11}, Landroid/support/constraint/solver/widgets/Flow;->access$400(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v11

    if-lt v10, v11, :cond_258

    .line 619
    goto/16 :goto_362

    .line 621
    :cond_258
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v10}, Landroid/support/constraint/solver/widgets/Flow;->access$500(Landroid/support/constraint/solver/widgets/Flow;)[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    iget v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v11, v9

    aget-object v10, v10, v11

    .line 622
    .local v10, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v9, :cond_2af

    .line 623
    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    invoke-virtual {v10, v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 624
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v11}, Landroid/support/constraint/solver/widgets/Flow;->access$600(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v11

    .line 625
    .local v11, "style":I
    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v12}, Landroid/support/constraint/solver/widgets/Flow;->access$1400(Landroid/support/constraint/solver/widgets/Flow;)F

    move-result v12

    .line 626
    .restart local v12    # "bias":F
    iget v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    if-nez v13, :cond_293

    iget-object v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v13}, Landroid/support/constraint/solver/widgets/Flow;->access$1500(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v13

    if-eq v13, v7, :cond_293

    .line 627
    iget-object v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v13}, Landroid/support/constraint/solver/widgets/Flow;->access$1500(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v11

    .line 628
    iget-object v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v13}, Landroid/support/constraint/solver/widgets/Flow;->access$1600(Landroid/support/constraint/solver/widgets/Flow;)F

    move-result v12

    goto :goto_2a9

    .line 629
    :cond_293
    if-eqz p3, :cond_2a9

    iget-object v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v13}, Landroid/support/constraint/solver/widgets/Flow;->access$1700(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v13

    if-eq v13, v7, :cond_2a9

    .line 630
    iget-object v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v13}, Landroid/support/constraint/solver/widgets/Flow;->access$1700(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v11

    .line 631
    iget-object v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v13}, Landroid/support/constraint/solver/widgets/Flow;->access$1800(Landroid/support/constraint/solver/widgets/Flow;)F

    move-result v12

    .line 633
    :cond_2a9
    :goto_2a9
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 634
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 636
    .end local v11    # "style":I
    .end local v12    # "bias":F
    :cond_2af
    add-int/lit8 v11, v1, -0x1

    if-ne v9, v11, :cond_2bc

    .line 637
    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v10, v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 639
    :cond_2bc
    if-eqz v6, :cond_2e7

    .line 640
    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v13}, Landroid/support/constraint/solver/widgets/Flow;->access$100(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 641
    if-ne v9, v4, :cond_2d4

    .line 642
    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    invoke-virtual {v11, v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 644
    :cond_2d4
    iget-object v11, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 645
    add-int/lit8 v11, v5, 0x1

    if-ne v9, v11, :cond_2e7

    .line 646
    iget-object v11, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v11, v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 649
    :cond_2e7
    if-eq v10, v2, :cond_35c

    .line 650
    if-eqz p1, :cond_319

    .line 651
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v11}, Landroid/support/constraint/solver/widgets/Flow;->access$1900(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v11

    packed-switch v11, :pswitch_data_36c

    goto :goto_317

    .line 657
    :pswitch_2f5
    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 658
    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 660
    goto :goto_317

    .line 662
    :pswitch_305
    const/4 v13, 0x0

    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_317

    .line 653
    :pswitch_30e
    const/4 v13, 0x0

    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 655
    nop

    .line 664
    :goto_317
    const/4 v13, 0x0

    goto :goto_35d

    .line 667
    :cond_319
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v11}, Landroid/support/constraint/solver/widgets/Flow;->access$1900(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v11

    packed-switch v11, :pswitch_data_376

    const/4 v13, 0x0

    goto :goto_35d

    .line 673
    :pswitch_324
    if-eqz v3, :cond_33a

    .line 674
    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    invoke-virtual {v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 675
    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    const/4 v13, 0x0

    goto :goto_35d

    .line 677
    :cond_33a
    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 678
    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 681
    goto :goto_35d

    .line 683
    :pswitch_34a
    const/4 v13, 0x0

    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_35d

    .line 669
    :pswitch_353
    const/4 v13, 0x0

    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 671
    goto :goto_35d

    .line 649
    :cond_35c
    const/4 v13, 0x0

    .line 689
    :goto_35d
    move-object v6, v10

    .line 617
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_249

    .line 692
    .end local v2    # "horizontalWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "padding":I
    .end local v9    # "i":I
    :cond_362
    :goto_362
    return-void

    .line 461
    .end local v3    # "singleChain":Z
    .end local v4    # "firstVisible":I
    .end local v5    # "lastVisible":I
    .end local v6    # "previous":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_363
    :goto_363
    return-void

    :pswitch_data_364
    .packed-switch 0x0
        :pswitch_1ce
        :pswitch_1c5
    .end packed-switch

    :pswitch_data_36c
    .packed-switch 0x0
        :pswitch_30e
        :pswitch_305
        :pswitch_2f5
    .end packed-switch

    :pswitch_data_376
    .packed-switch 0x0
        :pswitch_353
        :pswitch_34a
        :pswitch_324
    .end packed-switch
.end method

.method public getHeight()I
    .registers 3

    .line 404
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 405
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v1}, Landroid/support/constraint/solver/widgets/Flow;->access$100(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 407
    :cond_f
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 397
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v0, :cond_e

    .line 398
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v1}, Landroid/support/constraint/solver/widgets/Flow;->access$000(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 400
    :cond_e
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mWidth:I

    return v0
.end method

.method public measureMatchConstraints(I)V
    .registers 12
    .param p1, "availableSpace"    # I

    .line 695
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    if-nez v0, :cond_5

    .line 696
    return-void

    .line 698
    :cond_5
    iget v1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 699
    .local v1, "count":I
    div-int v0, p1, v0

    .line 700
    .local v0, "widgetSize":I
    const/4 v2, 0x0

    move v8, v2

    .local v8, "i":I
    :goto_b
    if-ge v8, v1, :cond_6a

    .line 701
    iget v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v2, v8

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v3}, Landroid/support/constraint/solver/widgets/Flow;->access$400(Landroid/support/constraint/solver/widgets/Flow;)I

    move-result v3

    if-lt v2, v3, :cond_19

    .line 702
    goto :goto_6a

    .line 704
    :cond_19
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-static {v2}, Landroid/support/constraint/solver/widgets/Flow;->access$500(Landroid/support/constraint/solver/widgets/Flow;)[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v3, v8

    aget-object v9, v2, v3

    .line 705
    .local v9, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v2, :cond_48

    .line 706
    if-eqz v9, :cond_67

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_67

    .line 707
    iget v2, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v2, :cond_67

    .line 708
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    move-object v3, v9

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/Flow;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    goto :goto_67

    .line 712
    :cond_48
    if-eqz v9, :cond_67

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_67

    .line 713
    iget v2, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v2, :cond_67

    .line 714
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->this$0:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, v9

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/Flow;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 700
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_67
    :goto_67
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 719
    .end local v8    # "i":I
    :cond_6a
    :goto_6a
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->recomputeDimensions()V

    .line 720
    return-void
.end method

.method public setStartIndex(I)V
    .registers 2
    .param p1, "value"    # I

    .line 394
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    return-void
.end method

.method public setup(ILandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIII)V
    .registers 11
    .param p1, "orientation"    # I
    .param p2, "left"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p3, "top"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p4, "right"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p5, "bottom"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p6, "paddingLeft"    # I
    .param p7, "paddingTop"    # I
    .param p8, "paddingRight"    # I
    .param p9, "paddingBottom"    # I
    .param p10, "max"    # I

    .line 372
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 373
    iput-object p2, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 374
    iput-object p3, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 375
    iput-object p4, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 376
    iput-object p5, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 377
    iput p6, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 378
    iput p7, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 379
    iput p8, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 380
    iput p9, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 381
    iput p10, p0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->mMax:I

    .line 382
    return-void
.end method
