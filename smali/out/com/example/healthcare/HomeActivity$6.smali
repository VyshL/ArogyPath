.class Lcom/example/healthcare/HomeActivity$6;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/healthcare/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/healthcare/HomeActivity;


# direct methods
.method constructor <init>(Lcom/example/healthcare/HomeActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/healthcare/HomeActivity;

    .line 63
    iput-object p1, p0, Lcom/example/healthcare/HomeActivity$6;->this$0:Lcom/example/healthcare/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/example/healthcare/HomeActivity$6;->this$0:Lcom/example/healthcare/HomeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/healthcare/HomeActivity$6;->this$0:Lcom/example/healthcare/HomeActivity;

    const-class v3, Lcom/example/healthcare/HealthArticlesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/example/healthcare/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method
