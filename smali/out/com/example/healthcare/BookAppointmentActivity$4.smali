.class Lcom/example/healthcare/BookAppointmentActivity$4;
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

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$contact:Ljava/lang/String;

.field final synthetic val$fees:Ljava/lang/String;

.field final synthetic val$fullname:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/healthcare/BookAppointmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "this$0"    # Lcom/example/healthcare/BookAppointmentActivity;

    .line 85
    iput-object p1, p0, Lcom/example/healthcare/BookAppointmentActivity$4;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    iput-object p2, p0, Lcom/example/healthcare/BookAppointmentActivity$4;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/example/healthcare/BookAppointmentActivity$4;->val$fullname:Ljava/lang/String;

    iput-object p4, p0, Lcom/example/healthcare/BookAppointmentActivity$4;->val$address:Ljava/lang/String;

    iput-object p5, p0, Lcom/example/healthcare/BookAppointmentActivity$4;->val$contact:Ljava/lang/String;

    iput-object p6, p0, Lcom/example/healthcare/BookAppointmentActivity$4;->val$fees:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 23
    .param p1, "view"    # Landroid/view/View;

    .line 88
    move-object/from16 v0, p0

    new-instance v1, Lcom/example/healthcare/Database;

    iget-object v2, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    invoke-virtual {v2}, Lcom/example/healthcare/BookAppointmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "healthcare"

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/example/healthcare/Database;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 89
    .local v1, "db":Lcom/example/healthcare/Database;
    iget-object v2, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    const-string v3, "shared_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/example/healthcare/BookAppointmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 90
    .local v9, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "username"

    const-string v3, ""

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    .line 91
    .local v20, "username":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->val$title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "=>"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->val$fullname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->val$address:Ljava/lang/String;

    iget-object v5, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->val$contact:Ljava/lang/String;

    iget-object v2, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    invoke-static {v2}, Lcom/example/healthcare/BookAppointmentActivity;->access$200(Lcom/example/healthcare/BookAppointmentActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    invoke-static {v2}, Lcom/example/healthcare/BookAppointmentActivity;->access$300(Lcom/example/healthcare/BookAppointmentActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, v20

    invoke-virtual/range {v1 .. v7}, Lcom/example/healthcare/Database;->checkAppintmentExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v8, :cond_79

    .line 92
    iget-object v2, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    invoke-virtual {v2}, Lcom/example/healthcare/BookAppointmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Appointment already booked"

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_de

    .line 94
    :cond_79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->val$title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->val$fullname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->val$address:Ljava/lang/String;

    iget-object v14, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->val$contact:Ljava/lang/String;

    const/4 v15, 0x0

    iget-object v2, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    invoke-static {v2}, Lcom/example/healthcare/BookAppointmentActivity;->access$200(Lcom/example/healthcare/BookAppointmentActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    iget-object v2, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    invoke-static {v2}, Lcom/example/healthcare/BookAppointmentActivity;->access$300(Lcom/example/healthcare/BookAppointmentActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v2, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->val$fees:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    const-string v19, "appointment"

    move-object v10, v1

    move-object/from16 v11, v20

    invoke-virtual/range {v10 .. v19}, Lcom/example/healthcare/Database;->addOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    .line 95
    iget-object v2, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    invoke-virtual {v2}, Lcom/example/healthcare/BookAppointmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Your Appointment is booked Successfully"

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 96
    iget-object v2, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, v0, Lcom/example/healthcare/BookAppointmentActivity$4;->this$0:Lcom/example/healthcare/BookAppointmentActivity;

    const-class v5, Lcom/example/healthcare/HomeActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/example/healthcare/BookAppointmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    :goto_de
    return-void
.end method
