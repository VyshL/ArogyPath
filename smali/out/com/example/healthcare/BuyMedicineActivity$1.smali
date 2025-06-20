.class Lcom/example/healthcare/BuyMedicineActivity$1;
.super Ljava/lang/Object;
.source "BuyMedicineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 62
    iput-object p1, p0, Lcom/example/healthcare/BuyMedicineActivity$1;->this$0:Lcom/example/healthcare/BuyMedicineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/example/healthcare/BuyMedicineActivity$1;->this$0:Lcom/example/healthcare/BuyMedicineActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/healthcare/BuyMedicineActivity$1;->this$0:Lcom/example/healthcare/BuyMedicineActivity;

    const-class v3, Lcom/example/healthcare/HomeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/example/healthcare/BuyMedicineActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
