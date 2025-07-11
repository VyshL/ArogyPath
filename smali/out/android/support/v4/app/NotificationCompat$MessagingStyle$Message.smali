.class public final Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field static final KEY_DATA_MIME_TYPE:Ljava/lang/String; = "type"

.field static final KEY_DATA_URI:Ljava/lang/String; = "uri"

.field static final KEY_EXTRAS_BUNDLE:Ljava/lang/String; = "extras"

.field static final KEY_NOTIFICATION_PERSON:Ljava/lang/String; = "sender_person"

.field static final KEY_PERSON:Ljava/lang/String; = "person"

.field static final KEY_SENDER:Ljava/lang/String; = "sender"

.field static final KEY_TEXT:Ljava/lang/String; = "text"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "time"


# instance fields
.field private mDataMimeType:Ljava/lang/String;

.field private mDataUri:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private final mPerson:Landroid/support/v4/app/Person;

.field private final mText:Ljava/lang/CharSequence;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;JLandroid/support/v4/app/Person;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "person"    # Landroid/support/v4/app/Person;

    .line 2614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2599
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    .line 2615
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    .line 2616
    iput-wide p2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    .line 2617
    iput-object p4, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroid/support/v4/app/Person;

    .line 2618
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2635
    new-instance v0, Landroid/support/v4/app/Person$Builder;

    invoke-direct {v0}, Landroid/support/v4/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p4}, Landroid/support/v4/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/support/v4/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Person$Builder;->build()Landroid/support/v4/app/Person;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/support/v4/app/Person;)V

    .line 2636
    return-void
.end method

.method static getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 2757
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    .line 2758
    .local v0, "bundles":[Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 2759
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1c

    .line 2760
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2759
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2762
    .end local v2    # "i":I
    :cond_1c
    return-object v0
.end method

.method static getMessageFromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .registers 12
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 2782
    const-string v0, "uri"

    const-string v1, "extras"

    const-string v2, "type"

    const-string v3, "sender"

    const-string v4, "sender_person"

    const-string v5, "person"

    const-string v6, "time"

    const-string v7, "text"

    const/4 v8, 0x0

    :try_start_11
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_99

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1f

    goto/16 :goto_99

    .line 2786
    :cond_1f
    const/4 v9, 0x0

    .line 2787
    .local v9, "person":Landroid/support/v4/app/Person;
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_30

    .line 2789
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/app/Person;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/Person;

    move-result-object v3

    move-object v9, v3

    goto :goto_61

    .line 2790
    :cond_30
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v5, v10, :cond_49

    .line 2793
    nop

    .line 2794
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 2793
    invoke-static {v3}, Landroid/support/v4/app/Person;->fromAndroidPerson(Landroid/app/Person;)Landroid/support/v4/app/Person;

    move-result-object v3

    move-object v9, v3

    goto :goto_61

    .line 2795
    :cond_49
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 2797
    new-instance v4, Landroid/support/v4/app/Person$Builder;

    invoke-direct {v4}, Landroid/support/v4/app/Person$Builder;-><init>()V

    .line 2798
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/support/v4/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/support/v4/app/Person$Builder;

    move-result-object v3

    .line 2799
    invoke-virtual {v3}, Landroid/support/v4/app/Person$Builder;->build()Landroid/support/v4/app/Person;

    move-result-object v3

    move-object v9, v3

    .line 2802
    :cond_61
    :goto_61
    new-instance v3, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 2803
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2804
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6, v9}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/support/v4/app/Person;)V

    .line 2807
    .local v3, "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 2808
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 2809
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2810
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2809
    invoke-virtual {v3, v2, v0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 2812
    :cond_87
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 2813
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_98
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_98} :catch_9a

    .line 2815
    :cond_98
    return-object v3

    .line 2783
    .end local v3    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .end local v9    # "person":Landroid/support/v4/app/Person;
    :cond_99
    :goto_99
    return-object v8

    .line 2816
    :catch_9a
    move-exception v0

    .line 2817
    .local v0, "e":Ljava/lang/ClassCastException;
    return-object v8
.end method

.method static getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;
    .registers 4
    .param p0, "bundles"    # [Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .line 2767
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2768
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 2769
    aget-object v2, p0, v1

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_1d

    .line 2770
    aget-object v2, p0, v1

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v2

    .line 2771
    .local v2, "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    if-eqz v2, :cond_1d

    .line 2772
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2768
    .end local v2    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2776
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method

.method private toBundle()Landroid/os/Bundle;
    .registers 5

    .line 2726
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2727
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_e

    .line 2728
    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2730
    :cond_e
    iget-wide v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    const-string v3, "time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2731
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroid/support/v4/app/Person;

    if-eqz v1, :cond_3f

    .line 2734
    invoke-virtual {v1}, Landroid/support/v4/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "sender"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2737
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_34

    .line 2738
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroid/support/v4/app/Person;

    invoke-virtual {v1}, Landroid/support/v4/app/Person;->toAndroidPerson()Landroid/app/Person;

    move-result-object v1

    const-string v2, "sender_person"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_3f

    .line 2740
    :cond_34
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroid/support/v4/app/Person;

    invoke-virtual {v1}, Landroid/support/v4/app/Person;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "person"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2743
    :cond_3f
    :goto_3f
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 2744
    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    :cond_48
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    if-eqz v1, :cond_51

    .line 2747
    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2749
    :cond_51
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_5a

    .line 2750
    const-string v2, "extras"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2752
    :cond_5a
    return-object v0
.end method


# virtual methods
.method public getDataMimeType()Ljava/lang/String;
    .registers 2

    .line 2713
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .registers 2

    .line 2722
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 2690
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPerson()Landroid/support/v4/app/Person;
    .registers 2

    .line 2707
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroid/support/v4/app/Person;

    return-object v0
.end method

.method public getSender()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2701
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroid/support/v4/app/Person;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/support/v4/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 2679
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 2684
    iget-wide v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    return-wide v0
.end method

.method public setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .registers 3
    .param p1, "dataMimeType"    # Ljava/lang/String;
    .param p2, "dataUri"    # Landroid/net/Uri;

    .line 2668
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    .line 2669
    iput-object p2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    .line 2670
    return-object p0
.end method
