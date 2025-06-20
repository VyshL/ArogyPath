.class Lcom/example/healthcare/CartBuyMedicineActivity$1;
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

    .line 81
    iput-object p1, p0, Lcom/example/healthcare/CartBuyMedicineActivity$1;->this$0:Lcom/example/healthcare/CartBuyMedicineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/example/healthcare/CartBuyMedicineActivity$1;->this$0:Lcom/example/healthcare/CartBuyMedicineActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/healthcare/CartBuyMedicineActivity$1;->this$0:Lcom/example/healthcare/CartBuyMedicineActivity;

    const-class v3, Lcom/example/healthcare/BuyMedicineActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/example/healthcare/CartBuyMedicineActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    return-void
.end method
