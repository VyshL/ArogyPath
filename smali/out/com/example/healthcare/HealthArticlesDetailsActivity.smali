.class public Lcom/example/healthcare/HealthArticlesDetailsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HealthArticlesDetailsActivity.java"


# instance fields
.field btnBack:Landroid/widget/Button;

.field img:Landroid/widget/ImageView;

.field tv1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 19
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/example/healthcare/HealthArticlesDetailsActivity;->setContentView(I)V

    .line 22
    const v0, 0x7f070114

    invoke-virtual {p0, v0}, Lcom/example/healthcare/HealthArticlesDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/healthcare/HealthArticlesDetailsActivity;->tv1:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f0700a1

    invoke-virtual {p0, v0}, Lcom/example/healthcare/HealthArticlesDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/healthcare/HealthArticlesDetailsActivity;->img:Landroid/widget/ImageView;

    .line 24
    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/example/healthcare/HealthArticlesDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/healthcare/HealthArticlesDetailsActivity;->btnBack:Landroid/widget/Button;

    .line 26
    invoke-virtual {p0}, Lcom/example/healthcare/HealthArticlesDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/healthcare/HealthArticlesDetailsActivity;->tv1:Landroid/widget/TextView;

    const-string v2, "text1"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p0}, Lcom/example/healthcare/HealthArticlesDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 30
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_4e

    .line 31
    const-string v2, "text2"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 32
    .local v2, "resId":I
    iget-object v3, p0, Lcom/example/healthcare/HealthArticlesDetailsActivity;->img:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    .end local v2    # "resId":I
    :cond_4e
    iget-object v2, p0, Lcom/example/healthcare/HealthArticlesDetailsActivity;->btnBack:Landroid/widget/Button;

    new-instance v3, Lcom/example/healthcare/HealthArticlesDetailsActivity$1;

    invoke-direct {v3, p0}, Lcom/example/healthcare/HealthArticlesDetailsActivity$1;-><init>(Lcom/example/healthcare/HealthArticlesDetailsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method
