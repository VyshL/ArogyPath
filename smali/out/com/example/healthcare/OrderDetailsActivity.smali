.class public Lcom/example/healthcare/OrderDetailsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "OrderDetailsActivity.java"


# instance fields
.field btn:Landroid/widget/Button;

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

.field private order_details:[[Ljava/lang/String;

.field sa:Landroid/widget/SimpleAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/example/healthcare/OrderDetailsActivity;->order_details:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 27
    move-object/from16 v6, p0

    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f09002c

    invoke-virtual {v6, v0}, Lcom/example/healthcare/OrderDetailsActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f070035

    invoke-virtual {v6, v0}, Lcom/example/healthcare/OrderDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v6, Lcom/example/healthcare/OrderDetailsActivity;->btn:Landroid/widget/Button;

    .line 31
    const v0, 0x7f0700b6

    invoke-virtual {v6, v0}, Lcom/example/healthcare/OrderDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, v6, Lcom/example/healthcare/OrderDetailsActivity;->lst:Landroid/widget/ListView;

    .line 33
    iget-object v0, v6, Lcom/example/healthcare/OrderDetailsActivity;->btn:Landroid/widget/Button;

    new-instance v1, Lcom/example/healthcare/OrderDetailsActivity$1;

    invoke-direct {v1, v6}, Lcom/example/healthcare/OrderDetailsActivity$1;-><init>(Lcom/example/healthcare/OrderDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    new-instance v0, Lcom/example/healthcare/Database;

    invoke-virtual/range {p0 .. p0}, Lcom/example/healthcare/OrderDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "healthcare"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/example/healthcare/Database;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    move-object v7, v0

    .line 40
    .local v7, "db":Lcom/example/healthcare/Database;
    const-string v0, "shared_prefs"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lcom/example/healthcare/OrderDetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 41
    .local v8, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v0, "username"

    const-string v2, ""

    invoke-interface {v8, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, "username":Ljava/lang/String;
    invoke-virtual {v7, v9}, Lcom/example/healthcare/Database;->getOrderData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 44
    .local v10, "dbData":Ljava/util/ArrayList;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, v6, Lcom/example/healthcare/OrderDetailsActivity;->order_details:[[Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_59
    iget-object v2, v6, Lcom/example/healthcare/OrderDetailsActivity;->order_details:[[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x5

    const/4 v13, 0x4

    if-ge v0, v3, :cond_fc

    .line 46
    new-array v3, v12, [Ljava/lang/String;

    aput-object v3, v2, v0

    .line 47
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "arrData":Ljava/lang/String;
    const-string v3, "$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "strData":[Ljava/lang/String;
    iget-object v14, v6, Lcom/example/healthcare/OrderDetailsActivity;->order_details:[[Ljava/lang/String;

    aget-object v15, v14, v0

    aget-object v16, v3, v1

    aput-object v16, v15, v1

    .line 50
    aget-object v14, v14, v0

    aget-object v15, v3, v4

    aput-object v15, v14, v4

    .line 51
    const/4 v14, 0x7

    aget-object v15, v3, v14

    const-string v4, "medicine"

    invoke-virtual {v15, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    const-string v15, "Del:"

    if-nez v4, :cond_ad

    .line 52
    iget-object v4, v6, Lcom/example/healthcare/OrderDetailsActivity;->order_details:[[Ljava/lang/String;

    aget-object v4, v4, v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v15, v3, v13

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    goto :goto_d2

    .line 53
    :cond_ad
    iget-object v4, v6, Lcom/example/healthcare/OrderDetailsActivity;->order_details:[[Ljava/lang/String;

    aget-object v4, v4, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v15, v3, v13

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v12, v3, v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v11

    .line 54
    :goto_d2
    iget-object v1, v6, Lcom/example/healthcare/OrderDetailsActivity;->order_details:[[Ljava/lang/String;

    aget-object v1, v1, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rs."

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v11, 0x6

    aget-object v11, v3, v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    .line 55
    iget-object v1, v6, Lcom/example/healthcare/OrderDetailsActivity;->order_details:[[Ljava/lang/String;

    aget-object v1, v1, v0

    aget-object v4, v3, v14

    aput-object v4, v1, v13

    .line 45
    .end local v2    # "arrData":Ljava/lang/String;
    .end local v3    # "strData":[Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    goto/16 :goto_59

    .line 57
    .end local v0    # "i":I
    :cond_fc
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/example/healthcare/OrderDetailsActivity;->list:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_104
    iget-object v1, v6, Lcom/example/healthcare/OrderDetailsActivity;->order_details:[[Ljava/lang/String;

    array-length v1, v1

    const-string v2, "line5"

    const-string v3, "line4"

    const-string v4, "line3"

    const-string v14, "line2"

    const-string v15, "line1"

    if-ge v0, v1, :cond_15e

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v6, Lcom/example/healthcare/OrderDetailsActivity;->item:Ljava/util/HashMap;

    .line 60
    iget-object v12, v6, Lcom/example/healthcare/OrderDetailsActivity;->order_details:[[Ljava/lang/String;

    aget-object v12, v12, v0

    const/16 v17, 0x0

    aget-object v12, v12, v17

    invoke-virtual {v1, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, v6, Lcom/example/healthcare/OrderDetailsActivity;->item:Ljava/util/HashMap;

    iget-object v12, v6, Lcom/example/healthcare/OrderDetailsActivity;->order_details:[[Ljava/lang/String;

    aget-object v12, v12, v0

    const/16 v16, 0x1

    aget-object v12, v12, v16

    invoke-virtual {v1, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, v6, Lcom/example/healthcare/OrderDetailsActivity;->item:Ljava/util/HashMap;

    iget-object v12, v6, Lcom/example/healthcare/OrderDetailsActivity;->order_details:[[Ljava/lang/String;

    aget-object v12, v12, v0

    aget-object v12, v12, v5

    invoke-virtual {v1, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v1, v6, Lcom/example/healthcare/OrderDetailsActivity;->item:Ljava/util/HashMap;

    iget-object v4, v6, Lcom/example/healthcare/OrderDetailsActivity;->order_details:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v11

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, v6, Lcom/example/healthcare/OrderDetailsActivity;->item:Ljava/util/HashMap;

    iget-object v3, v6, Lcom/example/healthcare/OrderDetailsActivity;->order_details:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v13

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, v6, Lcom/example/healthcare/OrderDetailsActivity;->list:Ljava/util/ArrayList;

    iget-object v2, v6, Lcom/example/healthcare/OrderDetailsActivity;->item:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v0, v0, 0x1

    const/4 v12, 0x5

    goto :goto_104

    .line 67
    .end local v0    # "i":I
    :cond_15e
    new-instance v11, Landroid/widget/SimpleAdapter;

    iget-object v5, v6, Lcom/example/healthcare/OrderDetailsActivity;->list:Ljava/util/ArrayList;

    const v12, 0x7f09002e

    filled-new-array {v15, v14, v4, v3, v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x5

    new-array v13, v0, [I

    fill-array-data v13, :array_180

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v5

    move v3, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v11, v6, Lcom/example/healthcare/OrderDetailsActivity;->sa:Landroid/widget/SimpleAdapter;

    .line 71
    iget-object v0, v6, Lcom/example/healthcare/OrderDetailsActivity;->lst:Landroid/widget/ListView;

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    return-void

    :array_180
    .array-data 4
        0x7f0700ab
        0x7f0700ac
        0x7f0700ad
        0x7f0700ae
        0x7f0700af
    .end array-data
.end method
