.class Landroid/support/constraint/motion/TouchResponse;
.super Ljava/lang/Object;
.source "TouchResponse.java"


# static fields
.field private static final DEBUG:Z = false

.field static final FLAG_DISABLE_POST_SCROLL:I = 0x1

.field static final FLAG_DISABLE_SCROLL:I = 0x2

.field private static final SIDE_BOTTOM:I = 0x3

.field private static final SIDE_END:I = 0x6

.field private static final SIDE_LEFT:I = 0x1

.field private static final SIDE_MIDDLE:I = 0x4

.field private static final SIDE_RIGHT:I = 0x2

.field private static final SIDE_START:I = 0x5

.field private static final SIDE_TOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TouchResponse"

.field private static final TOUCH_DIRECTION:[[F

.field private static final TOUCH_DOWN:I = 0x1

.field private static final TOUCH_END:I = 0x5

.field private static final TOUCH_LEFT:I = 0x2

.field private static final TOUCH_RIGHT:I = 0x3

.field private static final TOUCH_SIDES:[[F

.field private static final TOUCH_START:I = 0x4

.field private static final TOUCH_UP:I


# instance fields
.field private mAnchorDpDt:[F

.field private mDragScale:F

.field private mDragStarted:Z

.field private mDragThreshold:F

.field private mFlags:I

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLimitBoundsTo:I

.field private mMaxAcceleration:F

.field private mMaxVelocity:F

.field private final mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

.field private mMoveWhenScrollAtTop:Z

.field private mOnTouchUp:I

.field private mTouchAnchorId:I

.field private mTouchAnchorSide:I

.field private mTouchAnchorX:F

.field private mTouchAnchorY:F

.field private mTouchDirectionX:F

.field private mTouchDirectionY:F

.field private mTouchRegionId:I

.field private mTouchSide:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_6c

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_74

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_7c

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_84

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_8c

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [F

    fill-array-data v2, :array_94

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [F

    fill-array-data v2, :array_9c

    const/4 v8, 0x6

    aput-object v2, v0, v8

    sput-object v0, Landroid/support/constraint/motion/TouchResponse;->TOUCH_SIDES:[[F

    .line 68
    new-array v0, v8, [[F

    new-array v2, v1, [F

    fill-array-data v2, :array_a4

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_ac

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_b4

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_bc

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_c4

    aput-object v2, v0, v6

    new-array v1, v1, [F

    fill-array-data v1, :array_cc

    aput-object v1, v0, v7

    sput-object v0, Landroid/support/constraint/motion/TouchResponse;->TOUCH_DIRECTION:[[F

    return-void

    :array_6c
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_74
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_7c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_84
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_8c
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_94
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_9c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_a4
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_ac
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_b4
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_bc
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_c4
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_cc
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # Landroid/support/constraint/motion/MotionLayout;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorSide:I

    .line 46
    iput v0, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchSide:I

    .line 47
    iput v0, p0, Landroid/support/constraint/motion/TouchResponse;->mOnTouchUp:I

    .line 48
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorId:I

    .line 49
    iput v1, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchRegionId:I

    .line 50
    iput v1, p0, Landroid/support/constraint/motion/TouchResponse;->mLimitBoundsTo:I

    .line 51
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorY:F

    .line 52
    iput v1, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorX:F

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    .line 54
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionY:F

    .line 55
    iput-boolean v0, p0, Landroid/support/constraint/motion/TouchResponse;->mDragStarted:Z

    .line 56
    const/4 v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    .line 92
    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Landroid/support/constraint/motion/TouchResponse;->mMaxVelocity:F

    .line 93
    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Landroid/support/constraint/motion/TouchResponse;->mMaxAcceleration:F

    .line 94
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/constraint/motion/TouchResponse;->mMoveWhenScrollAtTop:Z

    .line 95
    iput v1, p0, Landroid/support/constraint/motion/TouchResponse;->mDragScale:F

    .line 96
    iput v0, p0, Landroid/support/constraint/motion/TouchResponse;->mFlags:I

    .line 99
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Landroid/support/constraint/motion/TouchResponse;->mDragThreshold:F

    .line 102
    iput-object p2, p0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    .line 103
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/constraint/motion/TouchResponse;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method private fill(Landroid/content/res/TypedArray;)V
    .registers 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 130
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 131
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_c3

    .line 132
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 133
    .local v2, "attr":I
    sget v3, Landroid/support/constraint/R$styleable;->OnSwipe_touchAnchorId:I

    if-ne v2, v3, :cond_19

    .line 134
    iget v3, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorId:I

    goto/16 :goto_bf

    .line 135
    :cond_19
    sget v3, Landroid/support/constraint/R$styleable;->OnSwipe_touchAnchorSide:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_35

    .line 136
    iget v3, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorSide:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorSide:I

    .line 137
    sget-object v6, Landroid/support/constraint/motion/TouchResponse;->TOUCH_SIDES:[[F

    aget-object v3, v6, v3

    aget v5, v3, v5

    iput v5, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorX:F

    .line 138
    aget v3, v3, v4

    iput v3, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorY:F

    goto/16 :goto_bf

    .line 139
    :cond_35
    sget v3, Landroid/support/constraint/R$styleable;->OnSwipe_dragDirection:I

    if-ne v2, v3, :cond_4f

    .line 140
    iget v3, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchSide:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchSide:I

    .line 141
    sget-object v6, Landroid/support/constraint/motion/TouchResponse;->TOUCH_DIRECTION:[[F

    aget-object v3, v6, v3

    aget v5, v3, v5

    iput v5, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    .line 142
    aget v3, v3, v4

    iput v3, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionY:F

    goto/16 :goto_bf

    .line 143
    :cond_4f
    sget v3, Landroid/support/constraint/R$styleable;->OnSwipe_maxVelocity:I

    if-ne v2, v3, :cond_5c

    .line 144
    iget v3, p0, Landroid/support/constraint/motion/TouchResponse;->mMaxVelocity:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/TouchResponse;->mMaxVelocity:F

    goto :goto_bf

    .line 145
    :cond_5c
    sget v3, Landroid/support/constraint/R$styleable;->OnSwipe_maxAcceleration:I

    if-ne v2, v3, :cond_69

    .line 146
    iget v3, p0, Landroid/support/constraint/motion/TouchResponse;->mMaxAcceleration:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/TouchResponse;->mMaxAcceleration:F

    goto :goto_bf

    .line 147
    :cond_69
    sget v3, Landroid/support/constraint/R$styleable;->OnSwipe_moveWhenScrollAtTop:I

    if-ne v2, v3, :cond_76

    .line 148
    iget-boolean v3, p0, Landroid/support/constraint/motion/TouchResponse;->mMoveWhenScrollAtTop:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/constraint/motion/TouchResponse;->mMoveWhenScrollAtTop:Z

    goto :goto_bf

    .line 149
    :cond_76
    sget v3, Landroid/support/constraint/R$styleable;->OnSwipe_dragScale:I

    if-ne v2, v3, :cond_83

    .line 150
    iget v3, p0, Landroid/support/constraint/motion/TouchResponse;->mDragScale:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/TouchResponse;->mDragScale:F

    goto :goto_bf

    .line 151
    :cond_83
    sget v3, Landroid/support/constraint/R$styleable;->OnSwipe_dragThreshold:I

    if-ne v2, v3, :cond_90

    .line 152
    iget v3, p0, Landroid/support/constraint/motion/TouchResponse;->mDragThreshold:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/TouchResponse;->mDragThreshold:F

    goto :goto_bf

    .line 153
    :cond_90
    sget v3, Landroid/support/constraint/R$styleable;->OnSwipe_touchRegionId:I

    if-ne v2, v3, :cond_9d

    .line 154
    iget v3, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchRegionId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchRegionId:I

    goto :goto_bf

    .line 155
    :cond_9d
    sget v3, Landroid/support/constraint/R$styleable;->OnSwipe_onTouchUp:I

    if-ne v2, v3, :cond_aa

    .line 156
    iget v3, p0, Landroid/support/constraint/motion/TouchResponse;->mOnTouchUp:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/TouchResponse;->mOnTouchUp:I

    goto :goto_bf

    .line 157
    :cond_aa
    sget v3, Landroid/support/constraint/R$styleable;->OnSwipe_nestedScrollFlags:I

    if-ne v2, v3, :cond_b5

    .line 158
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/TouchResponse;->mFlags:I

    goto :goto_bf

    .line 159
    :cond_b5
    sget v3, Landroid/support/constraint/R$styleable;->OnSwipe_limitBoundsTo:I

    if-ne v2, v3, :cond_bf

    .line 160
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/TouchResponse;->mLimitBoundsTo:I

    .line 131
    .end local v2    # "attr":I
    :cond_bf
    :goto_bf
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 164
    .end local v1    # "i":I
    :cond_c3
    return-void
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 124
    sget-object v0, Landroid/support/constraint/R$styleable;->OnSwipe:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/support/constraint/motion/TouchResponse;->fill(Landroid/content/res/TypedArray;)V

    .line 126
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    return-void
.end method


# virtual methods
.method dot(FF)F
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 536
    iget v0, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    mul-float v0, v0, p1

    iget v1, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionY:F

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method public getAnchorId()I
    .registers 2

    .line 441
    iget v0, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorId:I

    return v0
.end method

.method public getFlags()I
    .registers 2

    .line 548
    iget v0, p0, Landroid/support/constraint/motion/TouchResponse;->mFlags:I

    return v0
.end method

.method getLimitBoundsTo(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 8
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "rect"    # Landroid/graphics/RectF;

    .line 522
    iget v0, p0, Landroid/support/constraint/motion/TouchResponse;->mLimitBoundsTo:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 523
    return-object v1

    .line 525
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_e

    .line 527
    return-object v1

    .line 529
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 530
    return-object p2
.end method

.method getLimitBoundsToId()I
    .registers 2

    .line 533
    iget v0, p0, Landroid/support/constraint/motion/TouchResponse;->mLimitBoundsTo:I

    return v0
.end method

.method getMaxAcceleration()F
    .registers 2

    .line 476
    iget v0, p0, Landroid/support/constraint/motion/TouchResponse;->mMaxAcceleration:F

    return v0
.end method

.method public getMaxVelocity()F
    .registers 2

    .line 486
    iget v0, p0, Landroid/support/constraint/motion/TouchResponse;->mMaxVelocity:F

    return v0
.end method

.method getMoveWhenScrollAtTop()Z
    .registers 2

    .line 490
    iget-boolean v0, p0, Landroid/support/constraint/motion/TouchResponse;->mMoveWhenScrollAtTop:Z

    return v0
.end method

.method getProgressDirection(FF)F
    .registers 10
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 327
    iget-object v0, p0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v0

    .line 328
    .local v0, "pos":F
    iget-object v1, p0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget v2, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorId:I

    iget v4, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorX:F

    iget v5, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorY:F

    iget-object v6, p0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/motion/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 330
    iget v1, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    const v2, 0x33d6bf95    # 1.0E-7f

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_2f

    .line 331
    iget-object v4, p0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    const/4 v5, 0x0

    aget v6, v4, v5

    cmpl-float v3, v6, v3

    if-nez v3, :cond_29

    .line 332
    aput v2, v4, v5

    .line 334
    :cond_29
    mul-float v1, v1, p1

    aget v2, v4, v5

    div-float/2addr v1, v2

    .local v1, "velocity":F
    goto :goto_42

    .line 336
    .end local v1    # "velocity":F
    :cond_2f
    iget-object v1, p0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    const/4 v4, 0x1

    aget v5, v1, v4

    cmpl-float v3, v5, v3

    if-nez v3, :cond_3a

    .line 337
    aput v2, v1, v4

    .line 339
    :cond_3a
    iget v2, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionY:F

    mul-float v2, v2, p2

    aget v1, v1, v4

    div-float v1, v2, v1

    .line 341
    .restart local v1    # "velocity":F
    :goto_42
    return v1
.end method

.method getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 8
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "rect"    # Landroid/graphics/RectF;

    .line 501
    iget v0, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchRegionId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 502
    return-object v1

    .line 504
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 505
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_e

    .line 506
    return-object v1

    .line 508
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 509
    return-object p2
.end method

.method getTouchRegionId()I
    .registers 2

    .line 512
    iget v0, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchRegionId:I

    return v0
.end method

.method processTouchEvent(Landroid/view/MotionEvent;Landroid/support/constraint/motion/MotionLayout$MotionTracker;ILandroid/support/constraint/motion/MotionScene;)V
    .registers 24
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "velocityTracker"    # Landroid/support/constraint/motion/MotionLayout$MotionTracker;
    .param p3, "currentState"    # I
    .param p4, "motionScene"    # Landroid/support/constraint/motion/MotionScene;

    .line 183
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Landroid/support/constraint/motion/MotionLayout$MotionTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    packed-switch v3, :pswitch_data_1d2

    goto/16 :goto_1d0

    .line 191
    :pswitch_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v10, v0, Landroid/support/constraint/motion/TouchResponse;->mLastTouchY:F

    sub-float/2addr v3, v10

    .line 192
    .local v3, "dy":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    iget v11, v0, Landroid/support/constraint/motion/TouchResponse;->mLastTouchX:F

    sub-float/2addr v10, v11

    .line 193
    .local v10, "dx":F
    iget v11, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    mul-float v11, v11, v10

    iget v12, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionY:F

    mul-float v12, v12, v3

    add-float/2addr v11, v12

    .line 198
    .local v11, "drag":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, v0, Landroid/support/constraint/motion/TouchResponse;->mDragThreshold:F

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_3d

    iget-boolean v12, v0, Landroid/support/constraint/motion/TouchResponse;->mDragStarted:Z

    if-eqz v12, :cond_1d0

    .line 202
    :cond_3d
    iget-object v12, v0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v12}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v12

    .line 203
    .local v12, "pos":F
    iget-boolean v13, v0, Landroid/support/constraint/motion/TouchResponse;->mDragStarted:Z

    if-nez v13, :cond_4e

    .line 204
    iput-boolean v7, v0, Landroid/support/constraint/motion/TouchResponse;->mDragStarted:Z

    .line 205
    iget-object v13, v0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v13, v12}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 210
    :cond_4e
    iget v14, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorId:I

    if-eq v14, v4, :cond_65

    .line 212
    iget-object v13, v0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget v4, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorX:F

    iget v15, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorY:F

    iget-object v5, v0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    move/from16 v17, v15

    move v15, v12

    move/from16 v16, v4

    move-object/from16 v18, v5

    invoke-virtual/range {v13 .. v18}, Landroid/support/constraint/motion/MotionLayout;->getAnchorDpDt(IFFF[F)V

    goto :goto_84

    .line 220
    :cond_65
    iget-object v4, v0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionLayout;->getWidth()I

    move-result v4

    iget-object v5, v0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v5}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    .line 221
    .local v4, "minSize":F
    iget-object v5, v0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    iget v13, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionY:F

    mul-float v13, v13, v4

    aput v13, v5, v7

    .line 222
    iget v13, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    mul-float v13, v13, v4

    aput v13, v5, v9

    .line 225
    .end local v4    # "minSize":F
    :goto_84
    iget v4, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    iget-object v5, v0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    aget v13, v5, v9

    mul-float v4, v4, v13

    iget v13, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionY:F

    aget v5, v5, v7

    mul-float v13, v13, v5

    add-float/2addr v4, v13

    .line 233
    .local v4, "movmentInDir":F
    iget v5, v0, Landroid/support/constraint/motion/TouchResponse;->mDragScale:F

    mul-float v4, v4, v5

    .line 235
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v13, v5

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v13, v15

    if-gez v5, :cond_ae

    .line 236
    iget-object v5, v0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    const v13, 0x3c23d70a    # 0.01f

    aput v13, v5, v9

    .line 237
    aput v13, v5, v7

    .line 241
    :cond_ae
    iget v5, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_bb

    .line 242
    iget-object v5, v0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    aget v5, v5, v9

    div-float v5, v10, v5

    .local v5, "change":F
    goto :goto_c1

    .line 244
    .end local v5    # "change":F
    :cond_bb
    iget-object v5, v0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    aget v5, v5, v7

    div-float v5, v3, v5

    .line 249
    .restart local v5    # "change":F
    :goto_c1
    add-float v13, v12, v5

    invoke-static {v13, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 251
    .end local v12    # "pos":F
    .local v6, "pos":F
    iget-object v12, v0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v12}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v12

    cmpl-float v12, v6, v12

    if-eqz v12, :cond_ff

    .line 252
    iget-object v12, v0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v12, v6}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 256
    const/16 v12, 0x3e8

    invoke-interface {v1, v12}, Landroid/support/constraint/motion/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    .line 257
    invoke-interface/range {p2 .. p2}, Landroid/support/constraint/motion/MotionLayout$MotionTracker;->getXVelocity()F

    move-result v12

    .line 258
    .local v12, "tvx":F
    invoke-interface/range {p2 .. p2}, Landroid/support/constraint/motion/MotionLayout$MotionTracker;->getYVelocity()F

    move-result v13

    .line 259
    .local v13, "tvy":F
    iget v14, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    cmpl-float v8, v14, v8

    if-eqz v8, :cond_f4

    iget-object v7, v0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    aget v7, v7, v9

    div-float v7, v12, v7

    goto :goto_fa

    :cond_f4
    iget-object v8, v0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    aget v7, v8, v7

    div-float v7, v13, v7

    .line 260
    .local v7, "velocity":F
    :goto_fa
    iget-object v8, v0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iput v7, v8, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 261
    .end local v7    # "velocity":F
    .end local v12    # "tvx":F
    .end local v13    # "tvy":F
    goto :goto_103

    .line 262
    :cond_ff
    iget-object v7, v0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iput v8, v7, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 264
    :goto_103
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, v0, Landroid/support/constraint/motion/TouchResponse;->mLastTouchX:F

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, v0, Landroid/support/constraint/motion/TouchResponse;->mLastTouchY:F

    .line 266
    .end local v4    # "movmentInDir":F
    .end local v5    # "change":F
    .end local v6    # "pos":F
    goto/16 :goto_1d0

    .line 269
    .end local v3    # "dy":F
    .end local v10    # "dx":F
    .end local v11    # "drag":F
    :pswitch_111
    iput-boolean v9, v0, Landroid/support/constraint/motion/TouchResponse;->mDragStarted:Z

    .line 270
    const/16 v3, 0x3e8

    invoke-interface {v1, v3}, Landroid/support/constraint/motion/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    .line 271
    invoke-interface/range {p2 .. p2}, Landroid/support/constraint/motion/MotionLayout$MotionTracker;->getXVelocity()F

    move-result v3

    .line 272
    .local v3, "tvx":F
    invoke-interface/range {p2 .. p2}, Landroid/support/constraint/motion/MotionLayout$MotionTracker;->getYVelocity()F

    move-result v5

    .line 273
    .local v5, "tvy":F
    iget-object v10, v0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v10}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v10

    .line 274
    .local v10, "currentPos":F
    move/from16 v17, v10

    .line 279
    .local v17, "pos":F
    iget v12, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorId:I

    if-eq v12, v4, :cond_13c

    .line 280
    iget-object v11, v0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget v14, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorX:F

    iget v15, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorY:F

    iget-object v4, v0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    move/from16 v13, v17

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/support/constraint/motion/MotionLayout;->getAnchorDpDt(IFFF[F)V

    goto :goto_15b

    .line 282
    :cond_13c
    iget-object v4, v0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionLayout;->getWidth()I

    move-result v4

    iget-object v11, v0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v11}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    .line 283
    .local v4, "minSize":F
    iget-object v11, v0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    iget v12, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionY:F

    mul-float v12, v12, v4

    aput v12, v11, v7

    .line 284
    iget v12, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    mul-float v12, v12, v4

    aput v12, v11, v9

    .line 286
    .end local v4    # "minSize":F
    :goto_15b
    iget v4, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    iget-object v11, v0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    aget v9, v11, v9

    mul-float v12, v4, v9

    iget v13, v0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionY:F

    aget v7, v11, v7

    mul-float v13, v13, v7

    add-float/2addr v12, v13

    .line 288
    .local v12, "movmentInDir":F
    cmpl-float v4, v4, v8

    if-eqz v4, :cond_171

    .line 289
    div-float v4, v3, v9

    .local v4, "velocity":F
    goto :goto_173

    .line 291
    .end local v4    # "velocity":F
    :cond_171
    div-float v4, v5, v7

    .line 299
    .restart local v4    # "velocity":F
    :goto_173
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_182

    .line 300
    const/high16 v7, 0x40400000    # 3.0f

    div-float v7, v4, v7

    add-float v17, v17, v7

    move/from16 v7, v17

    goto :goto_184

    .line 299
    :cond_182
    move/from16 v7, v17

    .line 302
    .end local v17    # "pos":F
    .local v7, "pos":F
    :goto_184
    cmpl-float v9, v7, v8

    if-eqz v9, :cond_1b1

    cmpl-float v9, v7, v6

    if-eqz v9, :cond_1b1

    iget v9, v0, Landroid/support/constraint/motion/TouchResponse;->mOnTouchUp:I

    const/4 v11, 0x3

    if-eq v9, v11, :cond_1b1

    .line 303
    iget-object v11, v0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    float-to-double v13, v7

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    cmpg-double v17, v13, v15

    if-gez v17, :cond_19c

    const/4 v13, 0x0

    goto :goto_19e

    :cond_19c
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_19e
    invoke-virtual {v11, v9, v13, v4}, Landroid/support/constraint/motion/MotionLayout;->touchAnimateTo(IFF)V

    .line 304
    cmpl-float v8, v8, v10

    if-gez v8, :cond_1a9

    cmpg-float v6, v6, v10

    if-gtz v6, :cond_1d0

    .line 305
    :cond_1a9
    iget-object v6, v0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    sget-object v8, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v6, v8}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    goto :goto_1d0

    .line 307
    :cond_1b1
    cmpl-float v8, v8, v7

    if-gez v8, :cond_1b9

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1d0

    .line 308
    :cond_1b9
    iget-object v6, v0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    sget-object v8, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v6, v8}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    goto :goto_1d0

    .line 186
    .end local v3    # "tvx":F
    .end local v4    # "velocity":F
    .end local v5    # "tvy":F
    .end local v7    # "pos":F
    .end local v10    # "currentPos":F
    .end local v12    # "movmentInDir":F
    :pswitch_1c1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v0, Landroid/support/constraint/motion/TouchResponse;->mLastTouchX:F

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v0, Landroid/support/constraint/motion/TouchResponse;->mLastTouchY:F

    .line 188
    iput-boolean v9, v0, Landroid/support/constraint/motion/TouchResponse;->mDragStarted:Z

    .line 189
    nop

    .line 313
    :cond_1d0
    :goto_1d0
    return-void

    nop

    :pswitch_data_1d2
    .packed-switch 0x0
        :pswitch_1c1
        :pswitch_111
        :pswitch_18
    .end packed-switch
.end method

.method scrollMove(FF)V
    .registers 14
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 366
    iget v0, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    mul-float v0, v0, p1

    iget v1, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionY:F

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    .line 368
    .local v0, "drag":F
    iget-object v1, p0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v1

    .line 369
    .local v1, "pos":F
    iget-boolean v2, p0, Landroid/support/constraint/motion/TouchResponse;->mDragStarted:Z

    const/4 v8, 0x1

    if-nez v2, :cond_1b

    .line 370
    iput-boolean v8, p0, Landroid/support/constraint/motion/TouchResponse;->mDragStarted:Z

    .line 371
    iget-object v2, p0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2, v1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 373
    :cond_1b
    iget-object v2, p0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget v3, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorId:I

    iget v5, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorX:F

    iget v6, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorY:F

    iget-object v7, p0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/motion/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 374
    iget v2, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    iget-object v3, p0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    const/4 v4, 0x0

    aget v5, v3, v4

    mul-float v2, v2, v5

    iget v5, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionY:F

    aget v3, v3, v8

    mul-float v5, v5, v3

    add-float/2addr v2, v5

    .line 376
    .local v2, "movmentInDir":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v5, v3

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v5, v9

    if-gez v3, :cond_50

    .line 377
    iget-object v3, p0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    const v5, 0x3c23d70a    # 0.01f

    aput v5, v3, v4

    .line 378
    aput v5, v3, v8

    .line 382
    :cond_50
    iget v3, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-eqz v6, :cond_5f

    .line 383
    mul-float v3, v3, p1

    iget-object v6, p0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    aget v4, v6, v4

    div-float/2addr v3, v4

    .local v3, "change":F
    goto :goto_68

    .line 385
    .end local v3    # "change":F
    :cond_5f
    iget v3, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionY:F

    mul-float v3, v3, p2

    iget-object v4, p0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    aget v4, v4, v8

    div-float/2addr v3, v4

    .line 387
    .restart local v3    # "change":F
    :goto_68
    add-float v4, v1, v3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 389
    iget-object v4, p0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v4

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_83

    .line 390
    iget-object v4, p0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v4, v1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 397
    .end local v1    # "pos":F
    .end local v2    # "movmentInDir":F
    .end local v3    # "change":F
    :cond_83
    return-void
.end method

.method scrollUp(FF)V
    .registers 16
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/motion/TouchResponse;->mDragStarted:Z

    .line 347
    iget-object v1, p0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v1

    .line 348
    .local v1, "pos":F
    iget-object v2, p0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget v3, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorId:I

    iget v5, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorX:F

    iget v6, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorY:F

    iget-object v7, p0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/motion/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 349
    iget v2, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    iget-object v3, p0, Landroid/support/constraint/motion/TouchResponse;->mAnchorDpDt:[F

    aget v4, v3, v0

    mul-float v5, v2, v4

    iget v6, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionY:F

    const/4 v7, 0x1

    aget v3, v3, v7

    mul-float v8, v6, v3

    add-float/2addr v5, v8

    .line 351
    .local v5, "movmentInDir":F
    const/4 v8, 0x0

    cmpl-float v9, v2, v8

    if-eqz v9, :cond_30

    .line 352
    mul-float v2, v2, p1

    div-float/2addr v2, v4

    .local v2, "velocity":F
    goto :goto_34

    .line 354
    .end local v2    # "velocity":F
    :cond_30
    mul-float v6, v6, p2

    div-float v2, v6, v3

    .line 356
    .restart local v2    # "velocity":F
    :goto_34
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 357
    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v2, v3

    add-float/2addr v1, v3

    .line 359
    :cond_3f
    cmpl-float v3, v1, v8

    if-eqz v3, :cond_64

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_4b

    const/4 v4, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v4, 0x0

    :goto_4c
    iget v6, p0, Landroid/support/constraint/motion/TouchResponse;->mOnTouchUp:I

    const/4 v9, 0x3

    if-eq v6, v9, :cond_52

    const/4 v0, 0x1

    :cond_52
    and-int/2addr v0, v4

    if-eqz v0, :cond_64

    .line 360
    iget-object v0, p0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    float-to-double v9, v1

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v9, v11

    if-gez v4, :cond_5f

    goto :goto_61

    :cond_5f
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_61
    invoke-virtual {v0, v6, v8, v2}, Landroid/support/constraint/motion/MotionLayout;->touchAnimateTo(IFF)V

    .line 362
    :cond_64
    return-void
.end method

.method public setAnchorId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 432
    iput p1, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorId:I

    .line 433
    return-void
.end method

.method setDown(FF)V
    .registers 3
    .param p1, "lastTouchX"    # F
    .param p2, "lastTouchY"    # F

    .line 316
    iput p1, p0, Landroid/support/constraint/motion/TouchResponse;->mLastTouchX:F

    .line 317
    iput p2, p0, Landroid/support/constraint/motion/TouchResponse;->mLastTouchY:F

    .line 318
    return-void
.end method

.method public setMaxAcceleration(F)V
    .registers 2
    .param p1, "acceleration"    # F

    .line 472
    iput p1, p0, Landroid/support/constraint/motion/TouchResponse;->mMaxAcceleration:F

    .line 473
    return-void
.end method

.method public setMaxVelocity(F)V
    .registers 2
    .param p1, "velocity"    # F

    .line 462
    iput p1, p0, Landroid/support/constraint/motion/TouchResponse;->mMaxVelocity:F

    .line 463
    return-void
.end method

.method public setRTL(Z)V
    .registers 10
    .param p1, "rtl"    # Z

    .line 107
    const/4 v0, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz p1, :cond_1d

    .line 108
    sget-object v6, Landroid/support/constraint/motion/TouchResponse;->TOUCH_DIRECTION:[[F

    aget-object v1, v6, v1

    aput-object v1, v6, v2

    .line 109
    aget-object v1, v6, v5

    aput-object v1, v6, v4

    .line 110
    sget-object v1, Landroid/support/constraint/motion/TouchResponse;->TOUCH_SIDES:[[F

    aget-object v2, v1, v5

    aput-object v2, v1, v4

    .line 111
    aget-object v2, v1, v3

    aput-object v2, v1, v0

    goto :goto_31

    .line 113
    :cond_1d
    sget-object v6, Landroid/support/constraint/motion/TouchResponse;->TOUCH_DIRECTION:[[F

    aget-object v7, v6, v5

    aput-object v7, v6, v2

    .line 114
    aget-object v1, v6, v1

    aput-object v1, v6, v4

    .line 115
    sget-object v1, Landroid/support/constraint/motion/TouchResponse;->TOUCH_SIDES:[[F

    aget-object v2, v1, v3

    aput-object v2, v1, v4

    .line 116
    aget-object v2, v1, v5

    aput-object v2, v1, v0

    .line 118
    :goto_31
    sget-object v0, Landroid/support/constraint/motion/TouchResponse;->TOUCH_SIDES:[[F

    iget v1, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorSide:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget v2, v0, v1

    iput v2, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorX:F

    .line 119
    aget v0, v0, v3

    iput v0, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorY:F

    .line 120
    sget-object v0, Landroid/support/constraint/motion/TouchResponse;->TOUCH_DIRECTION:[[F

    iget v2, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchSide:I

    aget-object v0, v0, v2

    aget v1, v0, v1

    iput v1, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    .line 121
    aget v0, v0, v3

    iput v0, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionY:F

    .line 122
    return-void
.end method

.method public setTouchAnchorLocation(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 451
    iput p1, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorX:F

    .line 452
    iput p2, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorY:F

    .line 453
    return-void
.end method

.method setUpTouchEvent(FF)V
    .registers 4
    .param p1, "lastTouchX"    # F
    .param p2, "lastTouchY"    # F

    .line 167
    iput p1, p0, Landroid/support/constraint/motion/TouchResponse;->mLastTouchX:F

    .line 168
    iput p2, p0, Landroid/support/constraint/motion/TouchResponse;->mLastTouchY:F

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/motion/TouchResponse;->mDragStarted:Z

    .line 170
    return-void
.end method

.method setupTouch()V
    .registers 5

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_32

    .line 403
    iget-object v2, p0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2, v1}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 404
    if-nez v0, :cond_32

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find TouchAnchorId @id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/motion/TouchResponse;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchAnchorId:I

    invoke-static {v2, v3}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TouchResponse"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_32
    instance-of v1, v0, Landroid/support/v4/widget/NestedScrollView;

    if-eqz v1, :cond_49

    .line 409
    move-object v1, v0

    check-cast v1, Landroid/support/v4/widget/NestedScrollView;

    .line 410
    .local v1, "sv":Landroid/support/v4/widget/NestedScrollView;
    new-instance v2, Landroid/support/constraint/motion/TouchResponse$1;

    invoke-direct {v2, p0}, Landroid/support/constraint/motion/TouchResponse$1;-><init>(Landroid/support/constraint/motion/TouchResponse;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/NestedScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 416
    new-instance v2, Landroid/support/constraint/motion/TouchResponse$2;

    invoke-direct {v2, p0}, Landroid/support/constraint/motion/TouchResponse$2;-><init>(Landroid/support/constraint/motion/TouchResponse;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 424
    .end local v1    # "sv":Landroid/support/v4/widget/NestedScrollView;
    :cond_49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/motion/TouchResponse;->mTouchDirectionY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
