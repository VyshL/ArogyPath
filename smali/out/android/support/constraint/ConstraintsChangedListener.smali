.class public abstract Landroid/support/constraint/ConstraintsChangedListener;
.super Ljava/lang/Object;
.source "ConstraintsChangedListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postLayoutChange(II)V
    .registers 3
    .param p1, "stateId"    # I
    .param p2, "constraintId"    # I

    .line 42
    return-void
.end method

.method public preLayoutChange(II)V
    .registers 3
    .param p1, "stateId"    # I
    .param p2, "constraintId"    # I

    .line 33
    return-void
.end method
