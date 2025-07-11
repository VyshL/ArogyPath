.class public abstract Landroid/support/constraint/motion/utils/CurveFit;
.super Ljava/lang/Object;
.source "CurveFit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/utils/CurveFit$Constant;
    }
.end annotation


# static fields
.field public static final CONSTANT:I = 0x2

.field public static final LINEAR:I = 0x1

.field public static final SPLINE:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(I[D[[D)Landroid/support/constraint/motion/utils/CurveFit;
    .registers 7
    .param p0, "type"    # I
    .param p1, "time"    # [D
    .param p2, "y"    # [[D

    .line 30
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 31
    const/4 p0, 0x2

    .line 33
    :cond_5
    packed-switch p0, :pswitch_data_20

    .line 39
    :pswitch_8
    new-instance v0, Landroid/support/constraint/motion/utils/LinearCurveFit;

    invoke-direct {v0, p1, p2}, Landroid/support/constraint/motion/utils/LinearCurveFit;-><init>([D[[D)V

    return-object v0

    .line 37
    :pswitch_e
    new-instance v0, Landroid/support/constraint/motion/utils/CurveFit$Constant;

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    aget-object v1, p2, v1

    invoke-direct {v0, v2, v3, v1}, Landroid/support/constraint/motion/utils/CurveFit$Constant;-><init>(D[D)V

    return-object v0

    .line 35
    :pswitch_19
    new-instance v0, Landroid/support/constraint/motion/utils/MonotonicCurveFit;

    invoke-direct {v0, p1, p2}, Landroid/support/constraint/motion/utils/MonotonicCurveFit;-><init>([D[[D)V

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_19
        :pswitch_8
        :pswitch_e
    .end packed-switch
.end method

.method public static getArc([I[D[[D)Landroid/support/constraint/motion/utils/CurveFit;
    .registers 4
    .param p0, "arcModes"    # [I
    .param p1, "time"    # [D
    .param p2, "y"    # [[D

    .line 44
    new-instance v0, Landroid/support/constraint/motion/utils/ArcCurveFit;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/constraint/motion/utils/ArcCurveFit;-><init>([I[D[[D)V

    return-object v0
.end method


# virtual methods
.method public abstract getPos(DI)D
.end method

.method public abstract getPos(D[D)V
.end method

.method public abstract getPos(D[F)V
.end method

.method public abstract getSlope(DI)D
.end method

.method public abstract getSlope(D[D)V
.end method

.method public abstract getTimePoints()[D
.end method
