.class final Landroid/support/v7/widget/ActionMenuPresenter$SavedState$1;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/support/v7/widget/ActionMenuPresenter$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 628
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 625
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    .registers 3
    .param p1, "size"    # I

    .line 633
    new-array v0, p1, [Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 625
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$SavedState$1;->newArray(I)[Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    move-result-object p1

    return-object p1
.end method
