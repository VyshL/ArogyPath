.class public Landroid/arch/lifecycle/Lifecycling;
.super Ljava/lang/Object;
.source "Lifecycling.java"


# static fields
.field private static final GENERATED_CALLBACK:I = 0x2

.field private static final REFLECTIVE_CALLBACK:I = 0x1

.field private static sCallbackCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sClassToAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/arch/lifecycle/GeneratedAdapter;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroid/arch/lifecycle/GeneratedAdapter;
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/arch/lifecycle/GeneratedAdapter;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/arch/lifecycle/GeneratedAdapter;"
        }
    .end annotation

    .line 79
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;"
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/GeneratedAdapter;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_c} :catch_1b
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_c} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_c} :catch_d

    return-object v0

    .line 84
    :catch_d
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 82
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_14
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 80
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1b
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static generatedConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/arch/lifecycle/GeneratedAdapter;",
            ">;"
        }
    .end annotation

    .line 92
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 93
    .local v0, "aPackage":Ljava/lang/Package;
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "name":Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_f
    const-string v2, ""

    .line 95
    .local v2, "fullPackage":Ljava/lang/String;
    :goto_11
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1a

    move-object v3, v1

    goto :goto_23

    .line 96
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    :goto_23
    invoke-static {v3}, Landroid/arch/lifecycle/Lifecycling;->getAdapterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "adapterName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2f

    move-object v5, v3

    goto :goto_46

    :cond_2f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 99
    :goto_46
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 101
    .local v5, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/arch/lifecycle/GeneratedAdapter;>;"
    new-array v6, v4, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 103
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;"
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_5c

    .line 104
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_5c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5c} :catch_64
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_5c} :catch_5d

    .line 106
    :cond_5c
    return-object v6

    .line 109
    .end local v0    # "aPackage":Ljava/lang/Package;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "fullPackage":Ljava/lang/String;
    .end local v3    # "adapterName":Ljava/lang/String;
    .end local v5    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/arch/lifecycle/GeneratedAdapter;>;"
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;"
    :catch_5d
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 107
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_64
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getAdapterName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "className"    # Ljava/lang/String;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_LifecycleAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getCallback(Ljava/lang/Object;)Landroid/arch/lifecycle/GenericLifecycleObserver;
    .registers 7
    .param p0, "object"    # Ljava/lang/Object;

    .line 48
    instance-of v0, p0, Landroid/arch/lifecycle/FullLifecycleObserver;

    if-eqz v0, :cond_d

    .line 49
    new-instance v0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;

    move-object v1, p0

    check-cast v1, Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-direct {v0, v1}, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroid/arch/lifecycle/FullLifecycleObserver;)V

    return-object v0

    .line 52
    :cond_d
    instance-of v0, p0, Landroid/arch/lifecycle/GenericLifecycleObserver;

    if-eqz v0, :cond_15

    .line 53
    move-object v0, p0

    check-cast v0, Landroid/arch/lifecycle/GenericLifecycleObserver;

    return-object v0

    .line 56
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 57
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Landroid/arch/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v1

    .line 58
    .local v1, "type":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_62

    .line 59
    sget-object v2, Landroid/arch/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    .line 60
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 61
    .local v2, "constructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_40

    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    .line 62
    invoke-static {v3, p0}, Landroid/arch/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroid/arch/lifecycle/GeneratedAdapter;

    move-result-object v3

    .line 64
    .local v3, "generatedAdapter":Landroid/arch/lifecycle/GeneratedAdapter;
    new-instance v4, Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;

    invoke-direct {v4, v3}, Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;-><init>(Landroid/arch/lifecycle/GeneratedAdapter;)V

    return-object v4

    .line 66
    .end local v3    # "generatedAdapter":Landroid/arch/lifecycle/GeneratedAdapter;
    :cond_40
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/arch/lifecycle/GeneratedAdapter;

    .line 67
    .local v3, "adapters":[Landroid/arch/lifecycle/GeneratedAdapter;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_47
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5c

    .line 68
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Constructor;

    invoke-static {v5, p0}, Landroid/arch/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroid/arch/lifecycle/GeneratedAdapter;

    move-result-object v5

    aput-object v5, v3, v4

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 70
    .end local v4    # "i":I
    :cond_5c
    new-instance v4, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;

    invoke-direct {v4, v3}, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Landroid/arch/lifecycle/GeneratedAdapter;)V

    return-object v4

    .line 72
    .end local v2    # "constructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;>;"
    .end local v3    # "adapters":[Landroid/arch/lifecycle/GeneratedAdapter;
    :cond_62
    new-instance v2, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;

    invoke-direct {v2, p0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    return-object v2
.end method

.method private static getObserverConstructorType(Ljava/lang/Class;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 116
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/arch/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 117
    sget-object v0, Landroid/arch/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 119
    :cond_15
    invoke-static {p0}, Landroid/arch/lifecycle/Lifecycling;->resolveObserverCallbackType(Ljava/lang/Class;)I

    move-result v0

    .line 120
    .local v0, "type":I
    sget-object v1, Landroid/arch/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return v0
.end method

.method private static isLifecycleParent(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 172
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_c

    const-class v0, Landroid/arch/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static resolveObserverCallbackType(Ljava/lang/Class;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 126
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 127
    return v1

    .line 130
    :cond_8
    invoke-static {p0}, Landroid/arch/lifecycle/Lifecycling;->generatedConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 131
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;"
    const/4 v2, 0x2

    if-eqz v0, :cond_19

    .line 132
    sget-object v1, Landroid/arch/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    .line 133
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 132
    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return v2

    .line 137
    :cond_19
    sget-object v3, Landroid/arch/lifecycle/ClassesInfoCache;->sInstance:Landroid/arch/lifecycle/ClassesInfoCache;

    invoke-virtual {v3, p0}, Landroid/arch/lifecycle/ClassesInfoCache;->hasLifecycleMethods(Ljava/lang/Class;)Z

    move-result v3

    .line 138
    .local v3, "hasLifecycleMethods":Z
    if-eqz v3, :cond_22

    .line 139
    return v1

    .line 142
    :cond_22
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 143
    .local v4, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 144
    .local v5, "adapterConstructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;>;"
    invoke-static {v4}, Landroid/arch/lifecycle/Lifecycling;->isLifecycleParent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 145
    invoke-static {v4}, Landroid/arch/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v6

    if-ne v6, v1, :cond_34

    .line 146
    return v1

    .line 148
    :cond_34
    new-instance v6, Ljava/util/ArrayList;

    sget-object v7, Landroid/arch/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v6

    .line 151
    :cond_42
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_48
    if-ge v8, v7, :cond_70

    aget-object v9, v6, v8

    .line 152
    .local v9, "intrface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v9}, Landroid/arch/lifecycle/Lifecycling;->isLifecycleParent(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_53

    .line 153
    goto :goto_6d

    .line 155
    :cond_53
    invoke-static {v9}, Landroid/arch/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v10

    if-ne v10, v1, :cond_5a

    .line 156
    return v1

    .line 158
    :cond_5a
    if-nez v5, :cond_62

    .line 159
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v10

    .line 161
    :cond_62
    sget-object v10, Landroid/arch/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v5, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    .end local v9    # "intrface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_6d
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    .line 163
    :cond_70
    if-eqz v5, :cond_78

    .line 164
    sget-object v1, Landroid/arch/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    invoke-interface {v1, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return v2

    .line 168
    :cond_78
    return v1
.end method
