.class Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "NestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2027
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2084
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2085
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    .line 2086
    .local v0, "nsvHost":Landroid/support/v4/widget/NestedScrollView;
    const-class v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2087
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 2088
    .local v1, "scrollable":Z
    :goto_18
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2089
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 2090
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 2091
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    invoke-static {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 2092
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v2

    invoke-static {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 2093
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 6
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2065
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2066
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    .line 2067
    .local v0, "nsvHost":Landroid/support/v4/widget/NestedScrollView;
    const-class v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2068
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2069
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    .line 2070
    .local v1, "scrollRange":I
    if-lez v1, :cond_35

    .line 2071
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2072
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-lez v2, :cond_2a

    .line 2073
    const/16 v2, 0x2000

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2075
    :cond_2a
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-ge v2, v1, :cond_35

    .line 2076
    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2080
    .end local v1    # "scrollRange":I
    :cond_35
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 10
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 2030
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2031
    return v1

    .line 2033
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    .line 2034
    .local v0, "nsvHost":Landroid/support/v4/widget/NestedScrollView;
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_13

    .line 2035
    return v3

    .line 2037
    :cond_13
    sparse-switch p2, :sswitch_data_60

    .line 2060
    return v3

    .line 2050
    :sswitch_17
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    .line 2051
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    .line 2052
    .local v2, "viewportHeight":I
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2053
    .local v4, "targetScrollY":I
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    if-eq v4, v5, :cond_38

    .line 2054
    invoke-virtual {v0, v3, v4}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 2055
    return v1

    .line 2058
    .end local v2    # "viewportHeight":I
    .end local v4    # "targetScrollY":I
    :cond_38
    return v3

    .line 2039
    :sswitch_39
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    .line 2040
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    .line 2041
    .restart local v2    # "viewportHeight":I
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    add-int/2addr v4, v2

    .line 2042
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    .line 2041
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2043
    .restart local v4    # "targetScrollY":I
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    if-eq v4, v5, :cond_5e

    .line 2044
    invoke-virtual {v0, v3, v4}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 2045
    return v1

    .line 2048
    .end local v2    # "viewportHeight":I
    .end local v4    # "targetScrollY":I
    :cond_5e
    return v3

    nop

    :sswitch_data_60
    .sparse-switch
        0x1000 -> :sswitch_39
        0x2000 -> :sswitch_17
    .end sparse-switch
.end method
