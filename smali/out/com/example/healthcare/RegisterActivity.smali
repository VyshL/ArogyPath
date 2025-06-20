.class public Lcom/example/healthcare/RegisterActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "RegisterActivity.java"


# instance fields
.field btn:Landroid/widget/Button;

.field edConfirm:Landroid/widget/EditText;

.field edEmail:Landroid/widget/EditText;

.field edPassword:Landroid/widget/EditText;

.field edUsername:Landroid/widget/EditText;

.field tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static isValid(Ljava/lang/String;)Z
    .registers 8
    .param p0, "passwordhere"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    .local v0, "f1":I
    const/4 v1, 0x0

    .local v1, "f2":I
    const/4 v2, 0x0

    .line 71
    .local v2, "f3":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-ge v3, v5, :cond_d

    .line 72
    return v4

    .line 75
    :cond_d
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_22

    .line 76
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 77
    const/4 v0, 0x1

    .line 75
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 80
    .end local v3    # "p":I
    :cond_22
    const/4 v3, 0x0

    .local v3, "r":I
    :goto_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_37

    .line 81
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 82
    const/4 v1, 0x1

    .line 80
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 85
    .end local v3    # "r":I
    :cond_37
    const/4 v3, 0x0

    .local v3, "s":I
    :goto_38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_52

    .line 86
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 87
    .local v5, "c":C
    const/16 v6, 0x21

    if-lt v5, v6, :cond_4a

    const/16 v6, 0x2e

    if-le v5, v6, :cond_4e

    :cond_4a
    const/16 v6, 0x40

    if-ne v5, v6, :cond_4f

    .line 88
    :cond_4e
    const/4 v2, 0x1

    .line 85
    .end local v5    # "c":C
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 91
    .end local v3    # "s":I
    :cond_52
    const/4 v3, 0x1

    if-ne v0, v3, :cond_5a

    if-ne v1, v3, :cond_5a

    if-ne v2, v3, :cond_5a

    .line 92
    return v3

    .line 94
    :cond_5a
    return v4
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 20
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/example/healthcare/RegisterActivity;->setContentView(I)V

    .line 23
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/example/healthcare/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/healthcare/RegisterActivity;->edUsername:Landroid/widget/EditText;

    .line 24
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/example/healthcare/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/healthcare/RegisterActivity;->edPassword:Landroid/widget/EditText;

    .line 25
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/example/healthcare/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/healthcare/RegisterActivity;->edEmail:Landroid/widget/EditText;

    .line 26
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/example/healthcare/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/healthcare/RegisterActivity;->edConfirm:Landroid/widget/EditText;

    .line 27
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/example/healthcare/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/healthcare/RegisterActivity;->btn:Landroid/widget/Button;

    .line 28
    const v0, 0x7f070113

    invoke-virtual {p0, v0}, Lcom/example/healthcare/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/healthcare/RegisterActivity;->tv:Landroid/widget/TextView;

    .line 30
    new-instance v1, Lcom/example/healthcare/RegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/example/healthcare/RegisterActivity$1;-><init>(Lcom/example/healthcare/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/example/healthcare/RegisterActivity;->btn:Landroid/widget/Button;

    new-instance v1, Lcom/example/healthcare/RegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/example/healthcare/RegisterActivity$2;-><init>(Lcom/example/healthcare/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method
