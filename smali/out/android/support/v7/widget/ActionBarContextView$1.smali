.class Landroid/support/v7/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActionBarContextView;

.field final synthetic val$mode:Landroid/support/v7/view/ActionMode;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/v7/widget/ActionBarContextView;

    .line 170
    iput-object p1, p0, Landroid/support/v7/widget/ActionBarContextView$1;->this$0:Landroid/support/v7/widget/ActionBarContextView;

    iput-object p2, p0, Landroid/support/v7/widget/ActionBarContextView$1;->val$mode:Landroid/support/v7/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 173
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContextView$1;->val$mode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 174
    return-void
.end method
