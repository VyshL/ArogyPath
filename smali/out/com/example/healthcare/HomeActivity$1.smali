.class Lcom/example/healthcare/HomeActivity$1;
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

.field final synthetic val$sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/example/healthcare/HomeActivity;Landroid/content/SharedPreferences;)V
    .registers 3
    .param p1, "this$0"    # Lcom/example/healthcare/HomeActivity;

    .line 24
    iput-object p1, p0, Lcom/example/healthcare/HomeActivity$1;->this$0:Lcom/example/healthcare/HomeActivity;

    iput-object p2, p0, Lcom/example/healthcare/HomeActivity$1;->val$sharedpreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/example/healthcare/HomeActivity$1;->val$sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 28
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 30
    iget-object v1, p0, Lcom/example/healthcare/HomeActivity$1;->this$0:Lcom/example/healthcare/HomeActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/example/healthcare/HomeActivity$1;->this$0:Lcom/example/healthcare/HomeActivity;

    const-class v4, Lcom/example/healthcare/LoginActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/example/healthcare/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    return-void
.end method
