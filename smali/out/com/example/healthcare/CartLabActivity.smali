.class public Lcom/example/healthcare/CartLabActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CartLabActivity.java"


# instance fields
.field btnBack:Landroid/widget/Button;

.field btnCheckout:Landroid/widget/Button;

.field dateButton:Landroid/widget/Button;

.field private datePickerDialog:Landroid/app/DatePickerDialog;

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

.field private packages:[[Ljava/lang/String;

.field sa:Landroid/widget/SimpleAdapter;

.field timeButton:Landroid/widget/Button;

.field private timePickerDialog:Landroid/app/TimePickerDialog;

.field tvTotal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/example/healthcare/CartLabActivity;->packages:[[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/example/healthcare/CartLabActivity;)Landroid/app/DatePickerDialog;
    .registers 2
    .param p0, "x0"    # Lcom/example/healthcare/CartLabActivity;

    .line 23
    iget-object v0, p0, Lcom/example/healthcare/CartLabActivity;->datePickerDialog:Landroid/app/DatePickerDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/healthcare/CartLabActivity;)Landroid/app/TimePickerDialog;
    .registers 2
    .param p0, "x0"    # Lcom/example/healthcare/CartLabActivity;

    .line 23
    iget-object v0, p0, Lcom/example/healthcare/CartLabActivity;->timePickerDialog:Landroid/app/TimePickerDialog;

    return-object v0
.end method

.method private initDatePicker()V
    .registers 14

    .line 119
    new-instance v3, Lcom/example/healthcare/CartLabActivity$5;

    invoke-direct {v3, p0}, Lcom/example/healthcare/CartLabActivity$5;-><init>(Lcom/example/healthcare/CartLabActivity;)V

    .line 126
    .local v3, "dateSetListener":Landroid/app/DatePickerDialog$OnDateSetListener;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 127
    .local v7, "cal":Ljava/util/Calendar;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 128
    .local v8, "year":I
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 129
    .local v9, "month":I
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 131
    .local v10, "day":I
    const/4 v11, 0x2

    .line 132
    .local v11, "style":I
    new-instance v12, Landroid/app/DatePickerDialog;

    move-object v0, v12

    move-object v1, p0

    move v2, v11

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v12, p0, Lcom/example/healthcare/CartLabActivity;->datePickerDialog:Landroid/app/DatePickerDialog;

    .line 133
    invoke-virtual {v12}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v4, 0x5265c00

    add-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 134
    return-void
.end method

.method private initTimePicker()V
    .registers 13

    .line 136
    new-instance v3, Lcom/example/healthcare/CartLabActivity$6;

    invoke-direct {v3, p0}, Lcom/example/healthcare/CartLabActivity$6;-><init>(Lcom/example/healthcare/CartLabActivity;)V

    .line 142
    .local v3, "timeSetListener":Landroid/app/TimePickerDialog$OnTimeSetListener;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 143
    .local v7, "cal":Ljava/util/Calendar;
    const/16 v0, 0xa

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 144
    .local v8, "hrs":I
    const/16 v0, 0xc

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 146
    .local v9, "mins":I
    const/4 v10, 0x2

    .line 147
    .local v10, "style":I
    new-instance v11, Landroid/app/TimePickerDialog;

    const/4 v6, 0x1

    move-object v0, v11

    move-object v1, p0

    move v2, v10

    move v4, v8

    move v5, v9

    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v11, p0, Lcom/example/healthcare/CartLabActivity;->timePickerDialog:Landroid/app/TimePickerDialog;

    .line 149
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    move-object/from16 v6, p0

    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f090021

    invoke-virtual {v6, v0}, Lcom/example/healthcare/CartLabActivity;->setContentView(I)V

    .line 39
    const v0, 0x7f07003e

    invoke-virtual {v6, v0}, Lcom/example/healthcare/CartLabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v6, Lcom/example/healthcare/CartLabActivity;->dateButton:Landroid/widget/Button;

    .line 40
    const v0, 0x7f07003f

    invoke-virtual {v6, v0}, Lcom/example/healthcare/CartLabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v6, Lcom/example/healthcare/CartLabActivity;->timeButton:Landroid/widget/Button;

    .line 41
    const v0, 0x7f07003d

    invoke-virtual {v6, v0}, Lcom/example/healthcare/CartLabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v6, Lcom/example/healthcare/CartLabActivity;->btnCheckout:Landroid/widget/Button;

    .line 42
    const v0, 0x7f07003c

    invoke-virtual {v6, v0}, Lcom/example/healthcare/CartLabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v6, Lcom/example/healthcare/CartLabActivity;->btnBack:Landroid/widget/Button;

    .line 43
    const v0, 0x7f070112

    invoke-virtual {v6, v0}, Lcom/example/healthcare/CartLabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/example/healthcare/CartLabActivity;->tvTotal:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0700b3

    invoke-virtual {v6, v0}, Lcom/example/healthcare/CartLabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, v6, Lcom/example/healthcare/CartLabActivity;->lst:Landroid/widget/ListView;

    .line 46
    const-string v0, "shared_prefs"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lcom/example/healthcare/CartLabActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 47
    .local v7, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v0, "username"

    const-string v2, ""

    invoke-interface {v7, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 49
    .local v8, "username":Ljava/lang/String;
    new-instance v0, Lcom/example/healthcare/Database;

    invoke-virtual/range {p0 .. p0}, Lcom/example/healthcare/CartLabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "healthcare"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/example/healthcare/Database;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    move-object v9, v0

    .line 50
    .local v9, "db":Lcom/example/healthcare/Database;
    const/4 v0, 0x0

    .line 51
    .local v0, "totalAmount":F
    const-string v2, "lab"

    invoke-virtual {v9, v8, v2}, Lcom/example/healthcare/Database;->getCartData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 54
    .local v10, "dbData":Ljava/util/ArrayList;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[Ljava/lang/String;

    iput-object v2, v6, Lcom/example/healthcare/CartLabActivity;->packages:[[Ljava/lang/String;

    .line 55
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7e
    iget-object v3, v6, Lcom/example/healthcare/CartLabActivity;->packages:[[Ljava/lang/String;

    array-length v4, v3

    const/4 v11, 0x5

    if-ge v2, v4, :cond_8b

    .line 56
    new-array v4, v11, [Ljava/lang/String;

    aput-object v4, v3, v2

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    .line 59
    .end local v2    # "i":I
    :cond_8b
    const/4 v2, 0x0

    move v12, v0

    .end local v0    # "totalAmount":F
    .restart local v2    # "i":I
    .local v12, "totalAmount":F
    :goto_8d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ge v2, v0, :cond_d7

    .line 60
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "arrData":Ljava/lang/String;
    const-string v4, "$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "strData":[Ljava/lang/String;
    iget-object v13, v6, Lcom/example/healthcare/CartLabActivity;->packages:[[Ljava/lang/String;

    aget-object v14, v13, v2

    aget-object v15, v4, v1

    aput-object v15, v14, v1

    .line 63
    aget-object v13, v13, v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cost : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v4, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v3

    .line 64
    aget-object v3, v4, v5

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v12, v3

    .line 59
    .end local v0    # "arrData":Ljava/lang/String;
    .end local v4    # "strData":[Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    .line 66
    .end local v2    # "i":I
    :cond_d7
    iget-object v0, v6, Lcom/example/healthcare/CartLabActivity;->tvTotal:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total Cost : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/example/healthcare/CartLabActivity;->list:Ljava/util/ArrayList;

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f7
    iget-object v2, v6, Lcom/example/healthcare/CartLabActivity;->packages:[[Ljava/lang/String;

    array-length v2, v2

    const-string v4, "line5"

    const-string v13, "line4"

    const-string v14, "line3"

    const-string v15, "line2"

    const-string v11, "line1"

    if-ge v0, v2, :cond_152

    .line 70
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v6, Lcom/example/healthcare/CartLabActivity;->item:Ljava/util/HashMap;

    .line 71
    iget-object v3, v6, Lcom/example/healthcare/CartLabActivity;->packages:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v2, v6, Lcom/example/healthcare/CartLabActivity;->item:Ljava/util/HashMap;

    iget-object v3, v6, Lcom/example/healthcare/CartLabActivity;->packages:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v5

    invoke-virtual {v2, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v2, v6, Lcom/example/healthcare/CartLabActivity;->item:Ljava/util/HashMap;

    iget-object v3, v6, Lcom/example/healthcare/CartLabActivity;->packages:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v11, 0x2

    aget-object v3, v3, v11

    invoke-virtual {v2, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v2, v6, Lcom/example/healthcare/CartLabActivity;->item:Ljava/util/HashMap;

    iget-object v3, v6, Lcom/example/healthcare/CartLabActivity;->packages:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v11, 0x3

    aget-object v3, v3, v11

    invoke-virtual {v2, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v2, v6, Lcom/example/healthcare/CartLabActivity;->item:Ljava/util/HashMap;

    iget-object v3, v6, Lcom/example/healthcare/CartLabActivity;->packages:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/16 v16, 0x4

    aget-object v3, v3, v16

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v2, v6, Lcom/example/healthcare/CartLabActivity;->list:Ljava/util/ArrayList;

    iget-object v3, v6, Lcom/example/healthcare/CartLabActivity;->item:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x4

    const/4 v11, 0x5

    goto :goto_f7

    .line 78
    .end local v0    # "i":I
    :cond_152
    new-instance v5, Landroid/widget/SimpleAdapter;

    iget-object v2, v6, Lcom/example/healthcare/CartLabActivity;->list:Ljava/util/ArrayList;

    const v3, 0x7f09002e

    filled-new-array {v11, v15, v14, v13, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x5

    new-array v11, v0, [I

    fill-array-data v11, :array_1a2

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v13, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v13, v6, Lcom/example/healthcare/CartLabActivity;->sa:Landroid/widget/SimpleAdapter;

    .line 81
    iget-object v0, v6, Lcom/example/healthcare/CartLabActivity;->lst:Landroid/widget/ListView;

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v0, v6, Lcom/example/healthcare/CartLabActivity;->btnBack:Landroid/widget/Button;

    new-instance v1, Lcom/example/healthcare/CartLabActivity$1;

    invoke-direct {v1, v6}, Lcom/example/healthcare/CartLabActivity$1;-><init>(Lcom/example/healthcare/CartLabActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, v6, Lcom/example/healthcare/CartLabActivity;->btnCheckout:Landroid/widget/Button;

    new-instance v1, Lcom/example/healthcare/CartLabActivity$2;

    invoke-direct {v1, v6}, Lcom/example/healthcare/CartLabActivity$2;-><init>(Lcom/example/healthcare/CartLabActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/example/healthcare/CartLabActivity;->initDatePicker()V

    .line 103
    iget-object v0, v6, Lcom/example/healthcare/CartLabActivity;->dateButton:Landroid/widget/Button;

    new-instance v1, Lcom/example/healthcare/CartLabActivity$3;

    invoke-direct {v1, v6}, Lcom/example/healthcare/CartLabActivity$3;-><init>(Lcom/example/healthcare/CartLabActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-direct/range {p0 .. p0}, Lcom/example/healthcare/CartLabActivity;->initTimePicker()V

    .line 111
    iget-object v0, v6, Lcom/example/healthcare/CartLabActivity;->timeButton:Landroid/widget/Button;

    new-instance v1, Lcom/example/healthcare/CartLabActivity$4;

    invoke-direct {v1, v6}, Lcom/example/healthcare/CartLabActivity$4;-><init>(Lcom/example/healthcare/CartLabActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void

    nop

    :array_1a2
    .array-data 4
        0x7f0700ab
        0x7f0700ac
        0x7f0700ad
        0x7f0700ae
        0x7f0700af
    .end array-data
.end method
