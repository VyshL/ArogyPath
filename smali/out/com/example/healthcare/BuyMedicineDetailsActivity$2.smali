.class Lcom/example/healthcare/BuyMedicineDetailsActivity$2;
.super Ljava/lang/Object;
.source "BuyMedicineDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/healthcare/BuyMedicineDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/healthcare/BuyMedicineDetailsActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/example/healthcare/BuyMedicineDetailsActivity;Landroid/content/Intent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/example/healthcare/BuyMedicineDetailsActivity;

    .line 43
    iput-object p1, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity$2;->this$0:Lcom/example/healthcare/BuyMedicineDetailsActivity;

    iput-object p2, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity$2;->this$0:Lcom/example/healthcare/BuyMedicineDetailsActivity;

    const-string v1, "shared_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/example/healthcare/BuyMedicineDetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "username"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "username":Ljava/lang/String;
    iget-object v3, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity$2;->this$0:Lcom/example/healthcare/BuyMedicineDetailsActivity;

    iget-object v3, v3, Lcom/example/healthcare/BuyMedicineDetailsActivity;->tvPackageName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "product":Ljava/lang/String;
    iget-object v4, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity$2;->val$intent:Landroid/content/Intent;

    const-string v5, "text3"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 51
    .local v4, "price":F
    new-instance v5, Lcom/example/healthcare/Database;

    iget-object v6, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity$2;->this$0:Lcom/example/healthcare/BuyMedicineDetailsActivity;

    invoke-virtual {v6}, Lcom/example/healthcare/BuyMedicineDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "healthcare"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/example/healthcare/Database;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 52
    .local v5, "db":Lcom/example/healthcare/Database;
    invoke-virtual {v5, v1, v3}, Lcom/example/healthcare/Database;->checkCart(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_56

    .line 53
    iget-object v6, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity$2;->this$0:Lcom/example/healthcare/BuyMedicineDetailsActivity;

    invoke-virtual {v6}, Lcom/example/healthcare/BuyMedicineDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "Product Already Added..."

    invoke-static {v6, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_78

    .line 55
    :cond_56
    const-string v6, "medicine"

    invoke-virtual {v5, v1, v3, v4, v6}, Lcom/example/healthcare/Database;->addCart(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    .line 56
    iget-object v6, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity$2;->this$0:Lcom/example/healthcare/BuyMedicineDetailsActivity;

    invoke-virtual {v6}, Lcom/example/healthcare/BuyMedicineDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "Record Inserted to Cart"

    invoke-static {v6, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 57
    iget-object v2, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity$2;->this$0:Lcom/example/healthcare/BuyMedicineDetailsActivity;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity$2;->this$0:Lcom/example/healthcare/BuyMedicineDetailsActivity;

    const-class v8, Lcom/example/healthcare/BuyMedicineActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v6}, Lcom/example/healthcare/BuyMedicineDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    :goto_78
    return-void
.end method
