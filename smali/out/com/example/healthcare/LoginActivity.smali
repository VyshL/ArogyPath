.class public Lcom/example/healthcare/LoginActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LoginActivity.java"


# instance fields
.field btn:Landroid/widget/Button;

.field edPassword:Landroid/widget/EditText;

.field edUsername:Landroid/widget/EditText;

.field tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LoginActivity;->setContentView(I)V

    .line 24
    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/healthcare/LoginActivity;->edPassword:Landroid/widget/EditText;

    .line 25
    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/healthcare/LoginActivity;->edUsername:Landroid/widget/EditText;

    .line 26
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/healthcare/LoginActivity;->btn:Landroid/widget/Button;

    .line 27
    const v0, 0x7f070119

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/healthcare/LoginActivity;->tv:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/example/healthcare/LoginActivity;->btn:Landroid/widget/Button;

    new-instance v1, Lcom/example/healthcare/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/example/healthcare/LoginActivity$1;-><init>(Lcom/example/healthcare/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/example/healthcare/LoginActivity;->tv:Landroid/widget/TextView;

    new-instance v1, Lcom/example/healthcare/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/example/healthcare/LoginActivity$2;-><init>(Lcom/example/healthcare/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method
