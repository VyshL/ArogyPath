.class public Landroid/support/v4/app/Person$Builder;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

.field mIsBot:Z

.field mIsImportant:Z

.field mKey:Ljava/lang/String;

.field mName:Ljava/lang/CharSequence;

.field mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Person;)V
    .registers 3
    .param p1, "person"    # Landroid/support/v4/app/Person;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iget-object v0, p1, Landroid/support/v4/app/Person;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    .line 217
    iget-object v0, p1, Landroid/support/v4/app/Person;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    iput-object v0, p0, Landroid/support/v4/app/Person$Builder;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    .line 218
    iget-object v0, p1, Landroid/support/v4/app/Person;->mUri:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/Person$Builder;->mUri:Ljava/lang/String;

    .line 219
    iget-object v0, p1, Landroid/support/v4/app/Person;->mKey:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/Person$Builder;->mKey:Ljava/lang/String;

    .line 220
    iget-boolean v0, p1, Landroid/support/v4/app/Person;->mIsBot:Z

    iput-boolean v0, p0, Landroid/support/v4/app/Person$Builder;->mIsBot:Z

    .line 221
    iget-boolean v0, p1, Landroid/support/v4/app/Person;->mIsImportant:Z

    iput-boolean v0, p0, Landroid/support/v4/app/Person$Builder;->mIsImportant:Z

    .line 222
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/app/Person;
    .registers 2

    .line 300
    new-instance v0, Landroid/support/v4/app/Person;

    invoke-direct {v0, p0}, Landroid/support/v4/app/Person;-><init>(Landroid/support/v4/app/Person$Builder;)V

    return-object v0
.end method

.method public setBot(Z)Landroid/support/v4/app/Person$Builder;
    .registers 2
    .param p1, "bot"    # Z

    .line 281
    iput-boolean p1, p0, Landroid/support/v4/app/Person$Builder;->mIsBot:Z

    .line 282
    return-object p0
.end method

.method public setIcon(Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/app/Person$Builder;
    .registers 2
    .param p1, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;

    .line 242
    iput-object p1, p0, Landroid/support/v4/app/Person$Builder;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    .line 243
    return-object p0
.end method

.method public setImportant(Z)Landroid/support/v4/app/Person$Builder;
    .registers 2
    .param p1, "important"    # Z

    .line 293
    iput-boolean p1, p0, Landroid/support/v4/app/Person$Builder;->mIsImportant:Z

    .line 294
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Landroid/support/v4/app/Person$Builder;
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .line 271
    iput-object p1, p0, Landroid/support/v4/app/Person$Builder;->mKey:Ljava/lang/String;

    .line 272
    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Landroid/support/v4/app/Person$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 230
    iput-object p1, p0, Landroid/support/v4/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    .line 231
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Landroid/support/v4/app/Person$Builder;
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 260
    iput-object p1, p0, Landroid/support/v4/app/Person$Builder;->mUri:Ljava/lang/String;

    .line 261
    return-object p0
.end method
