.class Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsCompatImpl"
.end annotation


# instance fields
.field private final mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;)V
    .registers 2
    .param p1, "activityOptions"    # Landroid/app/ActivityOptions;

    .line 256
    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    .line 257
    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 258
    return-void
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .registers 3

    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_8

    .line 293
    const/4 v0, 0x0

    return-object v0

    .line 295
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .line 276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 277
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    .line 279
    :cond_b
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroid/support/v4/app/ActivityOptionsCompat;
    .registers 4
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_7

    .line 284
    return-object p0

    .line 286
    :cond_7
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 287
    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 2

    .line 262
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .registers 5
    .param p1, "otherOptions"    # Landroid/support/v4/app/ActivityOptionsCompat;

    .line 267
    instance-of v0, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    if-eqz v0, :cond_e

    .line 268
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    .line 270
    .local v0, "otherImpl":Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    iget-object v1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object v2, v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 272
    .end local v0    # "otherImpl":Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    :cond_e
    return-void
.end method
