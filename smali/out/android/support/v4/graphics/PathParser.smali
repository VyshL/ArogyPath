.class public Landroid/support/v4/graphics/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/PathParser$PathDataNode;,
        Landroid/support/v4/graphics/PathParser$ExtractFloatResult;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PathParser"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .registers 4
    .param p1, "cmd"    # C
    .param p2, "val"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/graphics/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .line 189
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/graphics/PathParser$PathDataNode;>;"
    new-instance v0, Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/graphics/PathParser$PathDataNode;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method public static canMorph([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)Z
    .registers 6
    .param p0, "nodesFrom"    # [Landroid/support/v4/graphics/PathParser$PathDataNode;
    .param p1, "nodesTo"    # [Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 137
    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    if-nez p1, :cond_6

    goto :goto_2c

    .line 141
    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_b

    .line 142
    return v0

    .line 145
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    .line 146
    aget-object v2, p0, v1

    iget-char v2, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    aget-object v3, p1, v1

    iget-char v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    if-ne v2, v3, :cond_29

    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v2

    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v3, v3

    if-eq v2, v3, :cond_26

    goto :goto_29

    .line 145
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 148
    :cond_29
    :goto_29
    return v0

    .line 151
    .end local v1    # "i":I
    :cond_2a
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_2c
    :goto_2c
    return v0
.end method

.method static copyOfRange([FII)[F
    .registers 8
    .param p0, "original"    # [F
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 55
    if-gt p1, p2, :cond_1c

    .line 58
    array-length v0, p0

    .line 59
    .local v0, "originalLength":I
    if-ltz p1, :cond_16

    if-gt p1, v0, :cond_16

    .line 62
    sub-int v1, p2, p1

    .line 63
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 64
    .local v2, "copyLength":I
    new-array v3, v1, [F

    .line 65
    .local v3, "result":[F
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    return-object v3

    .line 60
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[F
    :cond_16
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 56
    .end local v0    # "originalLength":I
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .registers 7
    .param p0, "pathData"    # Ljava/lang/String;

    .line 92
    if-nez p0, :cond_4

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_4
    const/4 v0, 0x0

    .line 96
    .local v0, "start":I
    const/4 v1, 0x1

    .line 98
    .local v1, "end":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/graphics/PathParser$PathDataNode;>;"
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_34

    .line 100
    invoke-static {p0, v1}, Landroid/support/v4/graphics/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v1

    .line 101
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2f

    .line 103
    invoke-static {v3}, Landroid/support/v4/graphics/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v5

    .line 104
    .local v5, "val":[F
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v2, v4, v5}, Landroid/support/v4/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 107
    .end local v5    # "val":[F
    :cond_2f
    move v0, v1

    .line 108
    nop

    .end local v3    # "s":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 109
    goto :goto_b

    .line 110
    :cond_34
    sub-int v3, v1, v0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_48

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_48

    .line 111
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    new-array v4, v4, [F

    invoke-static {v2, v3, v4}, Landroid/support/v4/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 113
    :cond_48
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/support/v4/graphics/PathParser$PathDataNode;

    return-object v3
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 7
    .param p0, "pathData"    # Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 75
    .local v0, "path":Landroid/graphics/Path;
    invoke-static {p0}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v1

    .line 76
    .local v1, "nodes":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    if-eqz v1, :cond_2a

    .line 78
    :try_start_b
    invoke-static {v1, v0}, Landroid/support/v4/graphics/PathParser$PathDataNode;->nodesToPath([Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_10

    .line 81
    nop

    .line 82
    return-object v0

    .line 79
    :catch_10
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 84
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_2a
    const/4 v2, 0x0

    return-object v2
.end method

.method public static deepCopyNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;)[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .registers 5
    .param p0, "source"    # [Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 121
    if-nez p0, :cond_4

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 125
    .local v0, "copy":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_17

    .line 126
    new-instance v2, Landroid/support/v4/graphics/PathParser$PathDataNode;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/support/v4/graphics/PathParser$PathDataNode;-><init>(Landroid/support/v4/graphics/PathParser$PathDataNode;)V

    aput-object v2, v0, v1

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 128
    .end local v1    # "i":I
    :cond_17
    return-object v0
.end method

.method private static extract(Ljava/lang/String;ILandroid/support/v4/graphics/PathParser$ExtractFloatResult;)V
    .registers 10
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "result"    # Landroid/support/v4/graphics/PathParser$ExtractFloatResult;

    .line 257
    move v0, p1

    .line 258
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 259
    .local v1, "foundSeparator":Z
    const/4 v2, 0x0

    iput-boolean v2, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, "secondDot":Z
    const/4 v3, 0x0

    .line 262
    .local v3, "isExponential":Z
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_32

    .line 263
    move v4, v3

    .line 264
    .local v4, "isPrevExponential":Z
    const/4 v3, 0x0

    .line 265
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 266
    .local v5, "currentChar":C
    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_36

    goto :goto_2c

    .line 289
    :sswitch_18
    const/4 v3, 0x1

    goto :goto_2c

    .line 279
    :sswitch_1a
    if-nez v2, :cond_1e

    .line 280
    const/4 v2, 0x1

    goto :goto_2c

    .line 283
    :cond_1e
    const/4 v1, 0x1

    .line 284
    iput-boolean v6, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    .line 286
    goto :goto_2c

    .line 273
    :sswitch_22
    if-eq v0, p1, :cond_2c

    if-nez v4, :cond_2c

    .line 274
    const/4 v1, 0x1

    .line 275
    iput-boolean v6, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_2c

    .line 269
    :sswitch_2a
    const/4 v1, 0x1

    .line 270
    nop

    .line 292
    :cond_2c
    :goto_2c
    if-eqz v1, :cond_2f

    .line 293
    goto :goto_32

    .line 262
    .end local v4    # "isPrevExponential":Z
    .end local v5    # "currentChar":C
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 298
    :cond_32
    :goto_32
    iput v0, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 299
    return-void

    nop

    :sswitch_data_36
    .sparse-switch
        0x20 -> :sswitch_2a
        0x2c -> :sswitch_2a
        0x2d -> :sswitch_22
        0x2e -> :sswitch_1a
        0x45 -> :sswitch_18
        0x65 -> :sswitch_18
    .end sparse-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .registers 10
    .param p0, "s"    # Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_69

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_12

    goto :goto_69

    .line 214
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 215
    .local v1, "results":[F
    const/4 v2, 0x0

    .line 216
    .local v2, "count":I
    const/4 v3, 0x1

    .line 217
    .local v3, "startPosition":I
    const/4 v4, 0x0

    .line 219
    .local v4, "endPosition":I
    new-instance v5, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;

    invoke-direct {v5}, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;-><init>()V

    .line 220
    .local v5, "result":Landroid/support/v4/graphics/PathParser$ExtractFloatResult;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 225
    .local v6, "totalLength":I
    :goto_24
    if-ge v3, v6, :cond_44

    .line 226
    invoke-static {p0, v3, v5}, Landroid/support/v4/graphics/PathParser;->extract(Ljava/lang/String;ILandroid/support/v4/graphics/PathParser$ExtractFloatResult;)V

    .line 227
    iget v7, v5, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    move v4, v7

    .line 229
    if-ge v3, v4, :cond_3b

    .line 230
    add-int/lit8 v7, v2, 0x1

    .line 231
    .end local v2    # "count":I
    .local v7, "count":I
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 230
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v1, v2

    move v2, v7

    .line 234
    .end local v7    # "count":I
    .restart local v2    # "count":I
    :cond_3b
    iget-boolean v7, v5, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v7, :cond_41

    .line 236
    move v3, v4

    goto :goto_24

    .line 238
    :cond_41
    add-int/lit8 v3, v4, 0x1

    goto :goto_24

    .line 241
    :cond_44
    invoke-static {v1, v0, v2}, Landroid/support/v4/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object v0
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_48} :catch_49

    return-object v0

    .line 242
    .end local v1    # "results":[F
    .end local v2    # "count":I
    .end local v3    # "startPosition":I
    .end local v4    # "endPosition":I
    .end local v5    # "result":Landroid/support/v4/graphics/PathParser$ExtractFloatResult;
    .end local v6    # "totalLength":I
    :catch_49
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in parsing \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 211
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_69
    :goto_69
    new-array v0, v0, [F

    return-object v0
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "end"    # I

    .line 173
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_27

    .line 174
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 179
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int v1, v1, v2

    if-lez v1, :cond_1a

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int v1, v1, v2

    if-gtz v1, :cond_23

    :cond_1a
    const/16 v1, 0x65

    if-eq v0, v1, :cond_23

    const/16 v1, 0x45

    if-eq v0, v1, :cond_23

    .line 181
    return p1

    .line 183
    :cond_23
    nop

    .end local v0    # "c":C
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 185
    :cond_27
    return p1
.end method

.method public static updateNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)V
    .registers 6
    .param p0, "target"    # [Landroid/support/v4/graphics/PathParser$PathDataNode;
    .param p1, "source"    # [Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_26

    .line 163
    aget-object v1, p0, v0

    aget-object v2, p1, v0

    iget-char v2, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    iput-char v2, v1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    .line 164
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_d
    aget-object v2, p1, v0

    iget-object v2, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 165
    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v1

    aput v3, v2, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 162
    .end local v1    # "j":I
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    .end local v0    # "i":I
    :cond_26
    return-void
.end method
