.class Lcom/example/healthcare/BuyMedicineActivity$3;
.super Ljava/lang/Object;
.source "BuyMedicineActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/healthcare/BuyMedicineActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/healthcare/BuyMedicineActivity;


# direct methods
.method constructor <init>(Lcom/example/healthcare/BuyMedicineActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/healthcare/BuyMedicineActivity;

    .line 92
    iput-object p1, p0, Lcom/example/healthcare/BuyMedicineActivity$3;->this$0:Lcom/example/healthcare/BuyMedicineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 95
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineActivity$3;->this$0:Lcom/example/healthcare/BuyMedicineActivity;

    const-class v2, Lcom/example/healthcare/BuyMedicineDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineActivity$3;->this$0:Lcom/example/healthcare/BuyMedicineActivity;

    invoke-static {v1}, Lcom/example/healthcare/BuyMedicineActivity;->access$000(Lcom/example/healthcare/BuyMedicineActivity;)[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "text1"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineActivity$3;->this$0:Lcom/example/healthcare/BuyMedicineActivity;

    invoke-static {v1}, Lcom/example/healthcare/BuyMedicineActivity;->access$100(Lcom/example/healthcare/BuyMedicineActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    const-string v2, "text2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineActivity$3;->this$0:Lcom/example/healthcare/BuyMedicineActivity;

    invoke-static {v1}, Lcom/example/healthcare/BuyMedicineActivity;->access$000(Lcom/example/healthcare/BuyMedicineActivity;)[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const-string v2, "text3"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineActivity$3;->this$0:Lcom/example/healthcare/BuyMedicineActivity;

    invoke-virtual {v1, v0}, Lcom/example/healthcare/BuyMedicineActivity;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method
