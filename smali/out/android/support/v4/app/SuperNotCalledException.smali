.class final Landroid/support/v4/app/SuperNotCalledException;
.super Landroid/util/AndroidRuntimeException;
.source "SuperNotCalledException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
