.class public Landroid/support/constraint/ConstraintProperties;
.super Ljava/lang/Object;
.source "ConstraintProperties.java"


# static fields
.field public static final BASELINE:I = 0x5

.field public static final BOTTOM:I = 0x4

.field public static final END:I = 0x7

.field public static final LEFT:I = 0x1

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x6

.field public static final TOP:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1035
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_13

    .line 1036
    move-object v1, v0

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1037
    iput-object p1, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    .line 1041
    return-void

    .line 1039
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Only children of ConstraintLayout.LayoutParams supported"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sideToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "side"    # I

    .line 1014
    packed-switch p1, :pswitch_data_1c

    .line 1030
    const-string v0, "undefined"

    return-object v0

    .line 1028
    :pswitch_6
    const-string v0, "end"

    return-object v0

    .line 1026
    :pswitch_9
    const-string v0, "start"

    return-object v0

    .line 1024
    :pswitch_c
    const-string v0, "baseline"

    return-object v0

    .line 1022
    :pswitch_f
    const-string v0, "bottom"

    return-object v0

    .line 1020
    :pswitch_12
    const-string v0, "top"

    return-object v0

    .line 1018
    :pswitch_15
    const-string v0, "right"

    return-object v0

    .line 1016
    :pswitch_18
    const-string v0, "left"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public addToHorizontalChain(II)Landroid/support/constraint/ConstraintProperties;
    .registers 9
    .param p1, "leftId"    # I
    .param p2, "rightId"    # I

    .line 739
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x2

    :goto_7
    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, v2, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 740
    if-nez p2, :cond_f

    const/4 v2, 0x2

    goto :goto_10

    :cond_f
    const/4 v2, 0x1

    :goto_10
    invoke-virtual {p0, v0, p2, v2, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 741
    if-eqz p1, :cond_32

    .line 742
    iget-object v2, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 743
    .local v2, "leftView":Landroid/view/View;
    new-instance v4, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v4, v2}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 744
    .local v4, "leftProp":Landroid/support/constraint/ConstraintProperties;
    iget-object v5, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v0, v5, v1, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 746
    .end local v2    # "leftView":Landroid/view/View;
    .end local v4    # "leftProp":Landroid/support/constraint/ConstraintProperties;
    :cond_32
    if-eqz p2, :cond_51

    .line 747
    iget-object v2, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 748
    .local v2, "rightView":Landroid/view/View;
    new-instance v4, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v4, v2}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 749
    .local v4, "rightProp":Landroid/support/constraint/ConstraintProperties;
    iget-object v5, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v1, v5, v0, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 751
    .end local v2    # "rightView":Landroid/view/View;
    .end local v4    # "rightProp":Landroid/support/constraint/ConstraintProperties;
    :cond_51
    return-object p0
.end method

.method public addToHorizontalChainRTL(II)Landroid/support/constraint/ConstraintProperties;
    .registers 9
    .param p1, "leftId"    # I
    .param p2, "rightId"    # I

    .line 762
    const/4 v0, 0x7

    const/4 v1, 0x6

    if-nez p1, :cond_6

    const/4 v2, 0x6

    goto :goto_7

    :cond_6
    const/4 v2, 0x7

    :goto_7
    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, v2, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 763
    if-nez p2, :cond_f

    const/4 v2, 0x7

    goto :goto_10

    :cond_f
    const/4 v2, 0x6

    :goto_10
    invoke-virtual {p0, v0, p2, v2, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 764
    if-eqz p1, :cond_32

    .line 765
    iget-object v2, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 766
    .local v2, "leftView":Landroid/view/View;
    new-instance v4, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v4, v2}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 767
    .local v4, "leftProp":Landroid/support/constraint/ConstraintProperties;
    iget-object v5, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v0, v5, v1, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 769
    .end local v2    # "leftView":Landroid/view/View;
    .end local v4    # "leftProp":Landroid/support/constraint/ConstraintProperties;
    :cond_32
    if-eqz p2, :cond_51

    .line 770
    iget-object v2, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 771
    .local v2, "rightView":Landroid/view/View;
    new-instance v4, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v4, v2}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 772
    .local v4, "rightProp":Landroid/support/constraint/ConstraintProperties;
    iget-object v5, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v1, v5, v0, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 774
    .end local v2    # "rightView":Landroid/view/View;
    .end local v4    # "rightProp":Landroid/support/constraint/ConstraintProperties;
    :cond_51
    return-object p0
