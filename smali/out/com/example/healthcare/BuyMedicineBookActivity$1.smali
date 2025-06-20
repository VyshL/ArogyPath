.class Lcom/example/healthcare/BuyMedicineBookActivity$1;
.super Ljava/lang/Object;
.source "BuyMedicineBookActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/healthcare/BuyMedicineBookActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/healthcare/BuyMedicineBookActivity;

.field final synthetic val$date:Ljava/lang/String;

.field final synthetic val$price:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/healthcare/BuyMedicineBookActivity;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/example/healthcare/BuyMedicineBookActivity;

    .line 33
    iput-object p1, p0, Lcom/example/healthcare/BuyMedicineBookActivity$1;->this$0:Lcom/example/healthcare/BuyMedicineBookActivity;

    iput-object p2, p0, Lcom/example/healthcare/BuyMedicineBookActivity$1;->val$date:Ljava/lang/String;

    iput-object p3, p0, Lcom/example/healthcare/BuyMedicineBookActivity$1;->val$price:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/example/healthcare/BuyMedicineBookActivity$1;->this$0:Lcom/example/healthcare/BuyMedicineBookActivity;

    const-string v1, "shared_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/example/healthcare/BuyMedicineBookActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "username"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "username":Ljava/lang/String;
    new-instance v2, Lcom/example/healthcare/Database;

    iget-object v3, p0, Lcom/example/healthcare/BuyMedicineBookActivity$1;->this$0:Lcom/example/healthcare/BuyMedicineBookActivity;

    invoke-virtual {v3}, Lcom/example/healthcare/BuyMedicineBookActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "healthcare"

    const/4 v5, 0x0

    const/4 v12, 0x1

    invoke-direct {v2, v3, v4, v5, v12}, Lcom/example/healthcare/Database;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    move-object v13, v2

    .line 40
    .local v13, "db":Lcom/example/healthcare/Database;
    iget-object v2, p0, Lcom/example/healthcare/BuyMedicineBookActivity$1;->this$0:Lcom/example/healthcare/BuyMedicineBookActivity;

    iget-object v2, v2, Lcom/example/healthcare/BuyMedicineBookActivity;->edname:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/example/healthcare/BuyMedicineBookActivity$1;->this$0:Lcom/example/healthcare/BuyMedicineBookActivity;

    iget-object v2, v2, Lcom/example/healthcare/BuyMedicineBookActivity;->edaddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/example/healthcare/BuyMedicineBookActivity$1;->this$0:Lcom/example/healthcare/BuyMedicineBookActivity;

    iget-object v2, v2, Lcom/example/healthcare/BuyMedicineBookActivity;->edcontact:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/example/healthcare/BuyMedicineBookActivity$1;->this$0:Lcom/example/healthcare/BuyMedicineBookActivity;

    iget-object v2, v2, Lcom/example/healthcare/BuyMedicineBookActivity;->edpincode:Landroid/widget/EditText;

    .line 41
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v2, p0, Lcom/example/healthcare/BuyMedicineBookActivity$1;->val$date:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/example/healthcare/BuyMedicineBookActivity$1;->val$price:[Ljava/lang/String;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 40
    const-string v9, ""

    const-string v11, "medicine"

    move-object v2, v13

    move-object v3, v1

    invoke-virtual/range {v2 .. v11}, Lcom/example/healthcare/Database;->addOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    .line 42
    const-string v2, "medicine"

    invoke-virtual {v13, v1, v2}, Lcom/example/healthcare/Database;->removeCart(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/example/healthcare/BuyMedicineBookActivity$1;->this$0:Lcom/example/healthcare/BuyMedicineBookActivity;

    invoke-virtual {v2}, Lcom/example/healthcare/BuyMedicineBookActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Your Booking is Done Successfully."

    invoke-static {v2, v3, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 44
    iget-object v2, p0, Lcom/example/healthcare/BuyMedicineBookActivity$1;->this$0:Lcom/example/healthcare/BuyMedicineBookActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/example/healthcare/BuyMedicineBookActivity$1;->this$0:Lcom/example/healthcare/BuyMedicineBookActivity;

    const-class v5, Lcom/example/healthcare/HomeActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/example/healthcare/BuyMedicineBookActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method
