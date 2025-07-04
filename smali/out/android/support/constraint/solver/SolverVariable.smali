.class public Landroid/support/constraint/solver/SolverVariable;
.super Ljava/lang/Object;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/SolverVariable$Type;
    }
.end annotation


# static fields
.field private static final INTERNAL_DEBUG:Z = false

.field static final MAX_STRENGTH:I = 0x9

.field public static final STRENGTH_BARRIER:I = 0x6

.field public static final STRENGTH_CENTERING:I = 0x7

.field public static final STRENGTH_EQUALITY:I = 0x5

.field public static final STRENGTH_FIXED:I = 0x8

.field public static final STRENGTH_HIGH:I = 0x3

.field public static final STRENGTH_HIGHEST:I = 0x4

.field public static final STRENGTH_LOW:I = 0x1

.field public static final STRENGTH_MEDIUM:I = 0x2

.field public static final STRENGTH_NONE:I = 0x0

.field private static final VAR_USE_HASH:Z = false

.field private static uniqueConstantId:I

.field private static uniqueErrorId:I

.field private static uniqueId:I

.field private static uniqueSlackId:I

.field private static uniqueUnrestrictedId:I


# instance fields
.field public computedValue:F

.field definitionId:I

.field goalStrengthVector:[F

.field public id:I

.field public inGoal:Z

.field inRows:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/support/constraint/solver/ArrayRow;",
            ">;"
        }
    .end annotation
.end field

.field public isFinalValue:Z

.field isSynonym:Z

.field mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

.field mClientEquationsCount:I

.field private mName:Ljava/lang/String;

.field mType:Landroid/support/constraint/solver/SolverVariable$Type;

.field public strength:I

