.class public Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
.super Landroid/arch/lifecycle/MutableLiveData;
.source "LoaderManagerImpl.java"

# interfaces
.implements Landroid/support/v4/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/MutableLiveData<",
        "TD;>;",
        "Landroid/support/v4/content/Loader$OnLoadCompleteListener<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mId:I

.field private mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

.field private final mLoader:Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver<",
            "TD;>;"
        }
    .end annotation
.end field

.field private mPriorLoader:Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/os/Bundle;Landroid/support/v4/content/Loader;Landroid/support/v4/content/Loader;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/content/Loader<",
            "TD;>;",
            "Landroid/support/v4/content/Loader<",
            "TD;>;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;, "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    .local p3, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    .local p4, "priorLoader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    invoke-direct {p0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    .line 62
    iput p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 63
    iput-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 64
    iput-object p3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    .line 65
    iput-object p4, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroid/support/v4/content/Loader;

    .line 66
    invoke-virtual {p3, p1, p0}, Landroid/support/v4/content/Loader;->registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 67
    return-void
.end method


# virtual methods
.method destroy(Z)Landroid/support/v4/content/Loader;
    .registers 4
    .param p1, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 149
    .local p0, "this":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;, "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Destroying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->cancelLoad()Z

    .line 152
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->abandon()V

    .line 154
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    .line 155
    .local v0, "observer":Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;, "Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    if-eqz v0, :cond_32

    .line 156
    invoke-virtual {p0, v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    .line 157
    if-eqz p1, :cond_32

    .line 158
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->reset()V

    .line 162
    :cond_32
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v1, p0}, Landroid/support/v4/content/Loader;->unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 163
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->hasDeliveredData()Z

    move-result v1

    if-eqz v1, :cond_41

    :cond_3f
    if-eqz p1, :cond_49

    .line 164
    :cond_41
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->reset()V

    .line 165
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroid/support/v4/content/Loader;

    return-object v1

    .line 167
    :cond_49
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    return-object v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 212
    .local p0, "this":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;, "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 213
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v0, :cond_63

    .line 217
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 220
    :cond_63
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->getLoader()Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->hasActiveObservers()Z

    move-result v0

    .line 222
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 224
    return-void
.end method

.method getLoader()Landroid/support/v4/content/Loader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;, "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    return-object v0
.end method

.method isCallbackWaitingForData()Z
    .registers 3

    .line 125
    .local p0, "this":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;, "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->hasActiveObservers()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 127
    return v1

    .line 129
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->hasDeliveredData()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method markForRedelivery()V
    .registers 3

    .line 111
    .local p0, "this":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;, "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    .line 112
    .local v0, "lifecycleOwner":Landroid/arch/lifecycle/LifecycleOwner;
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    .line 113
    .local v1, "observer":Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;, "Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    .line 118
    invoke-super {p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    .line 119
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 121
    :cond_e
    return-void
.end method

.method protected onActive()V
    .registers 3

    .line 76
    .local p0, "this":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;, "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V

    .line 78
    return-void
.end method

.method protected onInactive()V
    .registers 3

    .line 82
    .local p0, "this":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;, "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->stopLoading()V

    .line 84
    return-void
.end method

.method public onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "TD;>;TD;)V"
        }
    .end annotation

    .line 172
    .local p0, "this":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;, "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_1c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_2a

    .line 174
    invoke-virtual {p0, p2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->setValue(Ljava/lang/Object;)V

    goto :goto_36

    .line 179
    :cond_2a
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_33

    .line 180
    const-string v0, "onLoadComplete was incorrectly called on a background thread"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_33
    invoke-virtual {p0, p2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->postValue(Ljava/lang/Object;)V

    .line 185
    :goto_36
    return-void
.end method

.method public removeObserver(Landroid/arch/lifecycle/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/Observer<",
            "-TD;>;)V"
        }
    .end annotation

    .line 134
    .local p0, "this":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;, "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    .local p1, "observer":Landroid/arch/lifecycle/Observer;, "Landroid/arch/lifecycle/Observer<-TD;>;"
    invoke-super {p0, p1}, Landroid/arch/lifecycle/MutableLiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    .line 137
    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    .line 138
    return-void
.end method

.method setCallback(Landroid/arch/lifecycle/LifecycleOwner;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    .registers 5
    .param p1, "owner"    # Landroid/arch/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Landroid/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;, "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    .local p2, "callback":Landroid/support/v4/app/LoaderManager$LoaderCallbacks;, "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<TD;>;"
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-direct {v0, v1, p2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;-><init>(Landroid/support/v4/content/Loader;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    .line 100
    .local v0, "observer":Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;, "Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 102
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v1, :cond_11

    .line 103
    invoke-virtual {p0, v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    .line 105
    :cond_11
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    .line 106
    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    .line 107
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    return-object v1
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;, "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    .local p1, "value":Ljava/lang/Object;, "TD;"
    invoke-super {p0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_d

    .line 192
    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->reset()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroid/support/v4/content/Loader;

    .line 195
    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 199
    .local p0, "this":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;, "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 206
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
