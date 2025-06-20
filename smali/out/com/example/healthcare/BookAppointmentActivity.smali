.class public Lcom/example/healthcare/BookAppointmentActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BookAppointmentActivity.java"


# instance fields
.field private btnBack:Landroid/widget/Button;

.field private btnBook:Landroid/widget/Button;

.field private dateButton:Landroid/widget/Button;

.field private datePickerDialog:Landroid/app/DatePickerDialog;

.field ed1:Landroid/widget/EditText;

.field ed2:Landroid/widget/EditText;

.field ed3:Landroid/widget/EditText;

.field ed4:Landroid/widget/EditText;

.field private timeButton:Landroid/widget/Button;

.field private timePickerDialog:Landroid/app/TimePickerDialog;

.field tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/healthcare/BookAppointmentActivity;)Landroid/app/DatePickerDialog;
    .registers 2
    .param p0, "x0"    # Lcom/example/healthcare/BookAppointmentActivity;

    .line 21
    iget-object v0, p0, Lcom/example/healthcare/BookAppointmentActivity;->datePickerDialog:Landroid/app/DatePickerDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/healthcare/BookAppointmentActivity;)Landroid/app/TimePickerDialog;
    .registers 2
    .param p0, "x0"    # Lcom/example/healthcare/BookAppointmentActivity;

    .line 21
    iget-object v0, p0, Lcom/example/healthcare/BookAppointmentActivity;->timePickerDialog:Landroid/app/TimePickerDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/example/healthcare/BookAppointmentActivity;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/example/healthcare/BookAppointmentActivity;

    .line 21
    iget-object v0, p0, Lcom/example/healthcare/BookAppointmentActivity;->dateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/example/healthcare/BookAppointmentActivity;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/example/healthcare/BookAppointmentActivity;

    .line 21
    iget-object v0, p0, Lcom/example/healthcare/BookAppointmentActivity;->timeButton:Landroid/widget/Button;

    return-object v0
.end method

.method private initDatePicker()V
    .registers 14

    .line 103
    new-instance v3, Lcom/example/healthcare/BookAppointmentActivity$5;

    invoke-direct {v3, p0}, Lcom/example/healthcare/BookAppointmentActivity$5;-><init>(Lcom/example/healthcare/BookAppointmentActivity;)V

    .line 110
    .local v3, "dateSetListener":Landroid/app/DatePickerDialog$OnDateSetListener;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 111
    .local v7, "cal":Ljava/util/Calendar;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 112
    .local v8, "year":I
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 113
    .local v9, "month":I
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 115
    .local v10, "day":I
    const/4 v11, 0x2

    .line 116
    .local v11, "style":I
    new-instance v12, Landroid/app/DatePickerDialog;

    move-object v0, v12

    move-object v1, p0

    move v2, v11

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v12, p0, Lcom/example/healthcare/BookAppointmentActivity;->datePickerDialog:Landroid/app/DatePickerDialog;

    .line 117
    invoke-virtual {v12}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v4, 0x5265c00

    add-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 118
    return-void
.end method

