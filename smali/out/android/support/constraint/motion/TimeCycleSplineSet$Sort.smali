.class Landroid/support/constraint/motion/TimeCycleSplineSet$Sort;
.super Ljava/lang/Object;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sort"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doubleQuickSort([I[[FII)V
    .registers 9
    .param p0, "key"    # [I
    .param p1, "value"    # [[F
    .param p2, "low"    # I
    .param p3, "hi"    # I

    .line 422
    array-length v0, p0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    .line 423
    .local v0, "stack":[I
    const/4 v1, 0x0

    .line 424
    .local v1, "count":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput p3, v0, v1

    .line 425
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput p2, v0, v2

    .line 426
    :cond_e
    :goto_e
    if-lez v1, :cond_33

    .line 427
    add-int/lit8 v1, v1, -0x1

    aget p2, v0, v1

    .line 428
    add-int/lit8 v1, v1, -0x1

    aget p3, v0, v1

    .line 429
    if-ge p2, p3, :cond_e

    .line 430
    invoke-static {p0, p1, p2, p3}, Landroid/support/constraint/motion/TimeCycleSplineSet$Sort;->partition([I[[FII)I

    move-result v2

    .line 431
    .local v2, "p":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .local v3, "count":I
    add-int/lit8 v4, v2, -0x1

    aput v4, v0, v1

    .line 432
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "count":I
    .restart local v1    # "count":I
    aput p2, v0, v3

    .line 433
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .restart local v3    # "count":I
    aput p3, v0, v1

    .line 434
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "count":I
    .restart local v1    # "count":I
    add-int/lit8 v4, v2, 0x1

    aput v4, v0, v3

    .line 435
    .end local v2    # "p":I
    goto :goto_e

    .line 437
    :cond_33
    return-void
.end method

.method private static partition([I[[FII)I
    .registers 8
    .param p0, "array"    # [I
    .param p1, "value"    # [[F
    .param p2, "low"    # I
    .param p3, "hi"    # I

    .line 440
    aget v0, p0, p3

    .line 441
    .local v0, "pivot":I
    move v1, p2

    .line 442
    .local v1, "i":I
    move v2, p2

    .local v2, "j":I
    :goto_4
    if-ge v2, p3, :cond_12

    .line 443
    aget v3, p0, v2

    if-gt v3, v0, :cond_f

    .line 444
    invoke-static {p0, p1, v1, v2}, Landroid/support/constraint/motion/TimeCycleSplineSet$Sort;->swap([I[[FII)V

    .line 445
    add-int/lit8 v1, v1, 0x1

    .line 442
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 448
    .end local v2    # "j":I
    :cond_12
    invoke-static {p0, p1, v1, p3}, Landroid/support/constraint/motion/TimeCycleSplineSet$Sort;->swap([I[[FII)V

    .line 449
    return v1
.end method

.method private static swap([I[[FII)V
    .registers 7
    .param p0, "array"    # [I
    .param p1, "value"    # [[F
    .param p2, "a"    # I
    .param p3, "b"    # I

    .line 453
    aget v0, p0, p2

    .line 454
    .local v0, "tmp":I
    aget v1, p0, p3

    aput v1, p0, p2

    .line 455
    aput v0, p0, p3

    .line 456
    aget-object v1, p1, p2

    .line 457
    .local v1, "tmpv":[F
    aget-object v2, p1, p3

    aput-object v2, p1, p2

    .line 458
    aput-object v1, p1, p3

    .line 459
    return-void
.end method
