.class public Landroid/support/v4/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(DDD)D
    .registers 7
    .param p0, "value"    # D
    .param p2, "min"    # D
    .param p4, "max"    # D

    .line 60
    cmpg-double v0, p0, p2

    if-gez v0, :cond_5

    .line 61
    return-wide p2

    .line 62
    :cond_5
    cmpl-double v0, p0, p4

    if-lez v0, :cond_a

    .line 63
    return-wide p4

    .line 65
    :cond_a
    return-wide p0
.end method

.method public static clamp(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 39
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .line 40
    return p1

    .line 41
    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_a

    .line 42
    return p2

    .line 44
    :cond_a
    return p0
.end method

.method public static clamp(III)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 81
    if-ge p0, p1, :cond_3

    .line 82
    return p1

    .line 83
    :cond_3
    if-le p0, p2, :cond_6

    .line 84
    return p2

    .line 86
    :cond_6
    return p0
.end method
