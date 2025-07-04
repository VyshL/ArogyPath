.class public Landroid/support/v7/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "SwitchCompat.java"


# static fields
.field private static final ACCESSIBILITY_EVENT_CLASS_NAME:Ljava/lang/String; = "android.widget.Switch"

.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final THUMB_POS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/v7/widget/SwitchCompat;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTrackTint:Z

.field private mHasTrackTintMode:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackTintList:Landroid/content/res/ColorStateList;

.field private mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 101
    new-instance v0, Landroid/support/v7/widget/SwitchCompat$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "thumbPos"

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/SwitchCompat$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/SwitchCompat;->THUMB_POS:Landroid/util/Property;

    .line 183
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 204
    sget v0, Landroid/support/v7/appcompat/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 218
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 116
    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    .line 118
    iput-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 121
    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 122
    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 123
    iput-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    .line 124
    iput-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 138
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 180
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 220
    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 222
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 223
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v2, Landroid/text/TextPaint;->density:F

    .line 225
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat:[I

    invoke-static {p1, p2, v2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v2

    .line 227
    .local v2, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v5, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_thumb:I

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 228
    if-eqz v5, :cond_49

    .line 229
    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 231
    :cond_49
    sget v5, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_track:I

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 232
    if-eqz v5, :cond_56

    .line 233
    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 235
    :cond_56
    sget v5, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_textOn:I

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 236
    sget v5, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_textOff:I

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 237
    sget v5, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_showText:I

    invoke-virtual {v2, v5, v3}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    .line 238
    sget v5, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_thumbTextPadding:I

    invoke-virtual {v2, v5, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    .line 240
    sget v5, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchMinWidth:I

    invoke-virtual {v2, v5, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 242
    sget v5, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchPadding:I

    invoke-virtual {v2, v5, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    .line 244
    sget v5, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_splitTrack:I

    invoke-virtual {v2, v5, v1}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    .line 246
    sget v5, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_thumbTint:I

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 247
    .local v5, "thumbTintList":Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_9a

    .line 248
    iput-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 249
    iput-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    .line 251
    :cond_9a
    sget v6, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_thumbTintMode:I

    .line 252
    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v6

    .line 251
    invoke-static {v6, v0}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    .line 253
    .local v6, "thumbTintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v8, v6, :cond_ad

    .line 254
    iput-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 255
    iput-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 257
    :cond_ad
    iget-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    if-nez v8, :cond_b5

    iget-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v8, :cond_b8

    .line 258
    :cond_b5
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyThumbTint()V

    .line 261
    :cond_b8
    sget v8, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_trackTint:I

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 262
    .local v8, "trackTintList":Landroid/content/res/ColorStateList;
    if-eqz v8, :cond_c4

    .line 263
    iput-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 264
    iput-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    .line 266
    :cond_c4
    sget v9, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_trackTintMode:I

    .line 267
    invoke-virtual {v2, v9, v7}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v7

    .line 266
    invoke-static {v7, v0}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 268
    .local v0, "trackTintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v7, v0, :cond_d6

    .line 269
    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 270
    iput-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 272
    :cond_d6
    iget-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    if-nez v3, :cond_de

    iget-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v3, :cond_e1

    .line 273
    :cond_de
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyTrackTint()V

    .line 276
    :cond_e1
    sget v3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchTextAppearance:I

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 278
    .local v1, "appearance":I
    if-eqz v1, :cond_ec

    .line 279
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 282
    :cond_ec
    invoke-virtual {v2}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 284
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 285
    .local v3, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    .line 286
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v7

    iput v7, p0, Landroid/support/v7/widget/SwitchCompat;->mMinFlingVelocity:I

    .line 289
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->refreshDrawableState()V

    .line 290
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v7

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 291
    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .registers 7
    .param p1, "newCheckedState"    # Z

    .line 1024
    if-eqz p1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 1025
    .local v0, "targetPosition":F
    :goto_6
    sget-object v1, Landroid/support/v7/widget/SwitchCompat;->THUMB_POS:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1026
    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1027
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v1, v3, :cond_24

    .line 1028
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1030
    :cond_24
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1031
    return-void
.end method

.method private applyThumbTint()V
    .registers 3

    .line 694
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_37

    iget-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v1, :cond_37

    .line 695
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 697
    iget-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    if-eqz v1, :cond_1b

    .line 698
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 701
    :cond_1b
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v0, :cond_26

    .line 702
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 707
    :cond_26
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 708
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 711
    :cond_37
    return-void
.end method

.method private applyTrackTint()V
    .registers 3

    .line 571
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_37

    iget-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v1, :cond_37

    .line 572
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 574
    iget-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    if-eqz v1, :cond_1b

    .line 575
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 578
    :cond_1b
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v0, :cond_26

    .line 579
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 584
    :cond_26
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 585
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 588
    :cond_37
    return-void
.end method

.method private cancelPositionAnimator()V
    .registers 2

    .line 1034
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    .line 1035
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1037
    :cond_7
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 984
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 985
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 986
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 987
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 988
    return-void
.end method

.method private static constrain(FFF)F
    .registers 4
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 1426
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move v0, p1

    goto :goto_d

    :cond_6
    cmpl-float v0, p0, p2

    if-lez v0, :cond_c

    move v0, p2

    goto :goto_d

    :cond_c
    move v0, p0

    :goto_d
    return v0
.end method

.method private getTargetCheckedState()Z
    .registers 3

    .line 1040
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private getThumbOffset()I
    .registers 4

    .line 1293
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1294
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    sub-float/2addr v0, v1

    .local v0, "thumbPosition":F
    goto :goto_e

    .line 1296
    .end local v0    # "thumbPosition":F
    :cond_c
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    .line 1298
    .restart local v0    # "thumbPosition":F
    :goto_e
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getThumbScrollRange()I
    .registers 5

    .line 1302
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_26

    .line 1303
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 1304
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1307
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 1308
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "insets":Landroid/graphics/Rect;
    goto :goto_14

    .line 1310
    .end local v0    # "insets":Landroid/graphics/Rect;
    :cond_12
    sget-object v0, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 1313
    .restart local v0    # "insets":Landroid/graphics/Rect;
    :goto_14
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    return v2

    .line 1316
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method private hitThumb(FF)Z
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 888
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 889
    return v1

    .line 893
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbOffset()I

    move-result v0

    .line 895
    .local v0, "thumbOffset":I
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 896
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    sub-int/2addr v2, v3

    .line 897
    .local v2, "thumbTop":I
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v3

    .line 898
    .local v4, "thumbLeft":I
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v5

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    add-int/2addr v3, v5

    .line 900
    .local v3, "thumbRight":I
    iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    add-int/2addr v6, v5

    .line 901
    .local v6, "thumbBottom":I
    int-to-float v5, v4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_42

    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_42

    int-to-float v5, v2

    cmpl-float v5, p2, v5

    if-lez v5, :cond_42

    int-to-float v5, v6

    cmpg-float v5, p2, v5

    if-gez v5, :cond_42

    const/4 v1, 0x1

    :cond_42
    return v1
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .registers 12
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 874
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_9

    .line 875
    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    :cond_9
    move-object v0, p1

    .line 878
    .local v0, "transformed":Ljava/lang/CharSequence;
    :goto_a
    new-instance v9, Landroid/text/StaticLayout;

    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_1c

    .line 880
    invoke-static {v0, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    move v4, v1

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1e
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v9
.end method

.method private setSwitchTypefaceByIndex(II)V
    .registers 4
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_12

    goto :goto_e

    .line 350
    :pswitch_5
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_e

    .line 346
    :pswitch_8
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 347
    goto :goto_e

    .line 342
    :pswitch_b
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 343
    nop

    .line 354
    :goto_e
    invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 355
    return-void

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 996
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 1000
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 1001
    .local v1, "commitChange":Z
    :goto_13
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v3

    .line 1003
    .local v3, "oldState":Z
    if-eqz v1, :cond_49

    .line 1004
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1005
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    .line 1006
    .local v4, "xvel":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_44

    .line 1007
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3d

    cmpg-float v5, v4, v6

    if-gez v5, :cond_42

    goto :goto_41

    :cond_3d
    cmpl-float v5, v4, v6

    if-lez v5, :cond_42

    :goto_41
    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    .local v2, "newState":Z
    :goto_43
    goto :goto_48

    .line 1009
    .end local v2    # "newState":Z
    :cond_44
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v2

    .line 1011
    .end local v4    # "xvel":F
    .restart local v2    # "newState":Z
    :goto_48
    goto :goto_4a

    .line 1012
    .end local v2    # "newState":Z
    :cond_49
    move v2, v3

    .line 1015
    .restart local v2    # "newState":Z
    :goto_4a
    if-eq v2, v3, :cond_4f

    .line 1016
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->playSoundEffect(I)V

    .line 1019
    :cond_4f
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 1020
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 1021
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 1133
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 1134
    .local v0, "padding":Landroid/graphics/Rect;
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I

    .line 1135
    .local v1, "switchLeft":I
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    .line 1136
    .local v2, "switchTop":I
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchRight:I

    .line 1137
    .local v3, "switchRight":I
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    .line 1139
    .local v4, "switchBottom":I
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbOffset()I

    move-result v5

    add-int/2addr v5, v1

    .line 1142
    .local v5, "thumbInitialLeft":I
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_18

    .line 1143
    invoke-static {v6}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v6

    .local v6, "thumbInsets":Landroid/graphics/Rect;
    goto :goto_1a

    .line 1145
    .end local v6    # "thumbInsets":Landroid/graphics/Rect;
    :cond_18
    sget-object v6, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 1149
    .restart local v6    # "thumbInsets":Landroid/graphics/Rect;
    :goto_1a
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5f

    .line 1150
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1153
    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    .line 1156
    move v7, v1

    .line 1157
    .local v7, "trackLeft":I
    move v8, v2

    .line 1158
    .local v8, "trackTop":I
    move v9, v3

    .line 1159
    .local v9, "trackRight":I
    move v10, v4

    .line 1160
    .local v10, "trackBottom":I
    if-eqz v6, :cond_5a

    .line 1161
    iget v11, v6, Landroid/graphics/Rect;->left:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-le v11, v12, :cond_36

    .line 1162
    iget v11, v6, Landroid/graphics/Rect;->left:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    add-int/2addr v7, v11

    .line 1164
    :cond_36
    iget v11, v6, Landroid/graphics/Rect;->top:I

    iget v12, v0, Landroid/graphics/Rect;->top:I

    if-le v11, v12, :cond_42

    .line 1165
    iget v11, v6, Landroid/graphics/Rect;->top:I

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v8, v11

    .line 1167
    :cond_42
    iget v11, v6, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    if-le v11, v12, :cond_4e

    .line 1168
    iget v11, v6, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    sub-int/2addr v9, v11

    .line 1170
    :cond_4e
    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    if-le v11, v12, :cond_5a

    .line 1171
    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 1174
    :cond_5a
    iget-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1178
    .end local v7    # "trackLeft":I
    .end local v8    # "trackTop":I
    .end local v9    # "trackRight":I
    .end local v10    # "trackBottom":I
    :cond_5f
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7e

    .line 1179
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1181
    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v5, v7

    .line 1182
    .local v7, "thumbLeft":I
    iget v8, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    add-int/2addr v8, v5

    iget v9, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    .line 1183
    .local v8, "thumbRight":I
    iget-object v9, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v7, v2, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1185
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1186
    .local v9, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_7e

    .line 1187
    invoke-static {v9, v7, v2, v8, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1193
    .end local v7    # "thumbLeft":I
    .end local v8    # "thumbRight":I
    .end local v9    # "background":Landroid/graphics/drawable/Drawable;
    :cond_7e
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 1194
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1353
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 1354
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 1357
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 1358
    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 1361
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 1362
    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 1364
    :cond_17
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 6

    .line 1331
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1333
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v0

    .line 1334
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 1336
    .local v1, "changed":Z
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1337
    .local v2, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1338
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1341
    :cond_17
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1342
    .local v3, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1343
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 1346
    :cond_26
    if-eqz v1, :cond_2b

    .line 1347
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 1349
    :cond_2b
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .registers 3

    .line 1263
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1264
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 1266
    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1267
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1268
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1270
    :cond_1f
    return v0
.end method

.method public getCompoundPaddingRight()I
    .registers 3

    .line 1275
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1276
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 1278
    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1279
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1280
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1282
    :cond_1f
    return v0
.end method

.method public getShowText()Z
    .registers 2

    .line 792
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    return v0
.end method

.method public getSplitTrack()Z
    .registers 2

    .line 733
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .registers 2

    .line 446
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .registers 2

    .line 421
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .registers 2

    .line 761
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .registers 2

    .line 742
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 630
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .registers 2

    .line 469
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 661
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 690
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 509
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 539
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 567
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 1373
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1375
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 1376
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1379
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 1380
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1383
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1384
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1385
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1387
    :cond_23
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .line 1322
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1323
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1324
    sget-object v1, Landroid/support/v7/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->mergeDrawableStates([I[I)[I

    .line 1326
    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1198
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1200
    iget-object v2, v0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 1201
    .local v2, "padding":Landroid/graphics/Rect;
    iget-object v3, v0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1202
    .local v3, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_11

    .line 1203
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_14

    .line 1205
    :cond_11
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1208
    :goto_14
    iget v4, v0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    .line 1209
    .local v4, "switchTop":I
    iget v5, v0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    .line 1210
    .local v5, "switchBottom":I
    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    .line 1211
    .local v6, "switchInnerTop":I
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v5, v7

    .line 1213
    .local v7, "switchInnerBottom":I
    iget-object v8, v0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1214
    .local v8, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_51

    .line 1215
    iget-boolean v9, v0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    if-eqz v9, :cond_4e

    if-eqz v8, :cond_4e

    .line 1216
    invoke-static {v8}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v9

    .line 1217
    .local v9, "insets":Landroid/graphics/Rect;
    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1218
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    iput v10, v2, Landroid/graphics/Rect;->left:I

    .line 1219
    iget v10, v2, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    iput v10, v2, Landroid/graphics/Rect;->right:I

    .line 1221
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1222
    .local v10, "saveCount":I
    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1223
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1224
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1225
    .end local v9    # "insets":Landroid/graphics/Rect;
    .end local v10    # "saveCount":I
    goto :goto_51

    .line 1226
    :cond_4e
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1230
    :cond_51
    :goto_51
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 1232
    .local v9, "saveCount":I
    if-eqz v8, :cond_5a

    .line 1233
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1236
    :cond_5a
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v10

    if-eqz v10, :cond_63

    iget-object v10, v0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    goto :goto_65

    :cond_63
    iget-object v10, v0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    .line 1237
    .local v10, "switchText":Landroid/text/Layout;
    :goto_65
    if-eqz v10, :cond_a9

    .line 1238
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v11

    .line 1239
    .local v11, "drawableState":[I
    iget-object v12, v0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v12, :cond_79

    .line 1240
    iget-object v13, v0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    invoke-virtual {v13, v12}, Landroid/text/TextPaint;->setColor(I)V

    .line 1242
    :cond_79
    iget-object v12, v0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    iput-object v11, v12, Landroid/text/TextPaint;->drawableState:[I

    .line 1245
    if-eqz v8, :cond_89

    .line 1246
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 1247
    .local v12, "bounds":Landroid/graphics/Rect;
    iget v13, v12, Landroid/graphics/Rect;->left:I

    iget v14, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    .line 1248
    .end local v12    # "bounds":Landroid/graphics/Rect;
    .local v13, "cX":I
    goto :goto_8d

    .line 1249
    .end local v13    # "cX":I
    :cond_89
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I

    move-result v13

    .line 1252
    .restart local v13    # "cX":I
    :goto_8d
    div-int/lit8 v12, v13, 0x2

    invoke-virtual {v10}, Landroid/text/Layout;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v12, v14

    .line 1253
    .local v12, "left":I
    add-int v14, v6, v7

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    .line 1254
    .local v14, "top":I
    int-to-float v15, v12

    int-to-float v0, v14

    invoke-virtual {v1, v15, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1255
    invoke-virtual {v10, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1258
    .end local v11    # "drawableState":[I
    .end local v12    # "left":I
    .end local v13    # "cX":I
    .end local v14    # "top":I
    :cond_a9
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1259
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1391
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1392
    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1393
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1397
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1398
    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1399
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_13

    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 1400
    .local v0, "switchText":Ljava/lang/CharSequence;
    :goto_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 1401
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1402
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1403
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 1405
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1406
    .local v2, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1407
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1410
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    .end local v2    # "newText":Ljava/lang/StringBuilder;
    :cond_3c
    :goto_3c
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1077
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 1079
    const/4 v0, 0x0

    .line 1080
    .local v0, "opticalInsetLeft":I
    const/4 v1, 0x0

    .line 1081
    .local v1, "opticalInsetRight":I
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_2f

    .line 1082
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 1083
    .local v2, "trackPadding":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_14

    .line 1084
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_17

    .line 1086
    :cond_14
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1089
    :goto_17
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v4}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v4

    .line 1090
    .local v4, "insets":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1091
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1096
    .end local v2    # "trackPadding":Landroid/graphics/Rect;
    .end local v4    # "insets":Landroid/graphics/Rect;
    :cond_2f
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1097
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    .line 1098
    .local v2, "switchLeft":I
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v4, v2

    sub-int/2addr v4, v0

    sub-int/2addr v4, v1

    .local v4, "switchRight":I
    goto :goto_51

    .line 1100
    .end local v2    # "switchLeft":I
    .end local v4    # "switchRight":I
    :cond_40
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int v4, v2, v1

    .line 1101
    .restart local v4    # "switchRight":I
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    sub-int v2, v4, v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 1106
    .restart local v2    # "switchLeft":I
    :goto_51
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getGravity()I

    move-result v5

    and-int/lit8 v5, v5, 0x70

    sparse-switch v5, :sswitch_data_96

    .line 1109
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I

    move-result v3

    .line 1110
    .local v3, "switchTop":I
    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    add-int v6, v3, v5

    .line 1111
    .local v6, "switchBottom":I
    goto :goto_8c

    .line 1106
    .end local v3    # "switchTop":I
    .end local v6    # "switchBottom":I
    :sswitch_63
    move v5, v3

    .line 1120
    .restart local v3    # "switchTop":I
    .local v5, "switchBottom":I
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1121
    .end local v5    # "switchBottom":I
    .restart local v6    # "switchBottom":I
    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    sub-int v3, v6, v5

    goto :goto_8c

    .line 1106
    .end local v3    # "switchTop":I
    .end local v6    # "switchBottom":I
    :sswitch_72
    move v5, v3

    .line 1114
    .restart local v3    # "switchTop":I
    .restart local v5    # "switchBottom":I
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    div-int/lit8 v8, v7, 0x2

    sub-int v3, v6, v8

    .line 1116
    add-int v6, v3, v7

    .line 1117
    .end local v5    # "switchBottom":I
    .restart local v6    # "switchBottom":I
    nop

    .line 1125
    :goto_8c
    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I

    .line 1126
    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    .line 1127
    iput v6, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    .line 1128
    iput v4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchRight:I

    .line 1129
    return-void

    nop

    :sswitch_data_96
    .sparse-switch
        0x10 -> :sswitch_72
        0x50 -> :sswitch_63
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 797
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    if-eqz v0, :cond_1c

    .line 798
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    if-nez v0, :cond_10

    .line 799
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    .line 802
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    if-nez v0, :cond_1c

    .line 803
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    .line 807
    :cond_1c
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 810
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_38

    .line 812
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 813
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 814
    .local v1, "thumbWidth":I
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .local v2, "thumbHeight":I
    goto :goto_3a

    .line 816
    .end local v1    # "thumbWidth":I
    .end local v2    # "thumbHeight":I
    :cond_38
    const/4 v1, 0x0

    .line 817
    .restart local v1    # "thumbWidth":I
    const/4 v2, 0x0

    .line 821
    .restart local v2    # "thumbHeight":I
    :goto_3a
    iget-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    if-eqz v3, :cond_54

    .line 822
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .local v3, "maxTextWidth":I
    goto :goto_55

    .line 825
    .end local v3    # "maxTextWidth":I
    :cond_54
    const/4 v3, 0x0

    .line 828
    .restart local v3    # "maxTextWidth":I
    :goto_55
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    .line 831
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_69

    .line 832
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 833
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .local v4, "trackHeight":I
    goto :goto_6d

    .line 835
    .end local v4    # "trackHeight":I
    :cond_69
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 836
    const/4 v4, 0x0

    .line 841
    .restart local v4    # "trackHeight":I
    :goto_6d
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 842
    .local v5, "paddingLeft":I
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 843
    .local v6, "paddingRight":I
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_85

    .line 844
    invoke-static {v7}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v7

    .line 845
    .local v7, "inset":Landroid/graphics/Rect;
    iget v8, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 846
    iget v8, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 849
    .end local v7    # "inset":Landroid/graphics/Rect;
    :cond_85
    iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    iget v8, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    add-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 851
    .local v7, "switchWidth":I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 852
    .local v8, "switchHeight":I
    iput v7, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    .line 853
    iput v8, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    .line 855
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 857
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getMeasuredHeight()I

    move-result v9

    .line 858
    .local v9, "measuredHeight":I
    if-ge v9, v8, :cond_a9

    .line 859
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getMeasuredWidthAndState()I

    move-result v10

    invoke-virtual {p0, v10, v8}, Landroid/support/v7/widget/SwitchCompat;->setMeasuredDimension(II)V

    .line 861
    :cond_a9
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 865
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 867
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_e

    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 868
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_e
    if-eqz v0, :cond_17

    .line 869
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_17
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 906
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 907
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 908
    .local v0, "action":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_b8

    goto/16 :goto_b2

    .line 921
    :pswitch_10
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    packed-switch v3, :pswitch_data_c4

    goto :goto_83

    .line 941
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 942
    .local v1, "x":F
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v3

    .line 943
    .local v3, "thumbScrollRange":I
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    sub-float v4, v1, v4

    .line 945
    .local v4, "thumbScrollOffset":F
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v3, :cond_2b

    .line 946
    int-to-float v7, v3

    div-float v7, v4, v7

    .local v7, "dPos":F
    goto :goto_34

    .line 950
    .end local v7    # "dPos":F
    :cond_2b
    cmpl-float v7, v4, v6

    if-lez v7, :cond_32

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_34

    :cond_32
    const/high16 v7, -0x40800000    # -1.0f

    .line 952
    .restart local v7    # "dPos":F
    :goto_34
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 953
    neg-float v7, v7

    .line 955
    :cond_3b
    iget v8, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    add-float/2addr v8, v7

    invoke-static {v8, v6, v5}, Landroid/support/v7/widget/SwitchCompat;->constrain(FFF)F

    move-result v5

    .line 956
    .local v5, "newPos":F
    iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_4d

    .line 957
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    .line 958
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    .line 960
    :cond_4d
    return v2

    .line 927
    .end local v1    # "x":F
    .end local v3    # "thumbScrollRange":I
    .end local v4    # "thumbScrollOffset":F
    .end local v5    # "newPos":F
    .end local v7    # "dPos":F
    :pswitch_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 928
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 929
    .local v4, "y":F
    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_74

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F

    sub-float v5, v4, v5

    .line 930
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_83

    .line 931
    :cond_74
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 932
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 933
    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    .line 934
    iput v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F

    .line 935
    return v2

    .line 924
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_82
    nop

    .line 963
    :cond_83
    :goto_83
    goto :goto_b2

    .line 968
    :pswitch_84
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    if-ne v3, v1, :cond_8f

    .line 969
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->stopDrag(Landroid/view/MotionEvent;)V

    .line 971
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 972
    return v2

    .line 974
    :cond_8f
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 975
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_b2

    .line 910
    :pswitch_98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 911
    .restart local v1    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 912
    .local v3, "y":F
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_b2

    invoke-direct {p0, v1, v3}, Landroid/support/v7/widget/SwitchCompat;->hitThumb(FF)Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 913
    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 914
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    .line 915
    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F

    .line 980
    .end local v1    # "x":F
    .end local v3    # "y":F
    :cond_b2
    :goto_b2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_98
        :pswitch_84
        :pswitch_10
        :pswitch_84
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_82
        :pswitch_4e
        :pswitch_16
    .end packed-switch
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .line 1060
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1064
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result p1

    .line 1066
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1067
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->animateThumbToCheckedState(Z)V

    goto :goto_23

    .line 1070
    :cond_17
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->cancelPositionAnimator()V

    .line 1071
    if-eqz p1, :cond_1f

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    .line 1073
    :goto_23
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 3
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .line 1418
    nop

    .line 1419
    invoke-static {p0, p1}, Landroid/support/v4/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 1418
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 1420
    return-void
.end method

.method public setShowText(Z)V
    .registers 3
    .param p1, "showText"    # Z

    .line 781
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    if-eq v0, p1, :cond_9

    .line 782
    iput-boolean p1, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    .line 783
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 785
    :cond_9
    return-void
.end method

.method public setSplitTrack(Z)V
    .registers 2
    .param p1, "splitTrack"    # Z

    .line 723
    iput-boolean p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    .line 724
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 725
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .registers 2
    .param p1, "pixels"    # I

    .line 433
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 434
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 435
    return-void
.end method

.method public setSwitchPadding(I)V
    .registers 2
    .param p1, "pixels"    # I

    .line 409
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    .line 410
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 411
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .line 300
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 306
    .local v0, "appearance":Landroid/support/v7/widget/TintTypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 307
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_11

    .line 308
    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_17

    .line 311
    :cond_11
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    .line 314
    :goto_17
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 315
    .local v2, "ts":I
    if-eqz v2, :cond_34

    .line 316
    int-to-float v4, v2

    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_34

    .line 317
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 318
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 323
    :cond_34
    sget v4, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_typeface:I

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 324
    .local v4, "typefaceIndex":I
    sget v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    invoke-virtual {v0, v6, v5}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v5

    .line 326
    .local v5, "styleIndex":I
    invoke-direct {p0, v4, v5}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypefaceByIndex(II)V

    .line 328
    sget v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v6, v3}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 329
    .local v3, "allCaps":Z
    if-eqz v3, :cond_58

    .line 330
    new-instance v6, Landroid/support/v7/text/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    goto :goto_5b

    .line 332
    :cond_58
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    .line 335
    :goto_5b
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 336
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 392
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 393
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_29

    if-eqz p1, :cond_29

    .line 394
    :cond_1e
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 396
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 397
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 399
    :cond_29
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .registers 9
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .line 364
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_32

    .line 365
    if-nez p1, :cond_b

    .line 366
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_f

    .line 368
    :cond_b
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 371
    :goto_f
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 373
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    .line 374
    .local v2, "typefaceStyle":I
    :goto_1a
    not-int v3, v2

    and-int/2addr v3, p2

    .line 375
    .local v3, "need":I
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_23

    const/4 v1, 0x1

    :cond_23
    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 376
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_2e

    const/high16 v0, -0x41800000    # -0.25f

    :cond_2e
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 377
    .end local v2    # "typefaceStyle":I
    .end local v3    # "need":I
    goto :goto_3f

    .line 378
    :cond_32
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 379
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 380
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 382
    :goto_3f
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .line 770
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 771
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 772
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .line 751
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 752
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 753
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 599
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 600
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 602
    :cond_8
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 603
    if-eqz p1, :cond_f

    .line 604
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 606
    :cond_f
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 607
    return-void
.end method

.method setThumbPosition(F)V
    .registers 2
    .param p1, "position"    # F

    .line 1049
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    .line 1050
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 1051
    return-void
.end method

.method public setThumbResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 618
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 619
    return-void
.end method

.method public setThumbTextPadding(I)V
    .registers 2
    .param p1, "pixels"    # I

    .line 457
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    .line 458
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 459
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 648
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    .line 651
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyThumbTint()V

    .line 652
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 676
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 679
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyThumbTint()V

    .line 680
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 480
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 481
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 483
    :cond_8
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 484
    if-eqz p1, :cond_f

    .line 485
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 487
    :cond_f
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 488
    return-void
.end method

.method public setTrackResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 498
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 499
    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 526
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    .line 529
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyTrackTint()V

    .line 530
    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 553
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 556
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyTrackTint()V

    .line 557
    return-void
.end method

.method public toggle()V
    .registers 2

    .line 1055
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 1056
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1368
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
