.class public Lcom/example/healthcare/FindDoctorActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FindDoctorActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 14
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/example/healthcare/FindDoctorActivity;->setContentView(I)V

    .line 17
    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/example/healthcare/FindDoctorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    .line 18
    .local v0, "exit":Landroid/support/v7/widget/CardView;
    new-instance v1, Lcom/example/healthcare/FindDoctorActivity$1;

    invoke-direct {v1, p0}, Lcom/example/healthcare/FindDoctorActivity$1;-><init>(Lcom/example/healthcare/FindDoctorActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const v1, 0x7f07004e

    invoke-virtual {p0, v1}, Lcom/example/healthcare/FindDoctorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    .line 26
    .local v1, "familyphysician":Landroid/support/v7/widget/CardView;
    new-instance v2, Lcom/example/healthcare/FindDoctorActivity$2;

    invoke-direct {v2, p0}, Lcom/example/healthcare/FindDoctorActivity$2;-><init>(Lcom/example/healthcare/FindDoctorActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v2, 0x7f07004d

    invoke-virtual {p0, v2}, Lcom/example/healthcare/FindDoctorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/CardView;

    .line 35
    .local v2, "dietician":Landroid/support/v7/widget/CardView;
    new-instance v3, Lcom/example/healthcare/FindDoctorActivity$3;

    invoke-direct {v3, p0}, Lcom/example/healthcare/FindDoctorActivity$3;-><init>(Lcom/example/healthcare/FindDoctorActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v3, 0x7f07004c

    invoke-virtual {p0, v3}, Lcom/example/healthcare/FindDoctorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/CardView;

    .line 44
    .local v3, "dentist":Landroid/support/v7/widget/CardView;
    new-instance v4, Lcom/example/healthcare/FindDoctorActivity$4;

    invoke-direct {v4, p0}, Lcom/example/healthcare/FindDoctorActivity$4;-><init>(Lcom/example/healthcare/FindDoctorActivity;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v4, 0x7f07004f

    invoke-virtual {p0, v4}, Lcom/example/healthcare/FindDoctorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/CardView;

    .line 53
    .local v4, "surgeon":Landroid/support/v7/widget/CardView;
    new-instance v5, Lcom/example/healthcare/FindDoctorActivity$5;

    invoke-direct {v5, p0}, Lcom/example/healthcare/FindDoctorActivity$5;-><init>(Lcom/example/healthcare/FindDoctorActivity;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v5, 0x7f07004b

    invoke-virtual {p0, v5}, Lcom/example/healthcare/FindDoctorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/CardView;

    .line 62
    .local v5, "cardiologist":Landroid/support/v7/widget/CardView;
    new-instance v6, Lcom/example/healthcare/FindDoctorActivity$6;

    invoke-direct {v6, p0}, Lcom/example/healthcare/FindDoctorActivity$6;-><init>(Lcom/example/healthcare/FindDoctorActivity;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method
