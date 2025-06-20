.class Lcom/example/healthcare/DoctorDetailsActivity$1;
.super Ljava/lang/Object;
.source "DoctorDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/healthcare/DoctorDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/healthcare/DoctorDetailsActivity;


# direct methods
.method constructor <init>(Lcom/example/healthcare/DoctorDetailsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/healthcare/DoctorDetailsActivity;

    .line 85
    iput-object p1, p0, Lcom/example/healthcare/DoctorDetailsActivity$1;->this$0:Lcom/example/healthcare/DoctorDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/example/healthcare/DoctorDetailsActivity$1;->this$0:Lcom/example/healthcare/DoctorDetailsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/healthcare/DoctorDetailsActivity$1;->this$0:Lcom/example/healthcare/DoctorDetailsActivity;

    const-class v3, Lcom/example/healthcare/FindDoctorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/example/healthcare/DoctorDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method
