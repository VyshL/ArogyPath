.class public Landroid/support/v7/widget/AppCompatSpinner;
.super Landroid/widget/Spinner;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;,
        Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;
    }
.end annotation


# static fields
.field private static final ATTRS_ANDROID_SPINNERMODE:[I

.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field private static final MODE_DIALOG:I = 0x0

.field private static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppCompatSpinner"


# instance fields
.field private final mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

.field mDropDownWidth:I

.field private mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

.field mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

.field private final mPopupContext:Landroid/content/Context;

.field private final mPopupSet:Z

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/AppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 122
    sget v0, Landroid/support/v7/appcompat/R$attr;->spinnerStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 133
    sget v0, Landroid/support/v7/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 148
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .line 167
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I
    .param p5, "popupTheme"    # Landroid/content/res/Resources$Theme;

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 198
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->Spinner:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 201
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    new-instance v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 203
    const/4 v2, 0x0

    if-eqz p5, :cond_23

    .line 204
    new-instance v3, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-direct {v3, p1, p5}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v3, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto :goto_3e

    .line 206
    :cond_23
    sget v3, Landroid/support/v7/appcompat/R$styleable;->Spinner_popupTheme:I

    invoke-virtual {v0, v3, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 207
    .local v3, "popupThemeResId":I
    if-eqz v3, :cond_33

    .line 208
    new-instance v4, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-direct {v4, p1, v3}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto :goto_3e

    .line 212
    :cond_33
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_3b

    move-object v4, p1

    goto :goto_3c

    :cond_3b
    move-object v4, v2

    :goto_3c
    iput-object v4, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    .line 216
    .end local v3    # "popupThemeResId":I
    :goto_3e
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    const/4 v4, 0x1

    if-eqz v3, :cond_ab

    .line 217
    const/4 v3, -0x1

    if-ne p4, v3, :cond_73

    .line 218
    const/4 v3, 0x0

    .line 220
    .local v3, "aa":Landroid/content/res/TypedArray;
    :try_start_47
    sget-object v5, Landroid/support/v7/widget/AppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    invoke-virtual {p1, p2, v5, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 222
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 223
    invoke-virtual {v3, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_58} :catch_61
    .catchall {:try_start_47 .. :try_end_58} :catchall_5f

    move p4, v5

    .line 228
    :cond_59
    if-eqz v3, :cond_73

    .line 229
    :goto_5b
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_73

    .line 228
    :catchall_5f
    move-exception v1

    goto :goto_6d

    .line 225
    :catch_61
    move-exception v5

    .line 226
    .local v5, "e":Ljava/lang/Exception;
    :try_start_62
    const-string v6, "AppCompatSpinner"

    const-string v7, "Could not read android:spinnerMode"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_5f

    .line 228
    nop

    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_73

    .line 229
    goto :goto_5b

    .line 228
    :goto_6d
    if-eqz v3, :cond_72

    .line 229
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_72
    throw v1

    .line 234
    .end local v3    # "aa":Landroid/content/res/TypedArray;
    :cond_73
    :goto_73
    if-ne p4, v4, :cond_ab

    .line 235
    new-instance v3, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    iget-object v5, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    invoke-direct {v3, p0, v5, p2, p3}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;-><init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 236
    .local v3, "popup":Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
    iget-object v5, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    sget-object v6, Landroid/support/v7/appcompat/R$styleable;->Spinner:[I

    invoke-static {v5, p2, v6, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v1

    .line 238
    .local v1, "pa":Landroid/support/v7/widget/TintTypedArray;
    sget v5, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 v6, -0x2

    invoke-virtual {v1, v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I

    .line 240
    sget v5, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_popupBackground:I

    .line 241
    invoke-virtual {v1, v5}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 240
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    sget v5, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 245
    iput-object v3, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    .line 246
    new-instance v5, Landroid/support/v7/widget/AppCompatSpinner$1;

    invoke-direct {v5, p0, p0, v3}, Landroid/support/v7/widget/AppCompatSpinner$1;-><init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/view/View;Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V

    iput-object v5, p0, Landroid/support/v7/widget/AppCompatSpinner;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

    .line 263
    .end local v1    # "pa":Landroid/support/v7/widget/TintTypedArray;
    .end local v3    # "popup":Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
    :cond_ab
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_entries:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 264
    .local v1, "entries":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_c3

    .line 265
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v3, p1, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 267
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    sget v5, Landroid/support/v7/appcompat/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 268
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 271
    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_c3
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 273
    iput-boolean v4, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupSet:Z

    .line 277
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v3, :cond_d1

    .line 278
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 279
    iput-object v2, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 282
    :cond_d1
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v2, p2, p3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 283
    return-void
.end method


# virtual methods
.method compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 15
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .line 543
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 544
    return v0

    .line 547
    :cond_4
    const/4 v1, 0x0

    .line 548
    .local v1, "width":I
    const/4 v2, 0x0

    .line 549
    .local v2, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    .line 550
    .local v3, "itemType":I
    nop

    .line 551
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 552
    .local v4, "widthMeasureSpec":I
    nop

    .line 553
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 557
    .local v5, "heightMeasureSpec":I
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 558
    .local v6, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v7

    add-int/lit8 v8, v6, 0xf

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 559
    .local v7, "end":I
    sub-int v8, v7, v6

    .line 560
    .local v8, "count":I
    rsub-int/lit8 v9, v8, 0xf

    sub-int v9, v6, v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 561
    .end local v6    # "start":I
    .local v0, "start":I
    move v6, v0

    .local v6, "i":I
    :goto_36
    if-ge v6, v7, :cond_61

    .line 562
    invoke-interface {p1, v6}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v9

    .line 563
    .local v9, "positionType":I
    if-eq v9, v3, :cond_40

    .line 564
    move v3, v9

    .line 565
    const/4 v2, 0x0

    .line 567
    :cond_40
    invoke-interface {p1, v6, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 568
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_53

    .line 569
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    :cond_53
    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 574
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 561
    .end local v9    # "positionType":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 578
    .end local v6    # "i":I
    :cond_61
    if-eqz p2, :cond_72

    .line 579
    iget-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 580
    iget-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v9

    add-int/2addr v1, v6

    .line 583
    :cond_72
    return v1
.end method

.method protected drawableStateChanged()V
    .registers 2

    .line 536
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 537
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_a

    .line 538
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 540
    :cond_a
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .registers 3

    .line 358
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_9

    .line 359
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getHorizontalOffset()I

    move-result v0

    return v0

    .line 360
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_14

    .line 361
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    return v0

    .line 363
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .registers 3

    .line 333
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_9

    .line 334
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getVerticalOffset()I

    move-result v0

    return v0

    .line 335
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_14

    .line 336
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    return v0

    .line 338
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownWidth()I
    .registers 3

    .line 377
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_7

    .line 378
    iget v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I

    return v0

    .line 379
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_12

    .line 380
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    return v0

    .line 382
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 314
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_9

    .line 315
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 316
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_14

    .line 317
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 319
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .registers 3

    .line 290
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_7

    .line 291
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    return-object v0

    .line 292
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_12

    .line 293
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 295
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .registers 2

    .line 457
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 501
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_9

    .line 502
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 530
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_9

    .line 531
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 404
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 406
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 407
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->dismiss()V

    .line 409
    :cond_12
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 421
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 423
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_33

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_33

    .line 424
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredWidth()I

    move-result v0

    .line 425
    .local v0, "measuredWidth":I
    nop

    .line 426
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 425
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 427
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 425
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 428
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredHeight()I

    move-result v2

    .line 425
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setMeasuredDimension(II)V

    .line 430
    .end local v0    # "measuredWidth":I
    :cond_33
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 413
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 414
    const/4 v0, 0x1

    return v0

    .line 416
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .registers 2

    .line 434
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_11

    .line 436
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_f

    .line 437
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->show()V

    .line 439
    :cond_f
    const/4 v0, 0x1

    return v0

    .line 443
    :cond_11
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .line 69
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 6
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .line 389
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupSet:Z

    if-nez v0, :cond_7

    .line 390
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 391
    return-void

    .line 394
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 396
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_24

    .line 397
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 398
    .local v0, "popupContext":Landroid/content/Context;
    :cond_16
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    new-instance v2, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 400
    .end local v0    # "popupContext":Landroid/content/Context;
    :cond_24
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 470
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 471
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_a

    .line 472
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 462
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 463
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_a

    .line 464
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 466
    :cond_a
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .registers 4
    .param p1, "pixels"    # I

    .line 343
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_8

    .line 344
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setHorizontalOffset(I)V

    goto :goto_11

    .line 345
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    .line 346
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    .line 348
    :cond_11
    :goto_11
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .registers 4
    .param p1, "pixels"    # I

    .line 324
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_8

    .line 325
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setVerticalOffset(I)V

    goto :goto_11

    .line 326
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    .line 327
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    .line 329
    :cond_11
    :goto_11
    return-void
.end method

.method public setDropDownWidth(I)V
    .registers 4
    .param p1, "pixels"    # I

    .line 368
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_7

    .line 369
    iput p1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I

    goto :goto_10

    .line 370
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    .line 371
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    .line 373
    :cond_10
    :goto_10
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 300
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_8

    .line 301
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    .line 302
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    .line 303
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    :cond_11
    :goto_11
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 309
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .line 448
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_8

    .line 449
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 451
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 453
    :goto_b
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 486
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_7

    .line 487
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 489
    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 515
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_7

    .line 516
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 518
    :cond_7
    return-void
.end method
