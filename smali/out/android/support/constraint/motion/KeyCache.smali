.class public Landroid/support/constraint/motion/KeyCache;
.super Ljava/lang/Object;
.source "KeyCache.java"


# instance fields
.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[F>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyCache;->map:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F
    .registers 8
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "element"    # I

    .line 56
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCache;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_b

    .line 57
    return v1

    .line 59
    :cond_b
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCache;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 60
    .local v0, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 61
    return v1

    .line 63
    :cond_1a
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 64
    .local v2, "vArray":[F
    array-length v3, v2

    if-le v3, p3, :cond_26

    .line 65
    aget v1, v2, p3

    return v1

    .line 67
    :cond_26
    return v1
.end method

.method setFloatValue(Ljava/lang/Object;Ljava/lang/String;IF)V
    .registers 8
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "element"    # I
    .param p4, "value"    # F

    .line 31
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCache;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v0, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    add-int/lit8 v1, p3, 0x1

    new-array v1, v1, [F

    .line 34
    .local v1, "vArray":[F
    aput p4, v1, p3

    .line 35
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v2, p0, Landroid/support/constraint/motion/KeyCache;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .end local v0    # "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    .end local v1    # "vArray":[F
    goto :goto_4d

    .line 38
    :cond_1c
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCache;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 39
    .restart local v0    # "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 40
    add-int/lit8 v1, p3, 0x1

    new-array v1, v1, [F

    .line 41
    .restart local v1    # "vArray":[F
    aput p4, v1, p3

    .line 42
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v2, p0, Landroid/support/constraint/motion/KeyCache;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .end local v1    # "vArray":[F
    goto :goto_4d

    .line 45
    :cond_39
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 46
    .restart local v1    # "vArray":[F
    array-length v2, v1

    if-gt v2, p3, :cond_48

    .line 47
    add-int/lit8 v2, p3, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 49
    :cond_48
    aput p4, v1, p3

    .line 50
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v0    # "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    .end local v1    # "vArray":[F
    :goto_4d
    return-void
.end method
