.class public Landroid/support/v4/provider/FontsContractCompat;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;,
        Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;,
        Landroid/support/v4/provider/FontsContractCompat$FontInfo;,
        Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;,
        Landroid/support/v4/provider/FontsContractCompat$Columns;
    }
.end annotation


# static fields
.field private static final BACKGROUND_THREAD_KEEP_ALIVE_DURATION_MS:I = 0x2710

.field public static final PARCEL_FONT_RESULTS:Ljava/lang/String; = "font_results"

.field static final RESULT_CODE_PROVIDER_NOT_FOUND:I = -0x1

.field static final RESULT_CODE_WRONG_CERTIFICATES:I = -0x2

.field private static final TAG:Ljava/lang/String; = "FontsContractCompat"

.field private static final sBackgroundThread:Landroid/support/v4/provider/SelfDestructiveThread;

.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;

.field static final sPendingReplies:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback<",
            "Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;",
            ">;>;>;"
        }
    .end annotation
.end field

.field static final sTypefaceCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 174
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/support/v4/provider/FontsContractCompat;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    .line 177
    new-instance v0, Landroid/support/v4/provider/SelfDestructiveThread;

    const-string v1, "fonts"

    const/16 v2, 0xa

    const/16 v3, 0x2710

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/provider/SelfDestructiveThread;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v4/provider/FontsContractCompat;->sBackgroundThread:Landroid/support/v4/provider/SelfDestructiveThread;

    .line 203
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/provider/FontsContractCompat;->sLock:Ljava/lang/Object;

    .line 206
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    sput-object v0, Landroid/support/v4/provider/FontsContractCompat;->sPendingReplies:Landroid/support/v4/util/SimpleArrayMap;

    .line 776
    new-instance v0, Landroid/support/v4/provider/FontsContractCompat$5;

    invoke-direct {v0}, Landroid/support/v4/provider/FontsContractCompat$5;-><init>()V

    sput-object v0, Landroid/support/v4/provider/FontsContractCompat;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "fonts"    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    .line 662
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/graphics/TypefaceCompat;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 4
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 806
    .local v0, "shas":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 807
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 809
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 793
    .local p0, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 794
    return v2

    .line 796
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 797
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_26

    .line 798
    return v2

    .line 796
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 801
    .end local v0    # "i":I
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method public static fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/support/v4/provider/FontRequest;)Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "request"    # Landroid/support/v4/provider/FontRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 719
    nop

    .line 720
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 719
    invoke-static {v0, p2, v1}, Landroid/support/v4/provider/FontsContractCompat;->getProvider(Landroid/content/pm/PackageManager;Landroid/support/v4/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 721
    .local v0, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v0, :cond_17

    .line 722
    new-instance v1, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroid/support/v4/provider/FontsContractCompat$FontInfo;)V

    return-object v1

    .line 725
    :cond_17
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p2, v1, p1}, Landroid/support/v4/provider/FontsContractCompat;->getFontFromProvider(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object v1

    .line 727
    .local v1, "fonts":[Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    new-instance v2, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroid/support/v4/provider/FontsContractCompat$FontInfo;)V

    return-object v2
.end method

.method private static getCertificates(Landroid/support/v4/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 4
    .param p0, "request"    # Landroid/support/v4/provider/FontRequest;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/provider/FontRequest;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .line 769
    invoke-virtual {p0}, Landroid/support/v4/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 770
    invoke-virtual {p0}, Landroid/support/v4/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 772
    :cond_b
    invoke-virtual {p0}, Landroid/support/v4/provider/FontRequest;->getCertificatesArrayResId()I

    move-result v0

    .line 773
    .local v0, "resourceId":I
    invoke-static {p1, v0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static getFontFromProvider(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    .registers 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroid/support/v4/provider/FontRequest;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 816
    move-object/from16 v1, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 817
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/FontsContractCompat$FontInfo;>;"
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 818
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 819
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 820
    .local v11, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 821
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 822
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 823
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 824
    .local v3, "fileBaseUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 826
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-le v0, v4, :cond_65

    .line 827
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v15, "_id"

    const-string v16, "file_id"

    const-string v17, "font_ttc_index"

    const-string v18, "font_variation_settings"

    const-string v19, "font_weight"

    const-string v20, "font_italic"

    const-string v21, "result_code"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "query = ?"

    new-array v8, v13, [Ljava/lang/String;

    .line 831
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v14

    const/4 v9, 0x0

    .line 827
    move-object v5, v11

    move-object/from16 v10, p3

    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v12, v0

    .end local v12    # "cursor":Landroid/database/Cursor;
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_8c

    .line 834
    .end local v0    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :cond_65
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v15, "_id"

    const-string v16, "file_id"

    const-string v17, "font_ttc_index"

    const-string v18, "font_variation_settings"

    const-string v19, "font_weight"

    const-string v20, "font_italic"

    const-string v21, "result_code"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "query = ?"

    new-array v8, v13, [Ljava/lang/String;

    .line 838
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v14

    const/4 v9, 0x0

    .line 834
    move-object v5, v11

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v12, v0

    .line 840
    :goto_8c
    if-eqz v12, :cond_11d

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_11d

    .line 841
    const-string v0, "result_code"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 842
    .local v0, "resultCodeColumnIndex":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 843
    const-string v4, "_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 844
    .local v4, "idColumnIndex":I
    const-string v5, "file_id"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 845
    .local v5, "fileIdColumnIndex":I
    const-string v6, "font_ttc_index"

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 846
    .local v6, "ttcIndexColumnIndex":I
    const-string v7, "font_weight"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 847
    .local v7, "weightColumnIndex":I
    const-string v8, "font_italic"

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 848
    .local v8, "italicColumnIndex":I
    :goto_be
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_11d

    .line 849
    const/4 v9, -0x1

    if-eq v0, v9, :cond_ce

    .line 850
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v20, v10

    goto :goto_d0

    :cond_ce
    const/16 v20, 0x0

    .line 851
    .local v20, "resultCode":I
    :goto_d0
    if-eq v6, v9, :cond_d9

    .line 852
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v17, v10

    goto :goto_db

    :cond_d9
    const/16 v17, 0x0

    .line 854
    .local v17, "ttcIndex":I
    :goto_db
    if-ne v5, v9, :cond_ec

    .line 855
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    move-wide/from16 v18, v15

    .line 856
    .local v18, "id":J
    move-wide/from16 v14, v18

    .end local v18    # "id":J
    .local v14, "id":J
    invoke-static {v11, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v14, v16

    .line 857
    .local v14, "fileUri":Landroid/net/Uri;
    goto :goto_f6

    .line 858
    .end local v14    # "fileUri":Landroid/net/Uri;
    :cond_ec
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 859
    .local v14, "id":J
    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v14, v16

    .line 862
    .local v14, "fileUri":Landroid/net/Uri;
    :goto_f6
    if-eq v7, v9, :cond_ff

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move/from16 v18, v15

    goto :goto_103

    :cond_ff
    const/16 v15, 0x190

    const/16 v18, 0x190

    .line 863
    .local v18, "weight":I
    :goto_103
    if-eq v8, v9, :cond_10e

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v13, :cond_10e

    const/16 v19, 0x1

    goto :goto_110

    :cond_10e
    const/16 v19, 0x0

    .line 865
    .local v19, "italic":Z
    :goto_110
    new-instance v9, Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-object v15, v9

    move-object/from16 v16, v14

    invoke-direct/range {v15 .. v20}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;-><init>(Landroid/net/Uri;IIZI)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11b
    .catchall {:try_start_33 .. :try_end_11b} :catchall_12c

    .line 866
    const/4 v14, 0x0

    .end local v14    # "fileUri":Landroid/net/Uri;
    .end local v17    # "ttcIndex":I
    .end local v18    # "weight":I
    .end local v19    # "italic":Z
    .end local v20    # "resultCode":I
    goto :goto_be

    .line 869
    .end local v0    # "resultCodeColumnIndex":I
    .end local v4    # "idColumnIndex":I
    .end local v5    # "fileIdColumnIndex":I
    .end local v6    # "ttcIndexColumnIndex":I
    .end local v7    # "weightColumnIndex":I
    .end local v8    # "italicColumnIndex":I
    :cond_11d
    if-eqz v12, :cond_122

    .line 870
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 873
    :cond_122
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    return-object v0

    .line 869
    :catchall_12c
    move-exception v0

    if-eqz v12, :cond_132

    .line 870
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_132
    throw v0
.end method

.method static getFontInternal(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;I)Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroid/support/v4/provider/FontRequest;
    .param p2, "style"    # I

    .line 186
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0, p1}, Landroid/support/v4/provider/FontsContractCompat;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/support/v4/provider/FontRequest;)Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v1
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_5} :catch_2e

    .line 189
    .local v1, "result":Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
    nop

    .line 190
    invoke-virtual {v1}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v2

    const/4 v3, -0x3

    if-nez v2, :cond_1f

    .line 191
    nop

    .line 192
    invoke-virtual {v1}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object v2

    .line 191
    invoke-static {p0, v0, v2, p2}, Landroid/support/v4/graphics/TypefaceCompat;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 193
    .local v0, "typeface":Landroid/graphics/Typeface;
    new-instance v2, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;

    if-eqz v0, :cond_1b

    const/4 v3, 0x0

    :cond_1b
    invoke-direct {v2, v0, v3}, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;-><init>(Landroid/graphics/Typeface;I)V

    return-object v2

    .line 197
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_1f
    invoke-virtual {v1}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_27

    const/4 v3, -0x2

    :cond_27
    move v2, v3

    .line 200
    .local v2, "resultCode":I
    new-instance v3, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;

    invoke-direct {v3, v0, v2}, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;-><init>(Landroid/graphics/Typeface;I)V

    return-object v3

    .line 187
    .end local v1    # "result":Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
    .end local v2    # "resultCode":I
    :catch_2e
    move-exception v1

    .line 188
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;-><init>(Landroid/graphics/Typeface;I)V

    return-object v2
.end method

.method public static getFontSync(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroid/support/v4/provider/FontRequest;
    .param p2, "fontCallback"    # Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "isBlockingFetch"    # Z
    .param p5, "timeout"    # I
    .param p6, "style"    # I

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Landroid/support/v4/provider/FontsContractCompat;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 236
    .local v1, "cached":Landroid/graphics/Typeface;
    if-eqz v1, :cond_2b

    .line 237
    if-eqz p2, :cond_2a

    .line 238
    invoke-virtual {p2, v1}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 240
    :cond_2a
    return-object v1

    .line 243
    :cond_2b
    if-eqz p4, :cond_48

    const/4 v2, -0x1

    if-ne p5, v2, :cond_48

    .line 245
    invoke-static {p0, p1, p6}, Landroid/support/v4/provider/FontsContractCompat;->getFontInternal(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;I)Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;

    move-result-object v2

    .line 246
    .local v2, "typefaceResult":Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;
    if-eqz p2, :cond_45

    .line 247
    iget v3, v2, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;->mResult:I

    if-nez v3, :cond_40

    .line 248
    iget-object v3, v2, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p2, v3, p3}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_45

    .line 250
    :cond_40
    iget v3, v2, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;->mResult:I

    invoke-virtual {p2, v3, p3}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 253
    :cond_45
    :goto_45
    iget-object v3, v2, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    return-object v3

    .line 256
    .end local v2    # "typefaceResult":Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;
    :cond_48
    new-instance v2, Landroid/support/v4/provider/FontsContractCompat$1;

    invoke-direct {v2, p0, p1, p6, v0}, Landroid/support/v4/provider/FontsContractCompat$1;-><init>(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;ILjava/lang/String;)V

    .line 267
    .local v2, "fetcher":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;>;"
    const/4 v3, 0x0

    if-eqz p4, :cond_5d

    .line 269
    :try_start_50
    sget-object v4, Landroid/support/v4/provider/FontsContractCompat;->sBackgroundThread:Landroid/support/v4/provider/SelfDestructiveThread;

    invoke-virtual {v4, v2, p5}, Landroid/support/v4/provider/SelfDestructiveThread;->postAndWait(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;

    iget-object v3, v4, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_5a} :catch_5b

    return-object v3

    .line 270
    :catch_5b
    move-exception v4

    .line 271
    .local v4, "e":Ljava/lang/InterruptedException;
    return-object v3

    .line 274
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_5d
    if-nez p2, :cond_61

    move-object v4, v3

    goto :goto_66

    :cond_61
    new-instance v4, Landroid/support/v4/provider/FontsContractCompat$2;

    invoke-direct {v4, p2, p3}, Landroid/support/v4/provider/FontsContractCompat$2;-><init>(Landroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V

    .line 289
    .local v4, "reply":Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;, "Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback<Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;>;"
    :goto_66
    sget-object v5, Landroid/support/v4/provider/FontsContractCompat;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 290
    :try_start_69
    sget-object v6, Landroid/support/v4/provider/FontsContractCompat;->sPendingReplies:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v6, v0}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 293
    if-eqz v4, :cond_7c

    .line 294
    invoke-virtual {v6, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_7c
    monitor-exit v5

    return-object v3

    .line 298
    :cond_7e
    if-eqz v4, :cond_8b

    .line 299
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v7, "pendingReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback<Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;>;>;"
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {v6, v0, v7}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .end local v7    # "pendingReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback<Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;>;>;"
    :cond_8b
    monitor-exit v5
    :try_end_8c
    .catchall {:try_start_69 .. :try_end_8c} :catchall_97

    .line 304
    sget-object v5, Landroid/support/v4/provider/FontsContractCompat;->sBackgroundThread:Landroid/support/v4/provider/SelfDestructiveThread;

    new-instance v6, Landroid/support/v4/provider/FontsContractCompat$3;

    invoke-direct {v6, v0}, Landroid/support/v4/provider/FontsContractCompat$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v6}, Landroid/support/v4/provider/SelfDestructiveThread;->postAndReply(Ljava/util/concurrent/Callable;Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;)V

    .line 320
    return-object v3

    .line 303
    :catchall_97
    move-exception v3

    :try_start_98
    monitor-exit v5
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw v3
.end method

.method public static getProvider(Landroid/content/pm/PackageManager;Landroid/support/v4/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .registers 11
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "request"    # Landroid/support/v4/provider/FontRequest;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 736
    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "providerAuthority":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 738
    .local v1, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_78

    .line 743
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 752
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 754
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Landroid/support/v4/provider/FontsContractCompat;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v3

    .line 755
    .local v3, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v4, Landroid/support/v4/provider/FontsContractCompat;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 756
    invoke-static {p1, p2}, Landroid/support/v4/provider/FontsContractCompat;->getCertificates(Landroid/support/v4/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v4

    .line 757
    .local v4, "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4f

    .line 759
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 760
    .local v6, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v7, Landroid/support/v4/provider/FontsContractCompat;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 761
    invoke-static {v3, v6}, Landroid/support/v4/provider/FontsContractCompat;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 762
    return-object v1

    .line 757
    .end local v6    # "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 765
    .end local v5    # "i":I
    :cond_4f
    const/4 v5, 0x0

    return-object v5

    .line 744
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v4    # "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :cond_51
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found content provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but package was not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 746
    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 739
    :cond_78
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package found for authority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static prepareFontData(Landroid/content/Context;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fonts"    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/support/v4/provider/FontsContractCompat$FontInfo;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 681
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 683
    .local v0, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_27

    aget-object v3, p1, v2

    .line 684
    .local v3, "font":Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    invoke-virtual {v3}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v4

    if-eqz v4, :cond_12

    .line 685
    goto :goto_24

    .line 688
    :cond_12
    invoke-virtual {v3}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 689
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 690
    goto :goto_24

    .line 693
    :cond_1d
    invoke-static {p0, p2, v4}, Landroid/support/v4/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 694
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    .end local v3    # "font":Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 696
    :cond_27
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static requestFont(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroid/support/v4/provider/FontRequest;
    .param p2, "callback"    # Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 532
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 533
    .local v0, "callerThreadHandler":Landroid/os/Handler;
    new-instance v1, Landroid/support/v4/provider/FontsContractCompat$4;

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/support/v4/provider/FontsContractCompat$4;-><init>(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/os/Handler;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 645
    return-void
.end method

.method public static resetCache()V
    .registers 1

    .line 225
    sget-object v0, Landroid/support/v4/provider/FontsContractCompat;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 226
    return-void
.end method
