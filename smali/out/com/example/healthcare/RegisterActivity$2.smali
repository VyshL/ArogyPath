.class Lcom/example/healthcare/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/healthcare/RegisterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/healthcare/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/example/healthcare/RegisterActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/healthcare/RegisterActivity;

    .line 38
    iput-object p1, p0, Lcom/example/healthcare/RegisterActivity$2;->this$0:Lcom/example/healthcare/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/example/healthcare/RegisterActivity$2;->this$0:Lcom/example/healthcare/RegisterActivity;

    iget-object v0, v0, Lcom/example/healthcare/RegisterActivity;->edUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "username":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/healthcare/RegisterActivity$2;->this$0:Lcom/example/healthcare/RegisterActivity;

    iget-object v1, v1, Lcom/example/healthcare/RegisterActivity;->edEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "email":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/healthcare/RegisterActivity$2;->this$0:Lcom/example/healthcare/RegisterActivity;

    iget-object v2, v2, Lcom/example/healthcare/RegisterActivity;->edPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "password":Ljava/lang/String;
    iget-object v3, p0, Lcom/example/healthcare/RegisterActivity$2;->this$0:Lcom/example/healthcare/RegisterActivity;

    iget-object v3, v3, Lcom/example/healthcare/RegisterActivity;->edConfirm:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "confirm":Ljava/lang/String;
    new-instance v4, Lcom/example/healthcare/Database;

    iget-object v5, p0, Lcom/example/healthcare/RegisterActivity$2;->this$0:Lcom/example/healthcare/RegisterActivity;

    invoke-virtual {v5}, Lcom/example/healthcare/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "healthcare"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/example/healthcare/Database;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 46
    .local v4, "db":Lcom/example/healthcare/Database;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_9a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4d

    goto :goto_9a

    .line 51
    :cond_4d
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8a

    .line 52
    invoke-static {v2}, Lcom/example/healthcare/RegisterActivity;->isValid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 53
    invoke-virtual {v4, v0, v1, v2}, Lcom/example/healthcare/Database;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v5, p0, Lcom/example/healthcare/RegisterActivity$2;->this$0:Lcom/example/healthcare/RegisterActivity;

    invoke-virtual {v5}, Lcom/example/healthcare/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "Record Inserted"

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 55
    iget-object v5, p0, Lcom/example/healthcare/RegisterActivity$2;->this$0:Lcom/example/healthcare/RegisterActivity;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/example/healthcare/RegisterActivity$2;->this$0:Lcom/example/healthcare/RegisterActivity;

    const-class v8, Lcom/example/healthcare/LoginActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/example/healthcare/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a9

    .line 58
    :cond_7a
    iget-object v5, p0, Lcom/example/healthcare/RegisterActivity$2;->this$0:Lcom/example/healthcare/RegisterActivity;

    invoke-virtual {v5}, Lcom/example/healthcare/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "Password must contain at least 8 characters, having letter, digit and Special symbol"

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_a9

    .line 62
    :cond_8a
    iget-object v5, p0, Lcom/example/healthcare/RegisterActivity$2;->this$0:Lcom/example/healthcare/RegisterActivity;

    invoke-virtual {v5}, Lcom/example/healthcare/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "Password and Confirm Password didn\'t match"

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_a9

    .line 47
    :cond_9a
    :goto_9a
    iget-object v5, p0, Lcom/example/healthcare/RegisterActivity$2;->this$0:Lcom/example/healthcare/RegisterActivity;

    invoke-virtual {v5}, Lcom/example/healthcare/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "Please Fill All Details"

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 65
    :goto_a9
    return-void
.end method
