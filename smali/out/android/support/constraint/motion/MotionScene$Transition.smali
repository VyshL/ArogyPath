.class public Landroid/support/constraint/motion/MotionScene$Transition;
.super Ljava/lang/Object;
.source "MotionScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;
    }
.end annotation


# static fields
.field public static final AUTO_ANIMATE_TO_END:I = 0x4

.field public static final AUTO_ANIMATE_TO_START:I = 0x3

.field public static final AUTO_JUMP_TO_END:I = 0x2

.field public static final AUTO_JUMP_TO_START:I = 0x1

.field public static final AUTO_NONE:I = 0x0

.field static final TRANSITION_FLAG_FIRST_DRAW:I = 0x1


# instance fields
.field private mAutoTransition:I

.field private mConstraintSetEnd:I

.field private mConstraintSetStart:I

.field private mDefaultInterpolator:I

.field private mDefaultInterpolatorID:I

.field private mDefaultInterpolatorString:Ljava/lang/String;

.field private mDisable:Z

.field private mDuration:I

.field private mId:I

.field private mIsAbstract:Z

.field private mKeyFramesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/KeyFrames;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutDuringTransition:I

.field private final mMotionScene:Landroid/support/constraint/motion/MotionScene;

.field private mOnClicks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;",
            ">;"
        }
    .end annotation
.end field

.field private mPathMotionArc:I

.field private mStagger:F

.field private mTouchResponse:Landroid/support/constraint/motion/TouchResponse;

.field private mTransitionFlags:I


