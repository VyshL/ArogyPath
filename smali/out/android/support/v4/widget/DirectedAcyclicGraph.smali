.class public final Landroid/support/v4/widget/DirectedAcyclicGraph;
.super Ljava/lang/Object;
.source "DirectedAcyclicGraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mGraph:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "TT;",
            "Ljava/util/ArrayList<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mListPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/ArrayList<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mSortResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mSortTmpMarked:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 39
    .local p0, "this":Landroid/support/v4/widget/DirectedAcyclicGraph;, "Landroid/support/v4/widget/DirectedAcyclicGraph<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mListPool:Landroid/support/v4/util/Pools$Pool;

    .line 41
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/util/HashSet;

    return-void
.end method

.method private dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/HashSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 174
    .local p0, "this":Landroid/support/v4/widget/DirectedAcyclicGraph;, "Landroid/support/v4/widget/DirectedAcyclicGraph<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p3, "tmpMarked":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 176
    return-void

    .line 178
    :cond_7
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 182
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 185
    .local v0, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v0, :cond_2b

    .line 186
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1f
    if-ge v1, v2, :cond_2b

    .line 187
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Landroid/support/v4/widget/DirectedAcyclicGraph;->dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 191
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2b
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    return-void

    .line 179
    .end local v0    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This graph contains cyclic dependencies"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEmptyList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 205
    .local p0, "this":Landroid/support/v4/widget/DirectedAcyclicGraph;, "Landroid/support/v4/widget/DirectedAcyclicGraph<TT;>;"
    iget-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mListPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 206
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-nez v0, :cond_10

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 209
    :cond_10
    return-object v0
.end method

.method private poolList(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 213
    .local p0, "this":Landroid/support/v4/widget/DirectedAcyclicGraph;, "Landroid/support/v4/widget/DirectedAcyclicGraph<TT;>;"
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 214
    iget-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mListPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method


# virtual methods
.method public addEdge(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Landroid/support/v4/widget/DirectedAcyclicGraph;, "Landroid/support/v4/widget/DirectedAcyclicGraph<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    .local p2, "incomingEdge":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 81
    iget-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 82
    .local v0, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-nez v0, :cond_23

    .line 84
    invoke-direct {p0}, Landroid/support/v4/widget/DirectedAcyclicGraph;->getEmptyList()Ljava/util/ArrayList;

    move-result-object v0

    .line 85
    iget-object v1, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_23
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    return-void

    .line 77
    .end local v0    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All nodes must be present in the graph before being added as an edge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addNode(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Landroid/support/v4/widget/DirectedAcyclicGraph;, "Landroid/support/v4/widget/DirectedAcyclicGraph<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 55
    iget-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_e
    return-void
.end method

.method public clear()V
    .registers 4

    .line 143
    .local p0, "this":Landroid/support/v4/widget/DirectedAcyclicGraph;, "Landroid/support/v4/widget/DirectedAcyclicGraph<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_19

    .line 144
    iget-object v2, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 145
    .local v2, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v2, :cond_16

    .line 146
    invoke-direct {p0, v2}, Landroid/support/v4/widget/DirectedAcyclicGraph;->poolList(Ljava/util/ArrayList;)V

    .line 143
    .end local v2    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 149
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_19
    iget-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 150
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 63
    .local p0, "this":Landroid/support/v4/widget/DirectedAcyclicGraph;, "Landroid/support/v4/widget/DirectedAcyclicGraph<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List;"
        }
    .end annotation

    .line 98
    .local p0, "this":Landroid/support/v4/widget/DirectedAcyclicGraph;, "Landroid/support/v4/widget/DirectedAcyclicGraph<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getOutgoingEdges(Ljava/lang/Object;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Landroid/support/v4/widget/DirectedAcyclicGraph;, "Landroid/support/v4/widget/DirectedAcyclicGraph<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 110
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v2

    .local v2, "size":I
    :goto_8
    if-ge v1, v2, :cond_2e

    .line 111
    iget-object v3, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 112
    .local v3, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v3, :cond_2b

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 113
    if-nez v0, :cond_22

    .line 114
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 116
    :cond_22
    iget-object v4, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v3    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 119
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2e
    return-object v0
.end method

.method public getSortedList()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 162
    .local p0, "this":Landroid/support/v4/widget/DirectedAcyclicGraph;, "Landroid/support/v4/widget/DirectedAcyclicGraph<TT;>;"
    iget-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 163
    iget-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    .local v1, "size":I
    :goto_11
    if-ge v0, v1, :cond_23

    .line 167
    iget-object v2, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/util/HashSet;

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v4/widget/DirectedAcyclicGraph;->dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 170
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_23
    iget-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasOutgoingEdges(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 130
    .local p0, "this":Landroid/support/v4/widget/DirectedAcyclicGraph;, "Landroid/support/v4/widget/DirectedAcyclicGraph<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_1e

    .line 131
    iget-object v2, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 132
    .local v2, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v2, :cond_1b

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 133
    const/4 v3, 0x1

    return v3

    .line 130
    .end local v2    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 136
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method size()I
    .registers 2

    .line 200
    .local p0, "this":Landroid/support/v4/widget/DirectedAcyclicGraph;, "Landroid/support/v4/widget/DirectedAcyclicGraph<TT;>;"
    iget-object v0, p0, Landroid/support/v4/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    return v0
.end method