.method private initTimePicker()V
    .registers 13

    .line 120
    new-instance v3, Lcom/example/healthcare/BookAppointmentActivity$6;

    invoke-direct {v3, p0}, Lcom/example/healthcare/BookAppointmentActivity$6;-><init>(Lcom/example/healthcare/BookAppointmentActivity;)V

    .line 126
    .local v3, "timeSetListener":Landroid/app/TimePickerDialog$OnTimeSetListener;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 127
    .local v7, "cal":Ljava/util/Calendar;
    const/16 v0, 0xa

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 128
    .local v8, "hrs":I
    const/16 v0, 0xc

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 130
    .local v9, "mins":I
    const/4 v10, 0x2

    .line 131
    .local v10, "style":I
    new-instance v11, Landroid/app/TimePickerDialog;

    const/4 v6, 0x1

    move-object v0, v11

    move-object v1, p0

    move v2, v10

    move v4, v8

    move v5, v9

    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v11, p0, Lcom/example/healthcare/BookAppointmentActivity;->timePickerDialog:Landroid/app/TimePickerDialog;

    .line 132
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    move-object/from16 v7, p0

    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f09001c

    invoke-virtual {v7, v0}, Lcom/example/healthcare/BookAppointmentActivity;->setContentView(I)V

    .line 34
    const v0, 0x7f070108

    invoke-virtual {v7, v0}, Lcom/example/healthcare/BookAppointmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->tv:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f070079

    invoke-virtual {v7, v0}, Lcom/example/healthcare/BookAppointmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->ed1:Landroid/widget/EditText;

    .line 36
    const v0, 0x7f070077

    invoke-virtual {v7, v0}, Lcom/example/healthcare/BookAppointmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->ed2:Landroid/widget/EditText;

    .line 37
    const v0, 0x7f070078

    invoke-virtual {v7, v0}, Lcom/example/healthcare/BookAppointmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->ed3:Landroid/widget/EditText;

    .line 38
    const v0, 0x7f07007a

    invoke-virtual {v7, v0}, Lcom/example/healthcare/BookAppointmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->ed4:Landroid/widget/EditText;

    .line 39
    const v0, 0x7f070032

    invoke-virtual {v7, v0}, Lcom/example/healthcare/BookAppointmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->dateButton:Landroid/widget/Button;

    .line 40
    const v0, 0x7f070033

    invoke-virtual {v7, v0}, Lcom/example/healthcare/BookAppointmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->timeButton:Landroid/widget/Button;

    .line 41
    const v0, 0x7f07003b

    invoke-virtual {v7, v0}, Lcom/example/healthcare/BookAppointmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->btnBook:Landroid/widget/Button;

    .line 42
    const v0, 0x7f070031

    invoke-virtual {v7, v0}, Lcom/example/healthcare/BookAppointmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->btnBack:Landroid/widget/Button;

    .line 44
    iget-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->ed1:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 45
    iget-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->ed2:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 46
    iget-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->ed3:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 47
    iget-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->ed4:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/example/healthcare/BookAppointmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 50
    .local v8, "it":Landroid/content/Intent;
    const-string v0, "text1"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 51
    .local v9, "title":Ljava/lang/String;
    const-string v0, "text2"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 52
    .local v10, "fullname":Ljava/lang/String;
    const-string v0, "text3"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 53
    .local v11, "address":Ljava/lang/String;
    const-string v0, "text4"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 54
    .local v12, "contact":Ljava/lang/String;
    const-string v0, "text5"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 56
    .local v13, "fees":Ljava/lang/String;
    iget-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->ed1:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->ed2:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->ed3:Landroid/widget/EditText;

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->ed4:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cons Fees"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/example/healthcare/BookAppointmentActivity;->initDatePicker()V

    .line 64
    iget-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->dateButton:Landroid/widget/Button;

    new-instance v1, Lcom/example/healthcare/BookAppointmentActivity$1;

    invoke-direct {v1, v7}, Lcom/example/healthcare/BookAppointmentActivity$1;-><init>(Lcom/example/healthcare/BookAppointmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/example/healthcare/BookAppointmentActivity;->initTimePicker()V

    .line 72
    iget-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->timeButton:Landroid/widget/Button;

    new-instance v1, Lcom/example/healthcare/BookAppointmentActivity$2;

    invoke-direct {v1, v7}, Lcom/example/healthcare/BookAppointmentActivity$2;-><init>(Lcom/example/healthcare/BookAppointmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, v7, Lcom/example/healthcare/BookAppointmentActivity;->btnBack:Landroid/widget/Button;

    new-instance v1, Lcom/example/healthcare/BookAppointmentActivity$3;

    invoke-direct {v1, v7}, Lcom/example/healthcare/BookAppointmentActivity$3;-><init>(Lcom/example/healthcare/BookAppointmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v14, v7, Lcom/example/healthcare/BookAppointmentActivity;->btnBook:Landroid/widget/Button;

    new-instance v15, Lcom/example/healthcare/BookAppointmentActivity$4;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/example/healthcare/BookAppointmentActivity$4;-><init>(Lcom/example/healthcare/BookAppointmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method
