.class public Landroid/arch/lifecycle/MediatorLiveData;
.super Landroid/arch/lifecycle/MutableLiveData;
.source "MediatorLiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/MediatorLiveData$Source;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/MutableLiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mSources:Landroid/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/SafeIterableMap<",
            "Landroid/arch/lifecycle/LiveData<",
            "*>;",
            "Landroid/arch/lifecycle/MediatorLiveData$Source<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 69
    .local p0, "this":Landroid/arch/lifecycle/MediatorLiveData;, "Landroid/arch/lifecycle/MediatorLiveData<TT;>;"
    invoke-direct {p0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    .line 70
    new-instance v0, Landroid/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroid/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData;->mSources:Landroid/arch/core/internal/SafeIterableMap;

    .line 130
    return-void
.end method


# virtual methods
.method public addSource(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData<",
            "TS;>;",
            "Landroid/arch/lifecycle/Observer<",
            "TS;>;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Landroid/arch/lifecycle/MediatorLiveData;, "Landroid/arch/lifecycle/MediatorLiveData<TT;>;"
    .local p1, "source":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TS;>;"
    .local p2, "onChanged":Landroid/arch/lifecycle/Observer;, "Landroid/arch/lifecycle/Observer<TS;>;"
    new-instance v0, Landroid/arch/lifecycle/MediatorLiveData$Source;

    invoke-direct {v0, p1, p2}, Landroid/arch/lifecycle/MediatorLiveData$Source;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    .line 87
    .local v0, "e":Landroid/arch/lifecycle/MediatorLiveData$Source;, "Landroid/arch/lifecycle/MediatorLiveData$Source<TS;>;"
    iget-object v1, p0, Landroid/arch/lifecycle/MediatorLiveData;->mSources:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p1, v0}, Landroid/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/MediatorLiveData$Source;

    .line 88
    .local v1, "existing":Landroid/arch/lifecycle/MediatorLiveData$Source;, "Landroid/arch/lifecycle/MediatorLiveData$Source<*>;"
    if-eqz v1, :cond_1c

    iget-object v2, v1, Landroid/arch/lifecycle/MediatorLiveData$Source;->mObserver:Landroid/arch/lifecycle/Observer;

    if-ne v2, p2, :cond_14

    goto :goto_1c

    .line 89
    :cond_14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "This source was already added with the different observer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_1c
    :goto_1c
    if-eqz v1, :cond_1f

    .line 93
    return-void

    .line 95
    :cond_1f
    invoke-virtual {p0}, Landroid/arch/lifecycle/MediatorLiveData;->hasActiveObservers()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 96
    invoke-virtual {v0}, Landroid/arch/lifecycle/MediatorLiveData$Source;->plug()V

    .line 98
    :cond_28
    return-void
.end method

.method protected onActive()V
    .registers 4

    .line 117
    .local p0, "this":Landroid/arch/lifecycle/MediatorLiveData;, "Landroid/arch/lifecycle/MediatorLiveData<TT;>;"
    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData;->mSources:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    .local v1, "source":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/LiveData<*>;Landroid/arch/lifecycle/MediatorLiveData$Source<*>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/MediatorLiveData$Source;

    invoke-virtual {v2}, Landroid/arch/lifecycle/MediatorLiveData$Source;->plug()V

    .line 119
    .end local v1    # "source":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/LiveData<*>;Landroid/arch/lifecycle/MediatorLiveData$Source<*>;>;"
    goto :goto_6

    .line 120
    :cond_1c
    return-void
.end method

.method protected onInactive()V
    .registers 4

    .line 125
    .local p0, "this":Landroid/arch/lifecycle/MediatorLiveData;, "Landroid/arch/lifecycle/MediatorLiveData<TT;>;"
    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData;->mSources:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    .local v1, "source":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/LiveData<*>;Landroid/arch/lifecycle/MediatorLiveData$Source<*>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/MediatorLiveData$Source;

    invoke-virtual {v2}, Landroid/arch/lifecycle/MediatorLiveData$Source;->unplug()V

    .line 127
    .end local v1    # "source":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/LiveData<*>;Landroid/arch/lifecycle/MediatorLiveData$Source<*>;>;"
    goto :goto_6

    .line 128
    :cond_1c
    return-void
.end method

.method public removeSource(Landroid/arch/lifecycle/LiveData;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData<",
            "TS;>;)V"
        }
    .end annotation

    .line 108
    .local p0, "this":Landroid/arch/lifecycle/MediatorLiveData;, "Landroid/arch/lifecycle/MediatorLiveData<TT;>;"
    .local p1, "toRemote":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TS;>;"
    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData;->mSources:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1}, Landroid/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/MediatorLiveData$Source;

    .line 109
    .local v0, "source":Landroid/arch/lifecycle/MediatorLiveData$Source;, "Landroid/arch/lifecycle/MediatorLiveData$Source<*>;"
    if-eqz v0, :cond_d

    .line 110
    invoke-virtual {v0}, Landroid/arch/lifecycle/MediatorLiveData$Source;->unplug()V

    .line 112
    :cond_d
    return-void
.end method
