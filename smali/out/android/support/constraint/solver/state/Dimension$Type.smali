.class public final enum Landroid/support/constraint/solver/state/Dimension$Type;
.super Ljava/lang/Enum;
.source "Dimension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/state/Dimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/constraint/solver/state/Dimension$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/constraint/solver/state/Dimension$Type;

.field public static final enum FIXED:Landroid/support/constraint/solver/state/Dimension$Type;

.field public static final enum MATCH_CONSTRAINT:Landroid/support/constraint/solver/state/Dimension$Type;

.field public static final enum MATCH_PARENT:Landroid/support/constraint/solver/state/Dimension$Type;

.field public static final enum WRAP:Landroid/support/constraint/solver/state/Dimension$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 45
    new-instance v0, Landroid/support/constraint/solver/state/Dimension$Type;

    const-string v1, "FIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/state/Dimension$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/state/Dimension$Type;->FIXED:Landroid/support/constraint/solver/state/Dimension$Type;

    .line 46
    new-instance v1, Landroid/support/constraint/solver/state/Dimension$Type;

    const-string v3, "WRAP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/constraint/solver/state/Dimension$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/constraint/solver/state/Dimension$Type;->WRAP:Landroid/support/constraint/solver/state/Dimension$Type;

    .line 47
    new-instance v3, Landroid/support/constraint/solver/state/Dimension$Type;

    const-string v5, "MATCH_PARENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/support/constraint/solver/state/Dimension$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/support/constraint/solver/state/Dimension$Type;->MATCH_PARENT:Landroid/support/constraint/solver/state/Dimension$Type;

    .line 48
    new-instance v5, Landroid/support/constraint/solver/state/Dimension$Type;

    const-string v7, "MATCH_CONSTRAINT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/support/constraint/solver/state/Dimension$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/support/constraint/solver/state/Dimension$Type;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/state/Dimension$Type;

    .line 44
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/support/constraint/solver/state/Dimension$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/support/constraint/solver/state/Dimension$Type;->$VALUES:[Landroid/support/constraint/solver/state/Dimension$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/solver/state/Dimension$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Landroid/support/constraint/solver/state/Dimension$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/state/Dimension$Type;

    return-object v0
.end method

.method public static values()[Landroid/support/constraint/solver/state/Dimension$Type;
    .registers 1

    .line 44
    sget-object v0, Landroid/support/constraint/solver/state/Dimension$Type;->$VALUES:[Landroid/support/constraint/solver/state/Dimension$Type;

    invoke-virtual {v0}, [Landroid/support/constraint/solver/state/Dimension$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/state/Dimension$Type;

    return-object v0
.end method
