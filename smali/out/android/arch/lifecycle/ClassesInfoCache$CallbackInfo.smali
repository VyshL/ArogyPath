.class Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
.super Ljava/lang/Object;
.source "ClassesInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/ClassesInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackInfo"
.end annotation


# instance fields
.field final mEventToHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            "Ljava/util/List<",
            "Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;",
            ">;>;"
        }
    .end annotation
.end field

.field final mHandlerToEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p1, "handlerToEvent":Ljava/util/Map;, "Ljava/util/Map<Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;->mEventToHandlers:Ljava/util/Map;

    .line 171
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 172
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/Lifecycle$Event;

    .line 173
    .local v2, "event":Landroid/arch/lifecycle/Lifecycle$Event;
    iget-object v3, p0, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;->mEventToHandlers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 174
    .local v3, "methodReferences":Ljava/util/List;, "Ljava/util/List<Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;>;"
    if-nez v3, :cond_3b

    .line 175
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 176
    iget-object v4, p0, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;->mEventToHandlers:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_3b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;>;"
    .end local v2    # "event":Landroid/arch/lifecycle/Lifecycle$Event;
    .end local v3    # "methodReferences":Ljava/util/List;, "Ljava/util/List<Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;>;"
    goto :goto_14

    .line 180
    :cond_43
    return-void
.end method

.method private static invokeMethodsForEvent(Ljava/util/List;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V
    .registers 6
    .param p1, "source"    # Landroid/arch/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;
    .param p3, "mWrapped"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;",
            ">;",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 191
    .local p0, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;>;"
    if-eqz p0, :cond_16

    .line 192
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_16

    .line 193
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;

    invoke-virtual {v1, p1, p2, p3}, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;->invokeCallback(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 192
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 196
    .end local v0    # "i":I
    :cond_16
    return-void
.end method


# virtual methods
.method invokeCallbacks(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V
    .registers 6
    .param p1, "source"    # Landroid/arch/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;
    .param p3, "target"    # Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;->mEventToHandlers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;->invokeMethodsForEvent(Ljava/util/List;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;->mEventToHandlers:Ljava/util/Map;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;->invokeMethodsForEvent(Ljava/util/List;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 187
    return-void
.end method
