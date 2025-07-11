.class Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"

# interfaces
.implements Landroid/support/v4/os/LocaleListInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/LocaleListCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocaleListCompatApi24Impl"
.end annotation


# instance fields
.field private mLocaleList:Landroid/os/LocaleList;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Locale;

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    move-object v1, p1

    check-cast v1, Landroid/support/v4/os/LocaleListCompat;

    invoke-virtual {v1}, Landroid/support/v4/os/LocaleListCompat;->unwrap()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/util/Locale;
    .registers 3
    .param p1, "index"    # I

    .line 119
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .registers 3
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    .line 162
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    if-eqz v0, :cond_9

    .line 163
    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 165
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocaleList()Ljava/lang/Object;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 146
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 136
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->indexOf(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 124
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public varargs setLocaleList([Ljava/util/Locale;)V
    .registers 3
    .param p1, "list"    # [Ljava/util/Locale;

    .line 109
    new-instance v0, Landroid/os/LocaleList;

    invoke-direct {v0, p1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    .line 110
    return-void
.end method

.method public size()I
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
