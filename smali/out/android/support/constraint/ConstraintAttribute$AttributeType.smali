.class public final enum Landroid/support/constraint/ConstraintAttribute$AttributeType;
.super Ljava/lang/Enum;
.source "ConstraintAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttributeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/constraint/ConstraintAttribute$AttributeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/constraint/ConstraintAttribute$AttributeType;

.field public static final enum BOOLEAN_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

.field public static final enum COLOR_DRAWABLE_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

.field public static final enum COLOR_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

.field public static final enum DIMENSION_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

.field public static final enum FLOAT_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

.field public static final enum INT_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

.field public static final enum STRING_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 52
    new-instance v0, Landroid/support/constraint/ConstraintAttribute$AttributeType;

    const-string v1, "INT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/ConstraintAttribute$AttributeType;->INT_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 53
    new-instance v1, Landroid/support/constraint/ConstraintAttribute$AttributeType;

    const-string v3, "FLOAT_TYPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/constraint/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/constraint/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 54
    new-instance v3, Landroid/support/constraint/ConstraintAttribute$AttributeType;

    const-string v5, "COLOR_TYPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/support/constraint/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/support/constraint/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 55
    new-instance v5, Landroid/support/constraint/ConstraintAttribute$AttributeType;

    const-string v7, "COLOR_DRAWABLE_TYPE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/support/constraint/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/support/constraint/ConstraintAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 56
    new-instance v7, Landroid/support/constraint/ConstraintAttribute$AttributeType;

    const-string v9, "STRING_TYPE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/support/constraint/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/support/constraint/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 57
    new-instance v9, Landroid/support/constraint/ConstraintAttribute$AttributeType;

    const-string v11, "BOOLEAN_TYPE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/support/constraint/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/support/constraint/ConstraintAttribute$AttributeType;->BOOLEAN_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 58
    new-instance v11, Landroid/support/constraint/ConstraintAttribute$AttributeType;

    const-string v13, "DIMENSION_TYPE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/support/constraint/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/support/constraint/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 51
    const/4 v13, 0x7

    new-array v13, v13, [Landroid/support/constraint/ConstraintAttribute$AttributeType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Landroid/support/constraint/ConstraintAttribute$AttributeType;->$VALUES:[Landroid/support/constraint/ConstraintAttribute$AttributeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/ConstraintAttribute$AttributeType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Landroid/support/constraint/ConstraintAttribute$AttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintAttribute$AttributeType;

    return-object v0
.end method

.method public static values()[Landroid/support/constraint/ConstraintAttribute$AttributeType;
    .registers 1

    .line 51
    sget-object v0, Landroid/support/constraint/ConstraintAttribute$AttributeType;->$VALUES:[Landroid/support/constraint/ConstraintAttribute$AttributeType;

    invoke-virtual {v0}, [Landroid/support/constraint/ConstraintAttribute$AttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/ConstraintAttribute$AttributeType;

    return-object v0
.end method
