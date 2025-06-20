.class public Lcom/example/healthcare/Database;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Database.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 15
    return-void
.end method


# virtual methods
.method public addCart(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
    .registers 9
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "product"    # Ljava/lang/String;
    .param p3, "price"    # F
    .param p4, "otype"    # Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "Username"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "Product"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "Price"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 57
    const-string v1, "otype"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/example/healthcare/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 59
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "cart"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 60
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 61
    return-void
.end method

.method public addOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
    .registers 14
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "fullname"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "contact"    # Ljava/lang/String;
    .param p5, "pincode"    # I
    .param p6, "date"    # Ljava/lang/String;
    .param p7, "time"    # Ljava/lang/String;
    .param p8, "price"    # F
    .param p9, "otype"    # Ljava/lang/String;

    .line 102
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "Username"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "fullname"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "address"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "contactno"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pincode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v1, "date"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "time"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "amount"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 111
    const-string v1, "otype"

    invoke-virtual {v0, v1, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/example/healthcare/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 113
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "orderplace"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 114
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 115
    return-void
.end method

.method public checkAppintmentExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "fullname"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "contact"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/String;
    .param p6, "time"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "result":I
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    .line 136
    .local v1, "str":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 137
    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 138
    const/4 v2, 0x2

    aput-object p3, v1, v2

    .line 139
    const/4 v2, 0x3

    aput-object p4, v1, v2

    .line 140
    const/4 v2, 0x4

    aput-object p5, v1, v2

    .line 141
    const/4 v2, 0x5

    aput-object p6, v1, v2

    .line 142
    invoke-virtual {p0}, Lcom/example/healthcare/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 143
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select * from orderplace where username = ? and fullname=? and address = ? and contact = ? and date = ? and time = ?"

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 144
    .local v3, "c":Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 145
    const/4 v0, 0x1

    .line 147
    :cond_27
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 148
    return v0
.end method

.method public checkCart(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "product"    # Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "result":I
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 65
    .local v1, "str":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 66
    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 67
    invoke-virtual {p0}, Lcom/example/healthcare/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 68
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select * from cart where username = ? and product=?"

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 70
    .local v3, "c":Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 71
    const/4 v0, 0x1

    .line 73
    :cond_1b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 74
    return v0
.end method

.method public getCartData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "otype"    # Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/example/healthcare/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 87
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    .line 88
    .local v3, "str":[Ljava/lang/String;
    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 89
    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 90
    const-string v5, "select * from cart where username = ? and otype = ?"

    invoke-virtual {v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 91
    .local v5, "c":Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 93
    :cond_1e
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "product":Ljava/lang/String;
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, "price":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v6    # "product":Ljava/lang/String;
    .end local v7    # "price":Ljava/lang/String;
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1e

    .line 98
    :cond_46
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 99
    return-object v0
.end method

.method public getOrderData(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "username"    # Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/example/healthcare/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 120
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 121
    .local v3, "str":[Ljava/lang/String;
    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 122
    const-string v4, "select * from orderplace where username = ?"

    invoke-virtual {v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 123
    .local v4, "c":Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_97

    .line 125
    :cond_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x2

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x4

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x5

    .line 126
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x6

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x8

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 129
    :cond_97
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 130
    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "result":I
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 43
    .local v1, "str":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 44
    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 45
    invoke-virtual {p0}, Lcom/example/healthcare/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 46
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select * from users where username=? and password=?"

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 47
    .local v3, "c":Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 48
    const/4 v0, 0x1

    .line 50
    :cond_1b
    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    const-string v0, "create table users(username text , email text , password text)"

    .line 20
    .local v0, "qry1":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    const-string v1, "create table cart(username text , product text , price float, otype text)"

    .line 22
    .local v1, "qry2":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    const-string v2, "create table orderplace(username text , fullname text , address text, contactno text, pincode int, date text, time text,amount float, otype text)"

    .line 24
    .local v2, "qry3":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .line 30
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 33
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "email"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "password"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/example/healthcare/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 37
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "users"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 38
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 39
    return-void
.end method

.method public removeCart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "otype"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 78
    .local v0, "str":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 79
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 80
    invoke-virtual {p0}, Lcom/example/healthcare/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 81
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "cart"

    const-string v3, "username = ? and otype = ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 83
    return-void
.end method
