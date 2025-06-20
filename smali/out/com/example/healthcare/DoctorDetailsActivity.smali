.class public Lcom/example/healthcare/DoctorDetailsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DoctorDetailsActivity.java"


# instance fields
.field btn:Landroid/widget/Button;

.field doctor_details:[[Ljava/lang/String;

.field private doctor_details1:[[Ljava/lang/String;

.field private doctor_details2:[[Ljava/lang/String;

.field private doctor_details3:[[Ljava/lang/String;

.field private doctor_details4:[[Ljava/lang/String;

.field private doctor_details5:[[Ljava/lang/String;

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

.field sa:Landroid/widget/SimpleAdapter;

.field tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 28

    .line 16
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 17
    const/4 v1, 0x5

    new-array v2, v1, [[Ljava/lang/String;

    const-string v3, "Doctor Name : Ajit Saste"

    const-string v4, "Hospital Address : Pipri"

    const-string v5, "Exp : 5yrs"

    const-string v6, "Mobile No:9090909090"

    const-string v7, "600"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v2, v8

    const-string v3, "Doctor Name : Prasad Pawar"

    const-string v9, "Hospital Address : Nigdi"

    const-string v10, "Exp : 15yrs"

    const-string v11, "Mobile No:8080808080"

    const-string v12, "900"

    filled-new-array {v3, v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x1

    aput-object v3, v2, v13

    const-string v3, "Doctor Name : Swapnil Deshmukh"

    const-string v14, "Hospital Address : Pune"

    const-string v15, "Exp : 8yrs"

    const-string v13, "Mobile No:4932052345"

    const-string v8, "400"

    filled-new-array {v3, v14, v15, v13, v8}, [Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x2

    aput-object v3, v2, v16

    const-string v3, "Doctor Name : Deepak Kale"

    const-string v1, "Hospital Address : Chinchwad"

    move-object/from16 v17, v8

    const-string v8, "Exp : 6yrs"

    move-object/from16 v18, v13

    const-string v13, "Mobile No:7483748323"

    move-object/from16 v19, v14

    const-string v14, "500"

    filled-new-array {v3, v1, v8, v13, v14}, [Ljava/lang/String;

    move-result-object v3

    const/16 v20, 0x3

    aput-object v3, v2, v20

    const-string v3, "Doctor Name : Ashok Panda"

    move-object/from16 v21, v1

    const-string v1, "Hospital Address : Katraj"

    move-object/from16 v22, v8

    const-string v8, "Exp : 7yrs"

    move-object/from16 v23, v13

    const-string v13, "Mobile No:7878787878"

    move-object/from16 v24, v14

    const-string v14, "800"

    filled-new-array {v3, v1, v8, v13, v14}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    iput-object v2, v0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details1:[[Ljava/lang/String;

    .line 24
    const/4 v1, 0x5

    new-array v2, v1, [[Ljava/lang/String;

    const-string v1, "Doctor Name : Rishavh Raut"

    filled-new-array {v1, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v2, v8

    const-string v1, "Doctor Name : jayant Pawar"

    filled-new-array {v1, v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    aput-object v1, v2, v8

    const-string v1, "Doctor Name : Swapnil Kulkarni"

    move-object/from16 v8, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    filled-new-array {v1, v14, v15, v13, v8}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v16

    const-string v1, "Doctor Name : Pralhad Kale"

    move-object/from16 v18, v8

    move-object/from16 v19, v13

    move-object/from16 v13, v22

    move-object/from16 v8, v23

    move-object/from16 v3, v24

    move-object/from16 v26, v21

    move-object/from16 v21, v14

    move-object/from16 v14, v26

    filled-new-array {v1, v14, v13, v8, v3}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v20

    const-string v1, "Doctor Name : Ashok Panda"

    const-string v3, "Hospital Address : Katraj"

    const-string v8, "Exp : 7yrs"

    const-string v13, "Mobile No:7878787878"

    move-object/from16 v25, v14

    const-string v14, "800"

    filled-new-array {v1, v3, v8, v13, v14}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    iput-object v2, v0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details2:[[Ljava/lang/String;

    .line 31
    const/4 v1, 0x5

    new-array v2, v1, [[Ljava/lang/String;

    const-string v1, "Doctor Name : Ajit Saste"

    filled-new-array {v1, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Doctor Name : Prasad Pawar"

    filled-new-array {v1, v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "Doctor Name : Swapnil Deshmukh"

    move-object/from16 v3, v18

    move-object/from16 v8, v19

    move-object/from16 v13, v21

    filled-new-array {v1, v13, v15, v8, v3}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v16

    const-string v1, "Doctor Name : Deepak Kale"

    move-object/from16 v8, v22

    move-object/from16 v3, v23

    move-object/from16 v14, v24

    move-object/from16 v13, v25

    filled-new-array {v1, v13, v8, v3, v14}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v20

    const-string v1, "Doctor Name : Ashok Panda"

    const-string v3, "Hospital Address : Katraj"

    const-string v8, "Exp : 7yrs"

    const-string v13, "Mobile No:7878787878"

    const-string v14, "800"

    filled-new-array {v1, v3, v8, v13, v14}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    iput-object v2, v0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details3:[[Ljava/lang/String;

    .line 38
    const/4 v1, 0x5

    new-array v2, v1, [[Ljava/lang/String;

    const-string v1, "Doctor Name : Ajit Saste"

    filled-new-array {v1, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Doctor Name : Prasad Pawar"

    filled-new-array {v1, v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "Doctor Name : Swapnil Deshmukh"

    move-object/from16 v3, v18

    move-object/from16 v8, v19

    move-object/from16 v13, v21

    filled-new-array {v1, v13, v15, v8, v3}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v16

    const-string v1, "Doctor Name : Deepak Kale"

    move-object/from16 v8, v22

    move-object/from16 v3, v23

    move-object/from16 v14, v24

    move-object/from16 v13, v25

    filled-new-array {v1, v13, v8, v3, v14}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v20

    const-string v1, "Doctor Name : Ashok Panda"

    const-string v3, "Hospital Address : Katraj"

    const-string v8, "Exp : 7yrs"

    const-string v13, "Mobile No:7878787878"

    const-string v14, "800"

    filled-new-array {v1, v3, v8, v13, v14}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    iput-object v2, v0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details4:[[Ljava/lang/String;

    .line 45
    const/4 v1, 0x5

    new-array v1, v1, [[Ljava/lang/String;

    const-string v2, "Doctor Name : Ajit Saste"

    filled-new-array {v2, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Doctor Name : Prasad Pawar"

    filled-new-array {v2, v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Doctor Name : Swapnil Deshmukh"

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v21

    filled-new-array {v2, v5, v15, v4, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    const-string v2, "Doctor Name : Deepak Kale"

    move-object/from16 v5, v22

    move-object/from16 v4, v23

    move-object/from16 v3, v24

    move-object/from16 v6, v25

    filled-new-array {v2, v6, v5, v4, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v20

    const-string v2, "Doctor Name : Ashok Panda"

    const-string v3, "Hospital Address : Katraj"

    const-string v4, "Exp : 7yrs"

    const-string v5, "Mobile No:7878787878"

    const-string v6, "800"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iput-object v1, v0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details5:[[Ljava/lang/String;

    .line 55
    const/4 v1, 0x0

    new-array v1, v1, [[Ljava/lang/String;

    iput-object v1, v0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/example/healthcare/DoctorDetailsActivity;->setContentView(I)V

    .line 64
    const v0, 0x7f07011a

    invoke-virtual {p0, v0}, Lcom/example/healthcare/DoctorDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/healthcare/DoctorDetailsActivity;->tv:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/example/healthcare/DoctorDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/healthcare/DoctorDetailsActivity;->btn:Landroid/widget/Button;

    .line 67
    invoke-virtual {p0}, Lcom/example/healthcare/DoctorDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/healthcare/DoctorDetailsActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const-string v2, "Family Physician"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3b

    .line 72
    iget-object v2, p0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details1:[[Ljava/lang/String;

    iput-object v2, p0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details:[[Ljava/lang/String;

    goto :goto_66

    .line 74
    :cond_3b
    const-string v2, "Dietician"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_48

    .line 75
    iget-object v2, p0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details2:[[Ljava/lang/String;

    iput-object v2, p0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details:[[Ljava/lang/String;

    goto :goto_66

    .line 77
    :cond_48
    const-string v2, "Dentist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_55

    .line 78
    iget-object v2, p0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details3:[[Ljava/lang/String;

    iput-object v2, p0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details:[[Ljava/lang/String;

    goto :goto_66

    .line 80
    :cond_55
    const-string v2, "Surgeon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_62

    .line 81
    iget-object v2, p0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details4:[[Ljava/lang/String;

    iput-object v2, p0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details:[[Ljava/lang/String;

    goto :goto_66

    .line 83
    :cond_62
    iget-object v2, p0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details5:[[Ljava/lang/String;

    iput-object v2, p0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details:[[Ljava/lang/String;

    .line 85
    :goto_66
    iget-object v2, p0, Lcom/example/healthcare/DoctorDetailsActivity;->btn:Landroid/widget/Button;

    new-instance v3, Lcom/example/healthcare/DoctorDetailsActivity$1;

    invoke-direct {v3, p0}, Lcom/example/healthcare/DoctorDetailsActivity$1;-><init>(Lcom/example/healthcare/DoctorDetailsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/example/healthcare/DoctorDetailsActivity;->list:Ljava/util/ArrayList;

    .line 92
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_78
    iget-object v3, p0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details:[[Ljava/lang/String;

    array-length v3, v3

    const-string v4, "line5"

    const-string v5, "line4"

    const-string v6, "line3"

    const-string v7, "line2"

    const-string v8, "line1"

    if-ge v2, v3, :cond_eb

    .line 93
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/example/healthcare/DoctorDetailsActivity;->item:Ljava/util/HashMap;

    .line 94
    iget-object v9, p0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details:[[Ljava/lang/String;

    aget-object v9, v9, v2

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v3, p0, Lcom/example/healthcare/DoctorDetailsActivity;->item:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details:[[Ljava/lang/String;

    aget-object v8, v8, v2

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v3, p0, Lcom/example/healthcare/DoctorDetailsActivity;->item:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details:[[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v3, p0, Lcom/example/healthcare/DoctorDetailsActivity;->item:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details:[[Ljava/lang/String;

    aget-object v6, v6, v2

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v3, p0, Lcom/example/healthcare/DoctorDetailsActivity;->item:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cons Fees : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/example/healthcare/DoctorDetailsActivity;->doctor_details:[[Ljava/lang/String;

    aget-object v6, v6, v2

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v3, p0, Lcom/example/healthcare/DoctorDetailsActivity;->list:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/example/healthcare/DoctorDetailsActivity;->item:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    .line 101
    .end local v2    # "i":I
    :cond_eb
    new-instance v2, Landroid/widget/SimpleAdapter;

    iget-object v9, p0, Lcom/example/healthcare/DoctorDetailsActivity;->list:Ljava/util/ArrayList;

    const v10, 0x7f09002e

    filled-new-array {v8, v7, v6, v5, v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x5

    new-array v8, v3, [I

    fill-array-data v8, :array_11c

    move-object v3, v2

    move-object v4, p0

    move-object v5, v9

    move v6, v10

    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v2, p0, Lcom/example/healthcare/DoctorDetailsActivity;->sa:Landroid/widget/SimpleAdapter;

    .line 104
    const v2, 0x7f0700b4

    invoke-virtual {p0, v2}, Lcom/example/healthcare/DoctorDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 105
    .local v2, "lst":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/example/healthcare/DoctorDetailsActivity;->sa:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    new-instance v3, Lcom/example/healthcare/DoctorDetailsActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/example/healthcare/DoctorDetailsActivity$2;-><init>(Lcom/example/healthcare/DoctorDetailsActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    return-void

    :array_11c
    .array-data 4
        0x7f0700ab
        0x7f0700ac
        0x7f0700ad
        0x7f0700ae
        0x7f0700af
    .end array-data
.end method
