.class public Lcom/example/healthcare/BuyMedicineDetailsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BuyMedicineDetailsActivity.java"


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
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/example/healthcare/BuyMedicineDetailsActivity;->setContentView(I)V

    .line 24
    const v0, 0x7f07010c

    invoke-virtual {p0, v0}, Lcom/example/healthcare/BuyMedicineDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity;->tvPackageName:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f07010d

    invoke-virtual {p0, v0}, Lcom/example/healthcare/BuyMedicineDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity;->tvTotalCost:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/example/healthcare/BuyMedicineDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity;->edDetails:Landroid/widget/EditText;

    .line 27
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 28
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/example/healthcare/BuyMedicineDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity;->btnBack:Landroid/widget/Button;

    .line 29
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/example/healthcare/BuyMedicineDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity;->btnAddToCart:Landroid/widget/Button;

    .line 31
    invoke-virtual {p0}, Lcom/example/healthcare/BuyMedicineDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity;->tvPackageName:Landroid/widget/TextView;

    const-string v2, "text1"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity;->edDetails:Landroid/widget/EditText;

    const-string v2, "text2"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity;->tvTotalCost:Landroid/widget/TextView;

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

    .line 36
    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity;->btnBack:Landroid/widget/Button;

    new-instance v2, Lcom/example/healthcare/BuyMedicineDetailsActivity$1;

    invoke-direct {v2, p0}, Lcom/example/healthcare/BuyMedicineDetailsActivity$1;-><init>(Lcom/example/healthcare/BuyMedicineDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineDetailsActivity;->btnAddToCart:Landroid/widget/Button;

    new-instance v2, Lcom/example/healthcare/BuyMedicineDetailsActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/example/healthcare/BuyMedicineDetailsActivity$2;-><init>(Lcom/example/healthcare/BuyMedicineDetailsActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method
