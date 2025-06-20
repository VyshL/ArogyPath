.class Lcom/example/healthcare/BookAppointmentActivity$5;
.super Ljava/lang/Object;
.source "BookAppointmentActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/healthcare/BookAppointmentActivity;->initDatePicker()V
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

    .line 103
    iput-object p1, p0, Lcom/example/healthcare/BookAppointmentActivity$5;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 8
    .param p1, "datePicker"    # Landroid/widget/DatePicker;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 106
    add-int/lit8 p3, p3, 0x1

    .line 107
    iget-object v0, p0, Lcom/example/healthcare/BookAppointmentActivity$5;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    invoke-static {v0}, Lcom/example/healthcare/BookAppointmentActivity;->access$200(Lcom/example/healthcare/BookAppointmentActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method
