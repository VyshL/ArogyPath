.class Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;
.super Ljava/lang/Object;
.source "MotionScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionScene$Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionOnClick"
.end annotation


# static fields
.field public static final ANIM_TOGGLE:I = 0x11

.field public static final ANIM_TO_END:I = 0x1

.field public static final ANIM_TO_START:I = 0x10

.field public static final JUMP_TO_END:I = 0x100

.field public static final JUMP_TO_START:I = 0x1000


# instance fields
.field mMode:I

.field mTargetId:I

.field private final mTransition:Landroid/support/constraint/motion/MotionScene$Transition;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionScene$Transition;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transition"    # Landroid/support/constraint/motion/MotionScene$Transition;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    .line 641
    const/16 v0, 0x11

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    .line 649
    iput-object p2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 650
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->OnClick:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 651
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 652
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_3d

    .line 653
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 654
    .local v3, "attr":I
    sget v4, Landroid/support/constraint/R$styleable;->OnClick_targetId:I

    if-ne v3, v4, :cond_2e

    .line 655
    iget v4, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    goto :goto_3a

    .line 656
    :cond_2e
    sget v4, Landroid/support/constraint/R$styleable;->OnClick_clickAction:I

    if-ne v3, v4, :cond_3a

    .line 657
    iget v4, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    .line 652
    .end local v3    # "attr":I
    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 660
    .end local v2    # "i":I
    :cond_3d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 661
    return-void
.end method


# virtual methods
.method public addOnClickListeners(Landroid/support/constraint/motion/MotionLayout;ILandroid/support/constraint/motion/MotionScene$Transition;)V
    .registers 12
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;
    .param p2, "currentState"    # I
    .param p3, "transition"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 664
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    move-object v0, p1

    goto :goto_b

    :cond_7
    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 665
    .local v0, "v":Landroid/view/View;
    :goto_b
    if-nez v0, :cond_28

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnClick could not find id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionScene"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void

    .line 669
    :cond_28
    invoke-static {p3}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v2

    .line 670
    .local v2, "start":I
    invoke-static {p3}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    .line 671
    .local v3, "end":I
    if-ne v2, v1, :cond_36

    .line 672
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    return-void

    .line 676
    :cond_36
    iget v1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit8 v4, v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_42

    if-ne p2, v2, :cond_42

    const/4 v4, 0x1

    goto :goto_43

    :cond_42
    const/4 v4, 0x0

    .line 677
    .local v4, "listen":Z
    :goto_43
    and-int/lit16 v7, v1, 0x100

    if-eqz v7, :cond_4b

    if-ne p2, v2, :cond_4b

    const/4 v7, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v7, 0x0

    :goto_4c
    or-int/2addr v4, v7

    .line 678
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_55

    if-ne p2, v2, :cond_55

    const/4 v7, 0x1

    goto :goto_56

    :cond_55
    const/4 v7, 0x0

    :goto_56
    or-int/2addr v4, v7

    .line 679
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_5f

    if-ne p2, v3, :cond_5f

    const/4 v7, 0x1

    goto :goto_60

    :cond_5f
    const/4 v7, 0x0

    :goto_60
    or-int/2addr v4, v7

    .line 680
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_68

    if-ne p2, v3, :cond_68

    const/4 v5, 0x1

    :cond_68
    or-int v1, v4, v5

    .line 682
    .end local v4    # "listen":Z
    .local v1, "listen":Z
    if-eqz v1, :cond_6f

    .line 683
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    :cond_6f
    return-void
.end method

