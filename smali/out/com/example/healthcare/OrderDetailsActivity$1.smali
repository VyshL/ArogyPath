.class Lcom/example/healthcare/OrderDetailsActivity$1;
.super Ljava/lang/Object;
.source "OrderDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/healthcare/OrderDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/healthcare/OrderDetailsActivity;


# direct methods
.method constructor <init>(Lcom/example/healthcare/OrderDetailsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/healthcare/OrderDetailsActivity;

    .line 33
    iput-object p1, p0, Lcom/example/healthcare/OrderDetailsActivity$1;->this$0:Lcom/example/healthcare/OrderDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/example/healthcare/OrderDetailsActivity$1;->this$0:Lcom/example/healthcare/OrderDetailsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/healthcare/OrderDetailsActivity$1;->this$0:Lcom/example/healthcare/OrderDetailsActivity;

    const-class v3, Lcom/example/healthcare/HomeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/example/healthcare/OrderDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method
