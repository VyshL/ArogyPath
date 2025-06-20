.class Lcom/example/healthcare/HealthArticlesDetailsActivity$1;
.super Ljava/lang/Object;
.source "HealthArticlesDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/healthcare/HealthArticlesDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/healthcare/HealthArticlesDetailsActivity;


# direct methods
.method constructor <init>(Lcom/example/healthcare/HealthArticlesDetailsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/healthcare/HealthArticlesDetailsActivity;

    .line 35
    iput-object p1, p0, Lcom/example/healthcare/HealthArticlesDetailsActivity$1;->this$0:Lcom/example/healthcare/HealthArticlesDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/example/healthcare/HealthArticlesDetailsActivity$1;->this$0:Lcom/example/healthcare/HealthArticlesDetailsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/healthcare/HealthArticlesDetailsActivity$1;->this$0:Lcom/example/healthcare/HealthArticlesDetailsActivity;

    const-class v3, Lcom/example/healthcare/HealthArticlesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/example/healthcare/HealthArticlesDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 39
    return-void
.end method
