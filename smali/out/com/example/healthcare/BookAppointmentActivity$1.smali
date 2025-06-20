.class Lcom/example/healthcare/BookAppointmentActivity$1;
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

    .line 64
    iput-object p1, p0, Lcom/example/healthcare/BookAppointmentActivity$1;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/example/healthcare/BookAppointmentActivity$1;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    invoke-static {v0}, Lcom/example/healthcare/BookAppointmentActivity;->access$000(Lcom/example/healthcare/BookAppointmentActivity;)Landroid/app/DatePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 68
    return-void
.end method