.end method

.method public addToVerticalChain(II)Landroid/support/constraint/ConstraintProperties;
    .registers 9
    .param p1, "topId"    # I
    .param p2, "bottomId"    # I

    .line 785
    const/4 v0, 0x4

    const/4 v1, 0x3

    if-nez p1, :cond_6

    const/4 v2, 0x3

    goto :goto_7

    :cond_6
    const/4 v2, 0x4

    :goto_7
    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, v2, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 786
    if-nez p2, :cond_f

    const/4 v2, 0x4

    goto :goto_10

    :cond_f
    const/4 v2, 0x3

    :goto_10
    invoke-virtual {p0, v0, p2, v2, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 787
    if-eqz p1, :cond_32

    .line 788
    iget-object v2, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 789
    .local v2, "topView":Landroid/view/View;
    new-instance v4, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v4, v2}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 790
    .local v4, "topProp":Landroid/support/constraint/ConstraintProperties;
    iget-object v5, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v0, v5, v1, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 792
    .end local v2    # "topView":Landroid/view/View;
    .end local v4    # "topProp":Landroid/support/constraint/ConstraintProperties;
    :cond_32
    if-eqz p2, :cond_51

    .line 793
    iget-object v2, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 794
    .local v2, "bottomView":Landroid/view/View;
    new-instance v4, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v4, v2}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 795
    .local v4, "bottomProp":Landroid/support/constraint/ConstraintProperties;
    iget-object v5, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v1, v5, v0, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 797
    .end local v2    # "bottomView":Landroid/view/View;
    .end local v4    # "bottomProp":Landroid/support/constraint/ConstraintProperties;
    :cond_51
    return-object p0
.end method

