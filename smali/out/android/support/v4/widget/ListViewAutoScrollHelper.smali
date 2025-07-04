.class public Landroid/support/v4/widget/ListViewAutoScrollHelper;
.super Landroid/support/v4/widget/AutoScrollHelper;
.source "ListViewAutoScrollHelper.java"


# instance fields
.field private final mTarget:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .registers 2
    .param p1, "target"    # Landroid/widget/ListView;

    .line 33
    invoke-direct {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    .line 35
    iput-object p1, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    .line 36
    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .registers 3
    .param p1, "direction"    # I

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .registers 11
    .param p1, "direction"    # I

    .line 51
    iget-object v0, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    .line 52
    .local v0, "target":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 53
    .local v1, "itemCount":I
    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 54
    return v2

    .line 57
    :cond_a
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 58
    .local v3, "childCount":I
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    .line 59
    .local v4, "firstPosition":I
    add-int v5, v4, v3

    .line 61
    .local v5, "lastPosition":I
    if-lez p1, :cond_2a

    .line 63
    if-lt v5, v1, :cond_39

    .line 64
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 65
    .local v6, "lastView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_29

    .line 66
    return v2

    .line 68
    .end local v6    # "lastView":Landroid/view/View;
    :cond_29
    goto :goto_39

    .line 69
    :cond_2a
    if-gez p1, :cond_3b

    .line 71
    if-gtz v4, :cond_39

    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 73
    .local v6, "firstView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    if-ltz v7, :cond_39

    .line 74
    return v2

    .line 83
    .end local v6    # "firstView":Landroid/view/View;
    :cond_39
    :goto_39
    const/4 v2, 0x1

    return v2

    .line 80
    :cond_3b
    return v2
.end method

.method public scrollTargetBy(II)V
    .registers 4
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .line 40
    iget-object v0, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    invoke-static {v0, p2}, Landroid/support/v4/widget/ListViewCompat;->scrollListBy(Landroid/widget/ListView;I)V

    .line 41
    return-void
.end method
