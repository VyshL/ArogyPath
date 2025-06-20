.class public Lcom/example/healthcare/LabTestDetailsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LabTestDetailsActivity.java"


# instance fields
.field btnAddToCart:Landroid/widget/Button;

.field btnBack:Landroid/widget/Button;

.field edDetails:Landroid/widget/EditText;

.field tvPackageName:Landroid/widget/TextView;

.field tvTotalCost:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LabTestDetailsActivity;->setContentView(I)V

    .line 24
    const v0, 0x7f070116

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LabTestDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/healthcare/LabTestDetailsActivity;->tvPackageName:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f070117

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LabTestDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/healthcare/LabTestDetailsActivity;->tvTotalCost:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LabTestDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/healthcare/LabTestDetailsActivity;->edDetails:Landroid/widget/EditText;

    .line 27
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LabTestDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/healthcare/LabTestDetailsActivity;->btnBack:Landroid/widget/Button;

    .line 28
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LabTestDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/healthcare/LabTestDetailsActivity;->btnAddToCart:Landroid/widget/Button;

    .line 30
    iget-object v0, p0, Lcom/example/healthcare/LabTestDetailsActivity;->edDetails:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 32
    invoke-virtual {p0}, Lcom/example/healthcare/LabTestDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/healthcare/LabTestDetailsActivity;->tvPackageName:Landroid/widget/TextView;

    const-string v2, "text1"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v1, p0, Lcom/example/healthcare/LabTestDetailsActivity;->edDetails:Landroid/widget/EditText;

    const-string v2, "text2"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v1, p0, Lcom/example/healthcare/LabTestDetailsActivity;->tvTotalCost:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total Cost : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "text3"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v1, p0, Lcom/example/healthcare/LabTestDetailsActivity;->btnBack:Landroid/widget/Button;

    new-instance v2, Lcom/example/healthcare/LabTestDetailsActivity$1;

    invoke-direct {v2, p0}, Lcom/example/healthcare/LabTestDetailsActivity$1;-><init>(Lcom/example/healthcare/LabTestDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v1, p0, Lcom/example/healthcare/LabTestDetailsActivity;->btnAddToCart:Landroid/widget/Button;

    new-instance v2, Lcom/example/healthcare/LabTestDetailsActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/example/healthcare/LabTestDetailsActivity$2;-><init>(Lcom/example/healthcare/LabTestDetailsActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method
