.class abstract Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
.super Ljava/lang/Object;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "WorkEnqueuer"
.end annotation


# instance fields
.field final mComponentName:Landroid/content/ComponentName;

.field mHasJobId:Z

.field mJobId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    .line 120
    return-void
.end method


# virtual methods
.method abstract enqueueWork(Landroid/content/Intent;)V
.end method

.method ensureJobId(I)V
    .registers 5
    .param p1, "jobId"    # I

    .line 123
    iget-boolean v0, p0, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->mHasJobId:Z

    if-nez v0, :cond_a

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->mHasJobId:Z

    .line 125
    iput p1, p0, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->mJobId:I

    goto :goto_e

    .line 126
    :cond_a
    iget v0, p0, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->mJobId:I

    if-ne v0, p1, :cond_f

    .line 130
    :goto_e
    return-void

    .line 127
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given job ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is different than previous "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->mJobId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serviceProcessingFinished()V
    .registers 1

    .line 141
    return-void
.end method

.method public serviceProcessingStarted()V
    .registers 1

    .line 138
    return-void
.end method

.method public serviceStartReceived()V
    .registers 1

    .line 135
    return-void
.end method
