.class public Landroid/support/v7/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/support/v7/widget/DecorToolbar;


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field mToolbar:Landroid/support/v7/widget/Toolbar;

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .registers 5
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "style"    # Z

    .line 96
    sget v0, Landroid/support/v7/appcompat/R$string;->abc_action_bar_up_description:I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_ab_back_material:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .registers 21
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "style"    # Z
    .param p3, "defaultNavigationContentDescription"    # I
    .param p4, "defaultNavigationIcon"    # I

    .line 101
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 92
    iput v1, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 102
    move-object/from16 v2, p1

    iput-object v2, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 105
    iget-object v3, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    iput-boolean v3, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-static {v3, v4, v5, v6, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v3

    .line 109
    .local v3, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v4, Landroid/support/v7/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 110
    if-eqz p2, :cond_10d

    .line 111
    sget v4, Landroid/support/v7/appcompat/R$styleable;->ActionBar_title:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 112
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 113
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    :cond_4f
    sget v5, Landroid/support/v7/appcompat/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 117
    .local v5, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 118
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 121
    :cond_5e
    sget v6, Landroid/support/v7/appcompat/R$styleable;->ActionBar_logo:I

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 122
    .local v6, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_69

    .line 123
    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_69
    sget v7, Landroid/support/v7/appcompat/R$styleable;->ActionBar_icon:I

    invoke-virtual {v3, v7}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 127
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_74

    .line 128
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_74
    iget-object v8, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_7f

    iget-object v8, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_7f

    .line 131
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_7f
    sget v8, Landroid/support/v7/appcompat/R$styleable;->ActionBar_displayOptions:I

    invoke-virtual {v3, v8, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 135
    sget v8, Landroid/support/v7/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {v3, v8, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    .line 137
    .local v8, "customNavId":I
    if-eqz v8, :cond_aa

    .line 138
    iget-object v9, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v9}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    iget-object v10, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v9, v8, v10, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    .line 140
    iget v9, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    or-int/lit8 v9, v9, 0x10

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 143
    :cond_aa
    sget v9, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v3, v9, v1}, Landroid/support/v7/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v9

    .line 144
    .local v9, "height":I
    if-lez v9, :cond_bf

    .line 145
    iget-object v10, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v10}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 146
    .local v10, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    iget-object v11, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_bf
    sget v10, Landroid/support/v7/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    .line 152
    .local v10, "contentInsetStart":I
    sget v12, Landroid/support/v7/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    invoke-virtual {v3, v12, v11}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v11

    .line 154
    .local v11, "contentInsetEnd":I
    if-gez v10, :cond_d0

    if-ltz v11, :cond_dd

    .line 155
    :cond_d0
    iget-object v12, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 156
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 155
    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 159
    :cond_dd
    sget v12, Landroid/support/v7/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {v3, v12, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    .line 160
    .local v12, "titleTextStyle":I
    if-eqz v12, :cond_ee

    .line 161
    iget-object v13, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v13}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Landroid/support/v7/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 164
    :cond_ee
    sget v13, Landroid/support/v7/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v3, v13, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v13

    .line 166
    .local v13, "subtitleTextStyle":I
    if-eqz v13, :cond_ff

    .line 167
    iget-object v14, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15, v13}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 170
    :cond_ff
    sget v14, Landroid/support/v7/appcompat/R$styleable;->ActionBar_popupTheme:I

    invoke-virtual {v3, v14, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 171
    .local v1, "popupTheme":I
    if-eqz v1, :cond_10c

    .line 172
    iget-object v14, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v14, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 174
    .end local v1    # "popupTheme":I
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "subtitle":Ljava/lang/CharSequence;
    .end local v6    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "customNavId":I
    .end local v9    # "height":I
    .end local v10    # "contentInsetStart":I
    .end local v11    # "contentInsetEnd":I
    .end local v12    # "titleTextStyle":I
    .end local v13    # "subtitleTextStyle":I
    :cond_10c
    goto :goto_113

    .line 175
    :cond_10d
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 177
    :goto_113
    invoke-virtual {v3}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 179
    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    .line 180
    iget-object v4, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 182
    iget-object v4, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v5, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;

    invoke-direct {v5, v0}, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;-><init>(Landroid/support/v7/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void
.end method

.method private detectDisplayOptions()I
    .registers 3

    .line 206
    const/16 v0, 0xb

    .line 208
    .local v0, "opts":I
    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 209
    or-int/lit8 v0, v0, 0x4

    .line 210
    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 212
    :cond_14
    return v0
.end method

.method private ensureSpinner()V
    .registers 5

    .line 503
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_20

    .line 504
    new-instance v0, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 505
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    const v1, 0x800013

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 507
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_20
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 260
    iput-object p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 261
    iget v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    .line 262
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    :cond_d
    return-void
.end method

.method private updateHomeAccessibility()V
    .registers 3

    .line 630
    iget v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1d

    .line 631
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 632
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_1d

    .line 634
    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 637
    :cond_1d
    :goto_1d
    return-void
.end method

.method private updateNavigationIcon()V
    .registers 3

    .line 611
    iget v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_13

    .line 612
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    goto :goto_f

    :cond_d
    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    :goto_f
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_19

    .line 614
    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 616
    :goto_19
    return-void
.end method

.method private updateToolbarLogo()V
    .registers 4

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_16

    .line 324
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_14

    .line 325
    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    :goto_12
    move-object v0, v1

    goto :goto_16

    .line 327
    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 330
    :cond_16
    :goto_16
    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 331
    return-void
.end method


# virtual methods
.method public animateToVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 556
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 558
    .local v0, "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    if-eqz v0, :cond_b

    .line 559
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 561
    :cond_b
    return-void
.end method

.method public canShowOverflowMenu()Z
    .registers 2

    .line 335
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public collapseActionView()V
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->collapseActionView()V

    .line 233
    return-void
.end method

.method public dismissPopupMenus()V
    .registers 2

    .line 375
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->dismissPopupMenus()V

    .line 376
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .line 551
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    .line 380
    iget v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    return v0
.end method

.method public getDropdownItemCount()I
    .registers 2

    .line 535
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getDropdownSelectedPosition()I
    .registers 2

    .line 530
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 656
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .line 677
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .registers 2

    .line 458
    iget v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 268
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 250
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    .line 217
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public getVisibility()I
    .registers 2

    .line 666
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hasEmbeddedTabs()Z
    .registers 2

    .line 438
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasExpandedActionView()Z
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .registers 2

    .line 291
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasLogo()Z
    .registers 2

    .line 296
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .line 355
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .registers 3

    .line 286
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method public initProgress()V
    .registers 3

    .line 281
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    .line 345
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .line 340
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isTitleTruncated()Z
    .registers 2

    .line 443
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 646
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 647
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 641
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 642
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 651
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 652
    return-void
.end method

.method public setCollapsible(Z)V
    .registers 3
    .param p1, "collapsible"    # Z

    .line 448
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    .line 449
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 540
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_f

    iget v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_f

    .line 541
    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 543
    :cond_f
    iput-object p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 544
    if-eqz p1, :cond_1e

    iget v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1e

    .line 545
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 547
    :cond_1e
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .registers 3
    .param p1, "defaultNavigationContentDescription"    # I

    .line 196
    iget v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_5

    .line 197
    return-void

    .line 199
    :cond_5
    iput p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 200
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 201
    iget v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    .line 203
    :cond_18
    return-void
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "defaultNavigationIcon"    # Landroid/graphics/drawable/Drawable;

    .line 604
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_9

    .line 605
    iput-object p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 606
    invoke-direct {p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 608
    :cond_9
    return-void
.end method

.method public setDisplayOptions(I)V
    .registers 6
    .param p1, "newOpts"    # I

    .line 385
    iget v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 386
    .local v0, "oldOpts":I
    xor-int v1, v0, p1

    .line 387
    .local v1, "changed":I
    iput p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 388
    if-eqz v1, :cond_56

    .line 389
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_16

    .line 390
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_13

    .line 391
    invoke-direct {p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 393
    :cond_13
    invoke-direct {p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 396
    :cond_16
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_1d

    .line 397
    invoke-direct {p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 400
    :cond_1d
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3f

    .line 401
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_34

    .line 402
    iget-object v2, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v2, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3f

    .line 405
    :cond_34
    iget-object v2, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v2, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 410
    :cond_3f
    :goto_3f
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_56

    iget-object v2, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_56

    .line 411
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_51

    .line 412
    iget-object v3, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    goto :goto_56

    .line 414
    :cond_51
    iget-object v3, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 418
    :cond_56
    :goto_56
    return-void
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 514
    invoke-direct {p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 515
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 516
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 517
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .registers 4
    .param p1, "position"    # I

    .line 521
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_8

    .line 525
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 526
    return-void

    .line 522
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEmbeddedTabView(Landroid/support/v7/widget/ScrollingTabContainerView;)V
    .registers 4
    .param p1, "tabView"    # Landroid/support/v7/widget/ScrollingTabContainerView;

    .line 422
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_11

    .line 423
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 425
    :cond_11
    iput-object p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 426
    if-eqz p1, :cond_36

    iget v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    .line 427
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 428
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 429
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->width:I

    .line 430
    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->height:I

    .line 431
    const v1, 0x800053

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 432
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 434
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_36
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 454
    return-void
.end method

.method public setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 301
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 302
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 306
    iput-object p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 307
    invoke-direct {p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 308
    return-void
.end method

.method public setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 312
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 313
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 317
    iput-object p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 318
    invoke-direct {p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 319
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 365
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez v0, :cond_16

    .line 366
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 367
    sget v1, Landroid/support/v7/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->setId(I)V

    .line 369
    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ActionMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 370
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 371
    return-void
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .registers 4
    .param p1, "actionMenuPresenterCallback"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;
    .param p2, "menuBuilderCallback"    # Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 672
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/Toolbar;->setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 673
    return-void
.end method

.method public setMenuPrepared()V
    .registers 2

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    .line 361
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 626
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 627
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 620
    iput-object p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 621
    invoke-direct {p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 622
    return-void
.end method

.method public setNavigationIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 599
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 600
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 593
    iput-object p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 594
    invoke-direct {p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 595
    return-void
.end method

.method public setNavigationMode(I)V
    .registers 6
    .param p1, "mode"    # I

    .line 463
    iget v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 464
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_71

    .line 465
    packed-switch v0, :pswitch_data_72

    goto :goto_2b

    .line 472
    :pswitch_8
    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne v1, v2, :cond_2b

    .line 473
    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_2b

    .line 467
    :pswitch_1a
    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne v1, v2, :cond_2b

    .line 468
    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 478
    :cond_2b
    :goto_2b
    iput p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 480
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_7a

    .line 497
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid navigation mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    :pswitch_4a
    iget-object v2, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_71

    .line 489
    iget-object v3, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 490
    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 491
    .local v1, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    const/4 v2, -0x2

    iput v2, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->width:I

    .line 492
    iput v2, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->height:I

    .line 493
    const v2, 0x800053

    iput v2, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 494
    .end local v1    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    goto :goto_71

    .line 484
    :pswitch_66
    invoke-direct {p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 485
    iget-object v2, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 486
    nop

    .line 500
    :cond_71
    :goto_71
    :pswitch_71
    return-void

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_8
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_71
        :pswitch_66
        :pswitch_4a
    .end packed-switch
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 273
    iput-object p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 274
    iget v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    .line 275
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 277
    :cond_d
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 256
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .param p1, "visible"    # I

    .line 661
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 662
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 2
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .line 237
    iput-object p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    .line 238
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 243
    iget-boolean v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_7

    .line 244
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 246
    :cond_7
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 6
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .line 566
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    if-nez p1, :cond_b

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 567
    :goto_c
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 568
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;-><init>(Landroid/support/v7/widget/ToolbarWidgetWrapper;I)V

    .line 569
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0
.end method

.method public showOverflowMenu()Z
    .registers 2

    .line 350
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
