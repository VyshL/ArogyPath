.class Lcom/example/healthcare/CartLabActivity$6;
.super Ljava/lang/Object;
.source "CartLabActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/healthcare/CartLabActivity;->initTimePicker()V
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

    .line 136
    iput-object p1, p0, Lcom/example/healthcare/CartLabActivity$6;->this$0:Lcom/example/healthcare/CartLabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 7
    .param p1, "timePicker"    # Landroid/widget/TimePicker;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .line 139
    iget-object v0, p0, Lcom/example/healthcare/CartLabActivity$6;->this$0:Lcom/example/healthcare/CartLabActivity;

    iget-object v0, v0, Lcom/example/healthcare/CartLabActivity;->timeButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method
