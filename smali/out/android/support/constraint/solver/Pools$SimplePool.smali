.class Landroid/support/constraint/solver/Pools$SimplePool;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Landroid/support/constraint/solver/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/constraint/solver/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mPool:[Ljava/lang/Object;

.field private mPoolSize:I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .param p1, "maxPoolSize"    # I

    .line 96
    .local p0, "this":Landroid/support/constraint/solver/Pools$SimplePool;, "Landroid/support/constraint/solver/Pools$SimplePool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    if-lez p1, :cond_a

    .line 100
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    .line 101
    return-void

    .line 98
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The max pool size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isInPool(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 151
    .local p0, "this":Landroid/support/constraint/solver/Pools$SimplePool;, "Landroid/support/constraint/solver/Pools$SimplePool<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    if-ge v0, v1, :cond_10

    .line 152
    iget-object v1, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_d

    .line 153
    const/4 v1, 0x1

    return v1

    .line 151
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    .end local v0    # "i":I
    :cond_10
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 106
    .local p0, "this":Landroid/support/constraint/solver/Pools$SimplePool;, "Landroid/support/constraint/solver/Pools$SimplePool<TT;>;"
    iget v0, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_12

    .line 107
    add-int/lit8 v2, v0, -0x1

    .line 108
    .local v2, "lastPooledIndex":I
    iget-object v3, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v4, v3, v2

    .line 109
    .local v4, "instance":Ljava/lang/Object;, "TT;"
    aput-object v1, v3, v2

    .line 110
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    .line 111
    return-object v4

    .line 113
    .end local v2    # "lastPooledIndex":I
    .end local v4    # "instance":Ljava/lang/Object;, "TT;"
    :cond_12
    return-object v1
.end method

.method public release(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 123
    .local p0, "this":Landroid/support/constraint/solver/Pools$SimplePool;, "Landroid/support/constraint/solver/Pools$SimplePool<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    iget v0, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    iget-object v1, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 124
    aput-object p1, v1, v0

    .line 125
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    .line 126
    return v1

    .line 128
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public releaseAll([Ljava/lang/Object;I)V
    .registers 8
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 133
    .local p0, "this":Landroid/support/constraint/solver/Pools$SimplePool;, "Landroid/support/constraint/solver/Pools$SimplePool<TT;>;"
    .local p1, "variables":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    if-le p2, v0, :cond_4

    .line 134
    array-length p2, p1

    .line 136
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_19

    .line 137
    aget-object v1, p1, v0

    .line 143
    .local v1, "instance":Ljava/lang/Object;, "TT;"
    iget v2, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    iget-object v3, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v2, v4, :cond_16

    .line 144
    aput-object v1, v3, v2

    .line 145
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    .line 136
    .end local v1    # "instance":Ljava/lang/Object;, "TT;"
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 148
    .end local v0    # "i":I
    :cond_19
    return-void
.end method
