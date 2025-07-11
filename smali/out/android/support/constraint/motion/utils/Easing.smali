.class public Landroid/support/constraint/motion/utils/Easing;
.super Ljava/lang/Object;
.source "Easing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/utils/Easing$CubicEasing;
    }
.end annotation


# static fields
.field private static final ACCELERATE:Ljava/lang/String; = "cubic(0.4, 0.05, 0.8, 0.7)"

.field private static final ACCELERATE_NAME:Ljava/lang/String; = "accelerate"

.field private static final DECELERATE:Ljava/lang/String; = "cubic(0.0, 0.0, 0.2, 0.95)"

.field private static final DECELERATE_NAME:Ljava/lang/String; = "decelerate"

.field private static final LINEAR:Ljava/lang/String; = "cubic(1, 1, 0, 0)"

.field private static final LINEAR_NAME:Ljava/lang/String; = "linear"

.field public static NAMED_EASING:[Ljava/lang/String; = null

.field private static final STANDARD:Ljava/lang/String; = "cubic(0.4, 0.0, 0.2, 1)"

.field private static final STANDARD_NAME:Ljava/lang/String; = "standard"

.field static sDefault:Landroid/support/constraint/motion/utils/Easing;


# instance fields
.field str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 29
    new-instance v0, Landroid/support/constraint/motion/utils/Easing;

    invoke-direct {v0}, Landroid/support/constraint/motion/utils/Easing;-><init>()V

    sput-object v0, Landroid/support/constraint/motion/utils/Easing;->sDefault:Landroid/support/constraint/motion/utils/Easing;

    .line 40
    const-string v0, "standard"

    const-string v1, "accelerate"

    const-string v2, "decelerate"

    const-string v3, "linear"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/constraint/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "identity"

    iput-object v0, p0, Landroid/support/constraint/motion/utils/Easing;->str:Ljava/lang/String;

    return-void
.end method

.method public static getInterpolator(Ljava/lang/String;)Landroid/support/constraint/motion/utils/Easing;
    .registers 3
    .param p0, "configString"    # Ljava/lang/String;

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    const-string v0, "cubic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 47
    new-instance v0, Landroid/support/constraint/motion/utils/Easing$CubicEasing;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 49
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_86

    :cond_1a
    goto :goto_42

    :sswitch_1b
    const-string v1, "standard"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x0

    goto :goto_42

    :sswitch_25
    const-string v1, "linear"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x3

    goto :goto_42

    :sswitch_2f
    const-string v1, "decelerate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x2

    goto :goto_42

    :sswitch_39
    const-string v1, "accelerate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    :goto_42
    packed-switch v0, :pswitch_data_98

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    .line 61
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "ConstraintSet"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v0, Landroid/support/constraint/motion/utils/Easing;->sDefault:Landroid/support/constraint/motion/utils/Easing;

    return-object v0

    .line 57
    :pswitch_66
    new-instance v0, Landroid/support/constraint/motion/utils/Easing$CubicEasing;

    const-string v1, "cubic(1, 1, 0, 0)"

    invoke-direct {v0, v1}, Landroid/support/constraint/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 55
    :pswitch_6e
    new-instance v0, Landroid/support/constraint/motion/utils/Easing$CubicEasing;

    const-string v1, "cubic(0.0, 0.0, 0.2, 0.95)"

    invoke-direct {v0, v1}, Landroid/support/constraint/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 53
    :pswitch_76
    new-instance v0, Landroid/support/constraint/motion/utils/Easing$CubicEasing;

    const-string v1, "cubic(0.4, 0.05, 0.8, 0.7)"

    invoke-direct {v0, v1}, Landroid/support/constraint/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 51
    :pswitch_7e
    new-instance v0, Landroid/support/constraint/motion/utils/Easing$CubicEasing;

    const-string v1, "cubic(0.4, 0.0, 0.2, 1)"

    invoke-direct {v0, v1}, Landroid/support/constraint/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    return-object v0

    :sswitch_data_86
    .sparse-switch
        -0x50bb8523 -> :sswitch_39
        -0x4b5653c4 -> :sswitch_2f
        -0x41b970db -> :sswitch_25
        0x4e3d1ebd -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_76
        :pswitch_6e
        :pswitch_66
    .end packed-switch
.end method


# virtual methods
.method public get(D)D
    .registers 3
    .param p1, "x"    # D

    .line 69
    return-wide p1
.end method

.method public getDiff(D)D
    .registers 5
    .param p1, "x"    # D

    .line 77
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/support/constraint/motion/utils/Easing;->str:Ljava/lang/String;

    return-object v0
.end method
