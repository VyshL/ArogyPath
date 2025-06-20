.class Lcom/example/healthcare/FindDoctorActivity$6;
.super Ljava/lang/Object;
.source "FindDoctorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/healthcare/FindDoctorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/healthcare/FindDoctorActivity;


# direct methods
.method constructor <init>(Lcom/example/healthcare/FindDoctorActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/healthcare/FindDoctorActivity;

    .line 62
    iput-object p1, p0, Lcom/example/healthcare/FindDoctorActivity$6;->this$0:Lcom/example/healthcare/FindDoctorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 65
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/healthcare/FindDoctorActivity$6;->this$0:Lcom/example/healthcare/FindDoctorActivity;

    const-class v2, Lcom/example/healthcare/DoctorDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "title"

    const-string v2, "Cardiologist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/example/healthcare/FindDoctorActivity$6;->this$0:Lcom/example/healthcare/FindDoctorActivity;

    invoke-virtual {v1, v0}, Lcom/example/healthcare/FindDoctorActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method