.method isTransitionViable(Landroid/support/constraint/motion/MotionScene$Transition;Landroid/support/constraint/motion/MotionLayout;)Z
    .registers 8
    .param p1, "current"    # Landroid/support/constraint/motion/MotionScene$Transition;
    .param p2, "tl"    # Landroid/support/constraint/motion/MotionLayout;

    .line 700
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_6

    .line 701
    return v1

    .line 703
    :cond_6
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    .line 704
    .local v0, "dest":I
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v2

    .line 705
    .local v2, "from":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1b

    .line 706
    iget v3, p2, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq v3, v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1

    .line 708
    :cond_1b
    iget v3, p2, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq v3, v2, :cond_25

    iget v3, p2, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-ne v3, v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :cond_25
    :goto_25
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .line 714
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;

    move-result-object v0

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene;->access$800(Landroid/support/constraint/motion/MotionScene;)Landroid/support/constraint/motion/MotionLayout;

    move-result-object v0

    .line 715
    .local v0, "tl":Landroid/support/constraint/motion/MotionLayout;
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->isInteractionEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    .line 716
    return-void

    .line 718
    :cond_11
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4a

    .line 719
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getCurrentState()I

    move-result v1

    .line 720
    .local v1, "currentState":I
    if-ne v1, v2, :cond_2a

    .line 721
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->transitionToState(I)V

    .line 722
    return-void

    .line 724
    :cond_2a
    new-instance v2, Landroid/support/constraint/motion/MotionScene$Transition;

    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v3}, Landroid/support/constraint/motion/MotionScene$Transition;->access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;

    move-result-object v3

    iget-object v4, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-direct {v2, v3, v4}, Landroid/support/constraint/motion/MotionScene$Transition;-><init>(Landroid/support/constraint/motion/MotionScene;Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 725
    .local v2, "t":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-static {v2, v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$102(Landroid/support/constraint/motion/MotionScene$Transition;I)I

    .line 726
    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v3}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/constraint/motion/MotionScene$Transition;->access$002(Landroid/support/constraint/motion/MotionScene$Transition;I)I

    .line 727
    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 728
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->transitionToEnd()V

    .line 729
    return-void

    .line 731
    .end local v1    # "currentState":I
    .end local v2    # "t":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_4a
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;

    move-result-object v1

    iget-object v1, v1, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 732
    .local v1, "current":Landroid/support/constraint/motion/MotionScene$Transition;
    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_61

    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_5f

    goto :goto_61

    :cond_5f
    const/4 v3, 0x0

    goto :goto_62

    :cond_61
    :goto_61
    const/4 v3, 0x1

    .line 733
    .local v3, "forward":Z
    :goto_62
    and-int/lit8 v6, v2, 0x10

    if-nez v6, :cond_6d

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_6b

    goto :goto_6d

    :cond_6b
    const/4 v2, 0x0

    goto :goto_6e

    :cond_6d
    :goto_6d
    const/4 v2, 0x1

    .line 734
    .local v2, "backward":Z
    :goto_6e
    if-eqz v3, :cond_73

    if-eqz v2, :cond_73

    const/4 v4, 0x1

    .line 735
    .local v4, "bidirectional":Z
    :cond_73
    if-eqz v4, :cond_9c

    .line 736
    iget-object v6, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v6}, Landroid/support/constraint/motion/MotionScene$Transition;->access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;

    move-result-object v6

    iget-object v6, v6, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    iget-object v7, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eq v6, v7, :cond_84

    .line 737
    invoke-virtual {v0, v7}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 739
    :cond_84
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getCurrentState()I

    move-result v6

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getEndState()I

    move-result v7

    if-eq v6, v7, :cond_9b

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_99

    goto :goto_9b

    .line 742
    :cond_99
    const/4 v2, 0x0

    goto :goto_9c

    .line 740
    :cond_9b
    :goto_9b
    const/4 v3, 0x0

    .line 745
    :cond_9c
    :goto_9c
    invoke-virtual {p0, v1, v0}, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->isTransitionViable(Landroid/support/constraint/motion/MotionScene$Transition;Landroid/support/constraint/motion/MotionLayout;)Z

    move-result v6

    if-eqz v6, :cond_e7

    .line 746
    if-eqz v3, :cond_b2

    iget v6, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_b2

    .line 747
    iget-object v5, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {v0, v5}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 748
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->transitionToEnd()V

    goto :goto_e7

    .line 749
    :cond_b2
    if-eqz v2, :cond_c3

    iget v5, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_c3

    .line 750
    iget-object v5, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {v0, v5}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 751
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->transitionToStart()V

    goto :goto_e7

    .line 752
    :cond_c3
    if-eqz v3, :cond_d6

    iget v5, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_d6

    .line 753
    iget-object v5, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {v0, v5}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 754
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    goto :goto_e7

    .line 755
    :cond_d6
    if-eqz v2, :cond_e7

    iget v5, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_e7

    .line 756
    iget-object v5, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {v0, v5}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 757
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 760
    :cond_e7
    :goto_e7
    return-void
.end method

.method public removeOnClickListeners(Landroid/support/constraint/motion/MotionLayout;)V
    .registers 5
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;

    .line 688
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 689
    return-void

    .line 691
    :cond_6
    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 692
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_27

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (*)  could not find id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionScene"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void

    .line 696
    :cond_27
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    return-void
.end method
