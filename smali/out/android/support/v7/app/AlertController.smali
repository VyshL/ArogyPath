.class Landroid/support/v7/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$CheckedItemAdapter;,
        Landroid/support/v7/app/AlertController$AlertParams;,
        Landroid/support/v7/app/AlertController$RecycleListView;,
        Landroid/support/v7/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private final mButtonIconDimen:I

.field mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field final mDialog:Landroid/support/v7/app/AppCompatDialog;

.field mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field mScrollView:Landroid/support/v4/widget/NestedScrollView;

.field private mShowTitle:Z

.field mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/AppCompatDialog;Landroid/view/Window;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/support/v7/app/AppCompatDialog;
    .param p3, "window"    # Landroid/view/Window;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 101
    iput v0, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 111
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    .line 122
    iput v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    .line 126
    new-instance v1, Landroid/support/v7/app/AlertController$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertController$1;-><init>(Landroid/support/v7/app/AlertController;)V

    iput-object v1, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 183
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    .line 184
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    .line 185
    iput-object p3, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    .line 186
    new-instance v1, Landroid/support/v7/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Landroid/support/v7/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 188
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v2, Landroid/support/v7/appcompat/R$attr;->alertDialogStyle:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 191
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_android_layout:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    .line 192
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    .line 194
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/app/AlertController;->mListLayout:I

    .line 195
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    .line 196
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    .line 197
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    .line 198
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/app/AlertController;->mListItemLayout:I

    .line 199
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_showTitle:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/app/AlertController;->mShowTitle:Z

    .line 200
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_buttonIconDimen:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/AlertController;->mButtonIconDimen:I

    .line 202
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    invoke-virtual {p2, v3}, Landroid/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 206
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .registers 6
    .param p0, "v"    # Landroid/view/View;

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 210
    return v1

    .line 213
    :cond_8
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 214
    return v2

    .line 217
    :cond_e
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 218
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 219
    .local v3, "i":I
    :cond_15
    if-lez v3, :cond_24

    .line 220
    add-int/lit8 v3, v3, -0x1

    .line 221
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 222
    invoke-static {p0}, Landroid/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 223
    return v1

    .line 227
    :cond_24
    return v2
.end method

.method private centerButton(Landroid/widget/Button;)V
    .registers 4
    .param p1, "button"    # Landroid/widget/Button;

    .line 829
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 830
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 831
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 832
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    return-void
.end method

.method static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .line 748
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_11

    .line 749
    const/4 v2, -0x1

    .line 750
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    goto :goto_e

    :cond_d
    const/4 v2, 0x4

    .line 749
    :goto_e
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 752
    :cond_11
    if-eqz p2, :cond_1f

    .line 753
    const/4 v2, 0x1

    .line 754
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x4

    .line 753
    :goto_1c
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 756
    :cond_1f
    return-void
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 5
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    .line 441
    if-nez p1, :cond_11

    .line 443
    instance-of v0, p2, Landroid/view/ViewStub;

    if-eqz v0, :cond_d

    .line 444
    move-object v0, p2

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 447
    :cond_d
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 451
    :cond_11
    if-eqz p2, :cond_21

    .line 452
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 453
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_21

    .line 454
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 459
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_21
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_2c

    .line 460
    move-object v0, p1

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 463
    :cond_2c
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private selectContentView()I
    .registers 4

    .line 237
    iget v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_7

    .line 238
    iget v0, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    return v0

    .line 240
    :cond_7
    iget v1, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 241
    return v0

    .line 243
    :cond_d
    iget v0, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    return v0
.end method

