.class public Landroid/support/constraint/solver/SolverVariableValues;
.super Ljava/lang/Object;
.source "SolverVariableValues.java"

# interfaces
.implements Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;


# static fields
.field private static final DEBUG:Z = false

.field private static final HASH:Z = true

.field private static epsilon:F


# instance fields
.field private HASH_SIZE:I

.field private final NONE:I

.field private SIZE:I

.field head:I

.field keys:[I

.field protected final mCache:Landroid/support/constraint/solver/Cache;

.field mCount:I

.field private final mRow:Landroid/support/constraint/solver/ArrayRow;

.field next:[I

.field nextKeys:[I

.field previous:[I

.field values:[F

.field variables:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const v0, 0x3a83126f    # 0.001f

    sput v0, Landroid/support/constraint/solver/SolverVariableValues;->epsilon:F

    return-void
.end method

.method constructor <init>(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/Cache;)V
    .registers 6
    .param p1, "row"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "cache"    # Landroid/support/constraint/solver/Cache;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->NONE:I

    .line 30
    const/16 v1, 0x10

    iput v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->SIZE:I

    .line 31
    iput v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->HASH_SIZE:I

    .line 33
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->keys:[I

    .line 34
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->nextKeys:[I

    .line 36
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    .line 37
    new-array v2, v1, [F

    iput-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->values:[F

    .line 38
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->previous:[I

    .line 39
    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    .line 41
    iput v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->head:I

    .line 47
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariableValues;->mRow:Landroid/support/constraint/solver/ArrayRow;

    .line 48
    iput-object p2, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCache:Landroid/support/constraint/solver/Cache;

    .line 49
    invoke-virtual {p0}, Landroid/support/constraint/solver/SolverVariableValues;->clear()V

    .line 50
    return-void
.end method

.method private addToHashMap(Landroid/support/constraint/solver/SolverVariable;I)V
    .registers 8
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "index"    # I

    .line 216
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    iget v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->HASH_SIZE:I

    rem-int/2addr v0, v1

    .line 217
    .local v0, "hash":I
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->keys:[I

    aget v2, v1, v0

    .line 218
    .local v2, "key":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    .line 219
    aput p2, v1, v0

    goto :goto_1a

    .line 224
    :cond_f
    :goto_f
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->nextKeys:[I

    aget v4, v1, v2

    if-eq v4, v3, :cond_18

    .line 225
    aget v2, v1, v2

    goto :goto_f

    .line 227
    :cond_18
    aput p2, v1, v2

    .line 232
    :goto_1a
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->nextKeys:[I

    aput v3, v1, p2

    .line 236
    return-void
.end method

.method private addVariable(ILandroid/support/constraint/solver/SolverVariable;F)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "value"    # F

    .line 289
    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    iget v1, p2, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v1, v0, p1

    .line 290
    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->values:[F

    aput p3, v0, p1

    .line 291
    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->previous:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 292
    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    aput v1, v0, p1

    .line 293
    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/SolverVariable;->addToRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 294
    iget v0, p2, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 295
    iget v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    .line 296
    return-void
.end method

.method private displayHash()V
    .registers 8

    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->HASH_SIZE:I

    if-ge v0, v1, :cond_62

    .line 240
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->keys:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5f

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " hash ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] => "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "str":Ljava/lang/String;
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->keys:[I

    aget v3, v3, v0

    .line 243
    .local v3, "key":I
    const/4 v4, 0x0

    .line 244
    .local v4, "done":Z
    :goto_32
    if-nez v4, :cond_5a

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    iget-object v5, p0, Landroid/support/constraint/solver/SolverVariableValues;->nextKeys:[I

    aget v6, v5, v3

    if-eq v6, v2, :cond_58

    .line 247
    aget v3, v5, v3

    goto :goto_32

    .line 249
    :cond_58
    const/4 v4, 0x1

    goto :goto_32

    .line 252
    :cond_5a
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    .end local v1    # "str":Ljava/lang/String;
    .end local v3    # "key":I
    .end local v4    # "done":Z
    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 255
    .end local v0    # "i":I
    :cond_62
    return-void
.end method

.method private findEmptySlot()I
    .registers 4

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->SIZE:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_10

    .line 300
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    aget v1, v1, v0

    if-ne v1, v2, :cond_d

    .line 301
    return v0

    .line 299
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 304
    .end local v0    # "i":I
    :cond_10
    return v2
.end method

.method private increaseSize()V
    .registers 5

    .line 199
    iget v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->SIZE:I

    mul-int/lit8 v0, v0, 0x2

    .line 200
    .local v0, "size":I
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    .line 201
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->values:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->values:[F

    .line 202
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->previous:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->previous:[I

    .line 203
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    .line 204
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->nextKeys:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->nextKeys:[I

    .line 205
    iget v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->SIZE:I

    .local v1, "i":I
    :goto_2e
    if-ge v1, v0, :cond_3c

    .line 206
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 207
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->nextKeys:[I

    aput v3, v2, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 209
    .end local v1    # "i":I
    :cond_3c
    iput v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->SIZE:I

    .line 210
    return-void
.end method

.method private insertVariable(ILandroid/support/constraint/solver/SolverVariable;F)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "value"    # F

    .line 308
    invoke-direct {p0}, Landroid/support/constraint/solver/SolverVariableValues;->findEmptySlot()I

    move-result v0

    .line 309
    .local v0, "availableSlot":I
    invoke-direct {p0, v0, p2, p3}, Landroid/support/constraint/solver/SolverVariableValues;->addVariable(ILandroid/support/constraint/solver/SolverVariable;F)V

    .line 310
    const/4 v1, -0x1

    if-eq p1, v1, :cond_17

    .line 311
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->previous:[I

    aput p1, v2, v0

    .line 312
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    aget v3, v2, p1

    aput v3, v2, v0

    .line 313
    aput v0, v2, p1

    goto :goto_2c

    .line 315
    :cond_17
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->previous:[I

    aput v1, v2, v0

    .line 316
    iget v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    if-lez v2, :cond_28

    .line 317
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    iget v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->head:I

    aput v3, v2, v0

    .line 318
    iput v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->head:I

    goto :goto_2c

    .line 320
    :cond_28
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    aput v1, v2, v0

    .line 323
    :goto_2c
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    aget v2, v2, v0

    if-eq v2, v1, :cond_36

    .line 324
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->previous:[I

    aput v0, v1, v2

    .line 326
    :cond_36
    invoke-direct {p0, p2, v0}, Landroid/support/constraint/solver/SolverVariableValues;->addToHashMap(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 327
    return-void
.end method

.method private removeFromHashMap(Landroid/support/constraint/solver/SolverVariable;)V
    .registers 9
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .line 260
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    iget v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->HASH_SIZE:I

    rem-int/2addr v0, v1

    .line 261
    .local v0, "hash":I
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->keys:[I

    aget v1, v1, v0

    .line 262
    .local v1, "key":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 266
    return-void

    .line 268
    :cond_d
    iget v3, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 270
    .local v3, "id":I
    iget-object v4, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    aget v4, v4, v1

    if-ne v4, v3, :cond_20

    .line 271
    iget-object v4, p0, Landroid/support/constraint/solver/SolverVariableValues;->keys:[I

    iget-object v5, p0, Landroid/support/constraint/solver/SolverVariableValues;->nextKeys:[I

    aget v6, v5, v1

    aput v6, v4, v0

    .line 272
    aput v2, v5, v1

    goto :goto_3f

    .line 274
    :cond_20
    :goto_20
    iget-object v4, p0, Landroid/support/constraint/solver/SolverVariableValues;->nextKeys:[I

    aget v5, v4, v1

    if-eq v5, v2, :cond_2f

    iget-object v6, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    aget v5, v6, v5

    if-eq v5, v3, :cond_2f

    .line 275
    aget v1, v4, v1

    goto :goto_20

    .line 277
    :cond_2f
    aget v5, v4, v1

    .line 278
    .local v5, "currentKey":I
    if-eq v5, v2, :cond_3f

    iget-object v6, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    aget v6, v6, v5

    if-ne v6, v3, :cond_3f

    .line 279
    aget v6, v4, v5

    aput v6, v4, v1

    .line 280
    aput v2, v4, v5

    .line 286
    .end local v5    # "currentKey":I
    :cond_3f
    :goto_3f
    return-void
.end method


# virtual methods
.method public add(Landroid/support/constraint/solver/SolverVariable;FZ)V
    .registers 9
    .param p1, "v"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # F
    .param p3, "removeFromDefinition"    # Z

    .line 410
    sget v0, Landroid/support/constraint/solver/SolverVariableValues;->epsilon:F

    neg-float v1, v0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_c

    cmpg-float v0, p2, v0

    if-gez v0, :cond_c

    .line 411
    return-void

    .line 413
    :cond_c
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/SolverVariableValues;->indexOf(Landroid/support/constraint/solver/SolverVariable;)I

    move-result v0

    .line 414
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 415
    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/solver/SolverVariableValues;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_2f

    .line 417
    :cond_17
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->values:[F

    aget v2, v1, v0

    add-float/2addr v2, p2

    aput v2, v1, v0

    .line 418
    sget v3, Landroid/support/constraint/solver/SolverVariableValues;->epsilon:F

    neg-float v4, v3

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2f

    .line 419
    const/4 v2, 0x0

    aput v2, v1, v0

    .line 420
    invoke-virtual {p0, p1, p3}, Landroid/support/constraint/solver/SolverVariableValues;->remove(Landroid/support/constraint/solver/SolverVariable;Z)F

    .line 423
    :cond_2f
    :goto_2f
    return-void
.end method

.method public clear()V
    .registers 5

    .line 180
    iget v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    .line 181
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_13

    .line 182
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/SolverVariableValues;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 183
    .local v2, "v":Landroid/support/constraint/solver/SolverVariable;
    if-eqz v2, :cond_10

    .line 184
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 181
    .end local v2    # "v":Landroid/support/constraint/solver/SolverVariable;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 187
    .end local v1    # "i":I
    :cond_13
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_14
    iget v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->SIZE:I

    const/4 v3, -0x1

    if-ge v1, v2, :cond_24

    .line 188
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    aput v3, v2, v1

    .line 189
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->nextKeys:[I

    aput v3, v2, v1

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 191
    .end local v1    # "i":I
    :cond_24
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_25
    iget v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->HASH_SIZE:I

    if-ge v1, v2, :cond_30

    .line 192
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->keys:[I

    aput v3, v2, v1

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 194
    .end local v1    # "i":I
    :cond_30
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    .line 195
    iput v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->head:I

    .line 196
    return-void
.end method

.method public contains(Landroid/support/constraint/solver/SolverVariable;)Z
    .registers 4
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .line 94
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/SolverVariableValues;->indexOf(Landroid/support/constraint/solver/SolverVariable;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public display()V
    .registers 7

    .line 134
    iget v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    .line 135
    .local v0, "count":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "{ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_3c

    .line 137
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/SolverVariableValues;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 138
    .local v2, "v":Landroid/support/constraint/solver/SolverVariable;
    if-nez v2, :cond_13

    .line 139
    goto :goto_39

    .line 141
    :cond_13
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/SolverVariableValues;->getVariableValue(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 136
    .end local v2    # "v":Landroid/support/constraint/solver/SolverVariable;
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 143
    .end local v1    # "i":I
    :cond_3c
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public divideByAmount(F)V
    .registers 7
    .param p1, "amount"    # F

    .line 481
    iget v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    .line 482
    .local v0, "count":I
    iget v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->head:I

    .line 483
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_19

    .line 484
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->values:[F

    aget v4, v3, v1

    div-float/2addr v4, p1

    aput v4, v3, v1

    .line 485
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    aget v1, v3, v1

    .line 486
    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    .line 487
    goto :goto_19

    .line 483
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 490
    .end local v2    # "i":I
    :cond_19
    :goto_19
    return-void
.end method

.method public get(Landroid/support/constraint/solver/SolverVariable;)F
    .registers 4
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .line 125
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/SolverVariableValues;->indexOf(Landroid/support/constraint/solver/SolverVariable;)I

    move-result v0

    .line 126
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 127
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->values:[F

    aget v1, v1, v0

    return v1

    .line 129
    :cond_c
    const/4 v1, 0x0

    return v1
.end method

.method public getCurrentSize()I
    .registers 2

    .line 54
    iget v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    return v0
.end method

.method public getVariable(I)Landroid/support/constraint/solver/SolverVariable;
    .registers 8
    .param p1, "index"    # I

    .line 59
    iget v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    .line 60
    .local v0, "count":I
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 61
    return-object v1

    .line 63
    :cond_6
    iget v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->head:I

    .line 64
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_25

    .line 65
    const/4 v4, -0x1

    if-ne v3, p1, :cond_1b

    if-eq v2, v4, :cond_1b

    .line 66
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    aget v4, v4, v2

    aget-object v1, v1, v4

    return-object v1

    .line 68
    :cond_1b
    iget-object v5, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    aget v2, v5, v2

    .line 69
    if-ne v2, v4, :cond_22

    .line 70
    goto :goto_25

    .line 64
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 73
    .end local v3    # "i":I
    :cond_25
    :goto_25
    return-object v1
.end method

.method public getVariableValue(I)F
    .registers 6
    .param p1, "index"    # I

    .line 78
    iget v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    .line 79
    .local v0, "count":I
    iget v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->head:I

    .line 80
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_19

    .line 81
    if-ne v2, p1, :cond_e

    .line 82
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->values:[F

    aget v3, v3, v1

    return v3

    .line 84
    :cond_e
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    aget v1, v3, v1

    .line 85
    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    .line 86
    goto :goto_19

    .line 80
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 89
    .end local v2    # "i":I
    :cond_19
    :goto_19
    const/4 v2, 0x0

    return v2
.end method

.method public indexOf(Landroid/support/constraint/solver/SolverVariable;)I
    .registers 8
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .line 99
    iget v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    const/4 v1, -0x1

    if-eqz v0, :cond_36

    if-nez p1, :cond_8

    goto :goto_36

    .line 102
    :cond_8
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 103
    .local v0, "id":I
    iget v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->HASH_SIZE:I

    rem-int v2, v0, v2

    .line 104
    .local v2, "key":I
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->keys:[I

    aget v2, v3, v2

    .line 105
    if-ne v2, v1, :cond_15

    .line 106
    return v1

    .line 108
    :cond_15
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    aget v3, v3, v2

    if-ne v3, v0, :cond_1c

    .line 109
    return v2

    .line 111
    :cond_1c
    :goto_1c
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->nextKeys:[I

    aget v4, v3, v2

    if-eq v4, v1, :cond_2b

    iget-object v5, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    aget v5, v5, v4

    if-eq v5, v0, :cond_2b

    .line 112
    aget v2, v3, v2

    goto :goto_1c

    .line 114
    :cond_2b
    if-ne v4, v1, :cond_2e

    .line 115
    return v1

    .line 117
    :cond_2e
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    aget v3, v3, v4

    if-ne v3, v0, :cond_35

    .line 118
    return v4

    .line 120
    :cond_35
    return v1

    .line 100
    .end local v0    # "id":I
    .end local v2    # "key":I
    :cond_36
    :goto_36
    return v1
.end method

.method public invert()V
    .registers 7

    .line 468
    iget v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    .line 469
    .local v0, "count":I
    iget v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->head:I

    .line 470
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_1c

    .line 471
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->values:[F

    aget v4, v3, v1

    const/high16 v5, -0x40800000    # -1.0f

    mul-float v4, v4, v5

    aput v4, v3, v1

    .line 472
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    aget v1, v3, v1

    .line 473
    const/4 v3, -0x1

    if-ne v1, v3, :cond_19

    .line 474
    goto :goto_1c

    .line 470
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 477
    .end local v2    # "i":I
    :cond_1c
    :goto_1c
    return-void
.end method

.method public put(Landroid/support/constraint/solver/SolverVariable;F)V
    .registers 11
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # F

    .line 334
    sget v0, Landroid/support/constraint/solver/SolverVariableValues;->epsilon:F

    neg-float v1, v0

    const/4 v2, 0x1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_10

    cmpg-float v0, p2, v0

    if-gez v0, :cond_10

    .line 335
    invoke-virtual {p0, p1, v2}, Landroid/support/constraint/solver/SolverVariableValues;->remove(Landroid/support/constraint/solver/SolverVariable;Z)F

    .line 336
    return-void

    .line 338
    :cond_10
    iget v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    if-nez v0, :cond_1e

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/constraint/solver/SolverVariableValues;->addVariable(ILandroid/support/constraint/solver/SolverVariable;F)V

    .line 340
    invoke-direct {p0, p1, v0}, Landroid/support/constraint/solver/SolverVariableValues;->addToHashMap(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 341
    iput v0, p0, Landroid/support/constraint/solver/SolverVariableValues;->head:I

    goto :goto_5f

    .line 343
    :cond_1e
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/SolverVariableValues;->indexOf(Landroid/support/constraint/solver/SolverVariable;)I

    move-result v0

    .line 344
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    .line 345
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->values:[F

    aput p2, v1, v0

    goto :goto_5f

    .line 347
    :cond_2a
    iget v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    add-int/2addr v3, v2

    iget v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->SIZE:I

    if-lt v3, v2, :cond_34

    .line 348
    invoke-direct {p0}, Landroid/support/constraint/solver/SolverVariableValues;->increaseSize()V

    .line 350
    :cond_34
    iget v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    .line 351
    .local v2, "count":I
    const/4 v3, -0x1

    .line 352
    .local v3, "previousItem":I
    iget v4, p0, Landroid/support/constraint/solver/SolverVariableValues;->head:I

    .line 353
    .local v4, "j":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3a
    if-ge v5, v2, :cond_5c

    .line 354
    iget-object v6, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    aget v6, v6, v4

    iget v7, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v6, v7, :cond_49

    .line 355
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->values:[F

    aput p2, v1, v4

    .line 356
    return-void

    .line 358
    :cond_49
    iget-object v6, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    aget v6, v6, v4

    iget v7, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v6, v7, :cond_52

    .line 359
    move v3, v4

    .line 361
    :cond_52
    iget-object v6, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    aget v4, v6, v4

    .line 362
    if-ne v4, v1, :cond_59

    .line 363
    goto :goto_5c

    .line 353
    :cond_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 366
    .end local v5    # "i":I
    :cond_5c
    :goto_5c
    invoke-direct {p0, v3, p1, p2}, Landroid/support/constraint/solver/SolverVariableValues;->insertVariable(ILandroid/support/constraint/solver/SolverVariable;F)V

    .line 369
    .end local v0    # "index":I
    .end local v2    # "count":I
    .end local v3    # "previousItem":I
    .end local v4    # "j":I
    :goto_5f
    return-void
.end method

.method public remove(Landroid/support/constraint/solver/SolverVariable;Z)F
    .registers 10
    .param p1, "v"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "removeFromDefinition"    # Z

    .line 381
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/SolverVariableValues;->indexOf(Landroid/support/constraint/solver/SolverVariable;)I

    move-result v0

    .line 382
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 383
    const/4 v1, 0x0

    return v1

    .line 385
    :cond_9
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/SolverVariableValues;->removeFromHashMap(Landroid/support/constraint/solver/SolverVariable;)V

    .line 386
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariableValues;->values:[F

    aget v2, v2, v0

    .line 387
    .local v2, "value":F
    iget v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->head:I

    if-ne v3, v0, :cond_1a

    .line 388
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    aget v3, v3, v0

    iput v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->head:I

    .line 390
    :cond_1a
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    aput v1, v3, v0

    .line 391
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariableValues;->previous:[I

    aget v4, v3, v0

    if-eq v4, v1, :cond_2a

    .line 392
    iget-object v5, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    aget v6, v5, v0

    aput v6, v5, v4

    .line 394
    :cond_2a
    iget-object v4, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    aget v4, v4, v0

    if-eq v4, v1, :cond_34

    .line 395
    aget v1, v3, v0

    aput v1, v3, v4

    .line 397
    :cond_34
    iget v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    .line 398
    iget v1, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 399
    if-eqz p2, :cond_47

    .line 400
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 402
    :cond_47
    return v2
.end method

.method public sizeInBytes()I
    .registers 2

    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCount:I

    .line 150
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v1, :cond_fb

    .line 151
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/SolverVariableValues;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 152
    .local v3, "v":Landroid/support/constraint/solver/SolverVariable;
    if-nez v3, :cond_24

    .line 153
    goto/16 :goto_f7

    .line 155
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/SolverVariableValues;->getVariableValue(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/SolverVariableValues;->indexOf(Landroid/support/constraint/solver/SolverVariable;)I

    move-result v4

    .line 157
    .local v4, "index":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[p: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v5, p0, Landroid/support/constraint/solver/SolverVariableValues;->previous:[I

    aget v5, v5, v4

    const-string v6, "none"

    const/4 v7, -0x1

    if-eq v5, v7, :cond_89

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v8, v8, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    iget-object v10, p0, Landroid/support/constraint/solver/SolverVariableValues;->previous:[I

    aget v10, v10, v4

    aget v9, v9, v10

    aget-object v8, v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9a

    .line 161
    :cond_89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_9a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", n: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v5, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    aget v5, v5, v4

    if-eq v5, v7, :cond_d3

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v6, v6, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, p0, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    iget-object v8, p0, Landroid/support/constraint/solver/SolverVariableValues;->next:[I

    aget v8, v8, v4

    aget v7, v7, v8

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e4

    .line 167
    :cond_d3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_e4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .end local v3    # "v":Landroid/support/constraint/solver/SolverVariable;
    .end local v4    # "index":I
    :goto_f7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1a

    .line 171
    .end local v2    # "i":I
    :cond_fb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    return-object v0
.end method

.method public use(Landroid/support/constraint/solver/ArrayRow;Z)F
    .registers 11
    .param p1, "def"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "removeFromDefinition"    # Z

    .line 427
    iget-object v0, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/SolverVariableValues;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v0

    .line 428
    .local v0, "value":F
    iget-object v1, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p0, v1, p2}, Landroid/support/constraint/solver/SolverVariableValues;->remove(Landroid/support/constraint/solver/SolverVariable;Z)F

    .line 439
    iget-object v1, p1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    check-cast v1, Landroid/support/constraint/solver/SolverVariableValues;

    .line 440
    .local v1, "definition":Landroid/support/constraint/solver/SolverVariableValues;
    invoke-virtual {v1}, Landroid/support/constraint/solver/SolverVariableValues;->getCurrentSize()I

    move-result v2

    .line 441
    .local v2, "definitionSize":I
    iget v3, v1, Landroid/support/constraint/solver/SolverVariableValues;->head:I

    .line 453
    .local v3, "j":I
    const/4 v3, 0x0

    .line 454
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v3, v2, :cond_38

    .line 455
    iget-object v5, v1, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    aget v5, v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_35

    .line 456
    iget-object v5, v1, Landroid/support/constraint/solver/SolverVariableValues;->values:[F

    aget v5, v5, v4

    .line 457
    .local v5, "definitionValue":F
    iget-object v6, p0, Landroid/support/constraint/solver/SolverVariableValues;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v6, v6, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v1, Landroid/support/constraint/solver/SolverVariableValues;->variables:[I

    aget v7, v7, v4

    aget-object v6, v6, v7

    .line 458
    .local v6, "definitionVariable":Landroid/support/constraint/solver/SolverVariable;
    mul-float v7, v5, v0

    invoke-virtual {p0, v6, v7, p2}, Landroid/support/constraint/solver/SolverVariableValues;->add(Landroid/support/constraint/solver/SolverVariable;FZ)V

    .line 459
    add-int/lit8 v3, v3, 0x1

    .line 454
    .end local v5    # "definitionValue":F
    .end local v6    # "definitionVariable":Landroid/support/constraint/solver/SolverVariable;
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 463
    .end local v4    # "i":I
    :cond_38
    return v0
.end method
