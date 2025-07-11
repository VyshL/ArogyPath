.class public Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/pm/ShortcutInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Landroid/support/v4/content/pm/ShortcutInfoCompat;

    invoke-direct {v0}, Landroid/support/v4/content/pm/ShortcutInfoCompat;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    .line 186
    iput-object p1, v0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 187
    iput-object p2, v0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    .line 188
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/content/pm/ShortcutInfoCompat;
    .registers 3

    .line 302
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    iget-object v0, v0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 305
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    iget-object v0, v0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    iget-object v0, v0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v0, v0

    if-eqz v0, :cond_1a

    .line 308
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    return-object v0

    .line 306
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shortcut must have an intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shortcut must have a non-empty label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActivity(Landroid/content/ComponentName;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 275
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    .line 276
    return-object p0
.end method

.method public setAlwaysBadged()Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3

    .line 292
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIsAlwaysBadged:Z

    .line 293
    return-object p0
.end method

.method public setDisabledMessage(Ljava/lang/CharSequence;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1, "disabledMessage"    # Ljava/lang/CharSequence;

    .line 227
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 228
    return-object p0
.end method

.method public setIcon(Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;

    .line 262
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    .line 263
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 242
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->setIntents([Landroid/content/Intent;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIntents([Landroid/content/Intent;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 253
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 254
    return-object p0
.end method

.method public setLongLabel(Ljava/lang/CharSequence;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1, "longLabel"    # Ljava/lang/CharSequence;

    .line 215
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    .line 216
    return-object p0
.end method

.method public setShortLabel(Ljava/lang/CharSequence;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1, "shortLabel"    # Ljava/lang/CharSequence;

    .line 201
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 202
    return-object p0
.end method
