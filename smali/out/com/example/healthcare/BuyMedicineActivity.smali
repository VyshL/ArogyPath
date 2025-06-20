.class public Lcom/example/healthcare/BuyMedicineActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BuyMedicineActivity.java"


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

.field lst:Landroid/widget/ListView;

.field private package_details:[Ljava/lang/String;

.field private packages:[[Ljava/lang/String;

.field sa:Landroid/widget/SimpleAdapter;


# direct methods
.method public constructor <init>()V
    .registers 13

    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 17
    const/16 v0, 0x9

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "Uprise-D3 1000IU Capsule"

    const-string v2, ""

    const-string v3, "50"

    filled-new-array {v1, v2, v2, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const-string v1, "HealthVit Chromium Picolinate 200mcg Capsule"

    const-string v4, "305"

    filled-new-array {v1, v2, v2, v2, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const-string v1, "Vitamin B Complex Capsules"

    const-string v4, "448"

    filled-new-array {v1, v2, v2, v2, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "Inlife Vitamin E Wheat Germ Oil Capsule"

    const-string v4, "539"

    filled-new-array {v1, v2, v2, v2, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "Dolo 650 Tablet"

    const-string v4, "30"

    filled-new-array {v1, v2, v2, v2, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const-string v1, "Crocin 650 Advance Tablet"

    filled-new-array {v1, v2, v2, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "Strepsils Medicated Lozenges for Sore Throat"

    const-string v3, "40"

    filled-new-array {v1, v2, v2, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "Tata 1mg Calcium + Vitamin D3"

    filled-new-array {v1, v2, v2, v2, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "Feronia -XT Tablet"

    const-string v3, "130"

    filled-new-array {v1, v2, v2, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/example/healthcare/BuyMedicineActivity;->packages:[[Ljava/lang/String;

    .line 28
    const-string v3, "Building and keeping the bones & teeth strong\nReducing Fatigue/stress and muscular pains\nBoosting immunity and increasing resistance against infection"

    const-string v4, "Chromium is an essential trace mineral that plays an important role in helping insulin regulates"

    const-string v5, "Provides relief from vitamin B deficiencies\nHelps in formation of red blood cells\nMaintains healthy nervous system"

    const-string v6, "It promotes health as well as skin benefit.\nIt helps reduce skin blemish and pigmentation.\nIt act as safeguard the skin from the harsh UVA and UVB sun rays."

    const-string v7, "Dolo 650 Tablet helps relieve pain and fever by blocking the release of certain chemical messe"

    const-string v8, "Helps relieve fever and bring down a high temperature\nSuitable for people with a heart condition or high blood pressure"

    const-string v9, "Relieves the symptoms of a bacterial throat infection and soothes the recovery process\nProvides a warm and comforting feeling during sore throat"

    const-string v10, "Reduces the risk of calcium deficiency, Rickets, and Osteoporosis\nPromotes mobility and flexibility of joints"

    const-string v11, "Helps to reduce the iron deficiency due to chronic blood loss or low intake of iron"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/healthcare/BuyMedicineActivity;->package_details:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/example/healthcare/BuyMedicineActivity;)[[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/example/healthcare/BuyMedicineActivity;

    .line 15
    iget-object v0, p0, Lcom/example/healthcare/BuyMedicineActivity;->packages:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/healthcare/BuyMedicineActivity;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/example/healthcare/BuyMedicineActivity;

    .line 15
    iget-object v0, p0, Lcom/example/healthcare/BuyMedicineActivity;->package_details:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/example/healthcare/BuyMedicineActivity;->setContentView(I)V

    .line 58
    const v0, 0x7f0700b4

    invoke-virtual {p0, v0}, Lcom/example/healthcare/BuyMedicineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/example/healthcare/BuyMedicineActivity;->lst:Landroid/widget/ListView;

    .line 59
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/example/healthcare/BuyMedicineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/healthcare/BuyMedicineActivity;->btnBack:Landroid/widget/Button;

    .line 60
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/example/healthcare/BuyMedicineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/healthcare/BuyMedicineActivity;->btnGoToCart:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/example/healthcare/BuyMedicineActivity;->btnBack:Landroid/widget/Button;

    new-instance v1, Lcom/example/healthcare/BuyMedicineActivity$1;

    invoke-direct {v1, p0}, Lcom/example/healthcare/BuyMedicineActivity$1;-><init>(Lcom/example/healthcare/BuyMedicineActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/example/healthcare/BuyMedicineActivity;->btnGoToCart:Landroid/widget/Button;

    new-instance v1, Lcom/example/healthcare/BuyMedicineActivity$2;

    invoke-direct {v1, p0}, Lcom/example/healthcare/BuyMedicineActivity$2;-><init>(Lcom/example/healthcare/BuyMedicineActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/healthcare/BuyMedicineActivity;->list:Ljava/util/ArrayList;

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_46
    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineActivity;->packages:[[Ljava/lang/String;

    array-length v1, v1

    const-string v2, "line5"

    const-string v3, "line4"

    const-string v4, "line3"

    const-string v5, "line2"

    const-string v6, "line1"

    if-ge v0, v1, :cond_b9

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/example/healthcare/BuyMedicineActivity;->item:Ljava/util/HashMap;

    .line 78
    iget-object v7, p0, Lcom/example/healthcare/BuyMedicineActivity;->packages:[[Ljava/lang/String;

    aget-object v7, v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineActivity;->item:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/example/healthcare/BuyMedicineActivity;->packages:[[Ljava/lang/String;

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineActivity;->item:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/example/healthcare/BuyMedicineActivity;->packages:[[Ljava/lang/String;

    aget-object v5, v5, v0

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineActivity;->item:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/example/healthcare/BuyMedicineActivity;->packages:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineActivity;->item:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total Cost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/healthcare/BuyMedicineActivity;->packages:[[Ljava/lang/String;

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

    .line 83
    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineActivity;->list:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/example/healthcare/BuyMedicineActivity;->item:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 86
    .end local v0    # "i":I
    :cond_b9
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v7, p0, Lcom/example/healthcare/BuyMedicineActivity;->list:Ljava/util/ArrayList;

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

    iput-object v0, p0, Lcom/example/healthcare/BuyMedicineActivity;->sa:Landroid/widget/SimpleAdapter;

    .line 90
    iget-object v1, p0, Lcom/example/healthcare/BuyMedicineActivity;->lst:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v0, p0, Lcom/example/healthcare/BuyMedicineActivity;->lst:Landroid/widget/ListView;

    new-instance v1, Lcom/example/healthcare/BuyMedicineActivity$3;

    invoke-direct {v1, p0}, Lcom/example/healthcare/BuyMedicineActivity$3;-><init>(Lcom/example/healthcare/BuyMedicineActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
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