.field strengthVector:[F

.field synonym:I

.field synonymDelta:F

.field public usageInRowCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const/4 v0, 0x1

    sput v0, Landroid/support/constraint/solver/SolverVariable;->uniqueSlackId:I

    .line 45
    sput v0, Landroid/support/constraint/solver/SolverVariable;->uniqueErrorId:I

    .line 46
    sput v0, Landroid/support/constraint/solver/SolverVariable;->uniqueUnrestrictedId:I

    .line 47
    sput v0, Landroid/support/constraint/solver/SolverVariable;->uniqueConstantId:I

    .line 48
    sput v0, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 54
    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 57
    iput-boolean v1, p0, Landroid/support/constraint/solver/SolverVariable;->isFinalValue:Z

    .line 60
    const/16 v2, 0x9

    new-array v3, v2, [F

    iput-object v3, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    .line 61
    new-array v2, v2, [F

    iput-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->goalStrengthVector:[F

    .line 65
    const/16 v2, 0x10

    new-array v2, v2, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    .line 66
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 67
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 68
    iput-boolean v1, p0, Landroid/support/constraint/solver/SolverVariable;->isSynonym:Z

    .line 69
    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->synonym:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->synonymDelta:F

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->inRows:Ljava/util/HashSet;

    .line 130
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 54
    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 57
    iput-boolean v1, p0, Landroid/support/constraint/solver/SolverVariable;->isFinalValue:Z

    .line 60
    const/16 v2, 0x9

    new-array v3, v2, [F

    iput-object v3, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    .line 61
    new-array v2, v2, [F

    iput-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->goalStrengthVector:[F

    .line 65
    const/16 v2, 0x10

    new-array v2, v2, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    .line 66
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 67
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 68
    iput-boolean v1, p0, Landroid/support/constraint/solver/SolverVariable;->isSynonym:Z

    .line 69
    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->synonym:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->synonymDelta:F

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->inRows:Ljava/util/HashSet;

    .line 125
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 127
    return-void
.end method

.method private static getUniqueName(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 103
    if-eqz p1, :cond_16

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/support/constraint/solver/SolverVariable;->uniqueErrorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_16
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$1;->$SwitchMap$android$support$constraint$solver$SolverVariable$Type:[I

    invoke-virtual {p0}, Landroid/support/constraint/solver/SolverVariable$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ae

    .line 116
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Landroid/support/constraint/solver/SolverVariable$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 114
    :pswitch_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :pswitch_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/support/constraint/solver/SolverVariable;->uniqueErrorId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/constraint/solver/SolverVariable;->uniqueErrorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :pswitch_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/support/constraint/solver/SolverVariable;->uniqueSlackId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/constraint/solver/SolverVariable;->uniqueSlackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :pswitch_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/support/constraint/solver/SolverVariable;->uniqueConstantId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/constraint/solver/SolverVariable;->uniqueConstantId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :pswitch_93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "U"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/support/constraint/solver/SolverVariable;->uniqueUnrestrictedId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/constraint/solver/SolverVariable;->uniqueUnrestrictedId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_93
        :pswitch_79
        :pswitch_5f
        :pswitch_45
        :pswitch_2b
    .end packed-switch
.end method

.method static increaseErrorId()V
    .registers 1

    .line 99
    sget v0, Landroid/support/constraint/solver/SolverVariable;->uniqueErrorId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/constraint/solver/SolverVariable;->uniqueErrorId:I

    .line 100
    return-void
.end method


# virtual methods
.method public final addToRow(Landroid/support/constraint/solver/ArrayRow;)V
    .registers 5
    .param p1, "row"    # Landroid/support/constraint/solver/ArrayRow;

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    if-ge v0, v1, :cond_f

    .line 179
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    .line 180
    return-void

    .line 178
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    .end local v0    # "i":I
    :cond_f
    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    array-length v2, v0

    if-lt v1, v2, :cond_1f

    .line 184
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    .line 186
    :cond_1f
    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    iget v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    aput-object p1, v0, v1

    .line 187
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 189
    return-void
.end method

.method clearStrengths()V
    .registers 4

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_d

    .line 138
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    .end local v0    # "i":I
    :cond_d
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 287
    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V
    .registers 7
    .param p1, "row"    # Landroid/support/constraint/solver/ArrayRow;

    .line 195
    iget v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 196
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_25

    .line 197
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_22

    .line 198
    move v2, v1

    .local v2, "j":I
    :goto_c
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_1b

    .line 199
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    add-int/lit8 v4, v2, 0x1

    aget-object v4, v3, v4

    aput-object v4, v3, v2

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 201
    .end local v2    # "j":I
    :cond_1b
    iget v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 202
    return-void

    .line 196
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 206
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_25
    return-void
.end method

.method public reset()V
    .registers 7

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    .line 258
    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNKNOWN:Landroid/support/constraint/solver/SolverVariable$Type;

    iput-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 259
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 260
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 261
    iput v2, p0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 262
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    .line 263
    iput-boolean v1, p0, Landroid/support/constraint/solver/SolverVariable;->isFinalValue:Z

    .line 264
    iput-boolean v1, p0, Landroid/support/constraint/solver/SolverVariable;->isSynonym:Z

    .line 265
    iput v2, p0, Landroid/support/constraint/solver/SolverVariable;->synonym:I

    .line 266
    iput v3, p0, Landroid/support/constraint/solver/SolverVariable;->synonymDelta:F

    .line 270
    iget v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 271
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    if-ge v4, v2, :cond_26

    .line 272
    iget-object v5, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aput-object v0, v5, v4

    .line 271
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 274
    .end local v4    # "i":I
    :cond_26
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 276
    .end local v2    # "count":I
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 277
    iput-boolean v1, p0, Landroid/support/constraint/solver/SolverVariable;->inGoal:Z

    .line 278
    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->goalStrengthVector:[F

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 279
    return-void
.end method

.method public setFinalValue(Landroid/support/constraint/solver/LinearSystem;F)V
    .registers 7
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "value"    # F

    .line 227
    iput p2, p0, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/SolverVariable;->isFinalValue:Z

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/SolverVariable;->isSynonym:Z

    .line 230
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->synonym:I

    .line 231
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/solver/SolverVariable;->synonymDelta:F

    .line 232
    iget v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 233
    .local v2, "count":I
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 234
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v2, :cond_1f

    .line 235
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p0, v0}, Landroid/support/constraint/solver/ArrayRow;->updateFromFinalVariable(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Z)V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 237
    .end local v1    # "i":I
    :cond_1f
    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 238
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 290
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    return-void
.end method

.method public setSynonym(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;F)V
    .registers 8
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "synonymVariable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "value"    # F

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/SolverVariable;->isSynonym:Z

    .line 245
    iget v0, p2, Landroid/support/constraint/solver/SolverVariable;->id:I

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->synonym:I

    .line 246
    iput p3, p0, Landroid/support/constraint/solver/SolverVariable;->synonymDelta:F

    .line 247
    iget v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 248
    .local v0, "count":I
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 249
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1c

    .line 250
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p0, v2}, Landroid/support/constraint/solver/ArrayRow;->updateFromSynonymVariable(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Z)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 252
    .end local v1    # "i":I
    :cond_1c
    iput v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 253
    invoke-virtual {p1}, Landroid/support/constraint/solver/LinearSystem;->displayReadableRows()V

    .line 254
    return-void
.end method

.method public setType(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 292
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 296
    return-void
.end method

.method strengthsToString()Ljava/lang/String;
    .registers 9

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "representation":Ljava/lang/String;
    const/4 v1, 0x0

    .line 145
    .local v1, "negative":Z
    const/4 v2, 0x1

    .line 146
    .local v2, "empty":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_16
    iget-object v4, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    array-length v4, v4

    if-ge v3, v4, :cond_74

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v4, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    aget v5, v4, v3

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-lez v7, :cond_3b

    .line 149
    const/4 v1, 0x0

    goto :goto_40

    .line 150
    :cond_3b
    cmpg-float v7, v5, v6

    if-gez v7, :cond_40

    .line 151
    const/4 v1, 0x1

    .line 153
    :cond_40
    :goto_40
    cmpl-float v5, v5, v6

    if-eqz v5, :cond_45

    .line 154
    const/4 v2, 0x0

    .line 156
    :cond_45
    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_5e

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_71

    .line 159
    :cond_5e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 162
    .end local v3    # "j":I
    :cond_74
    if-eqz v1, :cond_89

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (-)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_89
    if-eqz v2, :cond_9e

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (*)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_9e
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 303
    const-string v0, ""

    .line 313
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 316
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/solver/SolverVariable;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_2d
    return-object v0
.end method

.method public final updateReferencesWithNewDefinition(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/ArrayRow;)V
    .registers 7
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "definition"    # Landroid/support/constraint/solver/ArrayRow;

    .line 215
    iget v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 216
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/4 v2, 0x0

    if-ge v1, v0, :cond_10

    .line 217
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2, v2}, Landroid/support/constraint/solver/ArrayRow;->updateFromRow(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/ArrayRow;Z)V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 219
    .end local v1    # "i":I
    :cond_10
    iput v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 221
    .end local v0    # "count":I
    return-void
.end method