# direct methods
.method public constructor <init>(ILandroid/support/constraint/motion/MotionScene;II)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "motionScene"    # Landroid/support/constraint/motion/MotionScene;
    .param p3, "constraintSetStartId"    # I
    .param p4, "constraintSetEndId"    # I

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mId:I

    .line 435
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mIsAbstract:Z

    .line 436
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    .line 437
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    .line 438
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    .line 439
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 440
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 441
    const/16 v3, 0x190

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    .line 442
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    .line 444
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 445
    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTouchResponse:Landroid/support/constraint/motion/TouchResponse;

    .line 446
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 447
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mAutoTransition:I

    .line 453
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDisable:Z

    .line 454
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    .line 455
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 456
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTransitionFlags:I

    .line 791
    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mId:I

    .line 792
    iput-object p2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mMotionScene:Landroid/support/constraint/motion/MotionScene;

    .line 793
    iput p3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    .line 794
    iput p4, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    .line 795
    invoke-static {p2}, Landroid/support/constraint/motion/MotionScene;->access$900(Landroid/support/constraint/motion/MotionScene;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    .line 796
    invoke-static {p2}, Landroid/support/constraint/motion/MotionScene;->access$1000(Landroid/support/constraint/motion/MotionScene;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 797
    return-void
.end method

.method constructor <init>(Landroid/support/constraint/motion/MotionScene;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p1, "motionScene"    # Landroid/support/constraint/motion/MotionScene;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mId:I

    .line 435
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mIsAbstract:Z

    .line 436
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    .line 437
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    .line 438
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    .line 439
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 440
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 441
    const/16 v3, 0x190

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    .line 442
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    .line 444
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 445
    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTouchResponse:Landroid/support/constraint/motion/TouchResponse;

    .line 446
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 447
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mAutoTransition:I

    .line 453
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDisable:Z

    .line 454
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    .line 455
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 456
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTransitionFlags:I

    .line 800
    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene;->access$900(Landroid/support/constraint/motion/MotionScene;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    .line 801
    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene;->access$1000(Landroid/support/constraint/motion/MotionScene;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 802
    iput-object p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mMotionScene:Landroid/support/constraint/motion/MotionScene;

    .line 803
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/constraint/motion/MotionScene$Transition;->fillFromAttributeList(Landroid/support/constraint/motion/MotionScene;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 804
    return-void
.end method

.method constructor <init>(Landroid/support/constraint/motion/MotionScene;Landroid/support/constraint/motion/MotionScene$Transition;)V
    .registers 7
    .param p1, "motionScene"    # Landroid/support/constraint/motion/MotionScene;
    .param p2, "global"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mId:I

    .line 435
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mIsAbstract:Z

    .line 436
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    .line 437
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    .line 438
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    .line 439
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 440
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 441
    const/16 v3, 0x190

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    .line 442
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    .line 444
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 445
    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTouchResponse:Landroid/support/constraint/motion/TouchResponse;

    .line 446
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 447
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mAutoTransition:I

    .line 453
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDisable:Z

    .line 454
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    .line 455
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 456
    iput v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTransitionFlags:I

    .line 764
    iput-object p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mMotionScene:Landroid/support/constraint/motion/MotionScene;

    .line 765
    if-eqz p2, :cond_59

    .line 766
    iget v0, p2, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    .line 767
    iget v0, p2, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    .line 768
    iget-object v0, p2, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 769
    iget v0, p2, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorID:I

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 770
    iget v0, p2, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    .line 771
    iget-object v0, p2, Landroid/support/constraint/motion/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 772
    iget v0, p2, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    .line 773
    iget v0, p2, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 775
    :cond_59
    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 433
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    return v0
.end method

.method static synthetic access$002(Landroid/support/constraint/motion/MotionScene$Transition;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;
    .param p1, "x1"    # I

    .line 433
    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    return p1
.end method

.method static synthetic access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 433
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    return v0
.end method

.method static synthetic access$102(Landroid/support/constraint/motion/MotionScene$Transition;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;
    .param p1, "x1"    # I

    .line 433
    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    return p1
.end method

.method static synthetic access$1200(Landroid/support/constraint/motion/MotionScene$Transition;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 433
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mIsAbstract:Z

    return v0
.end method

.method static synthetic access$1300(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 433
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 433
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    return v0
.end method

.method static synthetic access$1500(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 433
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 433
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorID:I

    return v0
.end method

.method static synthetic access$1700(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 433
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    return v0
.end method

.method static synthetic access$1800(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 433
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    return v0
.end method

.method static synthetic access$1900(Landroid/support/constraint/motion/MotionScene$Transition;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 433
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    return v0
.end method

.method static synthetic access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 433
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTouchResponse:Landroid/support/constraint/motion/TouchResponse;

    return-object v0
.end method

.method static synthetic access$202(Landroid/support/constraint/motion/MotionScene$Transition;Landroid/support/constraint/motion/TouchResponse;)Landroid/support/constraint/motion/TouchResponse;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;
    .param p1, "x1"    # Landroid/support/constraint/motion/TouchResponse;

    .line 433
    iput-object p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTouchResponse:Landroid/support/constraint/motion/TouchResponse;

    return-object p1
.end method

.method static synthetic access$300(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 433
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mId:I

    return v0
.end method

.method static synthetic access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 433
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/constraint/motion/MotionScene$Transition;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 433
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDisable:Z

    return v0
.end method

.method static synthetic access$600(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 433
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mAutoTransition:I

    return v0
.end method

.method static synthetic access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 433
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mMotionScene:Landroid/support/constraint/motion/MotionScene;

    return-object v0
.end method

.method private fill(Landroid/support/constraint/motion/MotionScene;Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 12
    .param p1, "motionScene"    # Landroid/support/constraint/motion/MotionScene;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "a"    # Landroid/content/res/TypedArray;

    .line 813
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 814
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ge v1, v0, :cond_117

    .line 815
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 816
    .local v4, "attr":I
    sget v5, Landroid/support/constraint/R$styleable;->Transition_constraintSetEnd:I

    const-string v6, "layout"

    if-ne v4, v5, :cond_40

    .line 817
    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    .line 818
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 820
    new-instance v3, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v3}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 821
    .local v3, "cSet":Landroid/support/constraint/ConstraintSet;
    iget v5, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {v3, p2, v5}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 822
    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene;->access$1100(Landroid/support/constraint/motion/MotionScene;)Landroid/util/SparseArray;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 828
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "cSet":Landroid/support/constraint/ConstraintSet;
    :cond_3e
    goto/16 :goto_113

    :cond_40
    sget v5, Landroid/support/constraint/R$styleable;->Transition_constraintSetStart:I

    if-ne v4, v5, :cond_71

    .line 829
    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    .line 830
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 831
    .restart local v2    # "type":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 832
    new-instance v3, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v3}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 833
    .restart local v3    # "cSet":Landroid/support/constraint/ConstraintSet;
    iget v5, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {v3, p2, v5}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 834
    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene;->access$1100(Landroid/support/constraint/motion/MotionScene;)Landroid/util/SparseArray;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 836
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "cSet":Landroid/support/constraint/ConstraintSet;
    :cond_6f
    goto/16 :goto_113

    :cond_71
    sget v5, Landroid/support/constraint/R$styleable;->Transition_motionInterpolator:I

    if-ne v4, v5, :cond_b1

    .line 837
    invoke-virtual {p3, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 839
    .local v5, "type":Landroid/util/TypedValue;
    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/4 v7, -0x2

    if-ne v6, v2, :cond_89

    .line 840
    invoke-virtual {p3, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 841
    if-eq v2, v3, :cond_b0

    .line 842
    iput v7, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    goto :goto_b0

    .line 844
    :cond_89
    iget v2, v5, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_a8

    .line 845
    invoke-virtual {p3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 846
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_a5

    .line 847
    invoke-virtual {p3, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 848
    iput v7, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    goto :goto_b0

    .line 850
    :cond_a5
    iput v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    goto :goto_b0

    .line 853
    :cond_a8
    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDefaultInterpolator:I

    .line 856
    .end local v5    # "type":Landroid/util/TypedValue;
    :cond_b0
    :goto_b0
    goto :goto_113

    :cond_b1
    sget v2, Landroid/support/constraint/R$styleable;->Transition_duration:I

    if-ne v4, v2, :cond_be

    .line 857
    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    goto :goto_113

    .line 858
    :cond_be
    sget v2, Landroid/support/constraint/R$styleable;->Transition_staggered:I

    if-ne v4, v2, :cond_cb

    .line 859
    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    goto :goto_113

    .line 860
    :cond_cb
    sget v2, Landroid/support/constraint/R$styleable;->Transition_autoTransition:I

    if-ne v4, v2, :cond_d8

    .line 861
    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mAutoTransition:I

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mAutoTransition:I

    goto :goto_113

    .line 862
    :cond_d8
    sget v2, Landroid/support/constraint/R$styleable;->Transition_android_id:I

    if-ne v4, v2, :cond_e5

    .line 863
    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mId:I

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mId:I

    goto :goto_113

    .line 864
    :cond_e5
    sget v2, Landroid/support/constraint/R$styleable;->Transition_transitionDisable:I

    if-ne v4, v2, :cond_f2

    .line 865
    iget-boolean v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDisable:Z

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDisable:Z

    goto :goto_113

    .line 866
    :cond_f2
    sget v2, Landroid/support/constraint/R$styleable;->Transition_pathMotionArc:I

    if-ne v4, v2, :cond_fd

    .line 867
    invoke-virtual {p3, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    goto :goto_113

    .line 868
    :cond_fd
    sget v2, Landroid/support/constraint/R$styleable;->Transition_layoutDuringTransition:I

    const/4 v3, 0x0

    if-ne v4, v2, :cond_109

    .line 869
    invoke-virtual {p3, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    goto :goto_113

    .line 870
    :cond_109
    sget v2, Landroid/support/constraint/R$styleable;->Transition_transitionFlags:I

    if-ne v4, v2, :cond_113

    .line 871
    invoke-virtual {p3, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTransitionFlags:I

    .line 814
    .end local v4    # "attr":I
    :cond_113
    :goto_113
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 874
    .end local v1    # "i":I
    :cond_117
    iget v1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    if-ne v1, v3, :cond_11d

    .line 875
    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mIsAbstract:Z

    .line 877
    :cond_11d
    return-void
.end method

.method private fillFromAttributeList(Landroid/support/constraint/motion/MotionScene;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "motionScene"    # Landroid/support/constraint/motion/MotionScene;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 807
    sget-object v0, Landroid/support/constraint/R$styleable;->Transition:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 808
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, p2, v0}, Landroid/support/constraint/motion/MotionScene$Transition;->fill(Landroid/support/constraint/motion/MotionScene;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 809
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 810
    return-void
.end method


# virtual methods
.method public addOnClick(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 464
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;

    invoke-direct {v1, p1, p0, p2}, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;-><init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionScene$Transition;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method

.method public debugString(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 621
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 622
    const-string v0, "null"

    .local v0, "ret":Ljava/lang/String;
    goto :goto_12

    .line 624
    .end local v0    # "ret":Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 626
    .restart local v0    # "ret":Ljava/lang/String;
    :goto_12
    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    if-ne v2, v1, :cond_2a

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 629
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    :goto_4b
    return-object v0
.end method

.method public getAutoTransition()I
    .registers 2

    .line 485
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mAutoTransition:I

    return v0
.end method

.method public getDuration()I
    .registers 2

    .line 529
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    return v0
.end method

.method public getEndConstraintSetId()I
    .registers 2

    .line 502
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetEnd:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 493
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mId:I

    return v0
.end method

.method public getKeyFrameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/constraint/motion/KeyFrames;",
            ">;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLayoutDuringTransition()I
    .registers 2

    .line 460
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mLayoutDuringTransition:I

    return v0
.end method

.method public getOnClickList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;",
            ">;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPathMotionArc()I
    .registers 2

    .line 591
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    return v0
.end method

.method public getStagger()F
    .registers 2

    .line 538
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    return v0
.end method

.method public getStartConstraintSetId()I
    .registers 2

    .line 511
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mConstraintSetStart:I

    return v0
.end method

.method public getTouchResponse()Landroid/support/constraint/motion/TouchResponse;
    .registers 2

    .line 560
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTouchResponse:Landroid/support/constraint/motion/TouchResponse;

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 599
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDisable:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTransitionFlag(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 635
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mTransitionFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public setAutoTransition(I)V
    .registers 2
    .param p1, "type"    # I

    .line 475
    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mAutoTransition:I

    .line 476
    return-void
.end method

.method public setDuration(I)V
    .registers 2
    .param p1, "duration"    # I

    .line 520
    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDuration:I

    .line 521
    return-void
.end method

.method public setEnable(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 609
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mDisable:Z

    .line 610
    return-void
.end method

.method public setPathMotionArc(I)V
    .registers 2
    .param p1, "arcMode"    # I

    .line 581
    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mPathMotionArc:I

    .line 582
    return-void
.end method

.method public setStagger(F)V
    .registers 2
    .param p1, "stagger"    # F

    .line 571
    iput p1, p0, Landroid/support/constraint/motion/MotionScene$Transition;->mStagger:F

    .line 572
    return-void
.end method
