.class Lcom/example/healthcare/LoginActivity$1;
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

    .line 29
    iput-object p1, p0, Lcom/example/healthcare/LoginActivity$1;->this$0:Lcom/example/healthcare/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/example/healthcare/LoginActivity$1;->this$0:Lcom/example/healthcare/LoginActivity;

    iget-object v0, v0, Lcom/example/healthcare/LoginActivity;->edUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "username":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/healthcare/LoginActivity$1;->this$0:Lcom/example/healthcare/LoginActivity;

    iget-object v1, v1, Lcom/example/healthcare/LoginActivity;->edPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "password":Ljava/lang/String;
    new-instance v2, Lcom/example/healthcare/Database;

    iget-object v3, p0, Lcom/example/healthcare/LoginActivity$1;->this$0:Lcom/example/healthcare/LoginActivity;

    invoke-virtual {v3}, Lcom/example/healthcare/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "healthcare"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/example/healthcare/Database;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    .local v2, "db":Lcom/example/healthcare/Database;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_35

    goto :goto_7d

    .line 40
    :cond_35
    invoke-virtual {v2, v0, v1}, Lcom/example/healthcare/Database;->login(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_6d

    .line 41
    iget-object v3, p0, Lcom/example/healthcare/LoginActivity$1;->this$0:Lcom/example/healthcare/LoginActivity;

    invoke-virtual {v3}, Lcom/example/healthcare/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "Login Success"

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 42
    iget-object v3, p0, Lcom/example/healthcare/LoginActivity$1;->this$0:Lcom/example/healthcare/LoginActivity;

    const-string v5, "shared_prefs"

    invoke-virtual {v3, v5, v4}, Lcom/example/healthcare/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 43
    .local v3, "sharedpreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 44
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "username"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    iget-object v5, p0, Lcom/example/healthcare/LoginActivity$1;->this$0:Lcom/example/healthcare/LoginActivity;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/example/healthcare/LoginActivity$1;->this$0:Lcom/example/healthcare/LoginActivity;

    const-class v8, Lcom/example/healthcare/HomeActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/example/healthcare/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    .end local v3    # "sharedpreferences":Landroid/content/SharedPreferences;
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_8c

    .line 49
    :cond_6d
    iget-object v3, p0, Lcom/example/healthcare/LoginActivity$1;->this$0:Lcom/example/healthcare/LoginActivity;

    invoke-virtual {v3}, Lcom/example/healthcare/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "Invalid Username and Password"

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_8c

    .line 37
    :cond_7d
    :goto_7d
    iget-object v3, p0, Lcom/example/healthcare/LoginActivity$1;->this$0:Lcom/example/healthcare/LoginActivity;

    invoke-virtual {v3}, Lcom/example/healthcare/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "Please Fill All Details"

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 53
    :goto_8c
    return-void
.end method
