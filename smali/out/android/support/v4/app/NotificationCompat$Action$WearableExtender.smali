.class public final Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$Action$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x1

.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final FLAG_AVAILABLE_OFFLINE:I = 0x1

.field private static final FLAG_HINT_DISPLAY_INLINE:I = 0x4

.field private static final FLAG_HINT_LAUNCHES_ACTIVITY:I = 0x2

.field private static final KEY_CANCEL_LABEL:Ljava/lang/String; = "cancelLabel"

.field private static final KEY_CONFIRM_LABEL:Ljava/lang/String; = "confirmLabel"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_IN_PROGRESS_LABEL:Ljava/lang/String; = "inProgressLabel"


# instance fields
.field private mCancelLabel:Ljava/lang/CharSequence;

.field private mConfirmLabel:Ljava/lang/CharSequence;

.field private mFlags:I

.field private mInProgressLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3452
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 3463
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Action;)V
    .registers 5
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompat$Action;

    .line 3470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3452
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 3471
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3472
    .local v1, "wearableBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_32

    .line 3473
    const-string v2, "flags"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 3474
    const-string v0, "inProgressLabel"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 3475
    const-string v0, "confirmLabel"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 3476
    const-string v0, "cancelLabel"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 3478
    :cond_32
    return-void
.end method

.method private setFlag(IZ)V
    .registers 5
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 3538
    if-eqz p2, :cond_8

    .line 3539
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    goto :goto_e

    .line 3541
    :cond_8
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 3543
    :goto_e
    return-void
.end method


# virtual methods
.method public clone()Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .registers 3

    .line 3508
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;-><init>()V

    .line 3509
    .local v0, "that":Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 3510
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 3511
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 3512
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 3513
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3434
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->clone()Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Action$Builder;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .registers 5
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Action$Builder;

    .line 3487
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3489
    .local v0, "wearableBundle":Landroid/os/Bundle;
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    .line 3490
    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3492
    :cond_f
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_18

    .line 3493
    const-string v2, "inProgressLabel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3495
    :cond_18
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_21

    .line 3496
    const-string v2, "confirmLabel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3498
    :cond_21
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2a

    .line 3499
    const-string v2, "cancelLabel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3502
    :cond_2a
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3503
    return-object p1
.end method

.method public getCancelLabel()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3614
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getConfirmLabel()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3590
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHintDisplayActionInline()Z
    .registers 2

    .line 3665
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getHintLaunchesActivity()Z
    .registers 2

    .line 3638
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getInProgressLabel()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3566
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isAvailableOffline()Z
    .registers 3

    .line 3534
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public setAvailableOffline(Z)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .registers 3
    .param p1, "availableOffline"    # Z

    .line 3523
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->setFlag(IZ)V

    .line 3524
    return-object p0
.end method

.method public setCancelLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .registers 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3602
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 3603
    return-object p0
.end method

.method public setConfirmLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .registers 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3578
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 3579
    return-object p0
.end method

.method public setHintDisplayActionInline(Z)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .registers 3
    .param p1, "hintDisplayInline"    # Z

    .line 3652
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->setFlag(IZ)V

    .line 3653
    return-object p0
.end method

.method public setHintLaunchesActivity(Z)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .registers 3
    .param p1, "hintLaunchesActivity"    # Z

    .line 3626
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->setFlag(IZ)V

    .line 3627
    return-object p0
.end method

.method public setInProgressLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .registers 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3554
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 3555
    return-object p0
.end method
