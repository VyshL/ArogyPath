.class Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1$1;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;)V
    .registers 2
    .param p1, "this$2"    # Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;

    .line 429
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .line 432
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintUriAdapter;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->cancelLoad()V

    .line 433
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->cancel(Z)Z

    .line 434
    return-void
.end method
