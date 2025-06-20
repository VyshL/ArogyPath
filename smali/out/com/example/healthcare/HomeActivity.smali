.class public Lcom/example/healthcare/HomeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HomeActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 16
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/example/healthcare/HomeActivity;->setContentView(I)V

    .line 19
    const-string v0, "shared_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/example/healthcare/HomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 20
    .local v0, "sharedpreferences":Landroid/content/SharedPreferences;
    const-string v2, "username"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "username":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/example/healthcare/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Welcome "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 23
    const v1, 0x7f070049

    invoke-virtual {p0, v1}, Lcom/example/healthcare/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    .line 24
    .local v1, "exit":Landroid/support/v7/widget/CardView;
    new-instance v3, Lcom/example/healthcare/HomeActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/example/healthcare/HomeActivity$1;-><init>(Lcom/example/healthcare/HomeActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v3, 0x7f070050

    invoke-virtual {p0, v3}, Lcom/example/healthcare/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/CardView;

    .line 34
    .local v3, "findDoctor":Landroid/support/v7/widget/CardView;
    new-instance v4, Lcom/example/healthcare/HomeActivity$2;

    invoke-direct {v4, p0}, Lcom/example/healthcare/HomeActivity$2;-><init>(Lcom/example/healthcare/HomeActivity;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v4, 0x7f070052

    invoke-virtual {p0, v4}, Lcom/example/healthcare/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/CardView;

    .line 41
    .local v4, "labTest":Landroid/support/v7/widget/CardView;
    new-instance v5, Lcom/example/healthcare/HomeActivity$3;

    invoke-direct {v5, p0}, Lcom/example/healthcare/HomeActivity$3;-><init>(Lcom/example/healthcare/HomeActivity;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v5, 0x7f070053

    invoke-virtual {p0, v5}, Lcom/example/healthcare/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/CardView;

    .line 49
    .local v5, "orderDetails":Landroid/support/v7/widget/CardView;
    new-instance v6, Lcom/example/healthcare/HomeActivity$4;

    invoke-direct {v6, p0}, Lcom/example/healthcare/HomeActivity$4;-><init>(Lcom/example/healthcare/HomeActivity;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v6, 0x7f070048

    invoke-virtual {p0, v6}, Lcom/example/healthcare/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/CardView;

    .line 56
    .local v6, "buyMedicine":Landroid/support/v7/widget/CardView;
    new-instance v7, Lcom/example/healthcare/HomeActivity$5;

    invoke-direct {v7, p0}, Lcom/example/healthcare/HomeActivity$5;-><init>(Lcom/example/healthcare/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v7, 0x7f070051

    invoke-virtual {p0, v7}, Lcom/example/healthcare/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/CardView;

    .line 63
    .local v7, "health":Landroid/support/v7/widget/CardView;
    new-instance v8, Lcom/example/healthcare/HomeActivity$6;

    invoke-direct {v8, p0}, Lcom/example/healthcare/HomeActivity$6;-><init>(Lcom/example/healthcare/HomeActivity;)V

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method
