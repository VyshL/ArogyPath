.class Landroid/support/constraint/motion/MotionLayout$Model;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Model"
.end annotation


# instance fields
.field mEnd:Landroid/support/constraint/ConstraintSet;

.field mEndId:I

.field mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field mStart:Landroid/support/constraint/ConstraintSet;

.field mStartId:I

.field final synthetic this$0:Landroid/support/constraint/motion/MotionLayout;


# direct methods
.method constructor <init>(Landroid/support/constraint/motion/MotionLayout;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 1994
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1995
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1996
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1997
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    .line 1998
    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEnd:Landroid/support/constraint/ConstraintSet;

    return-void
.end method

.method private debugLayout(Ljava/lang/String;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 15
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2185
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2186
    .local v0, "v":Landroid/view/View;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2187
    .local v1, "cName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ========= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MotionLayout"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2189
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_46
    if-ge v5, v3, :cond_13e

    .line 2190
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2191
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2192
    .local v7, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const-string v8, ""

    .line 2193
    .local v8, "a":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const-string v11, "_"

    if-eqz v10, :cond_85

    const-string v10, "T"

    goto :goto_86

    :cond_85
    move-object v10, v11

    :goto_86
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2194
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_a0

    const-string v10, "B"

    goto :goto_a1

    :cond_a0
    move-object v10, v11

    :goto_a1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2195
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_bb

    const-string v10, "L"

    goto :goto_bc

    :cond_bb
    move-object v10, v11

    :goto_bc
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2196
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_d5

    const-string v11, "R"

    :cond_d5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2197
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/view/View;

    .line 2198
    invoke-static {v0}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    .line 2199
    .local v9, "name":Ljava/lang/String;
    instance-of v10, v0, Landroid/widget/TextView;

    if-eqz v10, :cond_110

    .line 2200
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2202
    :cond_110
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "a":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_46

    .line 2204
    .end local v5    # "i":I
    :cond_13e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " done. "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    return-void
.end method

.method private debugLayoutParam(Ljava/lang/String;Landroid/support/constraint/ConstraintLayout$LayoutParams;)V
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 2159
    const-string v0, " "

    .line 2160
    .local v0, "a":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_13

    const-string v2, "SS"

    goto :goto_15

    :cond_13
    const-string v2, "__"

    :goto_15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    const-string v4, "|__"

    if-eq v2, v3, :cond_2f

    const-string v2, "|SE"

    goto :goto_30

    :cond_2f
    move-object v2, v4

    :goto_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v2, v3, :cond_48

    const-string v2, "|ES"

    goto :goto_49

    :cond_48
    move-object v2, v4

    :goto_49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v2, v3, :cond_61

    const-string v2, "|EE"

    goto :goto_62

    :cond_61
    move-object v2, v4

    :goto_62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-eq v2, v3, :cond_7a

    const-string v2, "|LL"

    goto :goto_7b

    :cond_7a
    move-object v2, v4

    :goto_7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-eq v2, v3, :cond_93

    const-string v2, "|LR"

    goto :goto_94

    :cond_93
    move-object v2, v4

    :goto_94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-eq v2, v3, :cond_ac

    const-string v2, "|RL"

    goto :goto_ad

    :cond_ac
    move-object v2, v4

    :goto_ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-eq v2, v3, :cond_c5

    const-string v2, "|RR"

    goto :goto_c6

    :cond_c5
    move-object v2, v4

    :goto_c6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-eq v2, v3, :cond_de

    const-string v2, "|TT"

    goto :goto_df

    :cond_de
    move-object v2, v4

    :goto_df
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-eq v2, v3, :cond_f7

    const-string v2, "|TB"

    goto :goto_f8

    :cond_f7
    move-object v2, v4

    :goto_f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-eq v2, v3, :cond_110

    const-string v2, "|BT"

    goto :goto_111

    :cond_110
    move-object v2, v4

    :goto_111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-eq v2, v3, :cond_128

    const-string v4, "|BB"

    :cond_128
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    return-void
.end method

.method private debugWidget(Ljava/lang/String;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 11
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "child"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2176
    const-string v0, " "

    .line 2177
    .local v0, "a":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const-string v3, "B"

    const-string v4, "T"

    const-string v5, "__"

    if-eqz v2, :cond_36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v7, :cond_2c

    move-object v6, v4

    goto :goto_2d

    :cond_2c
    move-object v6, v3

    :goto_2d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_37

    :cond_36
    move-object v2, v5

    :goto_37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_6b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v7, :cond_62

    move-object v3, v4

    :cond_62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6c

    :cond_6b
    move-object v2, v5

    :goto_6c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const-string v3, "R"

    const-string v4, "L"

    if-eqz v2, :cond_a6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v7, :cond_9c

    move-object v6, v4

    goto :goto_9d

    :cond_9c
    move-object v6, v3

    :goto_9d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a7

    :cond_a6
    move-object v2, v5

    :goto_a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_da

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v6, :cond_d2

    move-object v3, v4

    :cond_d2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_da
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ---  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    return-void
.end method

.method private setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V
    .registers 15
    .param p1, "base"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "cset"    # Landroid/support/constraint/ConstraintSet;

    .line 2087
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2088
    .local v0, "mapIdToWidget":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    new-instance v1, Landroid/support/constraint/Constraints$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/support/constraint/Constraints$LayoutParams;-><init>(II)V

    move-object v7, v1

    .line 2090
    .local v7, "layoutParams":Landroid/support/constraint/Constraints$LayoutParams;
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2091
    const/4 v8, 0x0

    invoke-virtual {v0, v8, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2092
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2095
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2096
    .local v2, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2097
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2098
    .end local v2    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v3    # "view":Landroid/view/View;
    goto :goto_24

    .line 2100
    :cond_3e
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_46
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2101
    .local v10, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/view/View;

    .line 2102
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v1, v7}, Landroid/support/constraint/ConstraintSet;->applyToLayoutParams(ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 2104
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/constraint/ConstraintSet;->getWidth(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 2105
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/constraint/ConstraintSet;->getHeight(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 2106
    instance-of v1, v11, Landroid/support/constraint/ConstraintHelper;

    if-eqz v1, :cond_8b

    .line 2107
    move-object v1, v11

    check-cast v1, Landroid/support/constraint/ConstraintHelper;

    invoke-virtual {p2, v1, v10, v7, v0}, Landroid/support/constraint/ConstraintSet;->applyToHelper(Landroid/support/constraint/ConstraintHelper;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 2108
    instance-of v1, v11, Landroid/support/constraint/Barrier;

    if-eqz v1, :cond_8b

    .line 2109
    move-object v1, v11

    check-cast v1, Landroid/support/constraint/Barrier;

    invoke-virtual {v1}, Landroid/support/constraint/Barrier;->validateParams()V

    .line 2119
    :cond_8b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_9b

    .line 2120
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/support/constraint/Constraints$LayoutParams;->resolveLayoutDirection(I)V

    goto :goto_9e

    .line 2122
    :cond_9b
    invoke-virtual {v7, v8}, Landroid/support/constraint/Constraints$LayoutParams;->resolveLayoutDirection(I)V

    .line 2124
    :goto_9e
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    const/4 v2, 0x0

    move-object v3, v11

    move-object v4, v10

    move-object v5, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Landroid/support/constraint/motion/MotionLayout;->access$800(Landroid/support/constraint/motion/MotionLayout;ZLandroid/view/View;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 2125
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/constraint/ConstraintSet;->getVisibilityMode(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_bb

    .line 2126
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    goto :goto_c6

    .line 2128
    :cond_bb
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/constraint/ConstraintSet;->getVisibility(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 2130
    .end local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "view":Landroid/view/View;
    :goto_c6
    goto/16 :goto_46

    .line 2131
    :cond_c8
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2132
    .restart local v2    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-eqz v3, :cond_f2

    .line 2133
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintHelper;

    .line 2134
    .local v3, "view":Landroid/support/constraint/ConstraintHelper;
    move-object v4, v2

    check-cast v4, Landroid/support/constraint/solver/widgets/Helper;

    .line 2135
    .local v4, "helper":Landroid/support/constraint/solver/widgets/Helper;
    invoke-virtual {v3, p1, v4, v0}, Landroid/support/constraint/ConstraintHelper;->updatePreLayout(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/Helper;Landroid/util/SparseArray;)V

    .line 2136
    move-object v5, v4

    check-cast v5, Landroid/support/constraint/solver/widgets/VirtualLayout;

    .line 2137
    .local v5, "virtualLayout":Landroid/support/constraint/solver/widgets/VirtualLayout;
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/VirtualLayout;->captureWidgets()V

    .line 2139
    .end local v2    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v3    # "view":Landroid/support/constraint/ConstraintHelper;
    .end local v4    # "helper":Landroid/support/constraint/solver/widgets/Helper;
    .end local v5    # "virtualLayout":Landroid/support/constraint/solver/widgets/VirtualLayout;
    :cond_f2
    goto :goto_d0

    .line 2140
    :cond_f3
    return-void
.end method


# virtual methods
.method public build()V
    .registers 12

    .line 2288
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v0

    .line 2289
    .local v0, "n":I
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_25

    .line 2292
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2, v1}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2293
    .local v2, "v":Landroid/view/View;
    new-instance v3, Landroid/support/constraint/motion/MotionController;

    invoke-direct {v3, v2}, Landroid/support/constraint/motion/MotionController;-><init>(Landroid/view/View;)V

    .line 2295
    .local v3, "motionController":Landroid/support/constraint/motion/MotionController;
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v4, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2291
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "motionController":Landroid/support/constraint/motion/MotionController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2297
    .end local v1    # "i":I
    :cond_25
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_26
    if-ge v1, v0, :cond_e0

    .line 2298
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2, v1}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2299
    .restart local v2    # "v":Landroid/view/View;
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v3, v3, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionController;

    .line 2300
    .restart local v3    # "motionController":Landroid/support/constraint/motion/MotionController;
    if-nez v3, :cond_3c

    .line 2301
    goto/16 :goto_dc

    .line 2303
    :cond_3c
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    const-string v5, ")"

    const-string v6, " ("

    const-string v7, "no widget for  "

    const-string v8, "MotionLayout"

    if-eqz v4, :cond_90

    .line 2304
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v4, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->getWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 2305
    .local v4, "startWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_56

    .line 2306
    iget-object v9, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {v3, v4, v9}, Landroid/support/constraint/motion/MotionController;->setStartState(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintSet;)V

    goto :goto_90

    .line 2308
    :cond_56
    iget-object v9, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v9, v9, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-eqz v9, :cond_90

    .line 2309
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/support/constraint/motion/Debug;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    .end local v4    # "startWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_90
    :goto_90
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEnd:Landroid/support/constraint/ConstraintSet;

    if-eqz v4, :cond_dc

    .line 2314
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v4, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->getWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 2315
    .local v4, "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_a2

    .line 2316
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEnd:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {v3, v4, v5}, Landroid/support/constraint/motion/MotionController;->setEndState(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintSet;)V

    goto :goto_dc

    .line 2318
    :cond_a2
    iget-object v9, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v9, v9, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-eqz v9, :cond_dc

    .line 2319
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/support/constraint/motion/Debug;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "motionController":Landroid/support/constraint/motion/MotionController;
    .end local v4    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_dc
    :goto_dc
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_26

    .line 2324
    .end local v1    # "i":I
    :cond_e0
    return-void
.end method

.method copy(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 8
    .param p1, "src"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "dest"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2003
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 2004
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2005
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2007
    invoke-virtual {p2, p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 2008
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2010
    .local v3, "child_s":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v4, v3, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v4, :cond_30

    .line 2011
    new-instance v4, Landroid/support/constraint/solver/widgets/Barrier;

    invoke-direct {v4}, Landroid/support/constraint/solver/widgets/Barrier;-><init>()V

    .local v4, "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_53

    .line 2012
    .end local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_30
    instance-of v4, v3, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v4, :cond_3a

    .line 2013
    new-instance v4, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v4}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    .restart local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_53

    .line 2014
    .end local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3a
    instance-of v4, v3, Landroid/support/constraint/solver/widgets/Flow;

    if-eqz v4, :cond_44

    .line 2015
    new-instance v4, Landroid/support/constraint/solver/widgets/Flow;

    invoke-direct {v4}, Landroid/support/constraint/solver/widgets/Flow;-><init>()V

    .restart local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_53

    .line 2016
    .end local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_44
    instance-of v4, v3, Landroid/support/constraint/solver/widgets/Helper;

    if-eqz v4, :cond_4e

    .line 2017
    new-instance v4, Landroid/support/constraint/solver/widgets/HelperWidget;

    invoke-direct {v4}, Landroid/support/constraint/solver/widgets/HelperWidget;-><init>()V

    .restart local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_53

    .line 2019
    .end local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_4e
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    .line 2021
    .restart local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_53
    invoke-virtual {p2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 2022
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    .end local v3    # "child_s":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v4    # "child_d":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_1a

    .line 2024
    :cond_5a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2025
    .restart local v3    # "child_s":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v4, v3, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 2026
    .end local v3    # "child_s":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_5e

    .line 2027
    :cond_74
    return-void
.end method

.method getWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 8
    .param p1, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "view"    # Landroid/view/View;

    .line 2143
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_7

    .line 2144
    return-object p1

    .line 2146
    :cond_7
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 2147
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2148
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_22

    .line 2149
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2150
    .local v3, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_1f

    .line 2151
    return-object v3

    .line 2148
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2155
    .end local v2    # "i":I
    :cond_22
    const/4 v2, 0x0

    return-object v2
.end method

.method initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V
    .registers 9
    .param p1, "baseLayout"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "start"    # Landroid/support/constraint/ConstraintSet;
    .param p3, "end"    # Landroid/support/constraint/ConstraintSet;

    .line 2030
    iput-object p2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    .line 2031
    iput-object p3, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEnd:Landroid/support/constraint/ConstraintSet;

    .line 2032
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2033
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2034
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionLayout;->access$200(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMeasurer(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 2035
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionLayout;->access$300(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMeasurer(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 2036
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 2037
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 2038
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$400(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v0, v1}, Landroid/support/constraint/motion/MotionLayout$Model;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 2039
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$500(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v0, v1}, Landroid/support/constraint/motion/MotionLayout$Model;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 2040
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v0, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v0, v2

    if-lez v4, :cond_68

    .line 2041
    if-eqz p2, :cond_62

    .line 2042
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v0, p2}, Landroid/support/constraint/motion/MotionLayout$Model;->setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V

    .line 2044
    :cond_62
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v0, p3}, Landroid/support/constraint/motion/MotionLayout$Model;->setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V

    goto :goto_74

    .line 2046
    :cond_68
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v0, p3}, Landroid/support/constraint/motion/MotionLayout$Model;->setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V

    .line 2047
    if-eqz p2, :cond_74

    .line 2048
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v0, p2}, Landroid/support/constraint/motion/MotionLayout$Model;->setupConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;)V

    .line 2055
    :cond_74
    :goto_74
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionLayout;->access$600(Landroid/support/constraint/motion/MotionLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 2056
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 2065
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionLayout;->access$700(Landroid/support/constraint/motion/MotionLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 2066
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 2073
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2074
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_c1

    .line 2075
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_af

    .line 2076
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2077
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2079
    :cond_af
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_c1

    .line 2080
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2081
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2084
    :cond_c1
    return-void
.end method

.method public isNotConfiguredWith(II)Z
    .registers 4
    .param p1, "startId"    # I
    .param p2, "endId"    # I

    .line 2332
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStartId:I

    if-ne p1, v0, :cond_b

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEndId:I

    if-eq p2, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public measure(II)V
    .registers 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2213
    move-object/from16 v0, p0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 2214
    .local v10, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 2216
    .local v11, "heightMode":I
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iput v10, v1, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    .line 2217
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iput v11, v1, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    .line 2218
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getOptimizationLevel()I

    move-result v12

    .line 2220
    .local v12, "optimisationLevel":I
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v1, v1, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionLayout;->getStartState()I

    move-result v2

    if-ne v1, v2, :cond_3b

    .line 2221
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v1, v2, v12, v8, v9}, Landroid/support/constraint/motion/MotionLayout;->access$1200(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2222
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    if-eqz v1, :cond_4d

    .line 2223
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v1, v2, v12, v8, v9}, Landroid/support/constraint/motion/MotionLayout;->access$1300(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    goto :goto_4d

    .line 2226
    :cond_3b
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    if-eqz v1, :cond_46

    .line 2227
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v1, v2, v12, v8, v9}, Landroid/support/constraint/motion/MotionLayout;->access$1400(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2229
    :cond_46
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v1, v2, v12, v8, v9}, Landroid/support/constraint/motion/MotionLayout;->access$1500(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2237
    :cond_4d
    :goto_4d
    const/4 v1, 0x1

    .line 2238
    .local v1, "recompute_start_end_size":Z
    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/support/constraint/motion/MotionLayout;

    if-eqz v2, :cond_61

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v10, v2, :cond_61

    if-ne v11, v2, :cond_61

    .line 2239
    const/4 v1, 0x0

    move v13, v1

    goto :goto_62

    .line 2241
    :cond_61
    move v13, v1

    .end local v1    # "recompute_start_end_size":Z
    .local v13, "recompute_start_end_size":Z
    :goto_62
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v13, :cond_e1

    .line 2242
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iput v10, v3, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    .line 2243
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iput v11, v3, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    .line 2244
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v3, v3, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionLayout;->getStartState()I

    move-result v4

    if-ne v3, v4, :cond_8d

    .line 2245
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v12, v8, v9}, Landroid/support/constraint/motion/MotionLayout;->access$1600(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2246
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    if-eqz v3, :cond_9f

    .line 2247
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v12, v8, v9}, Landroid/support/constraint/motion/MotionLayout;->access$1700(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    goto :goto_9f

    .line 2250
    :cond_8d
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mStart:Landroid/support/constraint/ConstraintSet;

    if-eqz v3, :cond_98

    .line 2251
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v12, v8, v9}, Landroid/support/constraint/motion/MotionLayout;->access$1800(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2253
    :cond_98
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v12, v8, v9}, Landroid/support/constraint/motion/MotionLayout;->access$1900(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2256
    :cond_9f
    :goto_9f
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    .line 2257
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    .line 2258
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/support/constraint/motion/MotionLayout;->mEndWrapWidth:I

    .line 2259
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/support/constraint/motion/MotionLayout;->mEndWrapHeight:I

    .line 2260
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v4, v3, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v5, v5, Landroid/support/constraint/motion/MotionLayout;->mEndWrapWidth:I

    if-ne v4, v5, :cond_de

    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v4, v4, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v5, v5, Landroid/support/constraint/motion/MotionLayout;->mEndWrapHeight:I

    if-eq v4, v5, :cond_dc

    goto :goto_de

    :cond_dc
    const/4 v4, 0x0

    goto :goto_df

    :cond_de
    :goto_de
    const/4 v4, 0x1

    :goto_df
    iput-boolean v4, v3, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    .line 2264
    :cond_e1
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v3, v3, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    .line 2265
    .local v3, "width":I
    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v4, v4, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    .line 2266
    .local v4, "height":I
    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v5, v5, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_fa

    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v5, v5, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    if-nez v5, :cond_f8

    goto :goto_fa

    :cond_f8
    move v14, v3

    goto :goto_112

    .line 2267
    :cond_fa
    :goto_fa
    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v5, v5, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    int-to-float v5, v5

    iget-object v7, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v7, v7, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    iget-object v14, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v14, v14, Landroid/support/constraint/motion/MotionLayout;->mEndWrapWidth:I

    iget-object v15, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v15, v15, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    mul-float v7, v7, v14

    add-float/2addr v5, v7

    float-to-int v3, v5

    move v14, v3

    .line 2269
    .end local v3    # "width":I
    .local v14, "width":I
    :goto_112
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v3, v3, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    if-eq v3, v6, :cond_121

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v3, v3, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    if-nez v3, :cond_11f

    goto :goto_121

    :cond_11f
    move v15, v4

    goto :goto_139

    .line 2270
    :cond_121
    :goto_121
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v3, v3, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    int-to-float v3, v3

    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v5, v5, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    iget-object v6, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v6, v6, Landroid/support/constraint/motion/MotionLayout;->mEndWrapHeight:I

    iget-object v7, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v7, v7, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    float-to-int v4, v3

    move v15, v4

    .line 2273
    .end local v4    # "height":I
    .local v15, "height":I
    :goto_139
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v3

    if-nez v3, :cond_14c

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2274
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v3

    if-eqz v3, :cond_14a

    goto :goto_14c

    :cond_14a
    const/4 v6, 0x0

    goto :goto_14d

    :cond_14c
    :goto_14c
    const/4 v6, 0x1

    .line 2275
    .local v6, "isWidthMeasuredTooSmall":Z
    :goto_14d
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutStart:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v3

    if-nez v3, :cond_160

    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout$Model;->mLayoutEnd:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2276
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v3

    if-eqz v3, :cond_15e

    goto :goto_160

    :cond_15e
    const/4 v7, 0x0

    goto :goto_161

    :cond_160
    :goto_160
    const/4 v7, 0x1

    .line 2277
    .local v7, "isHeightMeasuredTooSmall":Z
    :goto_161
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    move/from16 v2, p1

    move/from16 v3, p2

    move v4, v14

    move v5, v15

    invoke-static/range {v1 .. v7}, Landroid/support/constraint/motion/MotionLayout;->access$2000(Landroid/support/constraint/motion/MotionLayout;IIIIZZ)V

    .line 2285
    return-void
.end method

.method public reEvaluateState()V
    .registers 3

    .line 2208
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$900(Landroid/support/constraint/motion/MotionLayout;)I

    move-result v0

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionLayout;->access$1000(Landroid/support/constraint/motion/MotionLayout;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/constraint/motion/MotionLayout$Model;->measure(II)V

    .line 2209
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$Model;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$1100(Landroid/support/constraint/motion/MotionLayout;)V

    .line 2210
    return-void
.end method

.method public setMeasuredId(II)V
    .registers 3
    .param p1, "startId"    # I
    .param p2, "endId"    # I

    .line 2327
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mStartId:I

    .line 2328
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout$Model;->mEndId:I

    .line 2329
    return-void
.end method
