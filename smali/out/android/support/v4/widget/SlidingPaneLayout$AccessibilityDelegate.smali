.class Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field private final mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v4/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .line 1513
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 1514
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method private copyNodeInfoNoChildren(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5
    .param p1, "dest"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .param p2, "src"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1572
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->mTmpRect:Landroid/graphics/Rect;

    .line 1574
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 1575
    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1577
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1578
    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1580
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isVisibleToUser()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 1581
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1582
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1583
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1585
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 1586
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 1587
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 1588
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 1589
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isAccessibilityFocused()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 1590
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isSelected()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 1591
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    .line 1593
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1595
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getMovementGranularities()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setMovementGranularities(I)V

    .line 1596
    return-void
.end method


# virtual methods
.method public filter(Landroid/view/View;)Z
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1562
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1547
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1549
    const-class v0, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1550
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 9
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1518
    invoke-static {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 1519
    .local v0, "superNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-super {p0, p1, v0}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1520
    invoke-direct {p0, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->copyNodeInfoNoChildren(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1521
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 1523
    const-class v1, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1524
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;)V

    .line 1526
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    .line 1527
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_27

    .line 1528
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 1533
    :cond_27
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v2

    .line 1534
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    if-ge v3, v2, :cond_4c

    .line 1535
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v4, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1536
    .local v4, "child":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->filter(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_49

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_49

    .line 1538
    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1540
    invoke-virtual {p2, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;)V

    .line 1534
    .end local v4    # "child":Landroid/view/View;
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 1543
    .end local v3    # "i":I
    :cond_4c
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1555
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->filter(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1556
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 1558
    :cond_b
    const/4 v0, 0x0

    return v0
.end method
