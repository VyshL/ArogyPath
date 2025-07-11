.class public final Landroid/support/v7/widget/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AppCompatDrawableManager$AsldcInflateDelegate;,
        Landroid/support/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;,
        Landroid/support/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;,
        Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;,
        Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
    }
.end annotation


# static fields
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private static final COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager; = null

.field private static final PLATFORM_VD_CLAZZ:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static final SKIP_DRAWABLE_TAG:Ljava/lang/String; = "appcompat_skip_skip"

.field private static final TAG:Ljava/lang/String; = "AppCompatDrawableManag"

.field private static final TINT_CHECKABLE_BUTTON_LIST:[I

.field private static final TINT_COLOR_CONTROL_NORMAL:[I

.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I


# instance fields
.field private mDelegates:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHasCheckedVectorDrawableSetup:Z

.field private mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 78
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 107
    new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    .line 113
    const/4 v0, 0x3

    new-array v2, v0, [I

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    const/4 v6, 0x2

    aput v3, v2, v6

    sput-object v2, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    .line 123
    const/4 v2, 0x7

    new-array v3, v2, [I

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_tick_mark_material:I

    aput v7, v3, v5

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v7, v3, v0

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    const/4 v8, 0x4

    aput v7, v3, v8

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    const/4 v9, 0x5

    aput v7, v3, v9

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v7, v3, v1

    sput-object v3, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    .line 137
    const/16 v3, 0xa

    new-array v3, v3, [I

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v7, v3, v5

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_text_cursor_material:I

    aput v7, v3, v0

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_left_mtrl_dark:I

    aput v7, v3, v8

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl_dark:I

    aput v7, v3, v9

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_right_mtrl_dark:I

    aput v7, v3, v1

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_left_mtrl_light:I

    aput v1, v3, v2

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl_light:I

    const/16 v2, 0x8

    aput v1, v3, v2

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_right_mtrl_light:I

    const/16 v2, 0x9

    aput v1, v3, v2

    sput-object v3, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    .line 154
    new-array v0, v0, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    aput v1, v0, v5

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v6

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    .line 164
    new-array v0, v6, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_tab_indicator_material:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_material:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    .line 174
    new-array v0, v6, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_check_material:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_radio_material:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 800
    return-void
.end method

.method private addDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
    .registers 4
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "delegate"    # Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;

    .line 489
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_b

    .line 490
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    .line 492
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    return-void
.end method

.method private declared-synchronized addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # J
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    monitor-enter p0

    .line 415
    :try_start_1
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 416
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_27

    .line 417
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/util/LongSparseArray;

    .line 418
    .local v1, "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-nez v1, :cond_1c

    .line 419
    new-instance v2, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v2}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    move-object v1, v2

    .line 420
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .end local p0    # "this":Landroid/support/v7/widget/AppCompatDrawableManager;
    :cond_1c
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2, p3, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2a

    .line 423
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 425
    .end local v1    # "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :cond_27
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 414
    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "key":J
    .end local p4    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "tintList"    # Landroid/content/res/ColorStateList;

    .line 568
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    .line 569
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    .line 571
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/SparseArrayCompat;

    .line 572
    .local v0, "themeTints":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    if-nez v0, :cond_20

    .line 573
    new-instance v1, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v1}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    move-object v0, v1

    .line 574
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :cond_20
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 577
    return-void
.end method

.method private static arrayContains([II)Z
    .registers 6
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 502
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p0, v2

    .line 503
    .local v3, "id":I
    if-ne v3, p1, :cond_b

    .line 504
    const/4 v0, 0x1

    return v0

    .line 502
    .end local v3    # "id":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 507
    :cond_e
    return v1
.end method

.method private checkVectorDrawableSetup(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 746
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    if-eqz v0, :cond_5

    .line 748
    return-void

    .line 752
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    .line 753
    sget v0, Landroid/support/v7/appcompat/R$drawable;->abc_vector_test:I

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 754
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_17

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 759
    return-void

    .line 755
    :cond_17
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    .line 756
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 586
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseColor"    # I

    .line 596
    const/4 v0, 0x4

    new-array v1, v0, [[I

    .line 597
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 598
    .local v0, "colors":[I
    const/4 v2, 0x0

    .line 600
    .local v2, "i":I
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    .line 601
    .local v3, "colorControlHighlight":I
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    .line 604
    .local v4, "disabledColor":I
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v5, v1, v2

    .line 605
    aput v4, v0, v2

    .line 606
    add-int/lit8 v2, v2, 0x1

    .line 608
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v5, v1, v2

    .line 609
    invoke-static {v3, p2}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v5

    aput v5, v0, v2

    .line 610
    add-int/lit8 v2, v2, 0x1

    .line 612
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    aput-object v5, v1, v2

    .line 613
    invoke-static {v3, p2}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v5

    aput v5, v0, v2

    .line 614
    add-int/lit8 v2, v2, 0x1

    .line 617
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v5, v1, v2

    .line 618
    aput p2, v0, v2

    .line 619
    add-int/lit8 v2, v2, 0x1

    .line 621
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v5
.end method

.method private static createCacheKey(Landroid/util/TypedValue;)J
    .registers 5
    .param p0, "tv"    # Landroid/util/TypedValue;

    .line 226
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 590
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorAccent:I

    .line 591
    invoke-static {p1, v0}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 590
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 580
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    .line 581
    invoke-static {p1, v0}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 580
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 231
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    .line 232
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 234
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 235
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 236
    invoke-static {v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v3

    .line 238
    .local v3, "key":J
    invoke-direct {p0, p1, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 239
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_20

    .line 241
    return-object v1

    .line 245
    :cond_20
    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_material:I

    if-ne p2, v5, :cond_3e

    .line 246
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    sget v8, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    .line 247
    invoke-virtual {p0, p1, v8}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v6, v7

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    .line 248
    invoke-virtual {p0, p1, v7}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v1, v5

    .line 252
    :cond_3e
    if-eqz v1, :cond_48

    .line 253
    iget v2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 255
    invoke-direct {p0, p1, v3, v4, v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    .line 258
    :cond_48
    return-object v1
.end method

.method private createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 625
    const/4 v0, 0x3

    new-array v1, v0, [[I

    .line 626
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 627
    .local v0, "colors":[I
    const/4 v2, 0x0

    .line 629
    .local v2, "i":I
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 632
    .local v3, "thumbColor":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 637
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v4, v1, v2

    .line 638
    aget-object v4, v1, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    aput v4, v0, v2

    .line 639
    add-int/lit8 v2, v2, 0x1

    .line 641
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v4, v1, v2

    .line 642
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v2

    .line 643
    add-int/lit8 v2, v2, 0x1

    .line 646
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v4, v1, v2

    .line 647
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    aput v4, v0, v2

    .line 648
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 653
    :cond_3e
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v4, v1, v2

    .line 654
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v2

    .line 655
    add-int/lit8 v2, v2, 0x1

    .line 657
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v4, v1, v2

    .line 658
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v2

    .line 659
    add-int/lit8 v2, v2, 0x1

    .line 662
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v4, v1, v2

    .line 663
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v2

    .line 664
    add-int/lit8 v2, v2, 0x1

    .line 667
    :goto_68
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4
.end method

.method private static createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .registers 5
    .param p0, "tint"    # Landroid/content/res/ColorStateList;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p2, "state"    # [I

    .line 717
    if-eqz p0, :cond_f

    if-nez p1, :cond_5

    goto :goto_f

    .line 720
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 721
    .local v0, "color":I
    invoke-static {v0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    return-object v1

    .line 718
    .end local v0    # "color":I
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized get()Landroid/support/v7/widget/AppCompatDrawableManager;
    .registers 2

    const-class v0, Landroid/support/v7/widget/AppCompatDrawableManager;

    monitor-enter v0

    .line 89
    :try_start_3
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-nez v1, :cond_11

    .line 90
    new-instance v1, Landroid/support/v7/widget/AppCompatDrawableManager;

    invoke-direct {v1}, Landroid/support/v7/widget/AppCompatDrawableManager;-><init>()V

    sput-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 91
    invoke-static {v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->installDefaultInflateDelegates(Landroid/support/v7/widget/AppCompatDrawableManager;)V

    .line 93
    :cond_11
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object v1

    .line 88
    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # J

    monitor-enter p0

    .line 394
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/LongSparseArray;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2d

    .line 395
    .local v0, "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 396
    monitor-exit p0

    return-object v1

    .line 399
    :cond_e
    :try_start_e
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 400
    .local v2, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v2, :cond_2b

    .line 402
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 403
    .local v3, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v3, :cond_28

    .line 404
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_2d

    monitor-exit p0

    return-object v1

    .line 407
    .end local p0    # "this":Landroid/support/v7/widget/AppCompatDrawableManager;
    :cond_28
    :try_start_28
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/LongSparseArray;->delete(J)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2d

    .line 410
    .end local v3    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2b
    monitor-exit p0

    return-object v1

    .line 393
    .end local v0    # "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .end local v2    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "key":J
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 6
    .param p0, "color"    # I
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    const-class v0, Landroid/support/v7/widget/AppCompatDrawableManager;

    monitor-enter v0

    .line 727
    :try_start_3
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    .line 729
    .local v2, "filter":Landroid/graphics/PorterDuffColorFilter;
    if-nez v2, :cond_14

    .line 731
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v3, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v2, v3

    .line 732
    invoke-virtual {v1, p0, p1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 735
    :cond_14
    monitor-exit v0

    return-object v2

    .line 726
    .end local v2    # "filter":Landroid/graphics/PorterDuffColorFilter;
    .end local p0    # "color":I
    .end local p1    # "mode":Landroid/graphics/PorterDuff$Mode;
    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 559
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 560
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/SparseArrayCompat;

    .line 561
    .local v0, "tints":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    if-eqz v0, :cond_13

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    :cond_13
    return-object v1

    .line 563
    .end local v0    # "tints":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    :cond_14
    return-object v1
.end method

.method static getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p0, "resId"    # I

    .line 511
    const/4 v0, 0x0

    .line 513
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p0, v1, :cond_7

    .line 514
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 517
    :cond_7
    return-object v0
.end method

.method private static installDefaultInflateDelegates(Landroid/support/v7/widget/AppCompatDrawableManager;)V
    .registers 3
    .param p0, "manager"    # Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_24

    .line 101
    new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;-><init>()V

    const-string v1, "vector"

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V

    .line 102
    new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;-><init>()V

    const-string v1, "animated-vector"

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V

    .line 103
    new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager$AsldcInflateDelegate;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatDrawableManager$AsldcInflateDelegate;-><init>()V

    const-string v1, "animated-selector"

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V

    .line 105
    :cond_24
    return-void
.end method

.method private static isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;

    .line 762
    instance-of v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    if-nez v0, :cond_17

    .line 763
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method private loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 308
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_b8

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 309
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;

    const-string v2, "appcompat_skip_skip"

    if-eqz v0, :cond_2a

    .line 310
    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    .local v0, "cachedTagName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    if-eqz v0, :cond_28

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    .line 312
    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_28

    goto :goto_29

    .line 321
    .end local v0    # "cachedTagName":Ljava/lang/String;
    :cond_28
    goto :goto_31

    .line 319
    .restart local v0    # "cachedTagName":Ljava/lang/String;
    :cond_29
    :goto_29
    return-object v1

    .line 323
    .end local v0    # "cachedTagName":Ljava/lang/String;
    :cond_2a
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;

    .line 326
    :goto_31
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_3c

    .line 327
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 329
    :cond_3c
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 330
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 331
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v3, 0x1

    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 333
    invoke-static {v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v4

    .line 335
    .local v4, "key":J
    invoke-direct {p0, p1, v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 336
    .local v6, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_51

    .line 342
    return-object v6

    .line 345
    :cond_51
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_b0

    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b0

    .line 348
    :try_start_63
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 349
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 351
    .local v8, "attrs":Landroid/util/AttributeSet;
    :goto_6b
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "type":I
    const/4 v11, 0x2

    if-eq v9, v11, :cond_76

    if-eq v10, v3, :cond_76

    goto :goto_6b

    .line 355
    :cond_76
    if-ne v10, v11, :cond_a0

    .line 359
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, "tagName":Ljava/lang/String;
    iget-object v9, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v9, p2, v3}, Landroid/support/v4/util/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 364
    iget-object v9, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v9, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;

    .line 365
    .local v9, "delegate":Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
    if-eqz v9, :cond_95

    .line 366
    nop

    .line 367
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    .line 366
    invoke-interface {v9, p1, v7, v8, v11}, Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;->createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v6, v11

    .line 369
    :cond_95
    if-eqz v6, :cond_9f

    .line 371
    iget v11, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v11}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 372
    invoke-direct {p0, p1, v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    .line 379
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "delegate":Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
    .end local v10    # "type":I
    :cond_9f
    goto :goto_b0

    .line 356
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "attrs":Landroid/util/AttributeSet;
    .restart local v10    # "type":I
    :cond_a0
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "No start tag found"

    invoke-direct {v3, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tv":Landroid/util/TypedValue;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v4    # "key":J
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resId":I
    throw v3
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_a8} :catch_a8

    .line 377
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "type":I
    .restart local v0    # "tv":Landroid/util/TypedValue;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v4    # "key":J
    .restart local v6    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "resId":I
    :catch_a8
    move-exception v3

    .line 378
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "AppCompatDrawableManag"

    const-string v8, "Exception while inflating drawable"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b0
    :goto_b0
    if-nez v6, :cond_b7

    .line 384
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, p2, v2}, Landroid/support/v4/util/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 386
    :cond_b7
    return-object v6

    .line 389
    .end local v0    # "tv":Landroid/util/TypedValue;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v4    # "key":J
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_b8
    return-object v1
.end method

.method private removeDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
    .registers 4
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "delegate"    # Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;

    .line 496
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_f

    .line 497
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_f
    return-void
.end method

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 739
    invoke-static {p0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 740
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 742
    :cond_a
    if-nez p2, :cond_f

    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    goto :goto_10

    :cond_f
    move-object v0, p2

    :goto_10
    invoke-static {p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 743
    return-void
.end method

.method private tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "failIfNotKnown"    # Z
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 263
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 264
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_22

    .line 266
    invoke-static {p4}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 267
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 269
    :cond_10
    invoke-static {p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 270
    invoke-static {p4, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 273
    invoke-static {p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 274
    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v1, :cond_20

    .line 275
    invoke-static {p4, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 277
    .end local v1    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_20
    goto/16 :goto_9f

    :cond_22
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_track_material:I

    const v2, 0x102000d

    const v3, 0x102000f

    const/high16 v4, 0x1020000

    if-ne p2, v1, :cond_5b

    .line 278
    move-object v1, p4

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 279
    .local v1, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    .line 280
    invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 279
    invoke-static {v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 281
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    .line 282
    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    .line 281
    invoke-static {v3, v4, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 283
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    .line 284
    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    .line 283
    invoke-static {v2, v3, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 285
    .end local v1    # "ld":Landroid/graphics/drawable/LayerDrawable;
    goto :goto_9f

    :cond_5b
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_material:I

    if-eq p2, v1, :cond_72

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_indicator_material:I

    if-eq p2, v1, :cond_72

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_small_material:I

    if-ne p2, v1, :cond_68

    goto :goto_72

    .line 297
    :cond_68
    invoke-static {p1, p2, p4}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 298
    .local v1, "tinted":Z
    if-nez v1, :cond_9f

    if-eqz p3, :cond_9f

    .line 301
    const/4 p4, 0x0

    goto :goto_9f

    .line 288
    .end local v1    # "tinted":Z
    :cond_72
    :goto_72
    move-object v1, p4

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 289
    .local v1, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    .line 290
    invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 289
    invoke-static {v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 292
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    .line 293
    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    .line 292
    invoke-static {v3, v4, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 294
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    .line 295
    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    .line 294
    invoke-static {v2, v3, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 296
    .end local v1    # "ld":Landroid/graphics/drawable/LayerDrawable;
    nop

    .line 304
    :cond_9f
    :goto_9f
    return-object p4
.end method

.method static tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
    .registers 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Landroid/support/v7/widget/TintInfo;
    .param p2, "state"    # [I

    .line 693
    invoke-static {p0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 694
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_14

    .line 695
    const-string v0, "AppCompatDrawableManag"

    const-string v1, "Mutated drawable is not the same instance as the input."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-void

    .line 699
    :cond_14
    iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-nez v0, :cond_21

    iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v0, :cond_1d

    goto :goto_21

    .line 705
    :cond_1d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_39

    .line 700
    :cond_21
    :goto_21
    iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-eqz v0, :cond_28

    iget-object v0, p1, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    iget-boolean v1, p1, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_30

    iget-object v1, p1, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_32

    :cond_30
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    :goto_32
    invoke-static {v0, v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 708
    :goto_39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_42

    .line 711
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 713
    :cond_42
    return-void
.end method

.method static tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 442
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 443
    .local v0, "tintMode":Landroid/graphics/PorterDuff$Mode;
    const/4 v1, 0x0

    .line 444
    .local v1, "colorAttrSet":Z
    const/4 v2, 0x0

    .line 445
    .local v2, "colorAttr":I
    const/4 v3, -0x1

    .line 447
    .local v3, "alpha":I
    sget-object v4, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v4, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 448
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    .line 449
    const/4 v1, 0x1

    goto :goto_44

    .line 450
    :cond_11
    sget-object v4, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    invoke-static {v4, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 451
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    .line 452
    const/4 v1, 0x1

    goto :goto_44

    .line 453
    :cond_1d
    sget-object v4, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    invoke-static {v4, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 454
    const v2, 0x1010031

    .line 455
    const/4 v1, 0x1

    .line 456
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_44

    .line 457
    :cond_2c
    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v4, :cond_3c

    .line 458
    const v2, 0x1010030

    .line 459
    const/4 v1, 0x1

    .line 460
    const v4, 0x42233333    # 40.8f

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_44

    .line 461
    :cond_3c
    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_dialog_material_background:I

    if-ne p1, v4, :cond_44

    .line 462
    const v2, 0x1010031

    .line 463
    const/4 v1, 0x1

    .line 466
    :cond_44
    :goto_44
    if-eqz v1, :cond_63

    .line 467
    invoke-static {p2}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 468
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 471
    :cond_50
    invoke-static {p0, v2}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    .line 472
    .local v4, "color":I
    invoke-static {v4, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 474
    const/4 v5, -0x1

    if-eq v3, v5, :cond_61

    .line 475
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 483
    :cond_61
    const/4 v5, 0x1

    return v5

    .line 485
    .end local v4    # "color":I
    :cond_63
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method public declared-synchronized getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    monitor-enter p0

    .line 191
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 191
    .end local p0    # "this":Landroid/support/v7/widget/AppCompatDrawableManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resId":I
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "failIfNotKnown"    # Z

    monitor-enter p0

    .line 196
    :try_start_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->checkVectorDrawableSetup(Landroid/content/Context;)V

    .line 198
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_f

    .line 200
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 202
    .end local p0    # "this":Landroid/support/v7/widget/AppCompatDrawableManager;
    :cond_f
    if-nez v0, :cond_16

    .line 203
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 206
    :cond_16
    if-eqz v0, :cond_1d

    .line 208
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 210
    :cond_1d
    if-eqz v0, :cond_22

    .line 212
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 214
    :cond_22
    monitor-exit p0

    return-object v0

    .line 195
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resId":I
    .end local p3    # "failIfNotKnown":Z
    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    monitor-enter p0

    .line 522
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 524
    .local v0, "tint":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_9c

    .line 526
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I

    if-ne p2, v1, :cond_14

    .line 527
    sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_edittext:I

    invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    goto/16 :goto_97

    .line 528
    .end local p0    # "this":Landroid/support/v7/widget/AppCompatDrawableManager;
    :cond_14
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v1, :cond_21

    .line 529
    sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_switch_track:I

    invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    goto/16 :goto_97

    .line 530
    :cond_21
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p2, v1, :cond_2c

    .line 531
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    goto/16 :goto_97

    .line 532
    :cond_2c
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    if-ne p2, v1, :cond_37

    .line 533
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    goto/16 :goto_97

    .line 534
    :cond_37
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I

    if-ne p2, v1, :cond_41

    .line 535
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    goto :goto_97

    .line 536
    :cond_41
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_colored_material:I

    if-ne p2, v1, :cond_4b

    .line 537
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    goto :goto_97

    .line 538
    :cond_4b
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v1, :cond_90

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne p2, v1, :cond_54

    goto :goto_90

    .line 541
    :cond_54
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 542
    sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v1}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    goto :goto_97

    .line 543
    :cond_64
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 544
    sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_default:I

    invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    goto :goto_97

    .line 545
    :cond_74
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 546
    sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_btn_checkable:I

    invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    goto :goto_97

    .line 547
    :cond_84
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_thumb_material:I

    if-ne p2, v1, :cond_97

    .line 548
    sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_seek_thumb:I

    invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    goto :goto_97

    .line 540
    :cond_90
    :goto_90
    sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_spinner:I

    invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .line 551
    :cond_97
    :goto_97
    if-eqz v0, :cond_9c

    .line 552
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    :try_end_9c
    .catchall {:try_start_1 .. :try_end_9c} :catchall_9e

    .line 555
    :cond_9c
    monitor-exit p0

    return-object v0

    .line 521
    .end local v0    # "tint":Landroid/content/res/ColorStateList;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resId":I
    :catchall_9e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onConfigurationChanged(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/LongSparseArray;

    .line 219
    .local v0, "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-eqz v0, :cond_e

    .line 221
    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 223
    .end local p0    # "this":Landroid/support/v7/widget/AppCompatDrawableManager;
    :cond_e
    monitor-exit p0

    return-void

    .line 217
    .end local v0    # "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .end local p1    # "context":Landroid/content/Context;
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onDrawableLoadedFromResources(Landroid/content/Context;Landroid/support/v7/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/support/v7/widget/VectorEnabledTintResources;
    .param p3, "resId"    # I

    monitor-enter p0

    .line 430
    :try_start_1
    invoke-direct {p0, p1, p3}, Landroid/support/v7/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 431
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_c

    .line 432
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/VectorEnabledTintResources;->superGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 434
    .end local p0    # "this":Landroid/support/v7/widget/AppCompatDrawableManager;
    :cond_c
    if-eqz v0, :cond_15

    .line 435
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_18

    monitor-exit p0

    return-object v1

    .line 437
    :cond_15
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 429
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resources":Landroid/support/v7/widget/VectorEnabledTintResources;
    .end local p3    # "resId":I
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method
