.class Lcom/example/healthcare/DoctorDetailsActivity$2;
.super Ljava/lang/Object;
.source "DoctorDetailsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/healthcare/DoctorDetailsActivity;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/example/healthcare/DoctorDetailsActivity;

    .line 107
    iput-object p1, p0, Lcom/example/healthcare/DoctorDetailsActivity$2;->this$0:Lcom/example/healthcare/DoctorDetailsActivity;

    iput-object p2, p0, Lcom/example/healthcare/DoctorDetailsActivity$2;->val$title:Ljava/lang/String;

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

    .line 110
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/healthcare/DoctorDetailsActivity$2;->this$0:Lcom/example/healthcare/DoctorDetailsActivity;

    const-class v2, Lcom/example/healthcare/BookAppointmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/healthcare/DoctorDetailsActivity$2;->val$title:Ljava/lang/String;

    const-string v2, "Text1"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/example/healthcare/DoctorDetailsActivity$2;->this$0:Lcom/example/healthcare/DoctorDetailsActivity;

    iget-object v1, v1, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details:[[Ljava/lang/String;

    aget-object v1, v1, p3

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "Text2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/example/healthcare/DoctorDetailsActivity$2;->this$0:Lcom/example/healthcare/DoctorDetailsActivity;

    iget-object v1, v1, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details:[[Ljava/lang/String;

    aget-object v1, v1, p3

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "Text3"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/example/healthcare/DoctorDetailsActivity$2;->this$0:Lcom/example/healthcare/DoctorDetailsActivity;

    iget-object v1, v1, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details:[[Ljava/lang/String;

    aget-object v1, v1, p3

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const-string v2, "Text4"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/example/healthcare/DoctorDetailsActivity$2;->this$0:Lcom/example/healthcare/DoctorDetailsActivity;

    iget-object v1, v1, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details:[[Ljava/lang/String;

    aget-object v1, v1, p3

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const-string v2, "Text5"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/example/healthcare/DoctorDetailsActivity$2;->this$0:Lcom/example/healthcare/DoctorDetailsActivity;

    invoke-virtual {v1, v0}, Lcom/example/healthcare/DoctorDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method
