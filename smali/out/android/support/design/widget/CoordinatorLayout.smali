.class public Landroid/support/design/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CoordinatorLayout$SavedState;,
        Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;,
        Landroid/support/design/widget/CoordinatorLayout$LayoutParams;,
        Landroid/support/design/widget/CoordinatorLayout$Behavior;,
        Landroid/support/design/widget/CoordinatorLayout$AttachedBehavior;,
        Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;,
        Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;,
        Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;,
        Landroid/support/design/widget/CoordinatorLayout$DispatchChangeEvent;
    }
.end annotation


# static fields
.field static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final EVENT_NESTED_SCROLL:I = 0x1

.field static final EVENT_PRE_DRAW:I = 0x0

.field static final EVENT_VIEW_REMOVED:I = 0x2

.field static final TAG:Ljava/lang/String; = "CoordinatorLayout"

.field static final TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_ON_INTERCEPT:I = 0x0

.field private static final TYPE_ON_TOUCH:I = 0x1

.field static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field static final sConstructors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "Landroid/support/design/widget/CoordinatorLayout$Behavior;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sRectPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

.field private mBehaviorTouchView:Landroid/view/View;

.field private final mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/DirectedAcyclicGraph<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDisallowInterceptReset:Z

.field private mDrawStatusBarBackground:Z

.field private mIsAttachedToWindow:Z

