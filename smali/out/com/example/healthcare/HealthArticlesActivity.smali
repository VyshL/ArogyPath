.class public Lcom/example/healthcare/HealthArticlesActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HealthArticlesActivity.java"


# instance fields
.field btnBack:Landroid/widget/Button;

.field private health_details:[[Ljava/lang/String;

.field private images:[I

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

.field sa:Landroid/widget/SimpleAdapter;


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 17
    const/4 v0, 0x5

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "Walking Daily"

    const-string v3, ""

    const-string v4, "Click More Details"

    filled-new-array {v2, v3, v3, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v1, v5

    const-string v2, "Home Care of Covid-19"

    filled-new-array {v2, v3, v3, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const-string v2, "Stop Smoking"

    filled-new-array {v2, v3, v3, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "Menstrual Cramps"

    filled-new-array {v2, v3, v3, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const-string v2, "Healthy Gut"

    filled-new-array {v2, v3, v3, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/example/healthcare/HealthArticlesActivity;->health_details:[[Ljava/lang/String;

    .line 24
    new-array v0, v0, [I

    fill-array-data v0, :array_42

    iput-object v0, p0, Lcom/example/healthcare/HealthArticlesActivity;->images:[I

    return-void

    nop

    :array_42
    .array-data 4
        0x7f06005f
        0x7f060060
        0x7f060061
        0x7f060062
        0x7f060063
    .end array-data
.end method

.method static synthetic access$000(Lcom/example/healthcare/HealthArticlesActivity;)[[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/example/healthcare/HealthArticlesActivity;

    .line 15
    iget-object v0, p0, Lcom/example/healthcare/HealthArticlesActivity;->health_details:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/healthcare/HealthArticlesActivity;)[I
    .registers 2
    .param p0, "x0"    # Lcom/example/healthcare/HealthArticlesActivity;

    .line 15
    iget-object v0, p0, Lcom/example/healthcare/HealthArticlesActivity;->images:[I

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/example/healthcare/HealthArticlesActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f0700b5

    invoke-virtual {p0, v0}, Lcom/example/healthcare/HealthArticlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/example/healthcare/HealthArticlesActivity;->lst:Landroid/widget/ListView;

    .line 42
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/example/healthcare/HealthArticlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/healthcare/HealthArticlesActivity;->btnBack:Landroid/widget/Button;

    .line 44
    new-instance v1, Lcom/example/healthcare/HealthArticlesActivity$1;

    invoke-direct {v1, p0}, Lcom/example/healthcare/HealthArticlesActivity$1;-><init>(Lcom/example/healthcare/HealthArticlesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/healthcare/HealthArticlesActivity;->list:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    iget-object v1, p0, Lcom/example/healthcare/HealthArticlesActivity;->health_details:[[Ljava/lang/String;

    array-length v1, v1

    const-string v2, "line5"

    const-string v3, "line4"

    const-string v4, "line3"

    const-string v5, "line2"

    const-string v6, "line1"

    if-ge v0, v1, :cond_89

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/example/healthcare/HealthArticlesActivity;->item:Ljava/util/HashMap;

    .line 54
    iget-object v7, p0, Lcom/example/healthcare/HealthArticlesActivity;->health_details:[[Ljava/lang/String;

    aget-object v7, v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v1, p0, Lcom/example/healthcare/HealthArticlesActivity;->item:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/example/healthcare/HealthArticlesActivity;->health_details:[[Ljava/lang/String;

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/example/healthcare/HealthArticlesActivity;->item:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/example/healthcare/HealthArticlesActivity;->health_details:[[Ljava/lang/String;

    aget-object v5, v5, v0

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/example/healthcare/HealthArticlesActivity;->item:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/example/healthcare/HealthArticlesActivity;->health_details:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/example/healthcare/HealthArticlesActivity;->item:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/example/healthcare/HealthArticlesActivity;->health_details:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lcom/example/healthcare/HealthArticlesActivity;->list:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/example/healthcare/HealthArticlesActivity;->item:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 61
    .end local v0    # "i":I
    :cond_89
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v7, p0, Lcom/example/healthcare/HealthArticlesActivity;->list:Ljava/util/ArrayList;

    const v8, 0x7f09002e

    filled-new-array {v6, v5, v4, v3, v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x5

    new-array v6, v1, [I

    fill-array-data v6, :array_b4

    move-object v1, v0

    move-object v2, p0

    move-object v3, v7

    move v4, v8

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/example/healthcare/HealthArticlesActivity;->sa:Landroid/widget/SimpleAdapter;

    .line 63
    iget-object v1, p0, Lcom/example/healthcare/HealthArticlesActivity;->lst:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v0, p0, Lcom/example/healthcare/HealthArticlesActivity;->lst:Landroid/widget/ListView;

    new-instance v1, Lcom/example/healthcare/HealthArticlesActivity$2;

    invoke-direct {v1, p0}, Lcom/example/healthcare/HealthArticlesActivity$2;-><init>(Lcom/example/healthcare/HealthArticlesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    return-void

    nop

    :array_b4
    .array-data 4
        0x7f0700ab
        0x7f0700ac
        0x7f0700ad
        0x7f0700ae
        0x7f0700af
    .end array-data
.end method
