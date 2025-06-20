.class Lcom/example/healthcare/BookAppointmentActivity$3;
.super Ljava/lang/Object;
.source "BookAppointmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/healthcare/BookAppointmentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/healthcare/BookAppointmentActivity;


# direct methods
.method constructor <init>(Lcom/example/healthcare/BookAppointmentActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/healthcare/BookAppointmentActivity;

    .line 79
    iput-object p1, p0, Lcom/example/healthcare/BookAppointmentActivity$3;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/example/healthcare/BookAppointmentActivity$3;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/healthcare/BookAppointmentActivity$3;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    const-class v3, Lcom/example/healthcare/FindDoctorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/example/healthcare/BookAppointmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