.method private setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .registers 11
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;
    .param p2, "content"    # Landroid/view/View;
    .param p3, "indicators"    # I
    .param p4, "mask"    # I

    .line 560
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 561
    .local v0, "indicatorUp":Landroid/view/View;
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 563
    .local v1, "indicatorDown":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_24

    .line 565
    invoke-static {p2, p3, p4}, Landroid/support/v4/view/ViewCompat;->setScrollIndicators(Landroid/view/View;II)V

    .line 567
    if-eqz v0, :cond_1e

    .line 568
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 570
    :cond_1e
    if-eqz v1, :cond_78

    .line 571
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_78

    .line 575
    :cond_24
    if-eqz v0, :cond_2e

    and-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_2e

    .line 576
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 577
    const/4 v0, 0x0

    .line 579
    :cond_2e
    if-eqz v1, :cond_38

    and-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_38

    .line 580
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 581
    const/4 v1, 0x0

    .line 584
    :cond_38
    if-nez v0, :cond_3c

    if-eqz v1, :cond_78

    .line 585
    :cond_3c
    move-object v2, v0

    .line 586
    .local v2, "top":Landroid/view/View;
    move-object v3, v1

    .line 588
    .local v3, "bottom":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_57

    .line 590
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    new-instance v5, Landroid/support/v7/app/AlertController$2;

    invoke-direct {v5, p0, v2, v3}, Landroid/support/v7/app/AlertController$2;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 600
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    new-instance v5, Landroid/support/v7/app/AlertController$3;

    invoke-direct {v5, p0, v2, v3}, Landroid/support/v7/app/AlertController$3;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_78

    .line 606
    :cond_57
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_6e

    .line 608
    new-instance v5, Landroid/support/v7/app/AlertController$4;

    invoke-direct {v5, p0, v2, v3}, Landroid/support/v7/app/AlertController$4;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 619
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/support/v7/app/AlertController$5;

    invoke-direct {v5, p0, v2, v3}, Landroid/support/v7/app/AlertController$5;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_78

    .line 627
    :cond_6e
    if-eqz v2, :cond_73

    .line 628
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 630
    :cond_73
    if-eqz v3, :cond_78

    .line 631
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 636
    .end local v2    # "top":Landroid/view/View;
    .end local v3    # "bottom":Landroid/view/View;
    :cond_78
    :goto_78
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .registers 11
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .line 759
    const/4 v0, 0x1

    .line 760
    .local v0, "BIT_BUTTON_POSITIVE":I
    const/4 v1, 0x2

    .line 761
    .local v1, "BIT_BUTTON_NEGATIVE":I
    const/4 v2, 0x4

    .line 762
    .local v2, "BIT_BUTTON_NEUTRAL":I
    const/4 v3, 0x0

    .line 763
    .local v3, "whichButtons":I
    const v4, 0x1020019

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 764
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_2a

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2a

    .line 767
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_47

    .line 769
    :cond_2a
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_41

    .line 771
    iget v8, p0, Landroid/support/v7/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v4, v7, v7, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 772
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 774
    :cond_41
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 775
    or-int/2addr v3, v0

    .line 778
    :goto_47
    const v4, 0x102001a

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 779
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_69

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_69

    .line 782
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_86

    .line 784
    :cond_69
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_80

    .line 786
    iget v8, p0, Landroid/support/v7/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v4, v7, v7, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 787
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 789
    :cond_80
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 790
    or-int/2addr v3, v1

    .line 793
    :goto_86
    const v4, 0x102001b

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 794
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a8

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_a8

    .line 797
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_c5

    .line 799
    :cond_a8
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_bf

    .line 801
    iget v8, p0, Landroid/support/v7/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v4, v7, v7, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 802
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 804
    :cond_bf
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 805
    or-int/2addr v3, v2

    .line 808
    :goto_c5
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v7/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 813
    if-ne v3, v0, :cond_d5

    .line 814
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_e4

    .line 815
    :cond_d5
    if-ne v3, v1, :cond_dd

    .line 816
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_e4

    .line 817
    :cond_dd
    if-ne v3, v2, :cond_e4

    .line 818
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 822
    :cond_e4
    :goto_e4
    if-eqz v3, :cond_e7

    const/4 v7, 0x1

    :cond_e7
    move v4, v7

    .line 823
    .local v4, "hasButtons":Z
    if-nez v4, :cond_ed

    .line 824
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 826
    :cond_ed
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .registers 7
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 719
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 720
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    .line 721
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 724
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 725
    if-nez v0, :cond_23

    .line 726
    return-void

    .line 729
    :cond_23
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2b

    .line 730
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b

    .line 732
    :cond_2b
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    .line 735
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_58

    .line 736
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 737
    .local v0, "scrollParent":Landroid/view/ViewGroup;
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 738
    .local v1, "childIndex":I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 739
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 741
    .end local v0    # "scrollParent":Landroid/view/ViewGroup;
    .end local v1    # "childIndex":I
    goto :goto_5b

    .line 742
    :cond_58
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 745
    :goto_5b
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .registers 9
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .line 640
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 641
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .local v0, "customView":Landroid/view/View;
    goto :goto_1a

    .line 642
    .end local v0    # "customView":Landroid/view/View;
    :cond_8
    iget v0, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_19

    .line 643
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 644
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 645
    .local v0, "customView":Landroid/view/View;
    goto :goto_1a

    .line 646
    .end local v0    # "customView":Landroid/view/View;
    :cond_19
    const/4 v0, 0x0

    .line 649
    .restart local v0    # "customView":Landroid/view/View;
    :goto_1a
    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    .line 650
    .local v1, "hasCustomView":Z
    :cond_1d
    if-eqz v1, :cond_25

    invoke-static {v0}, Landroid/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 651
    :cond_25
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 655
    :cond_2c
    if-eqz v1, :cond_5e

    .line 656
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Landroid/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 657
    .local v2, "custom":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    iget-boolean v3, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v3, :cond_50

    .line 660
    iget v3, p0, Landroid/support/v7/app/AlertController;->mViewSpacingLeft:I

    iget v4, p0, Landroid/support/v7/app/AlertController;->mViewSpacingTop:I

    iget v5, p0, Landroid/support/v7/app/AlertController;->mViewSpacingRight:I

    iget v6, p0, Landroid/support/v7/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 664
    :cond_50
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_5d

    .line 665
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 667
    .end local v2    # "custom":Landroid/widget/FrameLayout;
    :cond_5d
    goto :goto_63

    .line 668
    :cond_5e
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 670
    :goto_63
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .registers 9
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .line 673
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_20

    .line 675
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 678
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 681
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 682
    .local v2, "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 683
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleTemplate":Landroid/view/View;
    goto/16 :goto_96

    .line 684
    :cond_20
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 686
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 687
    .local v0, "hasTextTitle":Z
    if-eqz v0, :cond_83

    iget-boolean v2, p0, Landroid/support/v7/app/AlertController;->mShowTitle:Z

    if-eqz v2, :cond_83

    .line 689
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Landroid/support/v7/appcompat/R$id;->alertTitle:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 690
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget v2, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    if-eqz v2, :cond_56

    .line 696
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_96

    .line 697
    :cond_56
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_60

    .line 698
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_96

    .line 702
    :cond_60
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 703
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 704
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 705
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    .line 702
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 706
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_96

    .line 710
    :cond_83
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 711
    .restart local v2    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 713
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 716
    .end local v0    # "hasTextTitle":Z
    .end local v2    # "titleTemplate":Landroid/view/View;
    :goto_96
    return-void