.field private mKeylines:[I

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private mNeedsPreDrawListener:Z

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mNestedScrollingTarget:Landroid/view/View;

.field mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempIntPair:[I

.field private final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 116
    const-class v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 117
    .local v0, "pkg":Ljava/lang/Package;
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_e
    move-object v2, v1

    :goto_f
    sput-object v2, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 124
    .end local v0    # "pkg":Ljava/lang/Package;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1f

    .line 125
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;

    invoke-direct {v0}, Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;-><init>()V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    goto :goto_21

    .line 127
    :cond_1f
    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 131
    :goto_21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 136
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    .line 150
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->sRectPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 201
    sget v0, Landroid/support/coordinatorlayout/R$attr;->coordinatorLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 206
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 167
    new-instance v0, Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-direct {v0}, Landroid/support/v4/widget/DirectedAcyclicGraph;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 171
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    .line 193
    new-instance v0, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 208
    const/4 v0, 0x0

    if-nez p3, :cond_37

    sget-object v1, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout:[I

    sget v2, Landroid/support/coordinatorlayout/R$style;->Widget_Support_CoordinatorLayout:I

    .line 209
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_3d

    :cond_37
    sget-object v1, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout:[I

    .line 211
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :goto_3d
    nop

    .line 213
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_keylines:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 214
    .local v0, "keylineArrayRes":I
    if-eqz v0, :cond_69

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 216
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    .line 217
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 218
    .local v3, "density":F
    iget-object v4, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length v4, v4

    .line 219
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5a
    if-ge v5, v4, :cond_69

    .line 220
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    aget v7, v6, v5

    int-to-float v7, v7

    mul-float v7, v7, v3

    float-to-int v7, v7

    aput v7, v6, v5

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 223
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "density":F
    .end local v4    # "count":I
    .end local v5    # "i":I
    :cond_69
    sget v2, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_statusBarBackground:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 224
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->setupForInsets()V

    .line 227
    new-instance v2, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;

    invoke-direct {v2, p0}, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 228
    return-void
.end method

.method private static acquireTempRect()Landroid/graphics/Rect;
    .registers 2

    .line 154
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->sRectPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 155
    .local v0, "rect":Landroid/graphics/Rect;
    if-nez v0, :cond_10

    .line 156
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v1

    .line 158
    :cond_10
    return-object v0
.end method

.method private static clamp(III)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 1250
    if-ge p0, p1, :cond_3

    .line 1251
    return p1

    .line 1252
    :cond_3
    if-le p0, p2, :cond_6

    .line 1253
    return p2

    .line 1255
    :cond_6
    return p0
.end method

.method private constrainChildRect(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V
    .registers 12
    .param p1, "lp"    # Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .param p2, "out"    # Landroid/graphics/Rect;
    .param p3, "childWidth"    # I
    .param p4, "childHeight"    # I

    .line 1036
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    .line 1037
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    .line 1040
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 1042
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int v4, v0, v4

    sub-int/2addr v4, p3

    iget v5, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    .line 1041
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1040
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1043
    .local v2, "left":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v3

    iget v4, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 1045
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v5

    sub-int v5, v1, v5

    sub-int/2addr v5, p4

    iget v6, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    .line 1044
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1043
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1047
    .local v3, "top":I
    add-int v4, v2, p3

    add-int v5, v3, p4

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1048
    return-void
.end method

.method private dispatchApplyWindowInsetsToBehaviors(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 8
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .line 825
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 826
    return-object p1

    .line 829
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_c
    if-ge v0, v1, :cond_32

    .line 830
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 831
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 832
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 833
    .local v3, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 835
    .local v4, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_2f

    .line 837
    invoke-virtual {v4, p0, v2, p1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onApplyWindowInsets(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    .line 838
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 840
    goto :goto_32

    .line 829
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 846
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_32
    :goto_32
    return-object p1
.end method

.method private getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/CoordinatorLayout$LayoutParams;II)V
    .registers 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I
    .param p3, "anchorRect"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;
    .param p5, "lp"    # Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .param p6, "childWidth"    # I
    .param p7, "childHeight"    # I

    .line 962
    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    iget v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 963
    invoke-static {v3}, Landroid/support/design/widget/CoordinatorLayout;->resolveAnchoredChildGravity(I)I

    move-result v3

    .line 962
    invoke-static {v3, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    .line 964
    .local v3, "absGravity":I
    iget v4, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 965
    invoke-static {v4}, Landroid/support/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v4

    .line 964
    invoke-static {v4, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 968
    .local v4, "absAnchorGravity":I
    and-int/lit8 v5, v3, 0x7

    .line 969
    .local v5, "hgrav":I
    and-int/lit8 v6, v3, 0x70

    .line 970
    .local v6, "vgrav":I
    and-int/lit8 v7, v4, 0x7

    .line 971
    .local v7, "anchorHgrav":I
    and-int/lit8 v8, v4, 0x70

    .line 979
    .local v8, "anchorVgrav":I
    const/4 v9, 0x0

    sparse-switch v7, :sswitch_data_6a

    .line 982
    iget v10, v1, Landroid/graphics/Rect;->left:I

    .line 983
    .local v10, "left":I
    goto :goto_38

    .line 979
    .end local v10    # "left":I
    :sswitch_29
    move v10, v9

    .line 985
    .restart local v10    # "left":I
    iget v10, v1, Landroid/graphics/Rect;->right:I

    .line 986
    goto :goto_38

    .line 979
    .end local v10    # "left":I
    :sswitch_2d
    move v10, v9

    .line 988
    .restart local v10    # "left":I
    iget v11, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int v10, v11, v12

    .line 992
    :goto_38
    sparse-switch v8, :sswitch_data_74

    .line 995
    iget v9, v1, Landroid/graphics/Rect;->top:I

    .line 996
    .local v9, "top":I
    goto :goto_4b

    .line 998
    :sswitch_3e
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    .line 999
    goto :goto_4b

    .line 1001
    :sswitch_41
    iget v11, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int v9, v11, v12

    .line 1006
    :goto_4b
    sparse-switch v5, :sswitch_data_7e

    .line 1009
    sub-int v10, v10, p6

    .line 1010
    goto :goto_55

    .line 1013
    :sswitch_51
    goto :goto_55

    .line 1015
    :sswitch_52
    div-int/lit8 v11, p6, 0x2

    sub-int/2addr v10, v11

    .line 1019
    :goto_55
    sparse-switch v6, :sswitch_data_88

    .line 1022
    sub-int v9, v9, p7

    .line 1023
    goto :goto_5f

    .line 1026
    :sswitch_5b
    goto :goto_5f

    .line 1028
    :sswitch_5c
    div-int/lit8 v11, p7, 0x2

    sub-int/2addr v9, v11

    .line 1032
    :goto_5f
    add-int v11, v10, p6

    add-int v12, v9, p7

    move-object/from16 v13, p4

    invoke-virtual {v13, v10, v9, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1033
    return-void

    nop

    :sswitch_data_6a
    .sparse-switch
        0x1 -> :sswitch_2d
        0x5 -> :sswitch_29
    .end sparse-switch

    :sswitch_data_74
    .sparse-switch
        0x10 -> :sswitch_41
        0x50 -> :sswitch_3e
    .end sparse-switch

    :sswitch_data_7e
    .sparse-switch
        0x1 -> :sswitch_52
        0x5 -> :sswitch_51
    .end sparse-switch

    :sswitch_data_88
    .sparse-switch
        0x10 -> :sswitch_5c
        0x50 -> :sswitch_5b
    .end sparse-switch
.end method

.method private getKeyline(I)I
    .registers 6
    .param p1, "index"    # I

    .line 574
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    const/4 v1, 0x0

    const-string v2, "CoordinatorLayout"

    if-nez v0, :cond_28

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No keylines defined for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - attempted index lookup "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return v1

    .line 579
    :cond_28
    if-ltz p1, :cond_31

    array-length v3, v0

    if-lt p1, v3, :cond_2e

    goto :goto_31

    .line 584
    :cond_2e
    aget v0, v0, p1

    return v0

    .line 580
    :cond_31
    :goto_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyline index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " out of range for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return v1
.end method

.method private getTopSortedChildren(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 416
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 418
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    .line 419
    .local v0, "useCustomOrder":Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 420
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_d
    if-ltz v2, :cond_21

    .line 421
    if-eqz v0, :cond_16

    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v3

    goto :goto_17

    :cond_16
    move v3, v2

    .line 422
    .local v3, "childIndex":I
    :goto_17
    invoke-virtual {p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 423
    .local v4, "child":Landroid/view/View;
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v3    # "childIndex":I
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 426
    .end local v2    # "i":I
    :cond_21
    sget-object v2, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    if-eqz v2, :cond_28

    .line 427
    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 429
    :cond_28
    return-void
.end method

.method private hasDependencies(Landroid/view/View;)Z
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1572
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DirectedAcyclicGraph;->hasOutgoingEdges(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private layoutChild(Landroid/view/View;I)V
    .registers 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .line 1163
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1164
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 1165
    .local v7, "parent":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    .line 1166
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v3, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    .line 1167
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    .line 1168
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    .line 1165
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1170
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v1, :cond_6f

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1171
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 1174
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->left:I

    .line 1175
    iget v1, v7, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->top:I

    .line 1176
    iget v1, v7, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->right:I

    .line 1177
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 1180
    :cond_6f
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 1181
    .local v8, "out":Landroid/graphics/Rect;
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1182
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1181
    move-object v4, v7

    move-object v5, v8

    move v6, p2

    invoke-static/range {v1 .. v6}, Landroid/support/v4/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1183
    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1185
    invoke-static {v7}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1186
    invoke-static {v8}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1187
    return-void
.end method

.method private layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "layoutDirection"    # I

    .line 1076
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1077
    .local v0, "anchorRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1079
    .local v1, "childRect":Landroid/graphics/Rect;
    :try_start_8
    invoke-virtual {p0, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1080
    invoke-virtual {p0, p1, p3, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1081
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 1083
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1084
    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1085
    nop

    .line 1086
    return-void

    .line 1083
    :catchall_21
    move-exception v2

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1084
    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    throw v2
.end method

.method private layoutChildWithKeyline(Landroid/view/View;II)V
    .registers 20
    .param p1, "child"    # Landroid/view/View;
    .param p2, "keyline"    # I
    .param p3, "layoutDirection"    # I

    .line 1100
    move/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1101
    .local v1, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 1102
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v2

    .line 1101
    invoke-static {v2, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 1104
    .local v2, "absGravity":I
    and-int/lit8 v3, v2, 0x7

    .line 1105
    .local v3, "hgrav":I
    and-int/lit8 v4, v2, 0x70

    .line 1106
    .local v4, "vgrav":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    .line 1107
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    .line 1108
    .local v6, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1109
    .local v7, "childWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1111
    .local v8, "childHeight":I
    const/4 v9, 0x1

    if-ne v0, v9, :cond_2c

    .line 1112
    sub-int v9, v5, p2

    .end local p2    # "keyline":I
    .local v9, "keyline":I
    goto :goto_2e

    .line 1111
    .end local v9    # "keyline":I
    .restart local p2    # "keyline":I
    :cond_2c
    move/from16 v9, p2

    .line 1115
    .end local p2    # "keyline":I
    .restart local v9    # "keyline":I
    :goto_2e
    move-object/from16 v10, p0

    invoke-direct {v10, v9}, Landroid/support/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v11

    sub-int/2addr v11, v7

    .line 1116
    .local v11, "left":I
    const/4 v12, 0x0

    .line 1118
    .local v12, "top":I
    sparse-switch v3, :sswitch_data_84

    .line 1122
    goto :goto_3f

    .line 1124
    :sswitch_3a
    add-int/2addr v11, v7

    .line 1125
    goto :goto_3f

    .line 1127
    :sswitch_3c
    div-int/lit8 v13, v7, 0x2

    add-int/2addr v11, v13

    .line 1131
    :goto_3f
    sparse-switch v4, :sswitch_data_8e

    .line 1135
    goto :goto_48

    .line 1137
    :sswitch_43
    add-int/2addr v12, v8

    .line 1138
    goto :goto_48

    .line 1140
    :sswitch_45
    div-int/lit8 v13, v8, 0x2

    add-int/2addr v12, v13

    .line 1145
    :goto_48
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v13

    iget v14, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    .line 1147
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v14

    sub-int v14, v5, v14

    sub-int/2addr v14, v7

    iget v15, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v14, v15

    .line 1146
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1145
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1148
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v13

    iget v14, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    .line 1150
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v14

    sub-int v14, v6, v14

    sub-int/2addr v14, v8

    iget v15, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v14, v15

    .line 1149
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1148
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1152
    add-int v13, v11, v7

    add-int v14, v12, v8

    move-object/from16 v15, p1

    invoke-virtual {v15, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 1153
    return-void

    :sswitch_data_84
    .sparse-switch
        0x1 -> :sswitch_3c
        0x5 -> :sswitch_3a
    .end sparse-switch

    :sswitch_data_8e
    .sparse-switch
        0x10 -> :sswitch_45
        0x50 -> :sswitch_43
    .end sparse-switch
.end method

.method private offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V
    .registers 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "inset"    # Landroid/graphics/Rect;
    .param p3, "layoutDirection"    # I

    .line 1380
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1382
    return-void

    .line 1385
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_109

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_15

    goto/16 :goto_109

    .line 1390
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1391
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 1392
    .local v1, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1393
    .local v2, "dodgeRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1394
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1396
    if-eqz v1, :cond_74

    invoke-virtual {v1, p0, p1, v2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getInsetDodgeRect(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 1398
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_77

    .line 1399
    :cond_49
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rect should be within the child\'s bounds. Rect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1400
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | Bounds:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1401
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1404
    :cond_74
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1408
    :goto_77
    invoke-static {v3}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1410
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 1412
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1413
    return-void

    .line 1416
    :cond_84
    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    invoke-static {v4, p3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 1419
    .local v4, "absDodgeInsetEdges":I
    const/4 v5, 0x0

    .line 1420
    .local v5, "offsetY":Z
    and-int/lit8 v6, v4, 0x30

    const/16 v7, 0x30

    if-ne v6, v7, :cond_a4

    .line 1421
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int/2addr v6, v7

    .line 1422
    .local v6, "distance":I
    iget v7, p2, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_a4

    .line 1423
    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v6

    invoke-direct {p0, p1, v7}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1424
    const/4 v5, 0x1

    .line 1427
    .end local v6    # "distance":I
    :cond_a4
    and-int/lit8 v6, v4, 0x50

    const/16 v7, 0x50

    if-ne v6, v7, :cond_c3

    .line 1428
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    add-int/2addr v6, v7

    .line 1429
    .restart local v6    # "distance":I
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_c3

    .line 1430
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v6, v7

    invoke-direct {p0, p1, v7}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1431
    const/4 v5, 0x1

    .line 1434
    .end local v6    # "distance":I
    :cond_c3
    const/4 v6, 0x0

    if-nez v5, :cond_c9

    .line 1435
    invoke-direct {p0, p1, v6}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1438
    :cond_c9
    const/4 v7, 0x0

    .line 1439
    .local v7, "offsetX":Z
    and-int/lit8 v8, v4, 0x3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_e2

    .line 1440
    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v9

    iget v9, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int/2addr v8, v9

    .line 1441
    .local v8, "distance":I
    iget v9, p2, Landroid/graphics/Rect;->left:I

    if-ge v8, v9, :cond_e2

    .line 1442
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v8

    invoke-direct {p0, p1, v9}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1443
    const/4 v7, 0x1

    .line 1446
    .end local v8    # "distance":I
    :cond_e2
    and-int/lit8 v8, v4, 0x5

    const/4 v9, 0x5

    if-ne v8, v9, :cond_100

    .line 1447
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    iget v9, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    iget v9, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    add-int/2addr v8, v9

    .line 1448
    .restart local v8    # "distance":I
    iget v9, p2, Landroid/graphics/Rect;->right:I

    if-ge v8, v9, :cond_100

    .line 1449
    iget v9, p2, Landroid/graphics/Rect;->right:I

    sub-int v9, v8, v9

    invoke-direct {p0, p1, v9}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1450
    const/4 v7, 0x1

    .line 1453
    .end local v8    # "distance":I
    :cond_100
    if-nez v7, :cond_105

    .line 1454
    invoke-direct {p0, p1, v6}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1457
    :cond_105
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1458
    return-void

    .line 1387
    .end local v0    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v1    # "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "dodgeRect":Landroid/graphics/Rect;
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "absDodgeInsetEdges":I
    .end local v5    # "offsetY":Z
    .end local v7    # "offsetX":Z
    :cond_109
    :goto_109
    return-void
.end method

.method static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "name"    # Ljava/lang/String;

    .line 588
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 589
    const/4 v0, 0x0

    return-object v0

    .line 593
    :cond_8
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "fullName":Ljava/lang/String;
    goto :goto_4f

    .line 596
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_26
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_30

    .line 598
    move-object v0, p2

    .restart local v0    # "fullName":Ljava/lang/String;
    goto :goto_4f

    .line 601
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_30
    sget-object v1, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_4e
    move-object v0, p2

    .line 607
    .restart local v0    # "fullName":Ljava/lang/String;
    :goto_4f
    :try_start_4f
    sget-object v1, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 608
    .local v2, "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;>;"
    if-nez v2, :cond_62

    .line 609
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    .line 610
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 612
    :cond_62
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 613
    .local v1, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;"
    const/4 v3, 0x1

    if-nez v1, :cond_80

    .line 614
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 615
    invoke-virtual {v4, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 616
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;"
    sget-object v5, Landroid/support/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    move-object v1, v5

    .line 617
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 618
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;"
    :cond_80
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    aput-object p1, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_8e} :catch_8f

    return-object v3

    .line 621
    .end local v1    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;"
    .end local v2    # "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;>;"
    :catch_8f
    move-exception v1

    .line 622
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not inflate Behavior subclass "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private performIntercept(Landroid/view/MotionEvent;I)Z
    .registers 25
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "type"    # I

    .line 432
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 433
    .local v2, "intercepted":Z
    const/4 v3, 0x0

    .line 435
    .local v3, "newBlock":Z
    const/4 v4, 0x0

    .line 437
    .local v4, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 439
    .local v5, "action":I
    iget-object v6, v0, Landroid/support/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 440
    .local v6, "topmostChildList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {v0, v6}, Landroid/support/design/widget/CoordinatorLayout;->getTopSortedChildren(Ljava/util/List;)V

    .line 443
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 444
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_15
    if-ge v8, v7, :cond_80

    .line 445
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 446
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 447
    .local v10, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    .line 449
    .local v11, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-nez v2, :cond_2b

    if-eqz v3, :cond_52

    :cond_2b
    if-eqz v5, :cond_52

    .line 452
    if-eqz v11, :cond_7d

    .line 453
    if-nez v4, :cond_45

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 455
    .local v20, "now":J
    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    .line 458
    .end local v20    # "now":J
    :cond_45
    packed-switch p2, :pswitch_data_84

    goto :goto_51

    .line 463
    :pswitch_49
    invoke-virtual {v11, v0, v9, v4}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_51

    .line 460
    :pswitch_4d
    invoke-virtual {v11, v0, v9, v4}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 461
    nop

    .line 464
    :goto_51
    goto :goto_7d

    .line 470
    :cond_52
    if-nez v2, :cond_68

    if-eqz v11, :cond_68

    .line 471
    packed-switch p2, :pswitch_data_8c

    goto :goto_64

    .line 476
    :pswitch_5a
    invoke-virtual {v11, v0, v9, v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_64

    .line 473
    :pswitch_5f
    invoke-virtual {v11, v0, v9, v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    .line 474
    nop

    .line 479
    :goto_64
    if-eqz v2, :cond_68

    .line 480
    iput-object v9, v0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 486
    :cond_68
    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->didBlockInteraction()Z

    move-result v12

    .line 487
    .local v12, "wasBlocking":Z
    invoke-virtual {v10, v0, v9}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isBlockingInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v13

    .line 488
    .local v13, "isBlocking":Z
    if-eqz v13, :cond_76

    if-nez v12, :cond_76

    const/4 v14, 0x1

    goto :goto_77

    :cond_76
    const/4 v14, 0x0

    :goto_77
    move v3, v14

    .line 489
    if-eqz v13, :cond_7d

    if-nez v3, :cond_7d

    .line 492
    goto :goto_80

    .line 444
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v11    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v12    # "wasBlocking":Z
    .end local v13    # "isBlocking":Z
    :cond_7d
    :goto_7d
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 496
    .end local v8    # "i":I
    :cond_80
    :goto_80
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 498
    return v2

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_49
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5a
    .end packed-switch
.end method

.method private prepareChildren()V
    .registers 8

    .line 662
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 663
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v0}, Landroid/support/v4/widget/DirectedAcyclicGraph;->clear()V

    .line 665
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_f
    if-ge v0, v1, :cond_49

    .line 666
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 668
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v3

    .line 669
    .local v3, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3, p0, v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->findAnchorView(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    .line 671
    iget-object v4, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v4, v2}, Landroid/support/v4/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 674
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_22
    if-ge v4, v1, :cond_46

    .line 675
    if-ne v4, v0, :cond_27

    .line 676
    goto :goto_43

    .line 678
    :cond_27
    invoke-virtual {p0, v4}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 679
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v3, p0, v2, v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 680
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v5}, Landroid/support/v4/widget/DirectedAcyclicGraph;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 682
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v5}, Landroid/support/v4/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 685
    :cond_3e
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v5, v2}, Landroid/support/v4/widget/DirectedAcyclicGraph;->addEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 674
    .end local v5    # "other":Landroid/view/View;
    :cond_43
    :goto_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 665
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "j":I
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 691
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_49
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v1}, Landroid/support/v4/widget/DirectedAcyclicGraph;->getSortedList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 694
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 695
    return-void
.end method

.method private static releaseTempRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p0, "rect"    # Landroid/graphics/Rect;

    .line 162
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 163
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->sRectPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method private resetTouchBehaviors(Z)V
    .registers 18
    .param p1, "notifyOnInterceptTouchEvent"    # Z

    .line 384
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 385
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_36

    .line 386
    invoke-virtual {v0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 387
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 388
    .local v4, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v5

    .line 389
    .local v5, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v5, :cond_33

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 391
    .local v14, "now":J
    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v6, v14

    move-wide v8, v14

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    .line 393
    .local v6, "cancelEvent":Landroid/view/MotionEvent;
    if-eqz p1, :cond_2d

    .line 394
    invoke-virtual {v5, v0, v3, v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_30

    .line 396
    :cond_2d
    invoke-virtual {v5, v0, v3, v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 398
    :goto_30
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 385
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v5    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v6    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v14    # "now":J
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 402
    .end local v2    # "i":I
    :cond_36
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_37
    if-ge v2, v1, :cond_49

    .line 403
    invoke-virtual {v0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 404
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 405
    .restart local v4    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetTouchBehaviorTracking()V

    .line 402
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 407
    .end local v2    # "i":I
    :cond_49
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 408
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 409
    return-void
.end method

.method private static resolveAnchoredChildGravity(I)I
    .registers 2
    .param p0, "gravity"    # I

    .line 1217
    if-nez p0, :cond_5

    const/16 v0, 0x11

    goto :goto_6

    :cond_5
    move v0, p0

    :goto_6
    return v0
.end method

.method private static resolveGravity(I)I
    .registers 2
    .param p0, "gravity"    # I

    .line 1195
    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_8

    .line 1196
    const v0, 0x800003

    or-int/2addr p0, v0

    .line 1198
    :cond_8
    and-int/lit8 v0, p0, 0x70

    if-nez v0, :cond_e

    .line 1199
    or-int/lit8 p0, p0, 0x30

    .line 1201
    :cond_e
    return p0
.end method

.method private static resolveKeylineGravity(I)I
    .registers 2
    .param p0, "gravity"    # I

    .line 1209
    if-nez p0, :cond_6

    const v0, 0x800035

    goto :goto_7

    :cond_6
    move v0, p0

    :goto_7
    return v0
.end method

.method private setInsetOffsetX(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offsetX"    # I

    .line 1461
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1462
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    if-eq v1, p2, :cond_13

    .line 1463
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int v1, p2, v1

    .line 1464
    .local v1, "dx":I
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1465
    iput p2, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    .line 1467
    .end local v1    # "dx":I
    :cond_13
    return-void
.end method

.method private setInsetOffsetY(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offsetY"    # I

    .line 1470
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1471
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    if-eq v1, p2, :cond_13

    .line 1472
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int v1, p2, v1

    .line 1473
    .local v1, "dy":I
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1474
    iput p2, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    .line 1476
    .end local v1    # "dy":I
    :cond_13
    return-void
.end method

.method private setupForInsets()V
    .registers 3

    .line 3209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    .line 3210
    return-void

    .line 3213
    :cond_7
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3214
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    if-nez v0, :cond_18

    .line 3215
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CoordinatorLayout$1;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    .line 3225
    :cond_18
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 3228
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    goto :goto_27

    .line 3231
    :cond_23
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 3233
    :goto_27
    return-void
.end method


# virtual methods
.method addPreDrawListener()V
    .registers 3

    .line 1580
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_18

    .line 1582
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v0, :cond_f

    .line 1583
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 1585
    :cond_f
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1586
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1591
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1592
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1724
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 1489
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1490
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1491
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 1492
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1493
    .local v2, "child":Landroid/view/View;
    nop

    .line 1494
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1495
    .local v3, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1496
    .local v4, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_2b

    .line 1497
    invoke-virtual {v4, p0, v2, p1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1491
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1501
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method

.method public doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z
    .registers 9
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .line 1686
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_56

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_56

    .line 1687
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1688
    .local v0, "firstRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v2, p0, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {p0, p1, v2, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1689
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1690
    .local v2, "secondRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v4, p0, :cond_2a

    const/4 v4, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    :goto_2b
    invoke-virtual {p0, p2, v4, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1692
    :try_start_2e
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-gt v4, v5, :cond_47

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_47

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    if-lt v4, v5, :cond_47

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->top:I
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_4e

    if-lt v4, v5, :cond_47

    const/4 v1, 0x1

    .line 1695
    :cond_47
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1696
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    return v1

    .line 1695
    :catchall_4e
    move-exception v1

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1696
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    throw v1

    .line 1699
    .end local v0    # "firstRect":Landroid/graphics/Rect;
    .end local v2    # "secondRect":Landroid/graphics/Rect;
    :cond_56
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 1222
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1223
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v1, :cond_8a

    .line 1224
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v1, p0, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v1

    .line 1225
    .local v1, "scrimAlpha":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_8a

    .line 1226
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_20

    .line 1227
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1229
    :cond_20
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v3, p0, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getScrimColor(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1230
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Landroid/support/design/widget/CoordinatorLayout;->clamp(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1233
    .local v2, "saved":I
    invoke-virtual {p2}, Landroid/view/View;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 1236
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v7, v3

    .line 1237
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v8, v3

    sget-object v9, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 1236
    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 1240
    :cond_63
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v3

    int-to-float v6, v3

    .line 1241
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v7, v3

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v8, v3

    iget-object v9, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1240
    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1243
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1246
    .end local v1    # "scrimAlpha":F
    .end local v2    # "saved":I
    :cond_8a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method protected drawableStateChanged()V
    .registers 5

    .line 305
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 307
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v0

    .line 308
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 310
    .local v1, "changed":Z
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 311
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 312
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 315
    :cond_17
    if-eqz v1, :cond_1c

    .line 316
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->invalidate()V

    .line 318
    :cond_1c
    return-void
.end method

.method ensurePreDrawListener()V
    .registers 6

    .line 1549
    const/4 v0, 0x0

    .line 1550
    .local v0, "hasDependencies":Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 1551
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_17

    .line 1552
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1553
    .local v3, "child":Landroid/view/View;
    invoke-direct {p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->hasDependencies(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1554
    const/4 v0, 0x1

    .line 1555
    goto :goto_17

    .line 1551
    .end local v3    # "child":Landroid/view/View;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1559
    .end local v2    # "i":I
    :cond_17
    :goto_17
    iget-boolean v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eq v0, v2, :cond_24

    .line 1560
    if-eqz v0, :cond_21

    .line 1561
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->addPreDrawListener()V

    goto :goto_24

    .line 1563
    :cond_21
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->removePreDrawListener()V

    .line 1566
    :cond_24
    :goto_24
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .registers 3

    .line 1719
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 111
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1704
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1709
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_d

    .line 1710
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V

    return-object v0

    .line 1711
    :cond_d
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1a

    .line 1712
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1714
    :cond_1a
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 111
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 111
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "transform"    # Z
    .param p3, "out"    # Landroid/graphics/Rect;

    .line 949
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    goto :goto_29

    .line 953
    :cond_f
    if-eqz p2, :cond_15

    .line 954
    invoke-virtual {p0, p1, p3}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_28

    .line 956
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 958
    :goto_28
    return-void

    .line 950
    :cond_29
    :goto_29
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 951
    return-void
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1513
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DirectedAcyclicGraph;->getOutgoingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1514
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1515
    if-eqz v0, :cond_12

    .line 1516
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1518
    :cond_12
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object v1
.end method

.method final getDependencySortedChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1541
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->prepareChildren()V

    .line 1542
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDependents(Landroid/view/View;)Ljava/util/List;
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1531
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1532
    .local v0, "edges":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1533
    if-eqz v0, :cond_12

    .line 1534
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1536
    :cond_12
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object v1
.end method

.method getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 705
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 706
    return-void
.end method

.method getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I
    .param p3, "anchorRect"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .line 1060
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1061
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1062
    .local v9, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1063
    .local v10, "childHeight":I
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    move v7, v9

    move v8, v10

    invoke-direct/range {v1 .. v8}, Landroid/support/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1065
    invoke-direct {p0, v0, p4, v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->constrainChildRect(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1066
    return-void
.end method

.method getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 935
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 936
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getLastChildRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 937
    return-void
.end method

.method public final getLastWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;
    .registers 2

    .line 374
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    .line 1950
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .registers 10
    .param p1, "child"    # Landroid/view/View;

    .line 627
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 628
    .local v0, "result":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-boolean v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-nez v1, :cond_83

    .line 629
    instance-of v1, p1, Landroid/support/design/widget/CoordinatorLayout$AttachedBehavior;

    const-string v2, "CoordinatorLayout"

    const/4 v3, 0x1

    if-eqz v1, :cond_25

    .line 630
    move-object v1, p1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$AttachedBehavior;

    invoke-interface {v1}, Landroid/support/design/widget/CoordinatorLayout$AttachedBehavior;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 631
    .local v1, "attachedBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-nez v1, :cond_1f

    .line 632
    const-string v4, "Attached behavior class is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_1f
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 635
    iput-boolean v3, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 636
    .end local v1    # "attachedBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    goto :goto_83

    .line 638
    :cond_25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 639
    .local v1, "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 640
    .local v4, "defaultBehavior":Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    :goto_2a
    if-eqz v1, :cond_3c

    const-class v5, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;

    .line 641
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;

    move-object v4, v5

    if-nez v5, :cond_3c

    .line 643
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2a

    .line 645
    :cond_3c
    if-eqz v4, :cond_81

    .line 647
    nop

    .line 648
    :try_start_3f
    invoke-interface {v4}, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 647
    invoke-virtual {v0, v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_55} :catch_56

    .line 653
    goto :goto_81

    .line 649
    :catch_56
    move-exception v5

    .line 650
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default behavior class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be instantiated. Did you forget"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " a default constructor?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_81
    :goto_81
    iput-boolean v3, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 658
    .end local v1    # "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "defaultBehavior":Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    :cond_83
    :goto_83
    return-object v0
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 300
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 4

    .line 715
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 4

    .line 710
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 1668
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1669
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1671
    :try_start_7
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 1673
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    return v1

    :catchall_f
    move-exception v1

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    throw v1
.end method

.method offsetChildToAnchor(Landroid/view/View;I)V
    .registers 20
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .line 1617
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1618
    .local v10, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v0, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_78

    .line 1619
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v11

    .line 1620
    .local v11, "anchorRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 1621
    .local v12, "childRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v13

    .line 1623
    .local v13, "desiredChildRect":Landroid/graphics/Rect;
    iget-object v0, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8, v0, v11}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1624
    const/4 v14, 0x0

    invoke-virtual {v8, v9, v14, v12}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1626
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1627
    .local v15, "childWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1628
    .local v7, "childHeight":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v11

    move-object v4, v13

    move-object v5, v10

    move v6, v15

    move/from16 v16, v7

    .end local v7    # "childHeight":I
    .local v16, "childHeight":I
    invoke-direct/range {v0 .. v7}, Landroid/support/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1630
    iget v0, v13, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_47

    iget v0, v13, Landroid/graphics/Rect;->top:I

    iget v1, v12, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_48

    :cond_47
    const/4 v14, 0x1

    :cond_48
    move v0, v14

    .line 1632
    .local v0, "changed":Z
    move/from16 v1, v16

    .end local v16    # "childHeight":I
    .local v1, "childHeight":I
    invoke-direct {v8, v10, v13, v15, v1}, Landroid/support/design/widget/CoordinatorLayout;->constrainChildRect(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1634
    iget v2, v13, Landroid/graphics/Rect;->left:I

    iget v3, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 1635
    .local v2, "dx":I
    iget v3, v13, Landroid/graphics/Rect;->top:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 1637
    .local v3, "dy":I
    if-eqz v2, :cond_5d

    .line 1638
    invoke-static {v9, v2}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1640
    :cond_5d
    if-eqz v3, :cond_62

    .line 1641
    invoke-static {v9, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1644
    :cond_62
    if-eqz v0, :cond_6f

    .line 1646
    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1647
    .local v4, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_6f

    .line 1648
    iget-object v5, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4, v8, v9, v5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1652
    .end local v4    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_6f
    invoke-static {v11}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1653
    invoke-static {v12}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1654
    invoke-static {v13}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1656
    .end local v0    # "changed":Z
    .end local v1    # "childHeight":I
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    .end local v11    # "anchorRect":Landroid/graphics/Rect;
    .end local v12    # "childRect":Landroid/graphics/Rect;
    .end local v13    # "desiredChildRect":Landroid/graphics/Rect;
    .end local v15    # "childWidth":I
    :cond_78
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    .line 237
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 239
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v0, :cond_1f

    .line 240
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v0, :cond_16

    .line 241
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 243
    :cond_16
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 244
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 246
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1f
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-nez v0, :cond_2c

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 249
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 251
    :cond_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 252
    return-void
.end method

.method final onChildViewsChanged(I)V
    .registers 16
    .param p1, "type"    # I

    .line 1275
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1276
    .local v0, "layoutDirection":I
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1277
    .local v1, "childCount":I
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1278
    .local v2, "inset":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1279
    .local v3, "drawRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1281
    .local v4, "lastDrawRect":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_17
    if-ge v5, v1, :cond_fd

    .line 1282
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1283
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1284
    .local v7, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    if-nez p1, :cond_33

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_33

    .line 1286
    goto/16 :goto_f9

    .line 1290
    :cond_33
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_34
    if-ge v8, v5, :cond_48

    .line 1291
    iget-object v9, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1293
    .local v9, "checkChild":Landroid/view/View;
    iget-object v10, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-ne v10, v9, :cond_45

    .line 1294
    invoke-virtual {p0, v6, v0}, Landroid/support/design/widget/CoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    .line 1290
    .end local v9    # "checkChild":Landroid/view/View;
    :cond_45
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 1299
    .end local v8    # "j":I
    :cond_48
    const/4 v8, 0x1

    invoke-virtual {p0, v6, v8, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1302
    iget v9, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    if-eqz v9, :cond_9d

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9d

    .line 1303
    iget v9, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    invoke-static {v9, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v9

    .line 1305
    .local v9, "absInsetEdge":I
    and-int/lit8 v10, v9, 0x70

    sparse-switch v10, :sswitch_data_108

    goto :goto_7d

    .line 1310
    :sswitch_62
    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v11

    iget v12, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_7d

    .line 1307
    :sswitch_72
    iget v10, v2, Landroid/graphics/Rect;->top:I

    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v2, Landroid/graphics/Rect;->top:I

    .line 1308
    nop

    .line 1313
    :goto_7d
    and-int/lit8 v10, v9, 0x7

    packed-switch v10, :pswitch_data_112

    :pswitch_82
    goto :goto_9d

    .line 1318
    :pswitch_83
    iget v10, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v11

    iget v12, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v2, Landroid/graphics/Rect;->right:I

    goto :goto_9d

    .line 1315
    :pswitch_93
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v2, Landroid/graphics/Rect;->left:I

    .line 1324
    .end local v9    # "absInsetEdge":I
    :cond_9d
    :goto_9d
    iget v9, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-eqz v9, :cond_aa

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_aa

    .line 1325
    invoke-direct {p0, v6, v2, v0}, Landroid/support/design/widget/CoordinatorLayout;->offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 1328
    :cond_aa
    const/4 v9, 0x2

    if-eq p1, v9, :cond_ba

    .line 1330
    invoke-virtual {p0, v6, v4}, Landroid/support/design/widget/CoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1331
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b7

    .line 1332
    goto :goto_f9

    .line 1334
    :cond_b7
    invoke-virtual {p0, v6, v3}, Landroid/support/design/widget/CoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1338
    :cond_ba
    add-int/lit8 v9, v5, 0x1

    .local v9, "j":I
    :goto_bc
    if-ge v9, v1, :cond_f9

    .line 1339
    iget-object v10, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1340
    .local v10, "checkChild":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1341
    .local v11, "checkLp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v12

    .line 1343
    .local v12, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v12, :cond_f6

    invoke-virtual {v12, p0, v10, v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_f6

    .line 1344
    if-nez p1, :cond_e4

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getChangedAfterNestedScroll()Z

    move-result v13

    if-eqz v13, :cond_e4

    .line 1347
    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    .line 1348
    goto :goto_f6

    .line 1352
    :cond_e4
    packed-switch p1, :pswitch_data_11c

    .line 1361
    invoke-virtual {v12, p0, v10, v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v13

    .local v13, "handled":Z
    goto :goto_f1

    .line 1356
    .end local v13    # "handled":Z
    :pswitch_ec
    invoke-virtual {v12, p0, v10, v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1357
    const/4 v13, 0x1

    .line 1358
    .restart local v13    # "handled":Z
    nop

    .line 1365
    :goto_f1
    if-ne p1, v8, :cond_f6

    .line 1368
    invoke-virtual {v11, v13}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setChangedAfterNestedScroll(Z)V

    .line 1338
    .end local v10    # "checkChild":Landroid/view/View;
    .end local v11    # "checkLp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v12    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v13    # "handled":Z
    :cond_f6
    :goto_f6
    add-int/lit8 v9, v9, 0x1

    goto :goto_bc

    .line 1281
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v9    # "j":I
    :cond_f9
    :goto_f9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_17

    .line 1374
    .end local v5    # "i":I
    :cond_fd
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1375
    invoke-static {v3}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1376
    invoke-static {v4}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1377
    return-void

    nop

    :sswitch_data_108
    .sparse-switch
        0x30 -> :sswitch_72
        0x50 -> :sswitch_62
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x3
        :pswitch_93
        :pswitch_82
        :pswitch_83
    .end packed-switch

    :pswitch_data_11c
    .packed-switch 0x2
        :pswitch_ec
    .end packed-switch
.end method

.method public onDetachedFromWindow()V
    .registers 4

    .line 256
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 258
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v1, :cond_18

    .line 259
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 260
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 262
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_18
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    if-eqz v1, :cond_1f

    .line 263
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 265
    :cond_1f
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 266
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 896
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 897
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_26

    .line 898
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 899
    .local v0, "inset":I
    :goto_16
    if-lez v0, :cond_26

    .line 900
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 901
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 904
    .end local v0    # "inset":I
    :cond_26
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 506
    .local v0, "action":I
    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 507
    invoke-direct {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 510
    :cond_a
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/support/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v2

    .line 512
    .local v2, "intercepted":Z
    if-eq v0, v1, :cond_14

    const/4 v3, 0x3

    if-ne v0, v3, :cond_17

    .line 513
    :cond_14
    invoke-direct {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 516
    :cond_17
    return v2
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 876
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 877
    .local v0, "layoutDirection":I
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 878
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_36

    .line 879
    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 880
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1e

    .line 882
    goto :goto_33

    .line 885
    :cond_1e
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 886
    .local v4, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v5

    .line 888
    .local v5, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v5, :cond_30

    invoke-virtual {v5, p0, v3, v0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_33

    .line 889
    :cond_30
    invoke-virtual {p0, v3, v0}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 878
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v5    # "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 892
    .end local v2    # "i":I
    :cond_36
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .line 860
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 861
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->checkAnchorChanged()Z

    move-result v1

    if-nez v1, :cond_24

    .line 865
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_16

    .line 866
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, p1, v1, p2}, Landroid/support/design/widget/CoordinatorLayout;->layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_23

    .line 867
    :cond_16
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v1, :cond_20

    .line 868
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    invoke-direct {p0, p1, v1, p2}, Landroid/support/design/widget/CoordinatorLayout;->layoutChildWithKeyline(Landroid/view/View;II)V

    goto :goto_23

    .line 870
    :cond_20
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->layoutChild(Landroid/view/View;I)V

    .line 872
    :goto_23
    return-void

    .line 862
    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onMeasure(II)V
    .registers 38
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 739
    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->prepareChildren()V

    .line 740
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->ensurePreDrawListener()V

    .line 742
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v8

    .line 743
    .local v8, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v9

    .line 744
    .local v9, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v10

    .line 745
    .local v10, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v11

    .line 746
    .local v11, "paddingBottom":I
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v12

    .line 747
    .local v12, "layoutDirection":I
    const/4 v0, 0x1

    if-ne v12, v0, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    move v14, v1

    .line 748
    .local v14, "isRtl":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 749
    .local v15, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 750
    .local v16, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 751
    .local v6, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 753
    .local v17, "heightSize":I
    add-int v18, v8, v10

    .line 754
    .local v18, "widthPadding":I
    add-int v19, v9, v11

    .line 755
    .local v19, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v1

    .line 756
    .local v1, "widthUsed":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v2

    .line 757
    .local v2, "heightUsed":I
    const/4 v3, 0x0

    .line 759
    .local v3, "childState":I
    iget-object v4, v7, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v4, :cond_4b

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    move/from16 v20, v0

    .line 761
    .local v20, "applyInsets":Z
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 762
    .local v5, "childCount":I
    const/4 v0, 0x0

    move v4, v0

    move/from16 v34, v3

    move v3, v1

    move/from16 v1, v34

    .local v1, "childState":I
    .local v3, "widthUsed":I
    .local v4, "i":I
    :goto_5b
    if-ge v4, v5, :cond_196

    .line 763
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/view/View;

    .line 764
    .local v21, "child":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v13, 0x8

    if-ne v0, v13, :cond_79

    .line 766
    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v27, v6

    const/16 v22, 0x0

    goto/16 :goto_18e

    .line 769
    :cond_79
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 771
    .local v13, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v0, 0x0

    .line 772
    .local v0, "keylineWidthUsed":I
    move/from16 v23, v0

    .end local v0    # "keylineWidthUsed":I
    .local v23, "keylineWidthUsed":I
    iget v0, v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v0, :cond_cd

    if-eqz v15, :cond_cd

    .line 773
    iget v0, v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    invoke-direct {v7, v0}, Landroid/support/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v0

    .line 774
    .local v0, "keylinePos":I
    move/from16 v24, v1

    .end local v1    # "childState":I
    .local v24, "childState":I
    iget v1, v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 775
    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v1

    .line 774
    invoke-static {v1, v12}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 777
    .local v1, "keylineGravity":I
    move/from16 v25, v2

    .end local v2    # "heightUsed":I
    .local v25, "heightUsed":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_a4

    if-eqz v14, :cond_a9

    :cond_a4
    const/4 v2, 0x5

    if-ne v1, v2, :cond_b6

    if-eqz v14, :cond_b6

    .line 779
    :cond_a9
    sub-int v2, v16, v10

    sub-int/2addr v2, v0

    move/from16 v27, v3

    const/4 v3, 0x0

    .end local v3    # "widthUsed":I
    .local v27, "widthUsed":I
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v23, v2

    .end local v23    # "keylineWidthUsed":I
    .local v2, "keylineWidthUsed":I
    goto :goto_d4

    .line 777
    .end local v2    # "keylineWidthUsed":I
    .end local v27    # "widthUsed":I
    .restart local v3    # "widthUsed":I
    .restart local v23    # "keylineWidthUsed":I
    :cond_b6
    move/from16 v27, v3

    .line 780
    .end local v3    # "widthUsed":I
    .restart local v27    # "widthUsed":I
    if-ne v1, v2, :cond_bc

    if-eqz v14, :cond_c1

    :cond_bc
    const/4 v2, 0x3

    if-ne v1, v2, :cond_cb

    if-eqz v14, :cond_cb

    .line 782
    :cond_c1
    sub-int v2, v0, v8

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v23, v2

    .end local v23    # "keylineWidthUsed":I
    .restart local v2    # "keylineWidthUsed":I
    goto :goto_d4

    .line 780
    .end local v2    # "keylineWidthUsed":I
    .restart local v23    # "keylineWidthUsed":I
    :cond_cb
    const/4 v3, 0x0

    goto :goto_d4

    .line 772
    .end local v0    # "keylinePos":I
    .end local v24    # "childState":I
    .end local v25    # "heightUsed":I
    .end local v27    # "widthUsed":I
    .local v1, "childState":I
    .local v2, "heightUsed":I
    .restart local v3    # "widthUsed":I
    :cond_cd
    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v27, v3

    const/4 v3, 0x0

    .line 786
    .end local v1    # "childState":I
    .end local v2    # "heightUsed":I
    .end local v3    # "widthUsed":I
    .restart local v24    # "childState":I
    .restart local v25    # "heightUsed":I
    .restart local v27    # "widthUsed":I
    :goto_d4
    move/from16 v0, p1

    .line 787
    .local v0, "childWidthMeasureSpec":I
    move/from16 v1, p2

    .line 788
    .local v1, "childHeightMeasureSpec":I
    if-eqz v20, :cond_10d

    invoke-static/range {v21 .. v21}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_10d

    .line 791
    iget-object v2, v7, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    iget-object v3, v7, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 792
    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 793
    .local v2, "horizInsets":I
    iget-object v3, v7, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    move/from16 v26, v0

    .end local v0    # "childWidthMeasureSpec":I
    .local v26, "childWidthMeasureSpec":I
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 794
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v0

    add-int/2addr v3, v0

    .line 796
    .local v3, "vertInsets":I
    sub-int v0, v16, v2

    invoke-static {v0, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 798
    .end local v26    # "childWidthMeasureSpec":I
    .restart local v0    # "childWidthMeasureSpec":I
    move/from16 v26, v0

    .end local v0    # "childWidthMeasureSpec":I
    .restart local v26    # "childWidthMeasureSpec":I
    sub-int v0, v17, v3

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move/from16 v28, v1

    goto :goto_111

    .line 788
    .end local v2    # "horizInsets":I
    .end local v3    # "vertInsets":I
    .end local v26    # "childWidthMeasureSpec":I
    .restart local v0    # "childWidthMeasureSpec":I
    :cond_10d
    move/from16 v26, v0

    .line 802
    .end local v0    # "childWidthMeasureSpec":I
    .restart local v26    # "childWidthMeasureSpec":I
    move/from16 v28, v1

    .end local v1    # "childHeightMeasureSpec":I
    .local v28, "childHeightMeasureSpec":I
    :goto_111
    invoke-virtual {v13}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v29

    .line 803
    .local v29, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v29, :cond_13e

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v3, v24

    .end local v24    # "childState":I
    .local v3, "childState":I
    move-object/from16 v1, p0

    move/from16 v31, v25

    .end local v25    # "heightUsed":I
    .local v31, "heightUsed":I
    move-object/from16 v2, v21

    move/from16 v33, v3

    move/from16 v32, v27

    const/16 v22, 0x0

    .end local v3    # "childState":I
    .end local v27    # "widthUsed":I
    .local v32, "widthUsed":I
    .local v33, "childState":I
    move/from16 v3, v26

    move/from16 v24, v4

    .end local v4    # "i":I
    .local v24, "i":I
    move/from16 v4, v23

    move/from16 v25, v5

    .end local v5    # "childCount":I
    .local v25, "childCount":I
    move/from16 v5, v28

    move/from16 v27, v6

    .end local v6    # "heightMode":I
    .local v27, "heightMode":I
    move/from16 v6, v30

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    if-nez v0, :cond_15a

    goto :goto_14c

    .end local v31    # "heightUsed":I
    .end local v32    # "widthUsed":I
    .end local v33    # "childState":I
    .restart local v4    # "i":I
    .restart local v5    # "childCount":I
    .restart local v6    # "heightMode":I
    .local v24, "childState":I
    .local v25, "heightUsed":I
    .local v27, "widthUsed":I
    :cond_13e
    move/from16 v33, v24

    move/from16 v31, v25

    move/from16 v32, v27

    const/16 v22, 0x0

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v27, v6

    .line 805
    .end local v4    # "i":I
    .end local v5    # "childCount":I
    .end local v6    # "heightMode":I
    .local v24, "i":I
    .local v25, "childCount":I
    .local v27, "heightMode":I
    .restart local v31    # "heightUsed":I
    .restart local v32    # "widthUsed":I
    .restart local v33    # "childState":I
    :goto_14c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v23

    move/from16 v4, v28

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 809
    :cond_15a
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v0, v18, v0

    iget v1, v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    move/from16 v1, v32

    .end local v32    # "widthUsed":I
    .local v1, "widthUsed":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 812
    .end local v1    # "widthUsed":I
    .local v0, "widthUsed":I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v1, v19, v1

    iget v2, v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    move/from16 v2, v31

    .end local v31    # "heightUsed":I
    .local v2, "heightUsed":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 814
    .end local v2    # "heightUsed":I
    .local v1, "heightUsed":I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    move/from16 v3, v33

    .end local v33    # "childState":I
    .restart local v3    # "childState":I
    invoke-static {v3, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v3, v0

    move/from16 v34, v2

    move v2, v1

    move/from16 v1, v34

    .line 762
    .end local v0    # "widthUsed":I
    .end local v13    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v21    # "child":Landroid/view/View;
    .end local v23    # "keylineWidthUsed":I
    .end local v26    # "childWidthMeasureSpec":I
    .end local v28    # "childHeightMeasureSpec":I
    .end local v29    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .local v1, "childState":I
    .restart local v2    # "heightUsed":I
    .local v3, "widthUsed":I
    :goto_18e
    add-int/lit8 v4, v24, 0x1

    move/from16 v5, v25

    move/from16 v6, v27

    .end local v24    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_5b

    .end local v25    # "childCount":I
    .end local v27    # "heightMode":I
    .restart local v5    # "childCount":I
    .restart local v6    # "heightMode":I
    :cond_196
    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v27, v6

    move/from16 v34, v3

    move v3, v1

    move/from16 v1, v34

    .line 817
    .end local v4    # "i":I
    .end local v5    # "childCount":I
    .end local v6    # "heightMode":I
    .local v1, "widthUsed":I
    .local v3, "childState":I
    .restart local v25    # "childCount":I
    .restart local v27    # "heightMode":I
    const/high16 v0, -0x1000000

    and-int/2addr v0, v3

    move/from16 v4, p1

    invoke-static {v1, v4, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 819
    .local v0, "width":I
    shl-int/lit8 v5, v3, 0x10

    move/from16 v6, p2

    invoke-static {v2, v6, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    .line 821
    .local v5, "height":I
    invoke-virtual {v7, v0, v5}, Landroid/support/design/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    .line 822
    return-void
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 733
    invoke-virtual/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 735
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 19
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 1896
    move-object v7, p0

    const/4 v0, 0x0

    .line 1898
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    .line 1899
    .local v8, "childCount":I
    const/4 v1, 0x0

    move v9, v0

    move v10, v1

    .end local v0    # "handled":Z
    .local v9, "handled":Z
    .local v10, "i":I
    :goto_9
    if-ge v10, v8, :cond_40

    .line 1900
    invoke-virtual {p0, v10}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1901
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_18

    .line 1903
    goto :goto_3d

    .line 1906
    :cond_18
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1907
    .local v12, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1908
    goto :goto_3d

    .line 1911
    :cond_27
    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v13

    .line 1912
    .local v13, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v13, :cond_3d

    .line 1913
    move-object v0, v13

    move-object v1, p0

    move-object v2, v11

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v0

    or-int/2addr v0, v9

    move v9, v0

    .line 1899
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v13    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_3d
    :goto_3d
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 1917
    .end local v10    # "i":I
    :cond_40
    if-eqz v9, :cond_46

    .line 1918
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1920
    :cond_46
    return v9
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 16
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 1925
    const/4 v0, 0x0

    .line 1927
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 1928
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_38

    .line 1929
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1930
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_15

    .line 1932
    goto :goto_35

    .line 1935
    :cond_15
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1936
    .local v10, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v3

    if-nez v3, :cond_24

    .line 1937
    goto :goto_35

    .line 1940
    :cond_24
    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    .line 1941
    .local v11, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v11, :cond_35

    .line 1942
    move-object v3, v11

    move-object v4, p0

    move-object v5, v9

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1928
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v11    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1945
    .end local v2    # "i":I
    :cond_38
    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 1850
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 1851
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 25
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
    .param p5, "type"    # I

    .line 1855
    move-object/from16 v8, p0

    const/4 v0, 0x0

    .line 1856
    .local v0, "xConsumed":I
    const/4 v1, 0x0

    .line 1857
    .local v1, "yConsumed":I
    const/4 v2, 0x0

    .line 1859
    .local v2, "accepted":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    .line 1860
    .local v9, "childCount":I
    const/4 v3, 0x0

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    .end local v0    # "xConsumed":I
    .end local v1    # "yConsumed":I
    .end local v2    # "accepted":Z
    .local v10, "xConsumed":I
    .local v11, "yConsumed":I
    .local v12, "accepted":Z
    .local v13, "i":I
    :goto_e
    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ge v13, v9, :cond_80

    .line 1861
    invoke-virtual {v8, v13}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1862
    .local v16, "view":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1f

    .line 1864
    goto :goto_7d

    .line 1867
    :cond_1f
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1868
    .local v7, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    move/from16 v6, p5

    invoke-virtual {v7, v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1869
    goto :goto_7d

    .line 1872
    :cond_2f
    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v17

    .line 1873
    .local v17, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v17, :cond_7b

    .line 1874
    iget-object v5, v8, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    aput v14, v5, v15

    aput v14, v5, v14

    .line 1875
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v18, v5

    move/from16 v5, p3

    move-object/from16 v6, v18

    move-object/from16 v18, v7

    .end local v7    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .local v18, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    .line 1877
    iget-object v0, v8, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    if-lez p2, :cond_5d

    aget v0, v0, v14

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_63

    :cond_5d
    aget v0, v0, v14

    .line 1878
    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_63
    nop

    .line 1879
    .end local v10    # "xConsumed":I
    .restart local v0    # "xConsumed":I
    iget-object v1, v8, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    if-lez p3, :cond_6f

    aget v1, v1, v15

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_75

    :cond_6f
    aget v1, v1, v15

    .line 1880
    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_75
    nop

    .line 1882
    .end local v11    # "yConsumed":I
    .restart local v1    # "yConsumed":I
    const/4 v2, 0x1

    move v10, v0

    move v11, v1

    move v12, v2

    .end local v12    # "accepted":Z
    .restart local v2    # "accepted":Z
    goto :goto_7d

    .line 1873
    .end local v0    # "xConsumed":I
    .end local v1    # "yConsumed":I
    .end local v2    # "accepted":Z
    .end local v18    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .restart local v7    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .restart local v10    # "xConsumed":I
    .restart local v11    # "yConsumed":I
    .restart local v12    # "accepted":Z
    :cond_7b
    move-object/from16 v18, v7

    .line 1860
    .end local v7    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v16    # "view":Landroid/view/View;
    .end local v17    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :goto_7d
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 1886
    .end local v13    # "i":I
    :cond_80
    aput v10, p4, v14

    .line 1887
    aput v11, p4, v15

    .line 1889
    if-eqz v12, :cond_89

    .line 1890
    invoke-virtual {v8, v15}, Landroid/support/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1892
    :cond_89
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 13
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 1813
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    .line 1815
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 24
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I

    .line 1820
    move-object/from16 v9, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    .line 1821
    .local v10, "childCount":I
    const/4 v0, 0x0

    .line 1823
    .local v0, "accepted":Z
    const/4 v1, 0x0

    move v11, v0

    move v12, v1

    .end local v0    # "accepted":Z
    .local v11, "accepted":Z
    .local v12, "i":I
    :goto_a
    if-ge v12, v10, :cond_4a

    .line 1824
    invoke-virtual {v9, v12}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1825
    .local v13, "view":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1b

    .line 1827
    move/from16 v15, p6

    goto :goto_47

    .line 1830
    :cond_1b
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1831
    .local v14, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    move/from16 v15, p6

    invoke-virtual {v14, v15}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1832
    goto :goto_47

    .line 1835
    :cond_2b
    invoke-virtual {v14}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v16

    .line 1836
    .local v16, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v16, :cond_47

    .line 1837
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V

    .line 1839
    const/4 v0, 0x1

    move v11, v0

    .line 1823
    .end local v13    # "view":Landroid/view/View;
    .end local v14    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v16    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_47
    :goto_47
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_4a
    move/from16 v15, p6

    .line 1843
    .end local v12    # "i":I
    if-eqz v11, :cond_52

    .line 1844
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/support/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1846
    :cond_52
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 1759
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/widget/CoordinatorLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 1760
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I
    .param p4, "type"    # I

    .line 1764
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p4

    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    move-object/from16 v10, p1

    move/from16 v11, p3

    invoke-virtual {v0, v10, v8, v11, v9}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 1765
    iput-object v8, v7, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1767
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v12

    .line 1768
    .local v12, "childCount":I
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_17
    if-ge v13, v12, :cond_44

    .line 1769
    invoke-virtual {v7, v13}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1770
    .local v14, "view":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1771
    .local v15, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v15, v9}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1772
    goto :goto_41

    .line 1775
    :cond_2b
    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v16

    .line 1776
    .local v16, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v16, :cond_41

    .line 1777
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V

    .line 1768
    .end local v14    # "view":Landroid/view/View;
    .end local v15    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v16    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_41
    :goto_41
    add-int/lit8 v13, v13, 0x1

    goto :goto_17

    .line 1781
    .end local v13    # "i":I
    :cond_44
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 11
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 3147
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    if-nez v0, :cond_8

    .line 3148
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3149
    return-void

    .line 3152
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    .line 3153
    .local v0, "ss":Landroid/support/design/widget/CoordinatorLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3155
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 3157
    .local v1, "behaviorStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_19
    if-ge v2, v3, :cond_3e

    .line 3158
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3159
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 3160
    .local v5, "childId":I
    invoke-virtual {p0, v4}, Landroid/support/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v6

    .line 3161
    .local v6, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v7

    .line 3163
    .local v7, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    const/4 v8, -0x1

    if-eq v5, v8, :cond_3b

    if-eqz v7, :cond_3b

    .line 3164
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    .line 3165
    .local v8, "savedState":Landroid/os/Parcelable;
    if-eqz v8, :cond_3b

    .line 3166
    invoke-virtual {v7, p0, v4, v8}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 3157
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childId":I
    .end local v6    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v7    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v8    # "savedState":Landroid/os/Parcelable;
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 3170
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_3e
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 10

    .line 3174
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3176
    .local v0, "ss":Landroid/support/design/widget/CoordinatorLayout$SavedState;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 3177
    .local v1, "behaviorStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_13
    if-ge v2, v3, :cond_38

    .line 3178
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3179
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 3180
    .local v5, "childId":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 3181
    .local v6, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v7

    .line 3183
    .local v7, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    const/4 v8, -0x1

    if-eq v5, v8, :cond_35

    if-eqz v7, :cond_35

    .line 3185
    invoke-virtual {v7, p0, v4}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v8

    .line 3186
    .local v8, "state":Landroid/os/Parcelable;
    if-eqz v8, :cond_35

    .line 3187
    invoke-virtual {v1, v5, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3177
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childId":I
    .end local v6    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v7    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v8    # "state":Landroid/os/Parcelable;
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3191
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_38
    iput-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 3192
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 1729
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/widget/CoordinatorLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 20
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .line 1734
    move/from16 v7, p4

    const/4 v0, 0x0

    .line 1736
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    .line 1737
    .local v8, "childCount":I
    const/4 v1, 0x0

    move v9, v0

    move v10, v1

    .end local v0    # "handled":Z
    .local v9, "handled":Z
    .local v10, "i":I
    :goto_a
    if-ge v10, v8, :cond_44

    .line 1738
    move-object v11, p0

    invoke-virtual {p0, v10}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1739
    .local v12, "view":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1a

    .line 1741
    goto :goto_41

    .line 1743
    :cond_1a
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1744
    .local v13, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v14

    .line 1745
    .local v14, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v14, :cond_3d

    .line 1746
    move-object v0, v14

    move-object v1, p0

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    .line 1748
    .local v0, "accepted":Z
    or-int v1, v9, v0

    .line 1749
    .end local v9    # "handled":Z
    .local v1, "handled":Z
    invoke-virtual {v13, v7, v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    .line 1750
    .end local v0    # "accepted":Z
    move v9, v1

    goto :goto_41

    .line 1751
    .end local v1    # "handled":Z
    .restart local v9    # "handled":Z
    :cond_3d
    const/4 v0, 0x0

    invoke-virtual {v13, v7, v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    .line 1737
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v14    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :goto_41
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_44
    move-object v11, p0

    .line 1754
    .end local v10    # "i":I
    return v9
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .line 1785
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1786
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 1790
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1792
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1793
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_2f

    .line 1794
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1795
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1796
    .local v3, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3, p2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1797
    goto :goto_2c

    .line 1800
    :cond_1d
    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1801
    .local v4, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_26

    .line 1802
    invoke-virtual {v4, p0, v2, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    .line 1804
    :cond_26
    invoke-virtual {v3, p2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetNestedScroll(I)V

    .line 1805
    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    .line 1793
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1807
    .end local v1    # "i":I
    :cond_2f
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1808
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 521
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 522
    .local v2, "handled":Z
    const/4 v3, 0x0

    .line 523
    .local v3, "cancelSuper":Z
    const/4 v4, 0x0

    .line 525
    .local v4, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 527
    .local v5, "action":I
    iget-object v6, v0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    const/4 v7, 0x1

    if-nez v6, :cond_17

    invoke-direct {v0, v1, v7}, Landroid/support/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v6

    move v3, v6

    if-eqz v6, :cond_2b

    .line 530
    :cond_17
    iget-object v6, v0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 531
    .local v6, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v8

    .line 532
    .local v8, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v8, :cond_2b

    .line 533
    iget-object v9, v0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v8, v0, v9, v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    .line 538
    .end local v6    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v8    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_2b
    iget-object v6, v0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v6, :cond_35

    .line 539
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    or-int/2addr v2, v6

    goto :goto_4c

    .line 540
    :cond_35
    if-eqz v3, :cond_4c

    .line 541
    if-nez v4, :cond_49

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 543
    .local v16, "now":J
    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v8, v16

    move-wide/from16 v10, v16

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    .line 546
    .end local v16    # "now":J
    :cond_49
    invoke-super {v0, v4}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 549
    :cond_4c
    :goto_4c
    nop

    .line 553
    if-eqz v4, :cond_52

    .line 554
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 557
    :cond_52
    if-eq v5, v7, :cond_57

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5b

    .line 558
    :cond_57
    const/4 v6, 0x0

    invoke-direct {v0, v6}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 561
    :cond_5b
    return v2
.end method

.method recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 923
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 924
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0, p2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setLastChildRect(Landroid/graphics/Rect;)V

    .line 925
    return-void
.end method

.method removePreDrawListener()V
    .registers 3

    .line 1599
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_11

    .line 1600
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v0, :cond_11

    .line 1601
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1602
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1605
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1606
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 3197
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 3198
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 3200
    .local v1, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v1, :cond_14

    .line 3201
    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRequestChildRectangleOnScreen(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3202
    const/4 v2, 0x1

    return v2

    .line 3205
    :cond_14
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v2

    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3
    .param p1, "disallowIntercept"    # Z

    .line 566
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 567
    if-eqz p1, :cond_10

    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    if-nez v0, :cond_10

    .line 568
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 571
    :cond_10
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .registers 2
    .param p1, "fitSystemWindows"    # Z

    .line 908
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 909
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->setupForInsets()V

    .line 910
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2
    .param p1, "onHierarchyChangeListener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 232
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 233
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 275
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_43

    .line 276
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 277
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 279
    :cond_a
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_10
    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 280
    if-eqz v1, :cond_40

    .line 281
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 282
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 284
    :cond_23
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 285
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 284
    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 286
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 287
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 289
    :cond_40
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 291
    :cond_43
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 353
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 354
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 342
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .line 327
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 329
    const/4 v0, 0x0

    if-nez p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 330
    .local v1, "visible":Z
    :goto_9
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v1, :cond_18

    .line 331
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 333
    :cond_18
    return-void
.end method

.method final setWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 5
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .line 357
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v0, p1}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 358
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 359
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    if-lez v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    iput-boolean v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 360
    if-nez v2, :cond_22

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    .line 363
    invoke-direct {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->dispatchApplyWindowInsetsToBehaviors(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    .line 364
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->requestLayout()V

    .line 366
    :cond_2d
    return-object p1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 322
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
