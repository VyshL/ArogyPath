.class final Landroid/support/v4/app/JobIntentService$CompatWorkItem;
.super Ljava/lang/Object;
.source "JobIntentService.java"

# interfaces
.implements Landroid/support/v4/app/JobIntentService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CompatWorkItem"
.end annotation


# instance fields
.field final mIntent:Landroid/content/Intent;

.field final mStartId:I

.field final synthetic this$0:Landroid/support/v4/app/JobIntentService;


# direct methods
.method constructor <init>(Landroid/support/v4/app/JobIntentService;Landroid/content/Intent;I)V
    .registers 4
    .param p1, "this$0"    # Landroid/support/v4/app/JobIntentService;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "startId"    # I

    .line 363
    iput-object p1, p0, Landroid/support/v4/app/JobIntentService$CompatWorkItem;->this$0:Landroid/support/v4/app/JobIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p2, p0, Landroid/support/v4/app/JobIntentService$CompatWorkItem;->mIntent:Landroid/content/Intent;

    .line 365
    iput p3, p0, Landroid/support/v4/app/JobIntentService$CompatWorkItem;->mStartId:I

    .line 366
    return-void
.end method


# virtual methods
.method public complete()V
    .registers 3

    .line 376
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkItem;->this$0:Landroid/support/v4/app/JobIntentService;

    iget v1, p0, Landroid/support/v4/app/JobIntentService$CompatWorkItem;->mStartId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/JobIntentService;->stopSelf(I)V

    .line 377
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .line 370
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method