.end method

.method private setupView()V
    .registers 19

    .line 467
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 468
    .local v1, "parentPanel":Landroid/view/View;
    sget v2, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 469
    .local v2, "defaultTopPanel":Landroid/view/View;
    sget v3, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 470
    .local v3, "defaultContentPanel":Landroid/view/View;
    sget v4, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 474
    .local v4, "defaultButtonPanel":Landroid/view/View;
    sget v5, Landroid/support/v7/appcompat/R$id;->customPanel:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 475
    .local v5, "customPanel":Landroid/view/ViewGroup;
    invoke-direct {v0, v5}, Landroid/support/v7/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 477
    sget v6, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 478
    .local v6, "customTopPanel":Landroid/view/View;
    sget v7, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 479
    .local v7, "customContentPanel":Landroid/view/View;
    sget v8, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 482
    .local v8, "customButtonPanel":Landroid/view/View;
    invoke-direct {v0, v6, v2}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v9

    .line 483
    .local v9, "topPanel":Landroid/view/ViewGroup;
    invoke-direct {v0, v7, v3}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v10

    .line 484
    .local v10, "contentPanel":Landroid/view/ViewGroup;
    invoke-direct {v0, v8, v4}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v11

    .line 486
    .local v11, "buttonPanel":Landroid/view/ViewGroup;
    invoke-direct {v0, v10}, Landroid/support/v7/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 487
    invoke-direct {v0, v11}, Landroid/support/v7/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 488
    invoke-direct {v0, v9}, Landroid/support/v7/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 490
    const/16 v12, 0x8

    if-eqz v5, :cond_5a

    .line 491
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v15

    if-eq v15, v12, :cond_5a

    const/4 v15, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v15, 0x0

    .line 492
    .local v15, "hasCustomPanel":Z
    :goto_5b
    if-eqz v9, :cond_65

    .line 493
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v13

    if-eq v13, v12, :cond_65

    const/4 v13, 0x1

    goto :goto_66

    :cond_65
    const/4 v13, 0x0

    .line 494
    .local v13, "hasTopPanel":Z
    :goto_66
    if-eqz v11, :cond_70

    .line 495
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_70

    const/4 v12, 0x1

    goto :goto_71

    :cond_70
    const/4 v12, 0x0

    .line 498
    .local v12, "hasButtonPanel":Z
    :goto_71
    if-nez v12, :cond_8a

    .line 499
    if-eqz v10, :cond_87

    .line 500
    sget v14, Landroid/support/v7/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v10, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 501
    .local v14, "spacer":Landroid/view/View;
    if-eqz v14, :cond_84

    .line 502
    move-object/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "parentPanel":Landroid/view/View;
    .local v17, "parentPanel":Landroid/view/View;
    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8c

    .line 501
    .end local v17    # "parentPanel":Landroid/view/View;
    .restart local v1    # "parentPanel":Landroid/view/View;
    :cond_84
    move-object/from16 v17, v1

    .end local v1    # "parentPanel":Landroid/view/View;
    .restart local v17    # "parentPanel":Landroid/view/View;
    goto :goto_8c

    .line 499
    .end local v14    # "spacer":Landroid/view/View;
    .end local v17    # "parentPanel":Landroid/view/View;
    .restart local v1    # "parentPanel":Landroid/view/View;
    :cond_87
    move-object/from16 v17, v1

    .end local v1    # "parentPanel":Landroid/view/View;
    .restart local v17    # "parentPanel":Landroid/view/View;
    goto :goto_8c

    .line 498
    .end local v17    # "parentPanel":Landroid/view/View;
    .restart local v1    # "parentPanel":Landroid/view/View;
    :cond_8a
    move-object/from16 v17, v1

    .line 507
    .end local v1    # "parentPanel":Landroid/view/View;
    .restart local v17    # "parentPanel":Landroid/view/View;
    :goto_8c
    if-eqz v13, :cond_ad

    .line 509
    iget-object v1, v0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v1, :cond_96

    .line 510
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/support/v4/widget/NestedScrollView;->setClipToPadding(Z)V

    .line 514
    :cond_96
    const/4 v1, 0x0

    .line 515
    .local v1, "divider":Landroid/view/View;
    iget-object v14, v0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v14, :cond_9f

    iget-object v14, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v14, :cond_a5

    .line 516
    :cond_9f
    sget v14, Landroid/support/v7/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 519
    :cond_a5
    if-eqz v1, :cond_ab

    .line 520
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 522
    .end local v1    # "divider":Landroid/view/View;
    :cond_ab
    const/4 v14, 0x0

    goto :goto_bf

    .line 523
    :cond_ad
    if-eqz v10, :cond_be

    .line 524
    sget v1, Landroid/support/v7/appcompat/R$id;->textSpacerNoTitle:I

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 525
    .local v1, "spacer":Landroid/view/View;
    if-eqz v1, :cond_bc

    .line 526
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_bf

    .line 525
    :cond_bc
    const/4 v14, 0x0

    goto :goto_bf

    .line 523
    .end local v1    # "spacer":Landroid/view/View;
    :cond_be
    const/4 v14, 0x0

    .line 531
    :goto_bf
    iget-object v1, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    instance-of v14, v1, Landroid/support/v7/app/AlertController$RecycleListView;

    if-eqz v14, :cond_ca

    .line 532
    check-cast v1, Landroid/support/v7/app/AlertController$RecycleListView;

    invoke-virtual {v1, v13, v12}, Landroid/support/v7/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    .line 536
    :cond_ca
    if-nez v15, :cond_ed

    .line 537
    iget-object v1, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_d1

    goto :goto_d3

    :cond_d1
    iget-object v1, v0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 538
    .local v1, "content":Landroid/view/View;
    :goto_d3
    if-eqz v1, :cond_ea

    .line 539
    if-eqz v13, :cond_d9

    const/4 v14, 0x1

    goto :goto_da

    :cond_d9
    const/4 v14, 0x0

    :goto_da
    if-eqz v12, :cond_df

    const/16 v16, 0x2

    goto :goto_e1

    :cond_df
    const/16 v16, 0x0

    :goto_e1
    or-int v14, v14, v16

    .line 541
    .local v14, "indicators":I
    move-object/from16 v16, v2

    .end local v2    # "defaultTopPanel":Landroid/view/View;
    .local v16, "defaultTopPanel":Landroid/view/View;
    const/4 v2, 0x3

    invoke-direct {v0, v10, v1, v14, v2}, Landroid/support/v7/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V

    goto :goto_ef

    .line 538
    .end local v14    # "indicators":I
    .end local v16    # "defaultTopPanel":Landroid/view/View;
    .restart local v2    # "defaultTopPanel":Landroid/view/View;
    :cond_ea
    move-object/from16 v16, v2

    .end local v2    # "defaultTopPanel":Landroid/view/View;
    .restart local v16    # "defaultTopPanel":Landroid/view/View;
    goto :goto_ef

    .line 536
    .end local v1    # "content":Landroid/view/View;
    .end local v16    # "defaultTopPanel":Landroid/view/View;
    .restart local v2    # "defaultTopPanel":Landroid/view/View;
    :cond_ed
    move-object/from16 v16, v2

    .line 546
    .end local v2    # "defaultTopPanel":Landroid/view/View;
    .restart local v16    # "defaultTopPanel":Landroid/view/View;
    :goto_ef
    iget-object v1, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 547
    .local v1, "listView":Landroid/widget/ListView;
    if-eqz v1, :cond_106

    iget-object v2, v0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_106

    .line 548
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 549
    iget v2, v0, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    .line 550
    .local v2, "checkedItem":I
    const/4 v14, -0x1

    if-le v2, v14, :cond_106

    .line 551
    const/4 v14, 0x1

    invoke-virtual {v1, v2, v14}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 552
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 555
    .end local v2    # "checkedItem":I
    :cond_106
    return-void
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 177
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 178
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->alertDialogCenterButtons:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 179
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    return v3
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .registers 3
    .param p1, "whichButton"    # I

    .line 408
    packed-switch p1, :pswitch_data_e

    .line 416
    const/4 v0, 0x0

    return-object v0

    .line 410
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    .line 412
    :pswitch_8
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    .line 414
    :pswitch_b
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0

    :pswitch_data_e
    .packed-switch -0x3
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .registers 5
    .param p1, "attrId"    # I

    .line 398
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 399
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 400
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 404
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .registers 3

    .line 231
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->selectContentView()I

    move-result v0

    .line 232
    .local v0, "contentView":I
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(I)V

    .line 233
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->setupView()V

    .line 234
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 422
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 427
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 323
    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    .line 324
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 327
    :cond_a
    packed-switch p1, :pswitch_data_2c

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :pswitch_15
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 331
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 332
    iput-object p5, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    .line 333
    goto :goto_2a

    .line 336
    :pswitch_1c
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 337
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 338
    iput-object p5, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    .line 339
    goto :goto_2a

    .line 342
    :pswitch_23
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 343
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 344
    iput-object p5, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    .line 345
    nop

    .line 350
    :goto_2a
    return-void

    nop

    :pswitch_data_2c
    .packed-switch -0x3
        :pswitch_23
        :pswitch_1c
        :pswitch_15
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .registers 2
    .param p1, "layoutHint"    # I

    .line 303
    iput p1, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    .line 304
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 2
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 257
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 258
    return-void
.end method

.method public setIcon(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 360
    iput p1, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 362
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    .line 363
    if-eqz p1, :cond_17

    .line 364
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1c

    .line 367
    :cond_17
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    :cond_1c
    :goto_1c
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 378
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 379
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 381
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_19

    .line 382
    if-eqz p1, :cond_14

    .line 383
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_19

    .line 386
    :cond_14
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    :cond_19
    :goto_19
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 261
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 262
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 263
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_9
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 247
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 248
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 249
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_9
    return-void
.end method

.method public setView(I)V
    .registers 3
    .param p1, "layoutResId"    # I

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 272
    iput p1, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 274
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 280
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 282
    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 283
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .line 290
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 293
    iput p2, p0, Landroid/support/v7/app/AlertController;->mViewSpacingLeft:I

    .line 294
    iput p3, p0, Landroid/support/v7/app/AlertController;->mViewSpacingTop:I

    .line 295
    iput p4, p0, Landroid/support/v7/app/AlertController;->mViewSpacingRight:I

    .line 296
    iput p5, p0, Landroid/support/v7/app/AlertController;->mViewSpacingBottom:I

    .line 297
    return-void
.end method
