.class public Landroid/support/constraint/motion/MotionLayout;
.super Landroid/support/constraint/ConstraintLayout;
.source "MotionLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/MotionLayout$TransitionListener;,
        Landroid/support/constraint/motion/MotionLayout$DevModeDraw;,
        Landroid/support/constraint/motion/MotionLayout$Model;,
        Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;,
        Landroid/support/constraint/motion/MotionLayout$StateCache;,
        Landroid/support/constraint/motion/MotionLayout$MyTracker;,
        Landroid/support/constraint/motion/MotionLayout$MotionTracker;,
        Landroid/support/constraint/motion/MotionLayout$TransitionState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEBUG_SHOW_NONE:I = 0x0

.field public static final DEBUG_SHOW_PATH:I = 0x2

.field public static final DEBUG_SHOW_PROGRESS:I = 0x1

.field private static final EPSILON:F = 1.0E-5f

.field public static IS_IN_EDIT_MODE:Z = false

.field static final MAX_KEY_FRAMES:I = 0x32

.field static final TAG:Ljava/lang/String; = "MotionLayout"

.field public static final TOUCH_UP_COMPLETE:I = 0x0

.field public static final TOUCH_UP_COMPLETE_TO_END:I = 0x2

.field public static final TOUCH_UP_COMPLETE_TO_START:I = 0x1

.field public static final TOUCH_UP_DECELERATE:I = 0x4

.field public static final TOUCH_UP_DECELERATE_AND_COMPLETE:I = 0x5

.field public static final TOUCH_UP_STOP:I = 0x3

.field public static final VELOCITY_LAYOUT:I = 0x1

.field public static final VELOCITY_POST_LAYOUT:I = 0x0

.field public static final VELOCITY_STATIC_LAYOUT:I = 0x3

.field public static final VELOCITY_STATIC_POST_LAYOUT:I = 0x2


# instance fields
.field firstDown:Z

.field private lastPos:F

.field private lastY:F

.field private mAnimationStartTime:J

.field private mBeginState:I

.field private mBoundsCheck:Landroid/graphics/RectF;

.field mCurrentState:I

.field mDebugPath:I

.field private mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

.field private mDesignTool:Landroid/support/constraint/motion/DesignTool;

.field mDevModeDraw:Landroid/support/constraint/motion/MotionLayout$DevModeDraw;

.field private mEndState:I

.field mEndWrapHeight:I

.field mEndWrapWidth:I

.field mFrameArrayList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/support/constraint/motion/MotionController;",
            ">;"
        }
    .end annotation
.end field

.field private mFrames:I

.field mHeightMeasureMode:I

.field private mInLayout:Z

.field mInTransition:Z

.field mIndirectTransition:Z

.field private mInteractionEnabled:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mIsAnimating:Z

.field private mKeepAnimating:Z

.field private mKeyCache:Landroid/support/constraint/motion/KeyCache;

.field private mLastDrawTime:J

.field private mLastFps:F

.field private mLastHeightMeasureSpec:I

.field mLastLayoutHeight:I

.field mLastLayoutWidth:I

.field mLastVelocity:F

.field private mLastWidthMeasureSpec:I

.field private mListenerPosition:F

.field private mListenerState:I

.field protected mMeasureDuringTransition:Z

.field mModel:Landroid/support/constraint/motion/MotionLayout$Model;

.field private mNeedsFireTransitionCompleted:Z

.field mOldHeight:I

.field mOldWidth:I

.field private mOnHideHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mOnShowHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field mPostInterpolationPosition:F

.field private mRegionView:Landroid/view/View;

.field mScene:Landroid/support/constraint/motion/MotionScene;

.field mScrollTargetDT:F

.field mScrollTargetDX:F

.field mScrollTargetDY:F

.field mScrollTargetTime:J

.field mStartWrapHeight:I

.field mStartWrapWidth:I

.field private mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

.field private mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

.field private mTemporalInterpolator:Z

.field mTransitionCompleted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionDuration:F

.field mTransitionGoalPosition:F

.field private mTransitionInstantly:Z

.field mTransitionLastPosition:F

.field private mTransitionLastTime:J

.field private mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

.field private mTransitionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionLayout$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mTransitionPosition:F

.field mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

.field mUndergoingMotion:Z

.field mWidthMeasureMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 963
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 876
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 877
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 878
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 879
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 880
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    .line 881
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    .line 882
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    .line 884
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 886
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 887
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 888
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 889
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 891
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 893
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 894
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIndirectTransition:Z

    .line 901
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 905
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 906
    new-instance v3, Landroid/support/constraint/motion/utils/StopLogic;

    invoke-direct {v3}, Landroid/support/constraint/motion/utils/StopLogic;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    .line 907
    new-instance v3, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    invoke-direct {v3, p0}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    .line 911
    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->firstDown:Z

    .line 918
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mUndergoingMotion:Z

    .line 923
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    .line 925
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 926
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 927
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 928
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    .line 929
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 930
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    .line 931
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 932
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    .line 933
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 940
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    .line 948
    new-instance v0, Landroid/support/constraint/motion/KeyCache;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCache;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    .line 949
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 959
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->UNDEFINED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 2336
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$Model;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    .line 3182
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3388
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3389
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 964
    invoke-direct {p0, v2}, Landroid/support/constraint/motion/MotionLayout;->init(Landroid/util/AttributeSet;)V

    .line 965
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 968
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 876
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 877
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 878
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 879
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 880
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    .line 881
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    .line 882
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    .line 884
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 886
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 887
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 888
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 889
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 891
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 893
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 894
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIndirectTransition:Z

    .line 901
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 905
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 906
    new-instance v3, Landroid/support/constraint/motion/utils/StopLogic;

    invoke-direct {v3}, Landroid/support/constraint/motion/utils/StopLogic;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    .line 907
    new-instance v3, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    invoke-direct {v3, p0}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    .line 911
    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->firstDown:Z

    .line 918
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mUndergoingMotion:Z

    .line 923
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    .line 925
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 926
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 927
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 928
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    .line 929
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 930
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    .line 931
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 932
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    .line 933
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 940
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    .line 948
    new-instance v0, Landroid/support/constraint/motion/KeyCache;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCache;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    .line 949
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 959
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->UNDEFINED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 2336
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$Model;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    .line 3182
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3388
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3389
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 969
    invoke-direct {p0, p2}, Landroid/support/constraint/motion/MotionLayout;->init(Landroid/util/AttributeSet;)V

    .line 970
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 973
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 876
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 877
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 878
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 879
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 880
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    .line 881
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    .line 882
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    .line 884
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 886
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 887
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 888
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 889
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 891
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 893
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 894
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIndirectTransition:Z

    .line 901
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 905
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 906
    new-instance v3, Landroid/support/constraint/motion/utils/StopLogic;

    invoke-direct {v3}, Landroid/support/constraint/motion/utils/StopLogic;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    .line 907
    new-instance v3, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    invoke-direct {v3, p0}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    .line 911
    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->firstDown:Z

    .line 918
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mUndergoingMotion:Z

    .line 923
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    .line 925
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 926
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 927
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 928
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    .line 929
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 930
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    .line 931
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 932
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    .line 933
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 940
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    .line 948
    new-instance v0, Landroid/support/constraint/motion/KeyCache;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCache;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    .line 949
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 959
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->UNDEFINED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 2336
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$Model;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    .line 3182
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3388
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3389
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 974
    invoke-direct {p0, p2}, Landroid/support/constraint/motion/MotionLayout;->init(Landroid/util/AttributeSet;)V

    .line 975
    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/motion/MotionLayout;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    return v0
.end method

