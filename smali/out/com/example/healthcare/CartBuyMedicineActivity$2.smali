.class Lcom/example/healthcare/CartBuyMedicineActivity$2;
.super Ljava/lang/Object;
.source "CartBuyMedicineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/healthcare/CartBuyMedicineActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/healthcare/CartBuyMedicineActivity;


# direct methods
.method constructor <init>(Lcom/example/healthcare/CartBuyMedicineActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/healthcare/CartBuyMedicineActivity;

    .line 89
    iput-object p1, p0, Lcom/example/healthcare/CartBuyMedicineActivity$2;->this$0:Lcom/example/healthcare/CartBuyMedicineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 92
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/healthcare/CartBuyMedicineActivity$2;->this$0:Lcom/example/healthcare/CartBuyMedicineActivity;

    const-class v3, Lcom/example/healthcare/BuyMedicineBookActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 93
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/healthcare/CartBuyMedicineActivity$2;->this$0:Lcom/example/healthcare/CartBuyMedicineActivity;

    iget-object v1, v1, Lcom/example/healthcare/CartBuyMedicineActivity;->tvTotal:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "price"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/example/healthcare/CartBuyMedicineActivity$2;->this$0:Lcom/example/healthcare/CartBuyMedicineActivity;

    iget-object v1, v1, Lcom/example/healthcare/CartBuyMedicineActivity;->dateButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/example/healthcare/CartBuyMedicineActivity$2;->this$0:Lcom/example/healthcare/CartBuyMedicineActivity;

    invoke-virtual {v1, v0}, Lcom/example/healthcare/CartBuyMedicineActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method
