.class Lcom/example/healthcare/CartLabActivity$2;
.super Ljava/lang/Object;
.source "CartLabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/healthcare/CartLabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/healthcare/CartLabActivity;


# direct methods
.method constructor <init>(Lcom/example/healthcare/CartLabActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/healthcare/CartLabActivity;

    .line 90
    iput-object p1, p0, Lcom/example/healthcare/CartLabActivity$2;->this$0:Lcom/example/healthcare/CartLabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 93
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/healthcare/CartLabActivity$2;->this$0:Lcom/example/healthcare/CartLabActivity;

    const-class v3, Lcom/example/healthcare/LabTestBookActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 94
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/healthcare/CartLabActivity$2;->this$0:Lcom/example/healthcare/CartLabActivity;

    iget-object v1, v1, Lcom/example/healthcare/CartLabActivity;->tvTotal:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "price"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/example/healthcare/CartLabActivity$2;->this$0:Lcom/example/healthcare/CartLabActivity;

    iget-object v1, v1, Lcom/example/healthcare/CartLabActivity;->dateButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/example/healthcare/CartLabActivity$2;->this$0:Lcom/example/healthcare/CartLabActivity;

    iget-object v1, v1, Lcom/example/healthcare/CartLabActivity;->timeButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/example/healthcare/CartLabActivity$2;->this$0:Lcom/example/healthcare/CartLabActivity;

    invoke-virtual {v1, v0}, Lcom/example/healthcare/CartLabActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method