.method static synthetic access$100(Landroid/support/constraint/motion/MotionLayout;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    return v0
.end method

.method static synthetic access$1000(Landroid/support/constraint/motion/MotionLayout;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    return v0
.end method

.method static synthetic access$1100(Landroid/support/constraint/motion/MotionLayout;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->setupMotionViews()V

    return-void
.end method

.method static synthetic access$1200(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .registers 5
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1300(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .registers 5
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .registers 5
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1500(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .registers 5
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1600(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .registers 5
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1700(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .registers 5
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1800(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .registers 5
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1900(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .registers 5
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/support/constraint/motion/MotionLayout;IIIIZZ)V
    .registers 7
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z

    .line 859
    invoke-virtual/range {p0 .. p6}, Landroid/support/constraint/motion/MotionLayout;->resolveMeasuredDimension(IIIIZZ)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/constraint/motion/MotionLayout;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/support/constraint/motion/MotionLayout;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/support/constraint/motion/MotionLayout;ZLandroid/view/View;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .registers 6
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p4, "x4"    # Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .param p5, "x5"    # Landroid/util/SparseArray;

    .line 859
    invoke-virtual/range {p0 .. p5}, Landroid/support/constraint/motion/MotionLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/constraint/motion/MotionLayout;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    return v0
.end method

.method private checkStructure()V
    .registers 13

    .line 3286
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const-string v1, "MotionLayout"

    if-nez v0, :cond_c

    .line 3287
    const-string v0, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\""

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    return-void

    .line 3291
    :cond_c
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v0

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/support/constraint/motion/MotionLayout;->checkStructure(ILandroid/support/constraint/ConstraintSet;)V

    .line 3292
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 3293
    .local v0, "startToEnd":Landroid/util/SparseIntArray;
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 3294
    .local v2, "endToStart":Landroid/util/SparseIntArray;
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 3295
    .local v4, "definedTransition":Landroid/support/constraint/motion/MotionScene$Transition;
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v5, v5, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-ne v4, v5, :cond_48

    .line 3296
    const-string v5, "CHECK: CURRENT"

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    :cond_48
    invoke-direct {p0, v4}, Landroid/support/constraint/motion/MotionLayout;->checkStructure(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 3299
    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v5

    .line 3300
    .local v5, "startId":I
    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v6

    .line 3301
    .local v6, "endId":I
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 3302
    .local v7, "startString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 3303
    .local v8, "endString":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    const-string v10, "->"

    if-ne v9, v6, :cond_89

    .line 3305
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CHECK: two transitions with the same start and end "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    :cond_89
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    if-ne v9, v5, :cond_ad

    .line 3310
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CHECK: you can\'t have reverse transitions"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    :cond_ad
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 3314
    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 3315
    iget-object v9, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v9, v5}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v9

    if-nez v9, :cond_d1

    .line 3316
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " no such constraintSetStart "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    :cond_d1
    iget-object v9, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v9, v6}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v9

    if-nez v9, :cond_ef

    .line 3320
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " no such constraintSetEnd "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    .end local v4    # "definedTransition":Landroid/support/constraint/motion/MotionScene$Transition;
    .end local v5    # "startId":I
    .end local v6    # "endId":I
    .end local v7    # "startString":Ljava/lang/String;
    .end local v8    # "endString":Ljava/lang/String;
    :cond_ef
    goto/16 :goto_31

    .line 3323
    :cond_f1
    return-void
.end method

.method private checkStructure(ILandroid/support/constraint/ConstraintSet;)V
    .registers 15
    .param p1, "csetId"    # I
    .param p2, "set"    # Landroid/support/constraint/ConstraintSet;

    .line 3326
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3327
    .local v0, "setName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v1

    .line 3328
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    const/4 v3, -0x1

    const-string v4, "CHECK: "

    const-string v5, "MotionLayout"

    if-ge v2, v1, :cond_75

    .line 3329
    invoke-virtual {p0, v2}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3330
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    .line 3331
    .local v7, "id":I
    if-ne v7, v3, :cond_4a

    .line 3332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " ALL VIEWS SHOULD HAVE ID\'s "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3333
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " does not!"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3332
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    :cond_4a
    invoke-virtual {p2, v7}, Landroid/support/constraint/ConstraintSet;->getConstraint(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    .line 3336
    .local v3, "c":Landroid/support/constraint/ConstraintSet$Constraint;
    if-nez v3, :cond_72

    .line 3337
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " NO CONSTRAINTS for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    .end local v3    # "c":Landroid/support/constraint/ConstraintSet$Constraint;
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "id":I
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 3340
    .end local v2    # "i":I
    :cond_75
    invoke-virtual {p2}, Landroid/support/constraint/ConstraintSet;->getKnownIds()[I

    move-result-object v2

    .line 3341
    .local v2, "ids":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7a
    array-length v7, v2

    if-ge v6, v7, :cond_101

    .line 3342
    aget v7, v2, v6

    .line 3343
    .restart local v7    # "id":I
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 3344
    .local v8, "idString":Ljava/lang/String;
    aget v9, v2, v6

    invoke-virtual {p0, v9}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_ad

    .line 3345
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " NO View matches id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    :cond_ad
    invoke-virtual {p2, v7}, Landroid/support/constraint/ConstraintSet;->getHeight(I)I

    move-result v9

    const-string v10, ") no LAYOUT_HEIGHT"

    const-string v11, "("

    if-ne v9, v3, :cond_d7

    .line 3348
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    :cond_d7
    invoke-virtual {p2, v7}, Landroid/support/constraint/ConstraintSet;->getWidth(I)I

    move-result v9

    if-ne v9, v3, :cond_fd

    .line 3351
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    .end local v7    # "id":I
    .end local v8    # "idString":Ljava/lang/String;
    :cond_fd
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7a

    .line 3354
    .end local v6    # "i":I
    :cond_101
    return-void
.end method

.method private checkStructure(Landroid/support/constraint/motion/MotionScene$Transition;)V
    .registers 5
    .param p1, "transition"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 3357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHECK: transition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/motion/MotionScene$Transition;->debugString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHECK: transition.setDuration = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v2

    if-ne v0, v2, :cond_49

    .line 3360
    const-string v0, "CHECK: start and end constraint set should not be the same!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    :cond_49
    return-void
.end method

.method private computeCurrentPositions()V
    .registers 5

    .line 1770
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v0

    .line 1771
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1c

    .line 1772
    invoke-virtual {p0, v1}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1773
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionController;

    .line 1774
    .local v3, "frame":Landroid/support/constraint/motion/MotionController;
    if-nez v3, :cond_16

    .line 1775
    goto :goto_19

    .line 1777
    :cond_16
    invoke-virtual {v3, v2}, Landroid/support/constraint/motion/MotionController;->setStartCurrentState(Landroid/view/View;)V

    .line 1771
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "frame":Landroid/support/constraint/motion/MotionController;
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1779
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method private debugPos()V
    .registers 7

    .line 2882
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_68

    .line 2883
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2884
    .local v1, "child":Landroid/view/View;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/support/constraint/motion/Debug;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2885
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    invoke-static {v4, v5}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2886
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2887
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2884
    const-string v3, "MotionLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    .end local v1    # "child":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2889
    .end local v0    # "i":I
    :cond_68
    return-void
.end method

.method private evaluateLayout()V
    .registers 21

    .line 2955
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 2956
    .local v1, "dir":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v2

    .line 2958
    .local v2, "currentTime":J
    const/4 v4, 0x0

    .line 2959
    .local v4, "deltaPos":F
    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v6, v5, Landroid/support/constraint/motion/utils/StopLogic;

    const v7, 0x3089705f    # 1.0E-9f

    if-nez v6, :cond_26

    .line 2960
    iget-wide v8, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    sub-long v8, v2, v8

    long-to-float v6, v8

    mul-float v6, v6, v1

    mul-float v6, v6, v7

    iget v8, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    div-float v4, v6, v8

    .line 2962
    :cond_26
    iget v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v6, v4

    .line 2964
    .local v6, "position":F
    const/4 v8, 0x0

    .line 2965
    .local v8, "done":Z
    iget-boolean v9, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    if-eqz v9, :cond_30

    .line 2966
    iget v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 2969
    :cond_30
    const/4 v9, 0x0

    cmpl-float v10, v1, v9

    if-lez v10, :cond_3b

    iget v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v10, v6, v10

    if-gez v10, :cond_45

    :cond_3b
    cmpg-float v10, v1, v9

    if-gtz v10, :cond_48

    iget v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v10, v6, v10

    if-gtz v10, :cond_48

    .line 2971
    :cond_45
    iget v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 2972
    const/4 v8, 0x1

    .line 2974
    :cond_48
    if-eqz v5, :cond_60

    if-nez v8, :cond_60

    .line 2975
    iget-boolean v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    if-eqz v10, :cond_5c

    .line 2976
    iget-wide v10, v0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    sub-long v10, v2, v10

    long-to-float v10, v10

    mul-float v10, v10, v7

    .line 2977
    .local v10, "time":F
    invoke-interface {v5, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 2978
    .end local v10    # "time":F
    goto :goto_60

    .line 2979
    :cond_5c
    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 2982
    :cond_60
    :goto_60
    cmpl-float v5, v1, v9

    if-lez v5, :cond_6a

    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v5, v6, v5

    if-gez v5, :cond_74

    :cond_6a
    cmpg-float v5, v1, v9

    if-gtz v5, :cond_76

    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v5, v6, v5

    if-gtz v5, :cond_76

    .line 2984
    :cond_74
    iget v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 2986
    :cond_76
    iput v6, v0, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    .line 2987
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v5

    .line 2988
    .local v5, "n":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v15

    .line 2989
    .local v15, "time":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_81
    if-ge v7, v5, :cond_a9

    .line 2990
    invoke-virtual {v0, v7}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2991
    .local v14, "child":Landroid/view/View;
    iget-object v9, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Landroid/support/constraint/motion/MotionController;

    .line 2992
    .local v17, "frame":Landroid/support/constraint/motion/MotionController;
    if-eqz v17, :cond_a4

    .line 2993
    iget-object v12, v0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    move-object/from16 v9, v17

    move-object v10, v14

    move v11, v6

    move-object/from16 v18, v12

    move-wide v12, v15

    move-object/from16 v19, v14

    .end local v14    # "child":Landroid/view/View;
    .local v19, "child":Landroid/view/View;
    move-object/from16 v14, v18

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/motion/MotionController;->interpolate(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z

    goto :goto_a6

    .line 2992
    .end local v19    # "child":Landroid/view/View;
    .restart local v14    # "child":Landroid/view/View;
    :cond_a4
    move-object/from16 v19, v14

    .line 2989
    .end local v14    # "child":Landroid/view/View;
    .end local v17    # "frame":Landroid/support/constraint/motion/MotionController;
    :goto_a6
    add-int/lit8 v7, v7, 0x1

    goto :goto_81

    .line 2996
    .end local v7    # "i":I
    :cond_a9
    iget-boolean v7, v0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    if-eqz v7, :cond_b0

    .line 2997
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 2999
    :cond_b0
    return-void
.end method

.method private fireTransitionChange()V
    .registers 7

    .line 3718
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 3719
    :cond_e
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_76

    .line 3720
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_45

    .line 3721
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-eqz v0, :cond_27

    .line 3722
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-interface {v0, p0, v3, v4}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V

    .line 3724
    :cond_27
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_43

    .line 3725
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3726
    .local v3, "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-interface {v3, p0, v4, v5}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V

    .line 3727
    .end local v3    # "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    goto :goto_2f

    .line 3729
    :cond_43
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 3731
    :cond_45
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 3732
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    .line 3733
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-eqz v2, :cond_56

    .line 3734
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-interface {v2, p0, v3, v4, v0}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionChange(Landroid/support/constraint/motion/MotionLayout;IIF)V

    .line 3736
    :cond_56
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_74

    .line 3737
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3738
    .local v2, "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    invoke-interface {v2, p0, v3, v4, v5}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionChange(Landroid/support/constraint/motion/MotionLayout;IIF)V

    .line 3739
    .end local v2    # "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    goto :goto_5e

    .line 3741
    :cond_74
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 3744
    :cond_76
    return-void
.end method

.method private fireTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V
    .registers 6
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;
    .param p2, "mBeginState"    # I
    .param p3, "mEndState"    # I

    .line 4045
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-eqz v0, :cond_7

    .line 4046
    invoke-interface {v0, p0, p2, p3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V

    .line 4048
    :cond_7
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 4049
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 4050
    .local v1, "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    invoke-interface {v1, p1, p2, p3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V

    .line 4051
    .end local v1    # "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    goto :goto_f

    .line 4053
    :cond_1f
    return-void
.end method

.method private handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "view"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .line 3401
    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    .line 3402
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    .line 3403
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3404
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_29

    .line 3405
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3406
    .local v4, "child":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p2

    invoke-direct {p0, v5, v6, v4, p4}, Landroid/support/constraint/motion/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 3407
    return v1

    .line 3404
    .end local v4    # "child":Landroid/view/View;
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3411
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_29
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p2

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p1

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p2

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3413
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_63

    .line 3414
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 3415
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 3416
    return v1

    .line 3420
    :cond_63
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 3421
    return v1

    .line 3425
    :cond_6a
    const/4 v0, 0x0

    return v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 3225
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isInEditMode()Z

    move-result v0

    sput-boolean v0, Landroid/support/constraint/motion/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 3226
    const/4 v0, -0x1

    if-eqz p1, :cond_89

    .line 3227
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/R$styleable;->MotionLayout:[I

    .line 3228
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3229
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 3231
    .local v2, "N":I
    const/4 v3, 0x1

    .line 3232
    .local v3, "apply":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v2, :cond_76

    .line 3233
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 3234
    .local v5, "attr":I
    sget v6, Landroid/support/constraint/R$styleable;->MotionLayout_layoutDescription:I

    if-ne v5, v6, :cond_33

    .line 3235
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 3236
    .local v6, "n":I
    new-instance v7, Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, p0, v6}, Landroid/support/constraint/motion/MotionScene;-><init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionLayout;I)V

    iput-object v7, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 3237
    .end local v6    # "n":I
    goto :goto_73

    :cond_33
    sget v6, Landroid/support/constraint/R$styleable;->MotionLayout_currentState:I

    if-ne v5, v6, :cond_3e

    .line 3238
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    goto :goto_73

    .line 3239
    :cond_3e
    sget v6, Landroid/support/constraint/R$styleable;->MotionLayout_motionProgress:I

    if-ne v5, v6, :cond_4d

    .line 3240
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 3241
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    goto :goto_73

    .line 3242
    :cond_4d
    sget v6, Landroid/support/constraint/R$styleable;->MotionLayout_applyMotionScene:I

    if-ne v5, v6, :cond_56

    .line 3243
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    goto :goto_73

    .line 3244
    :cond_56
    sget v6, Landroid/support/constraint/R$styleable;->MotionLayout_showPaths:I

    const/4 v7, 0x0

    if-ne v5, v6, :cond_69

    .line 3245
    iget v6, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-nez v6, :cond_73

    .line 3246
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_66

    const/4 v7, 0x2

    :cond_66
    iput v7, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    goto :goto_73

    .line 3248
    :cond_69
    sget v6, Landroid/support/constraint/R$styleable;->MotionLayout_motionDebug:I

    if-ne v5, v6, :cond_73

    .line 3249
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 3232
    .end local v5    # "attr":I
    :cond_73
    :goto_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 3252
    .end local v4    # "i":I
    :cond_76
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3253
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v4, :cond_84

    .line 3254
    const-string v4, "MotionLayout"

    const-string v5, "WARNING NO app:layoutDescription tag"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    :cond_84
    if-nez v3, :cond_89

    .line 3257
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 3260
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "N":I
    .end local v3    # "apply":Z
    :cond_89
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-eqz v1, :cond_90

    .line 3261
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->checkStructure()V

    .line 3263
    :cond_90
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-ne v1, v0, :cond_ae

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_ae

    .line 3264
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 3265
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 3269
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getEndId()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 3274
    :cond_ae
    return-void
.end method

.method private processTransitionCompleted()V
    .registers 6

    .line 3768
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3769
    :cond_e
    return-void

    .line 3771
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 3772
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3773
    .local v1, "state":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-eqz v2, :cond_2f

    .line 3774
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionCompleted(Landroid/support/constraint/motion/MotionLayout;I)V

    .line 3776
    :cond_2f
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_4b

    .line 3777
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3778
    .local v3, "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p0, v4}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionCompleted(Landroid/support/constraint/motion/MotionLayout;I)V

    .line 3779
    .end local v3    # "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    goto :goto_37

    .line 3781
    .end local v1    # "state":Ljava/lang/Integer;
    :cond_4b
    goto :goto_18

    .line 3782
    :cond_4c
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3783
    return-void
.end method

.method private setupMotionViews()V
    .registers 18

    .line 1519
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v1

    .line 1521
    .local v1, "n":I
    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionLayout$Model;->build()V

    .line 1522
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1524
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getWidth()I

    move-result v9

    .line 1525
    .local v9, "layoutWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v10

    .line 1526
    .local v10, "layoutHeight":I
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionScene;->gatPathMotionArc()I

    move-result v11

    .line 1527
    .local v11, "arc":I
    const/4 v3, -0x1

    if-eq v11, v3, :cond_36

    .line 1528
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v1, :cond_36

    .line 1529
    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/MotionController;

    .line 1530
    .local v4, "motionController":Landroid/support/constraint/motion/MotionController;
    if-eqz v4, :cond_33

    .line 1531
    invoke-virtual {v4, v11}, Landroid/support/constraint/motion/MotionController;->setPathMotionArc(I)V

    .line 1528
    .end local v4    # "motionController":Landroid/support/constraint/motion/MotionController;
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 1536
    .end local v3    # "i":I
    :cond_36
    const/4 v3, 0x0

    move v12, v3

    .local v12, "i":I
    :goto_38
    if-ge v12, v1, :cond_5d

    .line 1537
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/support/constraint/motion/MotionController;

    .line 1538
    .local v13, "motionController":Landroid/support/constraint/motion/MotionController;
    if-eqz v13, :cond_5a

    .line 1539
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3, v13}, Landroid/support/constraint/motion/MotionScene;->getKeyFrames(Landroid/support/constraint/motion/MotionController;)V

    .line 1540
    iget v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v7

    move-object v3, v13

    move v4, v9

    move v5, v10

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/MotionController;->setup(IIFJ)V

    .line 1536
    .end local v13    # "motionController":Landroid/support/constraint/motion/MotionController;
    :cond_5a
    add-int/lit8 v12, v12, 0x1

    goto :goto_38

    .line 1544
    .end local v12    # "i":I
    :cond_5d
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionScene;->getStaggered()F

    move-result v3

    .line 1545
    .local v3, "stagger":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_151

    .line 1546
    float-to-double v4, v3

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_70

    goto :goto_71

    :cond_70
    const/4 v2, 0x0

    .line 1547
    .local v2, "flip":Z
    :goto_71
    const/4 v4, 0x0

    .line 1548
    .local v4, "useMotionStagger":Z
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1549
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .local v5, "min":F
    const v6, -0x800001

    .line 1550
    .local v6, "max":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7d
    if-ge v7, v1, :cond_af

    .line 1551
    iget-object v8, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/motion/MotionController;

    .line 1552
    .local v8, "f":Landroid/support/constraint/motion/MotionController;
    iget v12, v8, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_95

    .line 1553
    const/4 v4, 0x1

    .line 1554
    goto :goto_af

    .line 1556
    :cond_95
    invoke-virtual {v8}, Landroid/support/constraint/motion/MotionController;->getFinalX()F

    move-result v12

    .line 1557
    .local v12, "x":F
    invoke-virtual {v8}, Landroid/support/constraint/motion/MotionController;->getFinalY()F

    move-result v13

    .line 1558
    .local v13, "y":F
    if-eqz v2, :cond_a2

    sub-float v14, v13, v12

    goto :goto_a4

    :cond_a2
    add-float v14, v13, v12

    .line 1559
    .local v14, "mdist":F
    :goto_a4
    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1560
    invoke-static {v6, v14}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1550
    .end local v8    # "f":Landroid/support/constraint/motion/MotionController;
    .end local v12    # "x":F
    .end local v13    # "y":F
    .end local v14    # "mdist":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_7d

    .line 1562
    .end local v7    # "i":I
    :cond_af
    :goto_af
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_11c

    .line 1563
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 1564
    const v6, -0x800001

    .line 1566
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_ba
    if-ge v8, v1, :cond_df

    .line 1567
    iget-object v12, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/motion/MotionController;

    .line 1568
    .local v12, "f":Landroid/support/constraint/motion/MotionController;
    iget v13, v12, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_dc

    .line 1569
    iget v13, v12, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v5, v13}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1570
    iget v13, v12, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v6, v13}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1566
    .end local v12    # "f":Landroid/support/constraint/motion/MotionController;
    :cond_dc
    add-int/lit8 v8, v8, 0x1

    goto :goto_ba

    .line 1573
    .end local v8    # "i":I
    :cond_df
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_e0
    if-ge v8, v1, :cond_11b

    .line 1574
    iget-object v12, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/motion/MotionController;

    .line 1575
    .restart local v12    # "f":Landroid/support/constraint/motion/MotionController;
    iget v13, v12, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_118

    .line 1577
    sub-float v13, v7, v3

    div-float v13, v7, v13

    iput v13, v12, Landroid/support/constraint/motion/MotionController;->mStaggerScale:F

    .line 1578
    if-eqz v2, :cond_10c

    .line 1579
    iget v13, v12, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    sub-float v13, v6, v13

    sub-float v14, v6, v5

    div-float/2addr v13, v14

    mul-float v13, v13, v3

    sub-float v13, v3, v13

    iput v13, v12, Landroid/support/constraint/motion/MotionController;->mStaggerOffset:F

    goto :goto_118

    .line 1581
    :cond_10c
    iget v13, v12, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    sub-float/2addr v13, v5

    mul-float v13, v13, v3

    sub-float v14, v6, v5

    div-float/2addr v13, v14

    sub-float v13, v3, v13

    iput v13, v12, Landroid/support/constraint/motion/MotionController;->mStaggerOffset:F

    .line 1573
    .end local v12    # "f":Landroid/support/constraint/motion/MotionController;
    :cond_118
    :goto_118
    add-int/lit8 v8, v8, 0x1

    goto :goto_e0

    .end local v8    # "i":I
    :cond_11b
    goto :goto_151

    .line 1586
    :cond_11c
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_11d
    if-ge v8, v1, :cond_151

    .line 1587
    iget-object v12, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/motion/MotionController;

    .line 1588
    .restart local v12    # "f":Landroid/support/constraint/motion/MotionController;
    invoke-virtual {v12}, Landroid/support/constraint/motion/MotionController;->getFinalX()F

    move-result v13

    .line 1589
    .local v13, "x":F
    invoke-virtual {v12}, Landroid/support/constraint/motion/MotionController;->getFinalY()F

    move-result v14

    .line 1590
    .local v14, "y":F
    if-eqz v2, :cond_138

    sub-float v15, v14, v13

    goto :goto_13a

    :cond_138
    add-float v15, v14, v13

    .line 1591
    .local v15, "mdist":F
    :goto_13a
    sub-float v16, v7, v3

    div-float v0, v7, v16

    iput v0, v12, Landroid/support/constraint/motion/MotionController;->mStaggerScale:F

    .line 1592
    sub-float v0, v15, v5

    mul-float v0, v0, v3

    sub-float v16, v6, v5

    div-float v0, v0, v16

    sub-float v0, v3, v0

    iput v0, v12, Landroid/support/constraint/motion/MotionController;->mStaggerOffset:F

    .line 1586
    .end local v12    # "f":Landroid/support/constraint/motion/MotionController;
    .end local v13    # "x":F
    .end local v14    # "y":F
    .end local v15    # "mdist":F
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_11d

    .line 1596
    .end local v2    # "flip":Z
    .end local v4    # "useMotionStagger":Z
    .end local v5    # "min":F
    .end local v6    # "max":F
    .end local v8    # "i":I
    :cond_151
    :goto_151
    return-void
.end method

.method private static willJump(FFF)Z
    .registers 10
    .param p0, "velocity"    # F
    .param p1, "position"    # F
    .param p2, "maxAcceleration"    # F

    .line 1681
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    cmpl-float v4, p0, v3

    if-lez v4, :cond_1e

    .line 1682
    div-float v3, p0, p2

    .line 1683
    .local v3, "time":F
    mul-float v4, p0, v3

    mul-float v5, p2, v3

    mul-float v5, v5, v3

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    .line 1684
    .local v4, "pos":F
    add-float v2, p1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0

    .line 1686
    .end local v3    # "time":F
    .end local v4    # "pos":F
    :cond_1e
    neg-float v4, p0

    div-float/2addr v4, p2

    .line 1687
    .local v4, "time":F
    mul-float v5, p0, v4

    mul-float v6, p2, v4

    mul-float v6, v6, v4

    div-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 1688
    .local v5, "pos":F
    add-float v2, p1, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    return v0
.end method


# virtual methods
.method public addTransitionListener(Landroid/support/constraint/motion/MotionLayout$TransitionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3628
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 3629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 3631
    :cond_b
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3632
    return-void
.end method

.method animateTo(F)V
    .registers 6
    .param p1, "position"    # F

    .line 1739
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_5

    .line 1740
    return-void

    .line 1743
    :cond_5
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    if-eqz v1, :cond_13

    .line 1746
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1749
    :cond_13
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_1a

    .line 1750
    return-void

    .line 1752
    :cond_1a
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 1753
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1754
    .local v2, "currentPosition":F
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1755
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 1756
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 1757
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1758
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    .line 1759
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 1760
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1761
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1765
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1766
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 1767
    return-void
.end method

.method disableAutoTransition(Z)V
    .registers 3
    .param p1, "disable"    # Z

    .line 4014
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_5

    .line 4015
    return-void

    .line 4017
    :cond_5
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->disableAutoTransition(Z)V

    .line 4018
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2901
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 2908
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2909
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v1, :cond_c

    .line 2910
    return-void

    .line 2915
    :cond_c
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e0

    .line 2916
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_e0

    .line 2917
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    .line 2918
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v3

    .line 2919
    .local v3, "currentDrawTime":J
    iget-wide v5, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_4a

    .line 2920
    sub-long v5, v3, v5

    .line 2921
    .local v5, "delay":J
    const-wide/32 v7, 0xbebc200

    cmp-long v1, v5, v7

    if-lez v1, :cond_49

    .line 2922
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    int-to-float v1, v1

    long-to-float v7, v5

    const v8, 0x3089705f    # 1.0E-9f

    mul-float v7, v7, v8

    div-float/2addr v1, v7

    .line 2923
    .local v1, "fps":F
    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v8, v1, v7

    float-to-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    iput v8, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    .line 2924
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    .line 2925
    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 2927
    .end local v1    # "fps":F
    .end local v5    # "delay":J
    :cond_49
    goto :goto_4c

    .line 2928
    :cond_4a
    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 2930
    :goto_4c
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2931
    .local v0, "paint":Landroid/graphics/Paint;
    const/high16 v1, 0x42280000    # 42.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2932
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v1

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v1, v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v1, v5

    .line 2933
    .local v1, "p":F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fps "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-static {p0, v7}, Landroid/support/constraint/motion/Debug;->getState(Landroid/support/constraint/motion/MotionLayout;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2934
    .local v6, "str":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-static {p0, v8}, Landroid/support/constraint/motion/Debug;->getState(Landroid/support/constraint/motion/MotionLayout;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (progress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_b3

    const-string v8, "undefined"

    goto :goto_b7

    .line 2935
    :cond_b3
    invoke-static {p0, v8}, Landroid/support/constraint/motion/Debug;->getState(Landroid/support/constraint/motion/MotionLayout;I)Ljava/lang/String;

    move-result-object v8

    :goto_b7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2936
    const/high16 v7, -0x1000000

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2937
    const/high16 v7, 0x41300000    # 11.0f

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x1d

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2938
    const v7, -0x77ff78

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2939
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x1e

    int-to-float v7, v7

    invoke-virtual {p1, v6, v5, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2943
    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v1    # "p":F
    .end local v3    # "currentDrawTime":J
    .end local v6    # "str":Ljava/lang/String;
    :cond_e0
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-le v0, v2, :cond_fe

    .line 2944
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDevModeDraw:Landroid/support/constraint/motion/MotionLayout$DevModeDraw;

    if-nez v0, :cond_ef

    .line 2945
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDevModeDraw:Landroid/support/constraint/motion/MotionLayout$DevModeDraw;

    .line 2947
    :cond_ef
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDevModeDraw:Landroid/support/constraint/motion/MotionLayout$DevModeDraw;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v2

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->draw(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V

    .line 2949
    :cond_fe
    return-void
.end method

.method public enableTransition(IZ)V
    .registers 8
    .param p1, "transitionID"    # I
    .param p2, "enable"    # Z

    .line 996
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->getTransition(I)Landroid/support/constraint/motion/MotionScene$Transition;

    move-result-object v0

    .line 997
    .local v0, "t":Landroid/support/constraint/motion/MotionScene$Transition;
    if-eqz p2, :cond_b

    .line 998
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/MotionScene$Transition;->setEnable(Z)V

    .line 999
    return-void

    .line 1001
    :cond_b
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-ne v0, v1, :cond_35

    .line 1002
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    invoke-virtual {v1, v2}, Landroid/support/constraint/motion/MotionScene;->getTransitionsWithState(I)Ljava/util/List;

    move-result-object v1

    .line 1003
    .local v1, "transitions":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/motion/MotionScene$Transition;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 1004
    .local v3, "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1005
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iput-object v3, v2, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 1006
    goto :goto_35

    .line 1008
    .end local v3    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_34
    goto :goto_1d

    .line 1010
    .end local v1    # "transitions":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/motion/MotionScene$Transition;>;"
    :cond_35
    :goto_35
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/MotionScene$Transition;->setEnable(Z)V

    .line 1012
    return-void
.end method

.method evaluate(Z)V
    .registers 26
    .param p1, "force"    # Z

    .line 3003
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_10

    .line 3004
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 3006
    :cond_10
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-lez v5, :cond_20

    cmpg-float v5, v1, v3

    if-gez v5, :cond_20

    .line 3007
    iput v2, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 3010
    :cond_20
    const/4 v5, 0x0

    .line 3011
    .local v5, "newState":Z
    iget-boolean v6, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    if-nez v6, :cond_31

    iget-boolean v6, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    if-eqz v6, :cond_21d

    if-nez p1, :cond_31

    iget v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v6, v6, v1

    if-eqz v6, :cond_21d

    .line 3012
    :cond_31
    iget v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    sub-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 3013
    .local v1, "dir":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v6

    .line 3015
    .local v6, "currentTime":J
    const/4 v8, 0x0

    .line 3016
    .local v8, "deltaPos":F
    iget-object v9, v0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v10, v9, Landroid/support/constraint/motion/MotionInterpolator;

    const v11, 0x3089705f    # 1.0E-9f

    if-nez v10, :cond_55

    .line 3017
    iget-wide v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    sub-long v12, v6, v12

    long-to-float v10, v12

    mul-float v10, v10, v1

    mul-float v10, v10, v11

    iget v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    div-float v8, v10, v12

    .line 3018
    iput v8, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 3020
    :cond_55
    iget v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v10, v8

    .line 3022
    .local v10, "position":F
    const/4 v12, 0x0

    .line 3023
    .local v12, "done":Z
    iget-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    if-eqz v13, :cond_5f

    .line 3024
    iget v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 3027
    :cond_5f
    const/4 v13, 0x0

    cmpl-float v14, v1, v4

    if-lez v14, :cond_6a

    iget v14, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v14, v10, v14

    if-gez v14, :cond_74

    :cond_6a
    cmpg-float v14, v1, v4

    if-gtz v14, :cond_79

    iget v14, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v14, v10, v14

    if-gtz v14, :cond_79

    .line 3029
    :cond_74
    iget v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 3030
    iput-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 3031
    const/4 v12, 0x1

    .line 3036
    :cond_79
    iput v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 3037
    iput v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 3038
    iput-wide v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 3040
    const v14, 0x3727c5ac    # 1.0E-5f

    if-eqz v9, :cond_f8

    if-nez v12, :cond_f8

    .line 3041
    iget-boolean v15, v0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    if-eqz v15, :cond_d7

    .line 3042
    iget-wide v2, v0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    sub-long v2, v6, v2

    long-to-float v2, v2

    mul-float v2, v2, v11

    .line 3043
    .local v2, "time":F
    invoke-interface {v9, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 3047
    .end local v10    # "position":F
    .local v3, "position":F
    iput v3, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 3049
    iput-wide v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 3050
    iget-object v9, v0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v10, v9, Landroid/support/constraint/motion/MotionInterpolator;

    if-eqz v10, :cond_d5

    .line 3051
    check-cast v9, Landroid/support/constraint/motion/MotionInterpolator;

    invoke-virtual {v9}, Landroid/support/constraint/motion/MotionInterpolator;->getVelocity()F

    move-result v9

    .line 3052
    .local v9, "lastVelocity":F
    iput v9, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 3053
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    mul-float v10, v10, v11

    cmpg-float v10, v10, v14

    if-gtz v10, :cond_b5

    .line 3054
    iput-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 3056
    :cond_b5
    cmpl-float v10, v9, v4

    if-lez v10, :cond_c4

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, v3, v10

    if-ltz v11, :cond_c4

    .line 3057
    move v3, v10

    iput v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 3058
    iput-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 3060
    :cond_c4
    cmpg-float v10, v9, v4

    if-gez v10, :cond_d3

    cmpg-float v10, v3, v4

    if-gtz v10, :cond_d3

    .line 3061
    move v3, v4

    iput v4, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 3062
    iput-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    move v10, v3

    goto :goto_d6

    .line 3066
    .end local v2    # "time":F
    .end local v9    # "lastVelocity":F
    :cond_d3
    move v10, v3

    goto :goto_d6

    .line 3050
    .restart local v2    # "time":F
    :cond_d5
    move v10, v3

    .line 3066
    .end local v2    # "time":F
    .end local v3    # "position":F
    .restart local v10    # "position":F
    :goto_d6
    goto :goto_f8

    .line 3068
    :cond_d7
    move v2, v10

    .line 3069
    .local v2, "p2":F
    invoke-interface {v9, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    .line 3070
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v9, v3, Landroid/support/constraint/motion/MotionInterpolator;

    if-eqz v9, :cond_eb

    .line 3071
    check-cast v3, Landroid/support/constraint/motion/MotionInterpolator;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionInterpolator;->getVelocity()F

    move-result v3

    iput v3, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    goto :goto_f8

    .line 3073
    :cond_eb
    add-float v9, v2, v8

    invoke-interface {v3, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 3074
    sub-float v3, v2, v10

    mul-float v3, v3, v1

    div-float/2addr v3, v8

    iput v3, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 3079
    .end local v2    # "p2":F
    :cond_f8
    :goto_f8
    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v14

    if-lez v2, :cond_107

    .line 3080
    sget-object v2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 3083
    :cond_107
    cmpl-float v2, v1, v4

    if-lez v2, :cond_111

    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v2, v10, v2

    if-gez v2, :cond_11b

    :cond_111
    cmpg-float v2, v1, v4

    if-gtz v2, :cond_11f

    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v2, v10, v2

    if-gtz v2, :cond_11f

    .line 3085
    :cond_11b
    iget v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 3086
    iput-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 3089
    :cond_11f
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v10, v2

    if-gez v3, :cond_129

    cmpg-float v2, v10, v4

    if-gtz v2, :cond_130

    .line 3090
    :cond_129
    iput-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 3091
    sget-object v2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 3094
    :cond_130
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v2

    .line 3095
    .local v2, "n":I
    iput-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    .line 3096
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v22

    .line 3100
    .local v22, "time":J
    iput v10, v0, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    .line 3101
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13d
    if-ge v3, v2, :cond_166

    .line 3102
    invoke-virtual {v0, v3}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3103
    .local v9, "child":Landroid/view/View;
    iget-object v11, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/constraint/motion/MotionController;

    .line 3104
    .local v11, "frame":Landroid/support/constraint/motion/MotionController;
    if-eqz v11, :cond_162

    .line 3105
    iget-boolean v14, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    iget-object v13, v0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    move-object/from16 v16, v11

    move-object/from16 v17, v9

    move/from16 v18, v10

    move-wide/from16 v19, v22

    move-object/from16 v21, v13

    invoke-virtual/range {v16 .. v21}, Landroid/support/constraint/motion/MotionController;->interpolate(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z

    move-result v13

    or-int/2addr v13, v14

    iput-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    .line 3101
    .end local v9    # "child":Landroid/view/View;
    .end local v11    # "frame":Landroid/support/constraint/motion/MotionController;
    :cond_162
    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x0

    goto :goto_13d

    .line 3113
    .end local v3    # "i":I
    :cond_166
    const/4 v3, 0x1

    cmpl-float v9, v1, v4

    if-lez v9, :cond_171

    iget v9, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v9, v10, v9

    if-gez v9, :cond_17b

    :cond_171
    cmpg-float v9, v1, v4

    if-gtz v9, :cond_17d

    iget v9, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v9, v10, v9

    if-gtz v9, :cond_17d

    :cond_17b
    const/4 v9, 0x1

    goto :goto_17e

    :cond_17d
    const/4 v9, 0x0

    .line 3115
    .local v9, "end":Z
    :goto_17e
    iget-boolean v11, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    if-nez v11, :cond_18d

    iget-boolean v11, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    if-nez v11, :cond_18d

    if-eqz v9, :cond_18d

    .line 3116
    sget-object v11, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v11}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 3118
    :cond_18d
    iget-boolean v11, v0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    if-eqz v11, :cond_194

    .line 3119
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 3122
    :cond_194
    iget-boolean v11, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    if-nez v9, :cond_19a

    const/4 v13, 0x1

    goto :goto_19b

    :cond_19a
    const/4 v13, 0x0

    :goto_19b
    or-int v3, v11, v13

    iput-boolean v3, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    .line 3125
    cmpg-float v3, v10, v4

    if-gtz v3, :cond_1bd

    iget v3, v0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    const/4 v11, -0x1

    if-eq v3, v11, :cond_1bd

    .line 3129
    iget v11, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq v11, v3, :cond_1bd

    .line 3130
    const/4 v5, 0x1

    .line 3131
    iput v3, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 3132
    iget-object v11, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v11, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v3

    .line 3133
    .local v3, "set":Landroid/support/constraint/ConstraintSet;
    invoke-virtual {v3, v0}, Landroid/support/constraint/ConstraintSet;->applyCustomAttributes(Landroid/support/constraint/ConstraintLayout;)V

    .line 3134
    sget-object v11, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v11}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 3138
    .end local v3    # "set":Landroid/support/constraint/ConstraintSet;
    :cond_1bd
    float-to-double v13, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v13, v16

    if-ltz v3, :cond_1dc

    .line 3142
    iget v3, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget v11, v0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-eq v3, v11, :cond_1dc

    .line 3143
    const/4 v3, 0x1

    .line 3144
    .end local v5    # "newState":Z
    .local v3, "newState":Z
    iput v11, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 3145
    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v5, v11}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v5

    .line 3146
    .local v5, "set":Landroid/support/constraint/ConstraintSet;
    invoke-virtual {v5, v0}, Landroid/support/constraint/ConstraintSet;->applyCustomAttributes(Landroid/support/constraint/ConstraintLayout;)V

    .line 3147
    sget-object v11, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v11}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    move v5, v3

    .line 3151
    .end local v3    # "newState":Z
    .local v5, "newState":Z
    :cond_1dc
    iget-boolean v3, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    if-nez v3, :cond_1fd

    iget-boolean v3, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    if-eqz v3, :cond_1e5

    goto :goto_1fd

    .line 3154
    :cond_1e5
    cmpl-float v3, v1, v4

    if-lez v3, :cond_1ef

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v11, v10, v3

    if-eqz v11, :cond_1f7

    :cond_1ef
    cmpg-float v3, v1, v4

    if-gez v3, :cond_200

    cmpl-float v3, v10, v4

    if-nez v3, :cond_200

    .line 3155
    :cond_1f7
    sget-object v3, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v3}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    goto :goto_200

    .line 3152
    :cond_1fd
    :goto_1fd
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 3157
    :cond_200
    :goto_200
    iget-boolean v3, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    if-nez v3, :cond_212

    iget-boolean v3, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    if-eqz v3, :cond_212

    cmpl-float v3, v1, v4

    if-lez v3, :cond_212

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v11, v10, v3

    if-eqz v11, :cond_21a

    :cond_212
    cmpg-float v3, v1, v4

    if-gez v3, :cond_21d

    cmpl-float v3, v10, v4

    if-nez v3, :cond_21d

    .line 3158
    :cond_21a
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->onNewStateAttachHandlers()V

    .line 3161
    .end local v1    # "dir":F
    .end local v2    # "n":I
    .end local v6    # "currentTime":J
    .end local v8    # "deltaPos":F
    .end local v9    # "end":Z
    .end local v10    # "position":F
    .end local v12    # "done":Z
    .end local v22    # "time":J
    :cond_21d
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_22f

    .line 3162
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-eq v1, v2, :cond_22c

    .line 3163
    const/4 v5, 0x1

    .line 3165
    :cond_22c
    iput v2, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    goto :goto_23d

    .line 3166
    :cond_22f
    cmpg-float v1, v1, v4

    if-gtz v1, :cond_23d

    .line 3167
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    if-eq v1, v2, :cond_23b

    .line 3168
    const/4 v1, 0x1

    move v5, v1

    .line 3170
    :cond_23b
    iput v2, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 3173
    :cond_23d
    :goto_23d
    iget-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    or-int/2addr v1, v5

    iput-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3175
    if-eqz v5, :cond_24b

    iget-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    if-nez v1, :cond_24b

    .line 3176
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 3179
    :cond_24b
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 3180
    return-void
.end method

.method protected fireTransitionCompleted()V
    .registers 5

    .line 3752
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 3753
    :cond_e
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_41

    .line 3754
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 3755
    const/4 v0, -0x1

    .line 3756
    .local v0, "lastState":I
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    .line 3757
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3759
    :cond_32
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq v0, v2, :cond_41

    if-eq v2, v1, :cond_41

    .line 3760
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3764
    .end local v0    # "lastState":I
    :cond_41
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->processTransitionCompleted()V

    .line 3765
    return-void
.end method

.method public fireTrigger(IZF)V
    .registers 6
    .param p1, "triggerId"    # I
    .param p2, "positive"    # Z
    .param p3, "progress"    # F

    .line 3707
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-eqz v0, :cond_7

    .line 3708
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionTrigger(Landroid/support/constraint/motion/MotionLayout;IZF)V

    .line 3710
    :cond_7
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 3711
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3712
    .local v1, "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    invoke-interface {v1, p0, p1, p2, p3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionTrigger(Landroid/support/constraint/motion/MotionLayout;IZF)V

    .line 3713
    .end local v1    # "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    goto :goto_f

    .line 3715
    :cond_1f
    return-void
.end method

.method getAnchorDpDt(IFFF[F)V
    .registers 12
    .param p1, "mTouchAnchorId"    # I
    .param p2, "pos"    # F
    .param p3, "locationX"    # F
    .param p4, "locationY"    # F
    .param p5, "mAnchorDpDt"    # [F

    .line 3576
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .local v2, "v":Landroid/view/View;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/motion/MotionController;

    .line 3580
    .local v0, "f":Landroid/support/constraint/motion/MotionController;
    if-eqz v0, :cond_2d

    .line 3581
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/support/constraint/motion/MotionController;->getDpDt(FFF[F)V

    .line 3582
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v1

    .line 3583
    .local v1, "y":F
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->lastPos:F

    sub-float v3, p2, v3

    .line 3584
    .local v3, "deltaPos":F
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->lastY:F

    sub-float v4, v1, v4

    .line 3585
    .local v4, "deltaY":F
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_26

    div-float v5, v4, v3

    goto :goto_28

    :cond_26
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 3590
    .local v5, "dydp":F
    :goto_28
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->lastPos:F

    .line 3591
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->lastY:F

    .line 3592
    .end local v1    # "y":F
    .end local v3    # "deltaPos":F
    .end local v4    # "deltaY":F
    .end local v5    # "dydp":F
    goto :goto_68

    .line 3593
    :cond_2d
    if-nez v2, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4f

    .line 3594
    :cond_43
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    :goto_4f
    nop

    .line 3595
    .local v1, "idName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING could not find view id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MotionLayout"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    .end local v1    # "idName":Ljava/lang/String;
    :goto_68
    return-void
.end method

.method public getConstraintSet(I)Landroid/support/constraint/ConstraintSet;
    .registers 3
    .param p1, "id"    # I

    .line 3876
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_6

    .line 3877
    const/4 v0, 0x0

    return-object v0

    .line 3879
    :cond_6
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v0

    return-object v0
.end method

.method public getConstraintSetIds()[I
    .registers 2

    .line 3863
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_6

    .line 3864
    const/4 v0, 0x0

    return-object v0

    .line 3866
    :cond_6
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getConstraintSetIds()[I

    move-result-object v0

    return-object v0
.end method

.method getConstraintSetNames(I)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I

    .line 4002
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_6

    .line 4003
    const/4 v0, 0x0

    return-object v0

    .line 4005
    :cond_6
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->lookUpConstraintName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentState()I
    .registers 2

    .line 3549
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    return v0
.end method

.method public getDebugMode(Z)V
    .registers 3
    .param p1, "showPaths"    # Z

    .line 3384
    if-eqz p1, :cond_4

    const/4 v0, 0x2

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    :goto_5
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 3385
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 3386
    return-void
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionScene$Transition;",
            ">;"
        }
    .end annotation

    .line 3928
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_6

    .line 3929
    const/4 v0, 0x0

    return-object v0

    .line 3931
    :cond_6
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDesignTool()Landroid/support/constraint/motion/DesignTool;
    .registers 2

    .line 3789
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDesignTool:Landroid/support/constraint/motion/DesignTool;

    if-nez v0, :cond_b

    .line 3790
    new-instance v0, Landroid/support/constraint/motion/DesignTool;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/DesignTool;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDesignTool:Landroid/support/constraint/motion/DesignTool;

    .line 3792
    :cond_b
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDesignTool:Landroid/support/constraint/motion/DesignTool;

    return-object v0
.end method

.method public getEndState()I
    .registers 2

    .line 3950
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    return v0
.end method

.method protected getNanoTime()J
    .registers 3

    .line 983
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .registers 2

    .line 3558
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    return v0
.end method

.method public getStartState()I
    .registers 2

    .line 3941
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    return v0
.end method

.method public getTargetPosition()F
    .registers 2

    .line 3960
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    return v0
.end method

.method public getTransition(I)Landroid/support/constraint/motion/MotionScene$Transition;
    .registers 3
    .param p1, "id"    # I

    .line 3978
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->getTransitionById(I)Landroid/support/constraint/motion/MotionScene$Transition;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .registers 2

    .line 1454
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_b

    .line 1455
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1457
    :cond_b
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$StateCache;->recordState()V

    .line 1458
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$StateCache;->getTransitionState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionTimeMs()J
    .registers 3

    .line 3605
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_e

    .line 3606
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 3608
    :cond_e
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getVelocity()F
    .registers 2

    .line 1949
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    return v0
.end method

.method public getViewVelocity(Landroid/view/View;FF[FI)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "posOnViewX"    # F
    .param p3, "posOnViewY"    # F
    .param p4, "returnVelocity"    # [F
    .param p5, "type"    # I

    .line 1962
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 1963
    .local v0, "v":F
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1964
    .local v1, "position":F
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2f

    .line 1965
    const v2, 0x3727c5ac    # 1.0E-5f

    .line 1966
    .local v2, "deltaT":F
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 1967
    .local v3, "dir":F
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v5, v2

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 1968
    .local v4, "interpos":F
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v6, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 1969
    sub-float/2addr v4, v1

    .line 1970
    div-float/2addr v4, v2

    .line 1971
    mul-float v5, v3, v4

    iget v6, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    div-float v0, v5, v6

    move v8, v1

    goto :goto_30

    .line 1964
    .end local v2    # "deltaT":F
    .end local v3    # "dir":F
    .end local v4    # "interpos":F
    :cond_2f
    move v8, v1

    .line 1974
    .end local v1    # "position":F
    .local v8, "position":F
    :goto_30
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v2, v1, Landroid/support/constraint/motion/MotionInterpolator;

    if-eqz v2, :cond_3c

    .line 1975
    check-cast v1, Landroid/support/constraint/motion/MotionInterpolator;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionInterpolator;->getVelocity()F

    move-result v0

    .line 1978
    :cond_3c
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/support/constraint/motion/MotionController;

    .line 1979
    .local v9, "f":Landroid/support/constraint/motion/MotionController;
    and-int/lit8 v1, p5, 0x1

    if-nez v1, :cond_5b

    .line 1980
    nop

    .line 1981
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1980
    move-object v1, v9

    move v2, v8

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/motion/MotionController;->getPostLayoutDvDp(FIIFF[F)V

    goto :goto_5e

    .line 1984
    :cond_5b
    invoke-virtual {v9, v8, p2, p3, p4}, Landroid/support/constraint/motion/MotionController;->getDpDt(FFF[F)V

    .line 1986
    :goto_5e
    const/4 v1, 0x2

    if-ge p5, v1, :cond_6f

    .line 1987
    const/4 v1, 0x0

    aget v2, p4, v1

    mul-float v2, v2, v0

    aput v2, p4, v1

    .line 1988
    const/4 v1, 0x1

    aget v2, p4, v1

    mul-float v2, v2, v0

    aput v2, p4, v1

    .line 1990
    :cond_6f
    return-void
.end method

.method public isAttachedToWindow()Z
    .registers 3

    .line 1296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 1297
    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->isAttachedToWindow()Z

    move-result v0

    return v0

    .line 1299
    :cond_b
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public isInteractionEnabled()Z
    .registers 2

    .line 4040
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    return v0
.end method

.method public loadLayoutDescription(I)V
    .registers 7
    .param p1, "motionScene"    # I

    .line 1274
    if-eqz p1, :cond_4b

    .line 1276
    :try_start_2
    new-instance v0, Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroid/support/constraint/motion/MotionScene;-><init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionLayout;I)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 1277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_19

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1278
    :cond_19
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0, p0}, Landroid/support/constraint/motion/MotionScene;->readFallback(Landroid/support/constraint/motion/MotionLayout;)V

    .line 1279
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1280
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 1281
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/MotionScene;->setRtl(Z)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_41} :catch_42

    .line 1285
    :cond_41
    goto :goto_4e

    .line 1283
    :catch_42
    move-exception v0

    .line 1284
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unable to parse MotionScene file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1287
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_4b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 1289
    :goto_4e
    return-void
.end method

.method lookUpConstraintId(Ljava/lang/String;)I
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 3989
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_6

    .line 3990
    const/4 v0, 0x0

    return v0

    .line 3992
    :cond_6
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected obtainVelocityTracker()Landroid/support/constraint/motion/MotionLayout$MotionTracker;
    .registers 2

    .line 992
    invoke-static {}, Landroid/support/constraint/motion/MotionLayout$MyTracker;->obtain()Landroid/support/constraint/motion/MotionLayout$MyTracker;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 3493
    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->onAttachedToWindow()V

    .line 3494
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_1e

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 3495
    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v0

    .line 3496
    .local v0, "cSet":Landroid/support/constraint/ConstraintSet;
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1, p0}, Landroid/support/constraint/motion/MotionScene;->readFallback(Landroid/support/constraint/motion/MotionLayout;)V

    .line 3497
    if-eqz v0, :cond_1a

    .line 3498
    invoke-virtual {v0, p0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    .line 3500
    :cond_1a
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 3502
    .end local v0    # "cSet":Landroid/support/constraint/ConstraintSet;
    :cond_1e
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->onNewStateAttachHandlers()V

    .line 3503
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-eqz v0, :cond_29

    .line 3504
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$StateCache;->apply()V

    goto :goto_49

    .line 3506
    :cond_29
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_49

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_49

    .line 3507
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getAutoTransition()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_49

    .line 3508
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->transitionToEnd()V

    .line 3509
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 3510
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 3514
    :cond_49
    :goto_49
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3436
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/4 v1, 0x0

    if-eqz v0, :cond_94

    iget-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    if-nez v2, :cond_b

    goto/16 :goto_94

    .line 3439
    :cond_b
    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 3440
    .local v0, "currentTransition":Landroid/support/constraint/motion/MotionScene$Transition;
    if-eqz v0, :cond_93

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 3441
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object v2

    .line 3442
    .local v2, "touchResponse":Landroid/support/constraint/motion/TouchResponse;
    if-eqz v2, :cond_93

    .line 3443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3b

    .line 3444
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2, p0, v3}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    .line 3445
    .local v3, "region":Landroid/graphics/RectF;
    if-eqz v3, :cond_3b

    .line 3446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 3447
    return v1

    .line 3450
    .end local v3    # "region":Landroid/graphics/RectF;
    :cond_3b
    invoke-virtual {v2}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegionId()I

    move-result v3

    .line 3451
    .local v3, "regionId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_93

    .line 3452
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v3, :cond_52

    .line 3453
    :cond_4c
    invoke-virtual {p0, v3}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3455
    :cond_52
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    if-eqz v4, :cond_93

    .line 3456
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3457
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 3460
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-direct {p0, v5, v5, v4, p1}, Landroid/support/constraint/motion/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_93

    .line 3462
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 3469
    .end local v2    # "touchResponse":Landroid/support/constraint/motion/TouchResponse;
    .end local v3    # "regionId":I
    :cond_93
    return v1

    .line 3437
    .end local v0    # "currentTransition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_94
    :goto_94
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 3186
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 3191
    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v2, :cond_e

    .line 3192
    invoke-super/range {p0 .. p5}, Landroid/support/constraint/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_2c

    .line 3210
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 3193
    return-void

    .line 3195
    :cond_e
    sub-int v2, p4, p2

    .line 3196
    .local v2, "w":I
    sub-int v3, p5, p3

    .line 3197
    .local v3, "h":I
    :try_start_12
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mLastLayoutWidth:I

    if-ne v4, v2, :cond_1a

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mLastLayoutHeight:I

    if-eq v4, v3, :cond_20

    .line 3198
    :cond_1a
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 3199
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 3205
    :cond_20
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mLastLayoutWidth:I

    .line 3206
    iput v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastLayoutHeight:I

    .line 3207
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOldWidth:I

    .line 3208
    iput v3, p0, Landroid/support/constraint/motion/MotionLayout;->mOldHeight:I
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 3210
    .end local v2    # "w":I
    .end local v3    # "h":I
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 3211
    nop

    .line 3212
    return-void

    .line 3210
    :catchall_2c
    move-exception v0

    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 3211
    throw v0
.end method

.method protected onMeasure(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2362
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_8

    .line 2363
    invoke-super {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;->onMeasure(II)V

    .line 2364
    return-void

    .line 2366
    :cond_8
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_14

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    if-eq v0, p2, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 2367
    .local v0, "recalc":Z
    :goto_15
    iget-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    if-eqz v2, :cond_22

    .line 2368
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 2369
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->onNewStateAttachHandlers()V

    .line 2370
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->processTransitionCompleted()V

    .line 2371
    const/4 v0, 0x1

    .line 2374
    :cond_22
    iget-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mDirtyHierarchy:Z

    if-eqz v1, :cond_27

    .line 2375
    const/4 v0, 0x1

    .line 2378
    :cond_27
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    .line 2379
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    .line 2381
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v1

    .line 2382
    .local v1, "startId":I
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getEndId()I

    move-result v2

    .line 2383
    .local v2, "endId":I
    const/4 v3, 0x1

    .line 2384
    .local v3, "setMeasure":Z
    if-nez v0, :cond_42

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v4, v1, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->isNotConfiguredWith(II)Z

    move-result v4

    if-eqz v4, :cond_68

    :cond_42
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_68

    .line 2385
    invoke-super {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;->onMeasure(II)V

    .line 2386
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v6, v1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v6

    iget-object v7, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v7, v2}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 2387
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionLayout$Model;->reEvaluateState()V

    .line 2388
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v4, v1, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->setMeasuredId(II)V

    .line 2389
    const/4 v3, 0x0

    .line 2392
    :cond_68
    iget-boolean v4, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    if-nez v4, :cond_6e

    if-eqz v3, :cond_bf

    .line 2393
    :cond_6e
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 2394
    .local v4, "heightPadding":I
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 2395
    .local v5, "widthPadding":I
    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 2396
    .local v6, "androidLayoutWidth":I
    iget-object v7, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    .line 2397
    .local v7, "androidLayoutHeight":I
    iget v8, p0, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_96

    if-nez v8, :cond_a6

    .line 2398
    :cond_96
    iget v8, p0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    int-to-float v10, v8

    iget v11, p0, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    iget v12, p0, Landroid/support/constraint/motion/MotionLayout;->mEndWrapWidth:I

    sub-int/2addr v12, v8

    int-to-float v8, v12

    mul-float v11, v11, v8

    add-float/2addr v10, v11

    float-to-int v6, v10

    .line 2399
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 2401
    :cond_a6
    iget v8, p0, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    if-eq v8, v9, :cond_ac

    if-nez v8, :cond_bc

    .line 2402
    :cond_ac
    iget v8, p0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    int-to-float v9, v8

    iget v10, p0, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    iget v11, p0, Landroid/support/constraint/motion/MotionLayout;->mEndWrapHeight:I

    sub-int/2addr v11, v8

    int-to-float v8, v11

    mul-float v10, v10, v8

    add-float/2addr v9, v10

    float-to-int v7, v9

    .line 2403
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 2405
    :cond_bc
    invoke-virtual {p0, v6, v7}, Landroid/support/constraint/motion/MotionLayout;->setMeasuredDimension(II)V

    .line 2407
    .end local v4    # "heightPadding":I
    .end local v5    # "widthPadding":I
    .end local v6    # "androidLayoutWidth":I
    .end local v7    # "androidLayoutHeight":I
    :cond_bf
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->evaluateLayout()V

    .line 2408
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 2539
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 2534
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 16
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
    .param p5, "type"    # I

    .line 2463
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_d2

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-nez v0, :cond_a

    goto/16 :goto_d2

    .line 2467
    :cond_a
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2468
    return-void

    .line 2471
    :cond_15
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 2472
    .local v0, "currentTransition":Landroid/support/constraint/motion/MotionScene$Transition;
    const/4 v1, -0x1

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2473
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object v2

    .line 2474
    .local v2, "touchResponse":Landroid/support/constraint/motion/TouchResponse;
    if-eqz v2, :cond_35

    .line 2475
    invoke-virtual {v2}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegionId()I

    move-result v3

    .line 2476
    .local v3, "regionId":I
    if-eq v3, v1, :cond_35

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v3, :cond_35

    .line 2477
    return-void

    .line 2482
    .end local v2    # "touchResponse":Landroid/support/constraint/motion/TouchResponse;
    .end local v3    # "regionId":I
    :cond_35
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_53

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getMoveWhenScrollAtTop()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 2484
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    cmpl-float v5, v2, v3

    if-eqz v5, :cond_4c

    cmpl-float v2, v2, v4

    if-nez v2, :cond_53

    :cond_4c
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 2485
    return-void

    .line 2490
    :cond_53
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_96

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/motion/TouchResponse;->getFlags()I

    move-result v1

    and-int/2addr v1, v5

    if-eqz v1, :cond_96

    .line 2491
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    int-to-float v6, p2

    int-to-float v7, p3

    invoke-virtual {v1, v6, v7}, Landroid/support/constraint/motion/MotionScene;->getProgressDirection(FF)F

    move-result v1

    .line 2492
    .local v1, "dir":F
    iget v6, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpg-float v7, v6, v4

    if-gtz v7, :cond_7c

    cmpg-float v7, v1, v4

    if-ltz v7, :cond_84

    :cond_7c
    cmpl-float v3, v6, v3

    if-ltz v3, :cond_96

    cmpl-float v3, v1, v4

    if-lez v3, :cond_96

    .line 2494
    :cond_84
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_95

    .line 2495
    invoke-virtual {p1, v2}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 2497
    new-instance v2, Landroid/support/constraint/motion/MotionLayout$1;

    invoke-direct {v2, p0, p1}, Landroid/support/constraint/motion/MotionLayout$1;-><init>(Landroid/support/constraint/motion/MotionLayout;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2504
    :cond_95
    return-void

    .line 2511
    .end local v1    # "dir":F
    :cond_96
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 2512
    .local v1, "progress":F
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v3

    .line 2513
    .local v3, "time":J
    int-to-float v6, p2

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDX:F

    .line 2514
    int-to-float v6, p3

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDY:F

    .line 2515
    iget-wide v6, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetTime:J

    sub-long v6, v3, v6

    long-to-double v6, v6

    const-wide v8, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v6, v6, v8

    double-to-float v6, v6

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDT:F

    .line 2516
    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetTime:J

    .line 2520
    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    int-to-float v7, p2

    int-to-float v8, p3

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/motion/MotionScene;->processScrollMove(FF)V

    .line 2521
    iget v6, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_c4

    .line 2522
    aput p2, p4, v2

    .line 2523
    aput p3, p4, v5

    .line 2525
    :cond_c4
    invoke-virtual {p0, v2}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 2526
    aget v2, p4, v2

    if-nez v2, :cond_cf

    aget v2, p4, v5

    if-eqz v2, :cond_d1

    .line 2527
    :cond_cf
    iput-boolean v5, p0, Landroid/support/constraint/motion/MotionLayout;->mUndergoingMotion:Z

    .line 2530
    :cond_d1
    return-void

    .line 2464
    .end local v0    # "currentTransition":Landroid/support/constraint/motion/MotionScene$Transition;
    .end local v1    # "progress":F
    .end local v3    # "time":J
    :cond_d2
    :goto_d2
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I

    .line 2458
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .line 2429
    return-void
.end method

.method onNewStateAttachHandlers()V
    .registers 3

    .line 3528
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_5

    .line 3529
    return-void

    .line 3531
    :cond_5
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    invoke-virtual {v0, p0, v1}, Landroid/support/constraint/motion/MotionScene;->autoTransition(Landroid/support/constraint/motion/MotionLayout;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3532
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 3533
    return-void

    .line 3535
    :cond_11
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 3536
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1, p0, v0}, Landroid/support/constraint/motion/MotionScene;->addOnClickListeners(Landroid/support/constraint/motion/MotionLayout;I)V

    .line 3538
    :cond_1b
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->supportTouch()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3539
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->setupTouch()V

    .line 3541
    :cond_28
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .line 3518
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_b

    .line 3519
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/MotionScene;->setRtl(Z)V

    .line 3521
    :cond_b
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .line 2415
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_25

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 2417
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 2418
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/motion/TouchResponse;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_23

    goto :goto_25

    .line 2421
    :cond_23
    const/4 v0, 0x1

    return v0

    .line 2419
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 2438
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_5

    .line 2439
    return-void

    .line 2441
    :cond_5
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDX:F

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDT:F

    div-float/2addr v1, v2

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDY:F

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/support/constraint/motion/MotionScene;->processScrollUp(FF)V

    .line 2442
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3477
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_2a

    iget-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->supportTouch()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3478
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 3479
    .local v0, "currentTransition":Landroid/support/constraint/motion/MotionScene$Transition;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 3480
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 3482
    :cond_1f
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getCurrentState()I

    move-result v2

    invoke-virtual {v1, p1, v2, p0}, Landroid/support/constraint/motion/MotionScene;->processTouchEvent(Landroid/view/MotionEvent;ILandroid/support/constraint/motion/MotionLayout;)V

    .line 3483
    const/4 v1, 0x1

    return v1

    .line 3488
    .end local v0    # "currentTransition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_2a
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 3800
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 3801
    instance-of v0, p1, Landroid/support/constraint/motion/MotionHelper;

    if-eqz v0, :cond_46

    .line 3802
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/motion/MotionHelper;

    .line 3803
    .local v0, "helper":Landroid/support/constraint/motion/MotionHelper;
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    .line 3804
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 3806
    :cond_15
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3808
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionHelper;->isUsedOnShow()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3809
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-nez v1, :cond_2b

    .line 3810
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 3812
    :cond_2b
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3814
    :cond_30
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionHelper;->isUseOnHide()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 3815
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-nez v1, :cond_41

    .line 3816
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 3818
    :cond_41
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3821
    .end local v0    # "helper":Landroid/support/constraint/motion/MotionHelper;
    :cond_46
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 3828
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 3829
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 3830
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3832
    :cond_a
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 3833
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3835
    :cond_11
    return-void
.end method

.method protected parseLayoutDescription(I)V
    .registers 3
    .param p1, "id"    # I

    .line 3221
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    .line 3222
    return-void
.end method

.method public rebuildMotion()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3889
    const-string v0, "MotionLayout"

    const-string v1, "This method is deprecated. Please call rebuildScene() instead."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 3891
    return-void
.end method

.method public rebuildScene()V
    .registers 2

    .line 3897
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$Model;->reEvaluateState()V

    .line 3898
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 3899
    return-void
.end method

.method public removeTransitionListener(Landroid/support/constraint/motion/MotionLayout$TransitionListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3642
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 3643
    const/4 v0, 0x0

    return v0

    .line 3645
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .registers 3

    .line 2340
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    if-nez v0, :cond_1c

    .line 2341
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 2343
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getLayoutDuringTransition()I

    move-result v0

    if-nez v0, :cond_1c

    .line 2344
    return-void

    .line 2347
    :cond_1c
    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 2348
    return-void
.end method

.method public setDebugMode(I)V
    .registers 2
    .param p1, "debugMode"    # I

    .line 3371
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 3372
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 3373
    return-void
.end method

.method public setInteractionEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 4027
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    .line 4028
    return-void
.end method

.method public setInterpolatedProgress(F)V
    .registers 4
    .param p1, "pos"    # F

    .line 1329
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_19

    .line 1330
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1331
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 1332
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v0, :cond_19

    .line 1333
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 1334
    return-void

    .line 1337
    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_19
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 1338
    return-void
.end method

.method public setOnHide(F)V
    .registers 5
    .param p1, "progress"    # F

    .line 3848
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 3849
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3850
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_19

    .line 3851
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionHelper;

    .line 3852
    .local v2, "helper":Landroid/support/constraint/motion/MotionHelper;
    invoke-virtual {v2, p1}, Landroid/support/constraint/motion/MotionHelper;->setProgress(F)V

    .line 3850
    .end local v2    # "helper":Landroid/support/constraint/motion/MotionHelper;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3855
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_19
    return-void
.end method

.method public setOnShow(F)V
    .registers 5
    .param p1, "progress"    # F

    .line 3838
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 3839
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3840
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_19

    .line 3841
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionHelper;

    .line 3842
    .local v2, "helper":Landroid/support/constraint/motion/MotionHelper;
    invoke-virtual {v2, p1}, Landroid/support/constraint/motion/MotionHelper;->setProgress(F)V

    .line 3840
    .end local v2    # "helper":Landroid/support/constraint/motion/MotionHelper;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3845
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_19
    return-void
.end method

.method public setProgress(F)V
    .registers 6
    .param p1, "pos"    # F

    .line 1467
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_b

    cmpl-float v2, p1, v0

    if-lez v2, :cond_12

    .line 1468
    :cond_b
    const-string v2, "MotionLayout"

    const-string v3, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :cond_12
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_29

    .line 1471
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_23

    .line 1472
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1474
    :cond_23
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setProgress(F)V

    .line 1475
    return-void

    .line 1484
    :cond_29
    cmpg-float v2, p1, v1

    if-gtz v2, :cond_3d

    .line 1485
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1486
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_59

    .line 1487
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    goto :goto_59

    .line 1489
    :cond_3d
    cmpl-float v1, p1, v0

    if-ltz v1, :cond_51

    .line 1490
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1491
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_59

    .line 1492
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    goto :goto_59

    .line 1495
    :cond_51
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1496
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1500
    :cond_59
    :goto_59
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_5e

    .line 1501
    return-void

    .line 1504
    :cond_5e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    .line 1505
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1506
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1507
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 1508
    iput-wide v1, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 1509
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1511
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1512
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 1513
    return-void
.end method

.method public setProgress(FF)V
    .registers 4
    .param p1, "pos"    # F
    .param p2, "velocity"    # F

    .line 1347
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1348
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_11

    .line 1349
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1351
    :cond_11
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setProgress(F)V

    .line 1352
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p2}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setVelocity(F)V

    .line 1353
    return-void

    .line 1355
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 1356
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1357
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 1358
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    .line 1359
    return-void
.end method

.method public setScene(Landroid/support/constraint/motion/MotionScene;)V
    .registers 3
    .param p1, "scene"    # Landroid/support/constraint/motion/MotionScene;

    .line 3280
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 3281
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionScene;->setRtl(Z)V

    .line 3282
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 3283
    return-void
.end method

.method public setState(III)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .line 1312
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1313
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1314
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1315
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1316
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    if-eqz v0, :cond_18

    .line 1317
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/constraint/ConstraintLayoutStates;->updateConstraints(IFF)V

    goto :goto_23

    .line 1318
    :cond_18
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_23

    .line 1319
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    .line 1321
    :cond_23
    :goto_23
    return-void
.end method

.method setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V
    .registers 5
    .param p1, "newState"    # Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 1040
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_a

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 1041
    return-void

    .line 1043
    :cond_a
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 1044
    .local v0, "oldState":Landroid/support/constraint/motion/MotionLayout$TransitionState;
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 1046
    sget-object v1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne v0, v1, :cond_19

    sget-object v1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v1, :cond_19

    .line 1047
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->fireTransitionChange()V

    .line 1049
    :cond_19
    sget-object v1, Landroid/support/constraint/motion/MotionLayout$2;->$SwitchMap$android$support$constraint$motion$MotionLayout$TransitionState:[I

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$TransitionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    goto :goto_3b

    .line 1060
    :pswitch_25
    sget-object v1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v1, :cond_3b

    .line 1061
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->fireTransitionCompleted()V

    goto :goto_3b

    .line 1052
    :pswitch_2d
    sget-object v1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v1, :cond_34

    .line 1053
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->fireTransitionChange()V

    .line 1055
    :cond_34
    sget-object v1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v1, :cond_3b

    .line 1056
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->fireTransitionCompleted()V

    .line 1067
    :cond_3b
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2d
        :pswitch_25
    .end packed-switch
.end method

.method public setTransition(I)V
    .registers 10
    .param p1, "transitionId"    # I

    .line 1186
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_99

    .line 1187
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->getTransition(I)Landroid/support/constraint/motion/MotionScene$Transition;

    move-result-object v0

    .line 1188
    .local v0, "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1189
    .local v1, "current":I
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1190
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1192
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_36

    .line 1193
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v2, :cond_27

    .line 1194
    new-instance v2, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v2, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1196
    :cond_27
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setStartState(I)V

    .line 1197
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setEndState(I)V

    .line 1198
    return-void

    .line 1208
    :cond_36
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 1209
    .local v2, "pos":F
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    if-ne v3, v4, :cond_40

    .line 1210
    const/4 v2, 0x0

    goto :goto_46

    .line 1211
    :cond_40
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-ne v3, v4, :cond_46

    .line 1212
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1214
    :cond_46
    :goto_46
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3, v0}, Landroid/support/constraint/motion/MotionScene;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 1215
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v6, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v5, v6}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v5

    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v6, v7}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1216
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 1218
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_6d

    const/4 v3, 0x0

    goto :goto_6e

    :cond_6d
    move v3, v2

    :goto_6e
    iput v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1220
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 1221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/support/constraint/motion/Debug;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " transitionToStart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MotionLayout"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->transitionToStart()V

    goto :goto_99

    .line 1224
    :cond_96
    invoke-virtual {p0, v2}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 1227
    .end local v0    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    .end local v1    # "current":I
    .end local v2    # "pos":F
    :cond_99
    :goto_99
    return-void
.end method

.method public setTransition(II)V
    .registers 7
    .param p1, "beginId"    # I
    .param p2, "endId"    # I

    .line 1154
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1155
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_11

    .line 1156
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1158
    :cond_11
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setStartState(I)V

    .line 1159
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p2}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setEndState(I)V

    .line 1160
    return-void

    .line 1163
    :cond_1c
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_43

    .line 1164
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1165
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1171
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/motion/MotionScene;->setTransition(II)V

    .line 1172
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2, p1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3, p2}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1173
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 1174
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1175
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->transitionToStart()V

    .line 1177
    :cond_43
    return-void
.end method

.method protected setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V
    .registers 9
    .param p1, "transition"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 1230
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 1232
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1233
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene;->getEndId()I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 1234
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1235
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1236
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    goto :goto_24

    .line 1238
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1239
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1240
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1242
    :goto_24
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isTransitionFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-wide/16 v0, -0x1

    goto :goto_32

    :cond_2e
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v0

    :goto_32
    iput-wide v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 1247
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v0

    .line 1248
    .local v0, "newBeginState":I
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene;->getEndId()I

    move-result v1

    .line 1249
    .local v1, "newEndState":I
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    if-ne v0, v2, :cond_49

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-ne v1, v2, :cond_49

    .line 1250
    return-void

    .line 1252
    :cond_49
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1253
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1254
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2, v0, v1}, Landroid/support/constraint/motion/MotionScene;->setTransition(II)V

    .line 1260
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v4, v5}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v4

    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v6, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v5, v6}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1261
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/MotionLayout$Model;->setMeasuredId(II)V

    .line 1262
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionLayout$Model;->reEvaluateState()V

    .line 1264
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 1265
    return-void
.end method

.method public setTransitionDuration(I)V
    .registers 4
    .param p1, "milliseconds"    # I

    .line 3964
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_c

    .line 3965
    const-string v0, "MotionLayout"

    const-string v1, "MotionScene not defined"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    return-void

    .line 3968
    :cond_c
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->setDuration(I)V

    .line 3969
    return-void
.end method

.method public setTransitionListener(Landroid/support/constraint/motion/MotionLayout$TransitionListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3618
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3619
    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1441
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_b

    .line 1442
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1444
    :cond_b
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setTransitionState(Landroid/os/Bundle;)V

    .line 1445
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1446
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$StateCache;->apply()V

    .line 1448
    :cond_1b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 2352
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2353
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-static {v0, v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 2354
    invoke-static {v0, v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Dpos/Dt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2353
    return-object v1
.end method

.method public touchAnimateTo(IFF)V
    .registers 14
    .param p1, "touchUpMode"    # I
    .param p2, "position"    # F
    .param p3, "currentVelocity"    # F

    .line 1617
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_5

    .line 1618
    return-void

    .line 1620
    :cond_5
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_c

    .line 1621
    return-void

    .line 1624
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 1625
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 1626
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v7, v1, v2

    iput v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 1628
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1629
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1631
    packed-switch p1, :pswitch_data_ba

    goto/16 :goto_ac

    .line 1659
    :pswitch_2b
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v1

    invoke-static {p3, v0, v1}, Landroid/support/constraint/motion/MotionLayout;->willJump(FFF)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1660
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v2

    invoke-virtual {v0, p3, v1, v2}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->config(FFF)V

    .line 1661
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_ac

    .line 1663
    :cond_4b
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 1664
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v6

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getMaxVelocity()F

    move-result v7

    .line 1663
    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/motion/utils/StopLogic;->config(FFFFFF)V

    .line 1665
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 1666
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1667
    .local v0, "currentState":I
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1668
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1669
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_ac

    .line 1654
    .end local v0    # "currentState":I
    :pswitch_70
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v2

    invoke-virtual {v0, p3, v1, v2}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->config(FFF)V

    .line 1655
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1657
    goto :goto_ac

    .line 1652
    :pswitch_82
    goto :goto_ac

    .line 1635
    :pswitch_83
    if-ne p1, v0, :cond_87

    .line 1636
    const/4 p2, 0x0

    goto :goto_8c

    .line 1637
    :cond_87
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8c

    .line 1638
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1640
    :cond_8c
    :goto_8c
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 1641
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v8

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getMaxVelocity()F

    move-result v9

    .line 1640
    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v9}, Landroid/support/constraint/motion/utils/StopLogic;->config(FFFFFF)V

    .line 1643
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1644
    .restart local v0    # "currentState":I
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1645
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1646
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1648
    .end local v0    # "currentState":I
    nop

    .line 1675
    :goto_ac
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    .line 1676
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 1677
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 1678
    return-void

    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_82
        :pswitch_70
        :pswitch_2b
    .end packed-switch
.end method

.method public transitionToEnd()V
    .registers 2

    .line 1796
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    .line 1797
    return-void
.end method

.method public transitionToStart()V
    .registers 2

    .line 1787
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    .line 1788
    return-void
.end method

.method public transitionToState(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1806
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1807
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_11

    .line 1808
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1810
    :cond_11
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setEndState(I)V

    .line 1811
    return-void

    .line 1813
    :cond_17
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Landroid/support/constraint/motion/MotionLayout;->transitionToState(III)V

    .line 1814
    return-void
.end method

.method public transitionToState(III)V
    .registers 26
    .param p1, "id"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .line 1834
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/4 v2, -0x1

    if-eqz v1, :cond_21

    iget-object v1, v1, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    if-eqz v1, :cond_21

    .line 1835
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    iget v3, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    move/from16 v4, p2

    int-to-float v5, v4

    move/from16 v6, p3

    int-to-float v7, v6

    move/from16 v8, p1

    invoke-virtual {v1, v3, v8, v5, v7}, Landroid/support/constraint/StateSet;->convertToConstraintSet(IIFF)I

    move-result v1

    .line 1837
    .local v1, "tmp_id":I
    if-eq v1, v2, :cond_27

    .line 1843
    move v3, v1

    .end local p1    # "id":I
    .local v3, "id":I
    goto :goto_28

    .line 1834
    .end local v1    # "tmp_id":I
    .end local v3    # "id":I
    .restart local p1    # "id":I
    :cond_21
    move/from16 v8, p1

    move/from16 v4, p2

    move/from16 v6, p3

    .line 1846
    :cond_27
    move v3, v8

    .end local p1    # "id":I
    .restart local v3    # "id":I
    :goto_28
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-ne v1, v3, :cond_2d

    .line 1847
    return-void

    .line 1849
    :cond_2d
    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    const/4 v7, 0x0

    if-ne v5, v3, :cond_36

    .line 1850
    invoke-virtual {v0, v7}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    .line 1851
    return-void

    .line 1853
    :cond_36
    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v5, v3, :cond_40

    .line 1854
    invoke-virtual {v0, v8}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    .line 1855
    return-void

    .line 1857
    :cond_40
    iput v3, v0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1858
    if-eq v1, v2, :cond_50

    .line 1866
    invoke-virtual {v0, v1, v3}, Landroid/support/constraint/motion/MotionLayout;->setTransition(II)V

    .line 1867
    invoke-virtual {v0, v8}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    .line 1869
    iput v7, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1870
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->transitionToEnd()V

    .line 1871
    return-void

    .line 1879
    :cond_50
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 1880
    iput v8, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1881
    iput v7, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1882
    iput v7, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1883
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 1884
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 1885
    iput-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    .line 1886
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1887
    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v5}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v5

    int-to-float v5, v5

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v5, v9

    iput v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 1888
    iput v2, v0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1889
    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v9, v0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v5, v2, v9}, Landroid/support/constraint/motion/MotionScene;->setTransition(II)V

    .line 1891
    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v2

    .line 1892
    .local v2, "startId":I
    move v5, v3

    .line 1893
    .local v5, "targetID":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v9

    .line 1894
    .local v9, "n":I
    iget-object v10, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 1895
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_90
    if-ge v10, v9, :cond_a3

    .line 1896
    invoke-virtual {v0, v10}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1897
    .local v11, "v":Landroid/view/View;
    new-instance v12, Landroid/support/constraint/motion/MotionController;

    invoke-direct {v12, v11}, Landroid/support/constraint/motion/MotionController;-><init>(Landroid/view/View;)V

    .line 1898
    .local v12, "f":Landroid/support/constraint/motion/MotionController;
    iget-object v13, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    .end local v11    # "v":Landroid/view/View;
    .end local v12    # "f":Landroid/support/constraint/motion/MotionController;
    add-int/lit8 v10, v10, 0x1

    goto :goto_90

    .line 1900
    .end local v10    # "i":I
    :cond_a3
    const/4 v10, 0x1

    iput-boolean v10, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1902
    iget-object v11, v0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v12, v0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v13, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v13, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v13

    invoke-virtual {v11, v12, v1, v13}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1903
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 1904
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout$Model;->build()V

    .line 1905
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->computeCurrentPositions()V

    .line 1906
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getWidth()I

    move-result v1

    .line 1907
    .local v1, "layoutWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v17

    .line 1909
    .local v17, "layoutHeight":I
    const/4 v11, 0x0

    move v15, v11

    .local v15, "i":I
    :goto_c8
    if-ge v15, v9, :cond_f6

    .line 1910
    iget-object v11, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v15}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Landroid/support/constraint/motion/MotionController;

    .line 1911
    .local v14, "motionController":Landroid/support/constraint/motion/MotionController;
    iget-object v11, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v11, v14}, Landroid/support/constraint/motion/MotionScene;->getKeyFrames(Landroid/support/constraint/motion/MotionController;)V

    .line 1912
    iget v13, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v18

    move-object v11, v14

    move v12, v1

    move/from16 v16, v13

    move/from16 v13, v17

    move-object/from16 v20, v14

    .end local v14    # "motionController":Landroid/support/constraint/motion/MotionController;
    .local v20, "motionController":Landroid/support/constraint/motion/MotionController;
    move/from16 v14, v16

    move/from16 v21, v15

    .end local v15    # "i":I
    .local v21, "i":I
    move-wide/from16 v15, v18

    invoke-virtual/range {v11 .. v16}, Landroid/support/constraint/motion/MotionController;->setup(IIFJ)V

    .line 1909
    .end local v20    # "motionController":Landroid/support/constraint/motion/MotionController;
    add-int/lit8 v15, v21, 0x1

    .end local v21    # "i":I
    .restart local v15    # "i":I
    goto :goto_c8

    :cond_f6
    move/from16 v21, v15

    .line 1915
    .end local v15    # "i":I
    iget-object v11, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v11}, Landroid/support/constraint/motion/MotionScene;->getStaggered()F

    move-result v11

    .line 1916
    .local v11, "stagger":F
    cmpl-float v12, v11, v7

    if-eqz v12, :cond_164

    .line 1918
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    .local v12, "min":F
    const v13, -0x800001

    .line 1919
    .local v13, "max":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_109
    if-ge v14, v9, :cond_130

    .line 1920
    iget-object v15, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v14}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/motion/MotionController;

    .line 1921
    .local v10, "f":Landroid/support/constraint/motion/MotionController;
    invoke-virtual {v10}, Landroid/support/constraint/motion/MotionController;->getFinalX()F

    move-result v15

    .line 1922
    .local v15, "x":F
    invoke-virtual {v10}, Landroid/support/constraint/motion/MotionController;->getFinalY()F

    move-result v16

    .line 1923
    .local v16, "y":F
    add-float v7, v16, v15

    invoke-static {v12, v7}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 1924
    add-float v7, v16, v15

    invoke-static {v13, v7}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 1919
    .end local v10    # "f":Landroid/support/constraint/motion/MotionController;
    .end local v15    # "x":F
    .end local v16    # "y":F
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x1

    goto :goto_109

    .line 1927
    .end local v14    # "i":I
    :cond_130
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_131
    if-ge v7, v9, :cond_161

    .line 1928
    iget-object v10, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/motion/MotionController;

    .line 1929
    .restart local v10    # "f":Landroid/support/constraint/motion/MotionController;
    invoke-virtual {v10}, Landroid/support/constraint/motion/MotionController;->getFinalX()F

    move-result v14

    .line 1930
    .local v14, "x":F
    invoke-virtual {v10}, Landroid/support/constraint/motion/MotionController;->getFinalY()F

    move-result v15

    .line 1931
    .local v15, "y":F
    sub-float v16, v8, v11

    move/from16 v19, v1

    .end local v1    # "layoutWidth":I
    .local v19, "layoutWidth":I
    div-float v1, v8, v16

    iput v1, v10, Landroid/support/constraint/motion/MotionController;->mStaggerScale:F

    .line 1932
    add-float v1, v14, v15

    sub-float/2addr v1, v12

    mul-float v1, v1, v11

    sub-float v16, v13, v12

    div-float v1, v1, v16

    sub-float v1, v11, v1

    iput v1, v10, Landroid/support/constraint/motion/MotionController;->mStaggerOffset:F

    .line 1927
    .end local v10    # "f":Landroid/support/constraint/motion/MotionController;
    .end local v14    # "x":F
    .end local v15    # "y":F
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v19

    goto :goto_131

    .end local v19    # "layoutWidth":I
    .restart local v1    # "layoutWidth":I
    :cond_161
    move/from16 v19, v1

    .end local v1    # "layoutWidth":I
    .restart local v19    # "layoutWidth":I
    goto :goto_166

    .line 1916
    .end local v7    # "i":I
    .end local v12    # "min":F
    .end local v13    # "max":F
    .end local v19    # "layoutWidth":I
    .restart local v1    # "layoutWidth":I
    :cond_164
    move/from16 v19, v1

    .line 1936
    .end local v1    # "layoutWidth":I
    .restart local v19    # "layoutWidth":I
    :goto_166
    const/4 v1, 0x0

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1937
    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1938
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1940
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 1941
    return-void
.end method

.method public updateState()V
    .registers 6

    .line 3918
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 3919
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 3920
    return-void
.end method

.method public updateState(ILandroid/support/constraint/ConstraintSet;)V
    .registers 4
    .param p1, "stateId"    # I
    .param p2, "set"    # Landroid/support/constraint/ConstraintSet;

    .line 3908
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_7

    .line 3909
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/motion/MotionScene;->setConstraintSet(ILandroid/support/constraint/ConstraintSet;)V

    .line 3911
    :cond_7
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->updateState()V

    .line 3912
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-ne v0, p1, :cond_11

    .line 3913
    invoke-virtual {p2, p0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    .line 3915
    :cond_11
    return-void
.end method
