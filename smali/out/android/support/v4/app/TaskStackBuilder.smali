.class public final Landroid/support/v4/app/TaskStackBuilder;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskStackBuilder"


# instance fields
.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "a"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 83
    iput-object p1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 95
    new-instance v0, Landroid/support/v4/app/TaskStackBuilder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static from(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;
    .registers 3
    .param p1, "nextIntent"    # Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    return-object p0
.end method

.method public addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;
    .registers 4
    .param p1, "nextIntent"    # Landroid/content/Intent;

    .line 139
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 140
    .local v0, "target":Landroid/content/ComponentName;
    if-nez v0, :cond_10

    .line 141
    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 143
    :cond_10
    if-eqz v0, :cond_15

    .line 144
    invoke-virtual {p0, v0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;

    .line 146
    :cond_15
    invoke-virtual {p0, p1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 147
    return-object p0
.end method

.method public addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;
    .registers 5
    .param p1, "sourceActivity"    # Landroid/app/Activity;

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "parent":Landroid/content/Intent;
    instance-of v1, p1, Landroid/support/v4/app/TaskStackBuilder$SupportParentable;

    if-eqz v1, :cond_c

    .line 161
    move-object v1, p1

    check-cast v1, Landroid/support/v4/app/TaskStackBuilder$SupportParentable;

    invoke-interface {v1}, Landroid/support/v4/app/TaskStackBuilder$SupportParentable;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 163
    :cond_c
    if-nez v0, :cond_12

    .line 164
    invoke-static {p1}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 167
    :cond_12
    if-eqz v0, :cond_2a

    .line 170
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 171
    .local v1, "target":Landroid/content/ComponentName;
    if-nez v1, :cond_24

    .line 172
    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 174
    :cond_24
    invoke-virtual {p0, v1}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;

    .line 175
    invoke-virtual {p0, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 177
    .end local v1    # "target":Landroid/content/ComponentName;
    :cond_2a
    return-object p0
.end method

.method public addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;
    .registers 6
    .param p1, "sourceActivityName"    # Landroid/content/ComponentName;

    .line 201
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 203
    .local v0, "insertAt":I
    :try_start_6
    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 204
    .local v1, "parent":Landroid/content/Intent;
    :goto_c
    if-eqz v1, :cond_1f

    .line 205
    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 206
    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_1d} :catch_21

    move-object v1, v2

    goto :goto_c

    .line 211
    .end local v1    # "parent":Landroid/content/Intent;
    :cond_1f
    nop

    .line 212
    return-object p0

    .line 208
    :catch_21
    move-exception v1

    .line 209
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "TaskStackBuilder"

    const-string v3, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/support/v4/app/TaskStackBuilder;"
        }
    .end annotation

    .line 189
    .local p1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    return-object v0
.end method

.method public editIntentAt(I)Landroid/content/Intent;
    .registers 3
    .param p1, "index"    # I

    .line 247
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getIntent(I)Landroid/content/Intent;
    .registers 3
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    invoke-virtual {p0, p1}, Landroid/support/v4/app/TaskStackBuilder;->editIntentAt(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getIntentCount()I
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .registers 5

    .line 357
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/Intent;

    .line 358
    .local v0, "intents":[Landroid/content/Intent;
    array-length v1, v0

    if-nez v1, :cond_c

    return-object v0

    .line 360
    :cond_c
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v2, 0x1000c000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v3

    .line 362
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_24
    array-length v2, v0

    if-ge v1, v2, :cond_39

    .line 363
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v2, v0, v1

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 365
    .end local v1    # "i":I
    :cond_39
    return-object v0
.end method

.method public getPendingIntent(II)Landroid/app/PendingIntent;
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 331
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 336
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    .line 337
    .local v0, "intents":[Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v3, 0x1000c000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v2

    .line 340
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_34

    .line 341
    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-static {v1, p1, v0, p2, p3}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 344
    :cond_34
    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-static {v1, p1, v0, p2}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 332
    .end local v0    # "intents":[Landroid/content/Intent;
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public startActivities()V
    .registers 2

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V

    .line 269
    return-void
.end method

.method public startActivities(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "options"    # Landroid/os/Bundle;

    .line 283
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 288
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    .line 289
    .local v0, "intents":[Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v3, 0x1000c000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v2

    .line 291
    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Landroid/support/v4/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 292
    new-instance v1, Landroid/content/Intent;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 293
    .local v1, "topIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 294
    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 296
    .end local v1    # "topIntent":Landroid/content/Intent;
    :cond_43
    return-void

    .line 284
    .end local v0    # "intents":[Landroid/content/Intent;
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
