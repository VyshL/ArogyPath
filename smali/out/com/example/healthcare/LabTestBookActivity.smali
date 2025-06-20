.class public Lcom/example/healthcare/LabTestBookActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LabTestBookActivity.java"


# instance fields
.field btnBooking:Landroid/widget/Button;

.field edaddress:Landroid/widget/EditText;

.field edcontact:Landroid/widget/EditText;

.field edname:Landroid/widget/EditText;

.field edpincode:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 19
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LabTestBookActivity;->setContentView(I)V

    .line 21
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LabTestBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/healthcare/LabTestBookActivity;->edname:Landroid/widget/EditText;

    .line 22
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LabTestBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/healthcare/LabTestBookActivity;->edaddress:Landroid/widget/EditText;

    .line 23
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LabTestBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/healthcare/LabTestBookActivity;->edcontact:Landroid/widget/EditText;

    .line 24
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LabTestBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/healthcare/LabTestBookActivity;->edpincode:Landroid/widget/EditText;

    .line 25
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LabTestBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/healthcare/LabTestBookActivity;->btnBooking:Landroid/widget/Button;

    .line 27
    invoke-virtual {p0}, Lcom/example/healthcare/LabTestBookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "price"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "price":[Ljava/lang/String;
    const-string v2, "date"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "date":Ljava/lang/String;
    const-string v3, "time"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "time":Ljava/lang/String;
    iget-object v4, p0, Lcom/example/healthcare/LabTestBookActivity;->btnBooking:Landroid/widget/Button;

    new-instance v5, Lcom/example/healthcare/LabTestBookActivity$1;

    invoke-direct {v5, p0, v2, v3, v1}, Lcom/example/healthcare/LabTestBookActivity$1;-><init>(Lcom/example/healthcare/LabTestBookActivity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method
