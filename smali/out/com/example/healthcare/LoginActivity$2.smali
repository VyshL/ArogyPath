.class Lcom/example/healthcare/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/healthcare/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/healthcare/LoginActivity;


# direct methods
.method constructor <init>(Lcom/example/healthcare/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/healthcare/LoginActivity;

    .line 56
    iput-object p1, p0, Lcom/example/healthcare/LoginActivity$2;->this$0:Lcom/example/healthcare/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/example/healthcare/LoginActivity$2;->this$0:Lcom/example/healthcare/LoginActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/healthcare/LoginActivity$2;->this$0:Lcom/example/healthcare/LoginActivity;

    const-class v3, Lcom/example/healthcare/RegisterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/example/healthcare/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method
