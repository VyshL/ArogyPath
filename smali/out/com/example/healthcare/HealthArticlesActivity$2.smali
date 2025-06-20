.class Lcom/example/healthcare/HealthArticlesActivity$2;
.super Ljava/lang/Object;
.source "HealthArticlesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/healthcare/HealthArticlesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/healthcare/HealthArticlesActivity;


# direct methods
.method constructor <init>(Lcom/example/healthcare/HealthArticlesActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/healthcare/HealthArticlesActivity;

    .line 65
    iput-object p1, p0, Lcom/example/healthcare/HealthArticlesActivity$2;->this$0:Lcom/example/healthcare/HealthArticlesActivity;

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

    .line 68
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/healthcare/HealthArticlesActivity$2;->this$0:Lcom/example/healthcare/HealthArticlesActivity;

    const-class v2, Lcom/example/healthcare/HealthArticlesDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/healthcare/HealthArticlesActivity$2;->this$0:Lcom/example/healthcare/HealthArticlesActivity;

    invoke-static {v1}, Lcom/example/healthcare/HealthArticlesActivity;->access$000(Lcom/example/healthcare/HealthArticlesActivity;)[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "Text1"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/example/healthcare/HealthArticlesActivity$2;->this$0:Lcom/example/healthcare/HealthArticlesActivity;

    invoke-static {v1}, Lcom/example/healthcare/HealthArticlesActivity;->access$100(Lcom/example/healthcare/HealthArticlesActivity;)[I

    move-result-object v1

    aget v1, v1, p3

    const-string v2, "Text2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/example/healthcare/HealthArticlesActivity$2;->this$0:Lcom/example/healthcare/HealthArticlesActivity;

    invoke-virtual {v1, v0}, Lcom/example/healthcare/HealthArticlesActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method
