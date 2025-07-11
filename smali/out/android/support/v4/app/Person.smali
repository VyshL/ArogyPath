.class public Landroid/support/v4/app/Person;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/Person$Builder;
    }
.end annotation


# static fields
.field private static final ICON_KEY:Ljava/lang/String; = "icon"

.field private static final IS_BOT_KEY:Ljava/lang/String; = "isBot"

.field private static final IS_IMPORTANT_KEY:Ljava/lang/String; = "isImportant"

.field private static final KEY_KEY:Ljava/lang/String; = "key"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field private static final URI_KEY:Ljava/lang/String; = "uri"


# instance fields
.field mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

.field mIsBot:Z

.field mIsImportant:Z

.field mKey:Ljava/lang/String;

.field mName:Ljava/lang/CharSequence;

.field mUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Person$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/support/v4/app/Person$Builder;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iget-object v0, p1, Landroid/support/v4/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/Person;->mName:Ljava/lang/CharSequence;

    .line 97
    iget-object v0, p1, Landroid/support/v4/app/Person$Builder;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    iput-object v0, p0, Landroid/support/v4/app/Person;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    .line 98
    iget-object v0, p1, Landroid/support/v4/app/Person$Builder;->mUri:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/Person;->mUri:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Landroid/support/v4/app/Person$Builder;->mKey:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/Person;->mKey:Ljava/lang/String;

    .line 100
    iget-boolean v0, p1, Landroid/support/v4/app/Person$Builder;->mIsBot:Z

    iput-boolean v0, p0, Landroid/support/v4/app/Person;->mIsBot:Z

    .line 101
    iget-boolean v0, p1, Landroid/support/v4/app/Person$Builder;->mIsImportant:Z

    iput-boolean v0, p0, Landroid/support/v4/app/Person;->mIsImportant:Z

    .line 102
    return-void
.end method

.method public static fromAndroidPerson(Landroid/app/Person;)Landroid/support/v4/app/Person;
    .registers 3
    .param p0, "person"    # Landroid/app/Person;

    .line 68
    new-instance v0, Landroid/support/v4/app/Person$Builder;

    invoke-direct {v0}, Landroid/support/v4/app/Person$Builder;-><init>()V

    .line 69
    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/support/v4/app/Person$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 72
    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 70
    :goto_1d
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Person$Builder;->setIcon(Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/app/Person$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/support/v4/app/Person$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/support/v4/app/Person$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Landroid/app/Person;->isBot()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Person$Builder;->setBot(Z)Landroid/support/v4/app/Person$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Landroid/app/Person;->isImportant()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Person$Builder;->setImportant(Z)Landroid/support/v4/app/Person$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/support/v4/app/Person$Builder;->build()Landroid/support/v4/app/Person;

    move-result-object v0

    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/Person;
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 47
    const-string v0, "icon"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, "iconBundle":Landroid/os/Bundle;
    new-instance v1, Landroid/support/v4/app/Person$Builder;

    invoke-direct {v1}, Landroid/support/v4/app/Person$Builder;-><init>()V

    .line 49
    const-string v2, "name"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/support/v4/app/Person$Builder;

    move-result-object v1

    if-eqz v0, :cond_1c

    .line 50
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/IconCompat;->createFromBundle(Landroid/os/Bundle;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v2

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Person$Builder;->setIcon(Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/app/Person$Builder;

    move-result-object v1

    .line 51
    const-string v2, "uri"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/support/v4/app/Person$Builder;

    move-result-object v1

    .line 52
    const-string v2, "key"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/support/v4/app/Person$Builder;

    move-result-object v1

    .line 53
    const-string v2, "isBot"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Person$Builder;->setBot(Z)Landroid/support/v4/app/Person$Builder;

    move-result-object v1

    .line 54
    const-string v2, "isImportant"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Person$Builder;->setImportant(Z)Landroid/support/v4/app/Person$Builder;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/support/v4/app/Person$Builder;->build()Landroid/support/v4/app/Person;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getIcon()Landroid/support/v4/graphics/drawable/IconCompat;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/support/v4/app/Person;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/support/v4/app/Person;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/support/v4/app/Person;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/support/v4/app/Person;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public isBot()Z
    .registers 2

    .line 192
    iget-boolean v0, p0, Landroid/support/v4/app/Person;->mIsBot:Z

    return v0
.end method

.method public isImportant()Z
    .registers 2

    .line 200
    iget-boolean v0, p0, Landroid/support/v4/app/Person;->mIsImportant:Z

    return v0
.end method

.method public toAndroidPerson()Landroid/app/Person;
    .registers 3

    .line 135
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    .line 136
    invoke-virtual {p0}, Landroid/support/v4/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Landroid/support/v4/app/Person;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Landroid/support/v4/app/Person;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Landroid/support/v4/app/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Landroid/support/v4/app/Person;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Landroid/support/v4/app/Person;->isBot()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Landroid/support/v4/app/Person;->isImportant()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Landroid/support/v4/app/Person$Builder;
    .registers 2

    .line 123
    new-instance v0, Landroid/support/v4/app/Person$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/Person$Builder;-><init>(Landroid/support/v4/app/Person;)V

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/app/Person;->mName:Ljava/lang/CharSequence;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Landroid/support/v4/app/Person;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/support/v4/graphics/drawable/IconCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    iget-object v1, p0, Landroid/support/v4/app/Person;->mUri:Ljava/lang/String;

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Landroid/support/v4/app/Person;->mKey:Ljava/lang/String;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-boolean v1, p0, Landroid/support/v4/app/Person;->mIsBot:Z

    const-string v2, "isBot"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    iget-boolean v1, p0, Landroid/support/v4/app/Person;->mIsImportant:Z

    const-string v2, "isImportant"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    return-object v0
.end method