.method public alpha(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "alpha"    # F

    .line 421
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 422
    return-object p0
.end method

.method public apply()V
    .registers 1

    .line 1044
    return-void
.end method

.method public center(IIIIIIF)Landroid/support/constraint/ConstraintProperties;
    .registers 10
    .param p1, "firstID"    # I
    .param p2, "firstSide"    # I
    .param p3, "firstMargin"    # I
    .param p4, "secondId"    # I
    .param p5, "secondSide"    # I
    .param p6, "secondMargin"    # I
    .param p7, "bias"    # F

    .line 115
    const-string v0, "margin must be > 0"

    if-ltz p3, :cond_50

    .line 118
    if-ltz p6, :cond_4a

    .line 121
    const/4 v0, 0x0

    cmpg-float v0, p7, v0

    if-lez v0, :cond_42

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p7, v0

    if-gtz v0, :cond_42

    .line 125
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_37

    if-ne p2, v0, :cond_18

    goto :goto_37

    .line 130
    :cond_18
    const/4 v0, 0x7

    const/4 v1, 0x6

    if-eq p2, v1, :cond_2c

    if-ne p2, v0, :cond_1f

    goto :goto_2c

    .line 136
    :cond_1f
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 137
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 138
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    goto :goto_41

    .line 131
    :cond_2c
    :goto_2c
    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 132
    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 134
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    goto :goto_41

    .line 126
    :cond_37
    :goto_37
    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 127
    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 129
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 141
    :goto_41
    return-object p0

    .line 122
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bias must be between 0 and 1 inclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public centerHorizontally(I)Landroid/support/constraint/ConstraintProperties;
    .registers 10
    .param p1, "toView"    # I

    .line 208
    if-nez p1, :cond_f

    .line 209
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/support/constraint/ConstraintProperties;->center(IIIIIIF)Landroid/support/constraint/ConstraintProperties;

    goto :goto_1b

    .line 211
    :cond_f
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v4, p1

    invoke-virtual/range {v0 .. v7}, Landroid/support/constraint/ConstraintProperties;->center(IIIIIIF)Landroid/support/constraint/ConstraintProperties;

    .line 213
    :goto_1b
    return-object p0
.end method

.method public centerHorizontally(IIIIIIF)Landroid/support/constraint/ConstraintProperties;
    .registers 9
    .param p1, "leftId"    # I
    .param p2, "leftSide"    # I
    .param p3, "leftMargin"    # I
    .param p4, "rightId"    # I
    .param p5, "rightSide"    # I
    .param p6, "rightMargin"    # I
    .param p7, "bias"    # F

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 158
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 159
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 160
    return-object p0
.end method

.method public centerHorizontallyRtl(I)Landroid/support/constraint/ConstraintProperties;
    .registers 10
    .param p1, "toView"    # I

    .line 223
    if-nez p1, :cond_f

    .line 224
    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/support/constraint/ConstraintProperties;->center(IIIIIIF)Landroid/support/constraint/ConstraintProperties;

    goto :goto_1b

    .line 226
    :cond_f
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v4, p1

    invoke-virtual/range {v0 .. v7}, Landroid/support/constraint/ConstraintProperties;->center(IIIIIIF)Landroid/support/constraint/ConstraintProperties;

    .line 228
    :goto_1b
    return-object p0
.end method

.method public centerHorizontallyRtl(IIIIIIF)Landroid/support/constraint/ConstraintProperties;
    .registers 9
    .param p1, "startId"    # I
    .param p2, "startSide"    # I
    .param p3, "startMargin"    # I
    .param p4, "endId"    # I
    .param p5, "endSide"    # I
    .param p6, "endMargin"    # I
    .param p7, "bias"    # F

    .line 176
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 177
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 178
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 179
    return-object p0
.end method

.method public centerVertically(I)Landroid/support/constraint/ConstraintProperties;
    .registers 10
    .param p1, "toView"    # I

    .line 238
    if-nez p1, :cond_f

    .line 239
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/support/constraint/ConstraintProperties;->center(IIIIIIF)Landroid/support/constraint/ConstraintProperties;

    goto :goto_1b

    .line 241
    :cond_f
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v4, p1

    invoke-virtual/range {v0 .. v7}, Landroid/support/constraint/ConstraintProperties;->center(IIIIIIF)Landroid/support/constraint/ConstraintProperties;

    .line 243
    :goto_1b
    return-object p0
.end method

.method public centerVertically(IIIIIIF)Landroid/support/constraint/ConstraintProperties;
    .registers 9
    .param p1, "topId"    # I
    .param p2, "topSide"    # I
    .param p3, "topMargin"    # I
    .param p4, "bottomId"    # I
    .param p5, "bottomSide"    # I
    .param p6, "bottomMargin"    # I
    .param p7, "bias"    # F

    .line 195
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 196
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 197
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 198
    return-object p0
.end method

.method public connect(IIII)Landroid/support/constraint/ConstraintProperties;
    .registers 15
    .param p1, "startSide"    # I
    .param p2, "endID"    # I
    .param p3, "endSide"    # I
    .param p4, "margin"    # I

    .line 906
    const/16 v0, 0x11

    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const-string v7, "right to "

    const-string v8, " undefined"

    const/4 v9, -0x1

    packed-switch p1, :pswitch_data_1ea

    .line 1007
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 991
    :pswitch_3b
    if-ne p3, v2, :cond_46

    .line 992
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 993
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_50

    .line 994
    :cond_46
    if-ne p3, v3, :cond_5b

    .line 995
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 996
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1000
    :goto_50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_1c7

    .line 1002
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {v0, p4}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    goto/16 :goto_1c7

    .line 998
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 977
    :pswitch_7a
    if-ne p3, v3, :cond_85

    .line 978
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 979
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    goto :goto_8f

    .line 980
    :cond_85
    if-ne p3, v2, :cond_9a

    .line 981
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 982
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 986
    :goto_8f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_1c7

    .line 987
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {v0, p4}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    goto/16 :goto_1c7

    .line 984
    :cond_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 966
    :pswitch_b9
    const/4 v0, 0x5

    if-ne p3, v0, :cond_d2

    .line 967
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 968
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 969
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 970
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 971
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    goto/16 :goto_1c7

    .line 973
    :cond_d2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :pswitch_f1
    if-ne p3, v4, :cond_100

    .line 951
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 952
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 953
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto :goto_10e

    .line 955
    :cond_100
    if-ne p3, v5, :cond_114

    .line 956
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 957
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 958
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 963
    :goto_10e
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p4, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 964
    goto/16 :goto_1c7

    .line 961
    :cond_114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :pswitch_133
    if-ne p3, v5, :cond_142

    .line 936
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 937
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 938
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto :goto_150

    .line 939
    :cond_142
    if-ne p3, v4, :cond_155

    .line 940
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 941
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 942
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 947
    :goto_150
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p4, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    .line 948
    goto :goto_1c7

    .line 945
    :cond_155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 921
    :pswitch_174
    if-ne p3, v6, :cond_17f

    .line 922
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 923
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    goto :goto_189

    .line 925
    :cond_17f
    if-ne p3, v1, :cond_18e

    .line 926
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 927
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 932
    :goto_189
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p4, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 933
    goto :goto_1c7

    .line 930
    :cond_18e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 908
    :pswitch_1ad
    if-ne p3, v6, :cond_1b8

    .line 909
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 910
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    goto :goto_1c2

    .line 911
    :cond_1b8
    if-ne p3, v1, :cond_1c8

    .line 912
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 913
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 918
    :goto_1c2
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p4, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 919
    nop

    .line 1010
    :cond_1c7
    :goto_1c7
    return-object p0

    .line 916
    :cond_1c8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Left to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroid/support/constraint/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_1ea
    .packed-switch 0x1
        :pswitch_1ad
        :pswitch_174
        :pswitch_133
        :pswitch_f1
        :pswitch_b9
        :pswitch_7a
        :pswitch_3b
    .end packed-switch
.end method

.method public constrainDefaultHeight(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "height"    # I

    .line 653
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 654
    return-object p0
.end method

.method public constrainDefaultWidth(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "width"    # I

    .line 665
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 666
    return-object p0
.end method

.method public constrainHeight(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "height"    # I

    .line 582
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 583
    return-object p0
.end method

.method public constrainMaxHeight(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "height"    # I

    .line 605
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 606
    return-object p0
.end method

.method public constrainMaxWidth(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "width"    # I

    .line 617
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 618
    return-object p0
.end method

.method public constrainMinHeight(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "height"    # I

    .line 629
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 630
    return-object p0
.end method

.method public constrainMinWidth(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "width"    # I

    .line 641
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 642
    return-object p0
.end method

.method public constrainWidth(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "width"    # I

    .line 593
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 594
    return-object p0
.end method

.method public dimensionRatio(Ljava/lang/String;)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "ratio"    # Ljava/lang/String;

    .line 399
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput-object p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 400
    return-object p0
.end method

.method public elevation(F)Landroid/support/constraint/ConstraintProperties;
    .registers 4
    .param p1, "elevation"    # F

    .line 432
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 433
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    .line 435
    :cond_b
    return-object p0
.end method

.method public goneMargin(II)Landroid/support/constraint/ConstraintProperties;
    .registers 5
    .param p1, "anchor"    # I
    .param p2, "value"    # I

    .line 342
    packed-switch p1, :pswitch_data_32

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :pswitch_b
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 362
    goto :goto_31

    .line 358
    :pswitch_10
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 359
    goto :goto_31

    .line 356
    :pswitch_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseline does not support margins"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :pswitch_1d
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 354
    goto :goto_31

    .line 350
    :pswitch_22
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 351
    goto :goto_31

    .line 347
    :pswitch_27
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 348
    goto :goto_31

    .line 344
    :pswitch_2c
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 345
    nop

    .line 366
    :goto_31
    return-object p0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_27
        :pswitch_22
        :pswitch_1d
        :pswitch_15
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method public horizontalBias(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "bias"    # F

    .line 376
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 377
    return-object p0
.end method

.method public horizontalChainStyle(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "chainStyle"    # I

    .line 708
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 709
    return-object p0
.end method

.method public horizontalWeight(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "weight"    # F

    .line 677
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 678
    return-object p0
.end method

.method public margin(II)Landroid/support/constraint/ConstraintProperties;
    .registers 5
    .param p1, "anchor"    # I
    .param p2, "value"    # I

    .line 307
    packed-switch p1, :pswitch_data_34

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :pswitch_b
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {v0, p2}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    .line 327
    goto :goto_33

    .line 323
    :pswitch_11
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {v0, p2}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 324
    goto :goto_33

    .line 321
    :pswitch_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseline does not support margins"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :pswitch_1f
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 319
    goto :goto_33

    .line 315
    :pswitch_24
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    .line 316
    goto :goto_33

    .line 312
    :pswitch_29
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 313
    goto :goto_33

    .line 309
    :pswitch_2e
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 310
    nop

    .line 331
    :goto_33
    return-object p0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_17
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public removeConstraints(I)Landroid/support/constraint/ConstraintProperties;
    .registers 4
    .param p1, "anchor"    # I

    .line 253
    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_7a

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :pswitch_c
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 289
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 290
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    .line 291
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 292
    goto :goto_79

    .line 282
    :pswitch_1e
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 283
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 284
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 285
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 286
    goto :goto_79

    .line 279
    :pswitch_30
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 280
    goto :goto_79

    .line 273
    :pswitch_35
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 274
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 275
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 276
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 277
    goto :goto_79

    .line 267
    :pswitch_46
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 268
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 269
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    .line 270
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 271
    goto :goto_79

    .line 261
    :pswitch_57
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 262
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 263
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 264
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 265
    goto :goto_79

    .line 255
    :pswitch_68
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 256
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 257
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 258
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 259
    nop

    .line 296
    :goto_79
    return-object p0

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_68
        :pswitch_57
        :pswitch_46
        :pswitch_35
        :pswitch_30
        :pswitch_1e
        :pswitch_c
    .end packed-switch
.end method

.method public removeFromHorizontalChain()Landroid/support/constraint/ConstraintProperties;
    .registers 15

    .line 843
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 844
    .local v0, "leftId":I
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 846
    .local v1, "rightId":I
    iget-object v2, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_74

    if-eq v1, v4, :cond_11

    goto :goto_74

    .line 868
    :cond_11
    iget v2, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 869
    .local v2, "startId":I
    iget-object v5, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 870
    .local v5, "endId":I
    const/4 v6, 0x7

    const/4 v7, 0x6

    if-ne v2, v4, :cond_1d

    if-eq v5, v4, :cond_6d

    .line 871
    :cond_1d
    iget-object v8, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    move-object v9, v8

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 872
    .local v8, "startView":Landroid/view/View;
    new-instance v9, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v9, v8}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 873
    .local v9, "startProp":Landroid/support/constraint/ConstraintProperties;
    iget-object v10, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    move-object v11, v10

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 874
    .local v10, "endView":Landroid/view/View;
    new-instance v11, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v11, v10}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 876
    .local v11, "endProp":Landroid/support/constraint/ConstraintProperties;
    iget-object v12, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eq v2, v4, :cond_52

    if-eq v5, v4, :cond_52

    .line 878
    invoke-virtual {v9, v6, v5, v7, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 879
    invoke-virtual {v11, v7, v0, v6, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    goto :goto_6d

    .line 880
    :cond_52
    if-ne v0, v4, :cond_56

    if-eq v5, v4, :cond_6d

    .line 881
    :cond_56
    iget v12, v12, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iget-object v13, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eq v12, v4, :cond_62

    .line 883
    iget v4, v13, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {v9, v6, v4, v6, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    goto :goto_6d

    .line 884
    :cond_62
    iget v12, v13, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget-object v13, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eq v12, v4, :cond_6d

    .line 886
    iget v4, v13, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {v11, v7, v4, v7, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 890
    .end local v8    # "startView":Landroid/view/View;
    .end local v9    # "startProp":Landroid/support/constraint/ConstraintProperties;
    .end local v10    # "endView":Landroid/view/View;
    .end local v11    # "endProp":Landroid/support/constraint/ConstraintProperties;
    :cond_6d
    :goto_6d
    invoke-virtual {p0, v7}, Landroid/support/constraint/ConstraintProperties;->removeConstraints(I)Landroid/support/constraint/ConstraintProperties;

    .line 891
    invoke-virtual {p0, v6}, Landroid/support/constraint/ConstraintProperties;->removeConstraints(I)Landroid/support/constraint/ConstraintProperties;

    goto :goto_cd

    .line 847
    .end local v2    # "startId":I
    .end local v5    # "endId":I
    :cond_74
    :goto_74
    iget-object v2, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 848
    .local v2, "leftView":Landroid/view/View;
    new-instance v5, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v5, v2}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 849
    .local v5, "leftProp":Landroid/support/constraint/ConstraintProperties;
    iget-object v6, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    move-object v7, v6

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 850
    .local v6, "rightView":Landroid/view/View;
    new-instance v7, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v7, v6}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 851
    .local v7, "rightProp":Landroid/support/constraint/ConstraintProperties;
    iget-object v8, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v0, v4, :cond_ab

    if-eq v1, v4, :cond_ab

    .line 853
    invoke-virtual {v5, v10, v1, v9, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 854
    invoke-virtual {v7, v9, v0, v10, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    goto :goto_c6

    .line 855
    :cond_ab
    if-ne v0, v4, :cond_af

    if-eq v1, v4, :cond_c6

    .line 856
    :cond_af
    iget v8, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iget-object v11, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eq v8, v4, :cond_bb

    .line 858
    iget v4, v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {v5, v10, v4, v10, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    goto :goto_c6

    .line 859
    :cond_bb
    iget v8, v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget-object v11, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eq v8, v4, :cond_c6

    .line 861
    iget v4, v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {v7, v9, v4, v9, v3}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 864
    :cond_c6
    :goto_c6
    invoke-virtual {p0, v9}, Landroid/support/constraint/ConstraintProperties;->removeConstraints(I)Landroid/support/constraint/ConstraintProperties;

    .line 865
    invoke-virtual {p0, v10}, Landroid/support/constraint/ConstraintProperties;->removeConstraints(I)Landroid/support/constraint/ConstraintProperties;

    .line 866
    .end local v2    # "leftView":Landroid/view/View;
    .end local v5    # "leftProp":Landroid/support/constraint/ConstraintProperties;
    .end local v6    # "rightView":Landroid/view/View;
    .end local v7    # "rightProp":Landroid/support/constraint/ConstraintProperties;
    nop

    .line 893
    :goto_cd
    return-object p0
.end method

.method public removeFromVerticalChain()Landroid/support/constraint/ConstraintProperties;
    .registers 13

    .line 808
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 809
    .local v0, "topId":I
    iget-object v1, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 810
    .local v1, "bottomId":I
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, -0x1

    if-ne v0, v4, :cond_f

    if-eq v1, v4, :cond_60

    .line 811
    :cond_f
    iget-object v5, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 812
    .local v5, "topView":Landroid/view/View;
    new-instance v6, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v6, v5}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 813
    .local v6, "topProp":Landroid/support/constraint/ConstraintProperties;
    iget-object v7, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v8, v7

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 814
    .local v7, "bottomView":Landroid/view/View;
    new-instance v8, Landroid/support/constraint/ConstraintProperties;

    invoke-direct {v8, v7}, Landroid/support/constraint/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 815
    .local v8, "bottomProp":Landroid/support/constraint/ConstraintProperties;
    iget-object v9, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v10, 0x0

    if-eq v0, v4, :cond_45

    if-eq v1, v4, :cond_45

    .line 817
    invoke-virtual {v6, v2, v1, v3, v10}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 818
    invoke-virtual {v8, v3, v0, v2, v10}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    goto :goto_60

    .line 819
    :cond_45
    if-ne v0, v4, :cond_49

    if-eq v1, v4, :cond_60

    .line 820
    :cond_49
    iget v9, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v11, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eq v9, v4, :cond_55

    .line 822
    iget v4, v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {v6, v2, v4, v2, v10}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    goto :goto_60

    .line 823
    :cond_55
    iget v9, v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object v11, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eq v9, v4, :cond_60

    .line 825
    iget v4, v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {v8, v3, v4, v3, v10}, Landroid/support/constraint/ConstraintProperties;->connect(IIII)Landroid/support/constraint/ConstraintProperties;

    .line 830
    .end local v5    # "topView":Landroid/view/View;
    .end local v6    # "topProp":Landroid/support/constraint/ConstraintProperties;
    .end local v7    # "bottomView":Landroid/view/View;
    .end local v8    # "bottomProp":Landroid/support/constraint/ConstraintProperties;
    :cond_60
    :goto_60
    invoke-virtual {p0, v3}, Landroid/support/constraint/ConstraintProperties;->removeConstraints(I)Landroid/support/constraint/ConstraintProperties;

    .line 831
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintProperties;->removeConstraints(I)Landroid/support/constraint/ConstraintProperties;

    .line 832
    return-object p0
.end method

.method public rotation(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "rotation"    # F

    .line 445
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 446
    return-object p0
.end method

.method public rotationX(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "rotationX"    # F

    .line 456
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 457
    return-object p0
.end method

.method public rotationY(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "rotationY"    # F

    .line 467
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationY(F)V

    .line 468
    return-object p0
.end method

.method public scaleX(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "scaleX"    # F

    .line 478
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 479
    return-object p0
.end method

.method public scaleY(F)Landroid/support/constraint/ConstraintProperties;
    .registers 2
    .param p1, "scaleY"    # F

    .line 489
    return-object p0
.end method

.method public transformPivot(FF)Landroid/support/constraint/ConstraintProperties;
    .registers 4
    .param p1, "transformPivotX"    # F
    .param p2, "transformPivotY"    # F

    .line 522
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 523
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setPivotY(F)V

    .line 524
    return-object p0
.end method

.method public transformPivotX(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "transformPivotX"    # F

    .line 499
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 500
    return-object p0
.end method

.method public transformPivotY(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "transformPivotY"    # F

    .line 510
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 511
    return-object p0
.end method

.method public translation(FF)Landroid/support/constraint/ConstraintProperties;
    .registers 4
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F

    .line 557
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 558
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 559
    return-object p0
.end method

.method public translationX(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "translationX"    # F

    .line 534
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 535
    return-object p0
.end method

.method public translationY(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "translationY"    # F

    .line 545
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 546
    return-object p0
.end method

.method public translationZ(F)Landroid/support/constraint/ConstraintProperties;
    .registers 4
    .param p1, "translationZ"    # F

    .line 569
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 570
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 572
    :cond_b
    return-object p0
.end method

.method public verticalBias(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "bias"    # F

    .line 387
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 388
    return-object p0
.end method

.method public verticalChainStyle(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "chainStyle"    # I

    .line 727
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 728
    return-object p0
.end method

.method public verticalWeight(F)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "weight"    # F

    .line 689
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mParams:Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 690
    return-object p0
.end method

.method public visibility(I)Landroid/support/constraint/ConstraintProperties;
    .registers 3
    .param p1, "visibility"    # I

    .line 410
    iget-object v0, p0, Landroid/support/constraint/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    return-object p0
.end method
