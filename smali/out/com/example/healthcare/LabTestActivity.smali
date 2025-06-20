.class public Lcom/example/healthcare/LabTestActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LabTestActivity.java"


# instance fields
.field btnBack:Landroid/widget/Button;

.field btnGoToCart:Landroid/widget/Button;

.field item:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field list:Ljava/util/ArrayList;

.field listView:Landroid/widget/ListView;

.field private package_detais:[Ljava/lang/String;

.field private packages:[[Ljava/lang/String;

.field sa:Landroid/widget/SimpleAdapter;


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "Package 1 : Full Body Checkup"

    const-string v2, ""

    const-string v3, "999"

    filled-new-array {v1, v2, v2, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "Package 2 : Blood Glucose Fasting"

    const-string v3, "299"

    filled-new-array {v1, v2, v2, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Package 3 : Covid Antibody - Igs"

    const-string v3, "899"

    filled-new-array {v1, v2, v2, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "Package 4 : Thyroid Check"

    const-string v3, "499"

    filled-new-array {v1, v2, v2, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "Package 5 : Immunity Check"

    const-string v3, "699"

    filled-new-array {v1, v2, v2, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/example/healthcare/LabTestActivity;->packages:[[Ljava/lang/String;

    .line 23
    const-string v0, "Blood Glucose Fasting\ncomplete Hemogram\nHbA1c\nIron Studies\nKidney Function Test\nLDH Lactate Dehydrogenase, Serum\nLipid Profile\nLiver Function Test\n"

    const-string v1, "Blood Glucose Fasting"

    const-string v2, "Covid-19 Antibody - IgG"

    const-string v3, "Thyroid Profile - Total (T3, T4, TSH Ultra-Sensitive)"

    const-string v4, "Complete Hemogram\nCPR (C Reactive Protein) Quantitative, Serum\nIron Studies\nKidney Function Test\nVitamin D Total-25 Hydroxy\nLiver Function Test\nLipid Profile"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/healthcare/LabTestActivity;->package_detais:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/example/healthcare/LabTestActivity;)[[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/example/healthcare/LabTestActivity;

    .line 15
    iget-object v0, p0, Lcom/example/healthcare/LabTestActivity;->packages:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/healthcare/LabTestActivity;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/example/healthcare/LabTestActivity;

    .line 15
    iget-object v0, p0, Lcom/example/healthcare/LabTestActivity;->package_detais:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LabTestActivity;->setContentView(I)V

    .line 53
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LabTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/healthcare/LabTestActivity;->btnGoToCart:Landroid/widget/Button;

    .line 54
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LabTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/healthcare/LabTestActivity;->btnBack:Landroid/widget/Button;

    .line 55
    const v0, 0x7f0700b4

    invoke-virtual {p0, v0}, Lcom/example/healthcare/LabTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/example/healthcare/LabTestActivity;->listView:Landroid/widget/ListView;

    .line 57
    iget-object v0, p0, Lcom/example/healthcare/LabTestActivity;->btnBack:Landroid/widget/Button;

    new-instance v1, Lcom/example/healthcare/LabTestActivity$1;

    invoke-direct {v1, p0}, Lcom/example/healthcare/LabTestActivity$1;-><init>(Lcom/example/healthcare/LabTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/healthcare/LabTestActivity;->list:Ljava/util/ArrayList;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3c
    iget-object v1, p0, Lcom/example/healthcare/LabTestActivity;->packages:[[Ljava/lang/String;

    array-length v1, v1

    const-string v2, "line5"

    const-string v3, "line4"

    const-string v4, "line3"

    const-string v5, "line2"

    const-string v6, "line1"

    if-ge v0, v1, :cond_af

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/example/healthcare/LabTestActivity;->item:Ljava/util/HashMap;

    .line 67
    iget-object v7, p0, Lcom/example/healthcare/LabTestActivity;->packages:[[Ljava/lang/String;

    aget-object v7, v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/example/healthcare/LabTestActivity;->item:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/example/healthcare/LabTestActivity;->packages:[[Ljava/lang/String;

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/example/healthcare/LabTestActivity;->item:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/example/healthcare/LabTestActivity;->packages:[[Ljava/lang/String;

    aget-object v5, v5, v0

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/example/healthcare/LabTestActivity;->item:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/example/healthcare/LabTestActivity;->packages:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lcom/example/healthcare/LabTestActivity;->item:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total Cost : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/healthcare/LabTestActivity;->packages:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/example/healthcare/LabTestActivity;->list:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/example/healthcare/LabTestActivity;->item:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 74
    .end local v0    # "i":I
    :cond_af
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v7, p0, Lcom/example/healthcare/LabTestActivity;->list:Ljava/util/ArrayList;

    const v8, 0x7f09002e

    filled-new-array {v6, v5, v4, v3, v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x5

    new-array v6, v1, [I

    fill-array-data v6, :array_e4

    move-object v1, v0

    move-object v2, p0

    move-object v3, v7

    move v4, v8

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/example/healthcare/LabTestActivity;->sa:Landroid/widget/SimpleAdapter;

    .line 78
    iget-object v1, p0, Lcom/example/healthcare/LabTestActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/example/healthcare/LabTestActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/example/healthcare/LabTestActivity$2;

    invoke-direct {v1, p0}, Lcom/example/healthcare/LabTestActivity$2;-><init>(Lcom/example/healthcare/LabTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/example/healthcare/LabTestActivity;->btnGoToCart:Landroid/widget/Button;

    new-instance v1, Lcom/example/healthcare/LabTestActivity$3;

    invoke-direct {v1, p0}, Lcom/example/healthcare/LabTestActivity$3;-><init>(Lcom/example/healthcare/LabTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void

    nop

    :array_e4
    .array-data 4
        0x7f0700ab
        0x7f0700ac
        0x7f0700ad
        0x7f0700ae
        0x7f0700af
    .end array-data
.end method
