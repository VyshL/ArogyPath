.class public Landroid/support/v7/widget/ActionMenuView$LayoutParams;
.super Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellsUsed:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public expandable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field expanded:Z

.field public extraPixels:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public isOverflowButton:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public preventEdgeOffset:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 846
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 847
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 848
    return-void
.end method

.method constructor <init>(IIZ)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOverflowButton"    # Z

    .line 851
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 852
    iput-boolean p3, p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 853
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 833
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 834
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/ActionMenuView$LayoutParams;)V
    .registers 3
    .param p1, "other"    # Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 841
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    iget-boolean v0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 843
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .line 837
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    return-void
.end method
