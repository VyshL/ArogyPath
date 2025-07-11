.class Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;
.super Ljava/lang/Object;
.source "ImageFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/utils/ImageFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageMatrix"
.end annotation


# instance fields
.field m:[F

.field mBrightness:F

.field mColorMatrix:Landroid/graphics/ColorMatrix;

.field mContrast:F

.field mSaturation:F

.field mTmpColorMatrix:Landroid/graphics/ColorMatrix;

.field mWarmth:F


# direct methods
.method constructor <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->m:[F

    .line 88
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 89
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    .line 90
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mBrightness:F

    .line 91
    iput v0, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mSaturation:F

    .line 92
    iput v0, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mContrast:F

    .line 93
    iput v0, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mWarmth:F

    return-void
.end method

.method private brightness(F)V
    .registers 6
    .param p1, "brightness"    # F

    .line 225
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->m:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 226
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 227
    const/4 v1, 0x2

    aput v2, v0, v1

    .line 228
    const/4 v1, 0x3

    aput v2, v0, v1

    .line 229
    const/4 v1, 0x4

    aput v2, v0, v1

    .line 231
    const/4 v1, 0x5

    aput v2, v0, v1

    .line 232
    const/4 v1, 0x6

    aput p1, v0, v1

    .line 233
    const/4 v1, 0x7

    aput v2, v0, v1

    .line 234
    const/16 v1, 0x8

    aput v2, v0, v1

    .line 235
    const/16 v1, 0x9

    aput v2, v0, v1

    .line 237
    const/16 v1, 0xa

    aput v2, v0, v1

    .line 238
    const/16 v1, 0xb

    aput v2, v0, v1

    .line 239
    const/16 v1, 0xc

    aput p1, v0, v1

    .line 240
    const/16 v1, 0xd

    aput v2, v0, v1

    .line 241
    const/16 v1, 0xe

    aput v2, v0, v1

    .line 243
    const/16 v1, 0xf

    aput v2, v0, v1

    .line 244
    const/16 v1, 0x10

    aput v2, v0, v1

    .line 245
    const/16 v1, 0x11

    aput v2, v0, v1

    .line 246
    const/16 v1, 0x12

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v1

    .line 247
    const/16 v1, 0x13

    aput v2, v0, v1

    .line 248
    return-void
.end method

.method private saturation(F)V
    .registers 15
    .param p1, "saturationStrength"    # F

    .line 96
    const v0, 0x3e998c7e    # 0.2999f

    .line 97
    .local v0, "Rf":F
    const v1, 0x3f1645a2    # 0.587f

    .line 98
    .local v1, "Gf":F
    const v2, 0x3de978d5    # 0.114f

    .line 99
    .local v2, "Bf":F
    move v3, p1

    .line 101
    .local v3, "S":F
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v3

    .line 102
    .local v5, "MS":F
    mul-float v6, v0, v5

    .line 103
    .local v6, "Rt":F
    mul-float v7, v1, v5

    .line 104
    .local v7, "Gt":F
    mul-float v8, v2, v5

    .line 106
    .local v8, "Bt":F
    iget-object v9, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->m:[F

    add-float v10, v6, v3

    const/4 v11, 0x0

    aput v10, v9, v11

    .line 107
    const/4 v10, 0x1

    aput v7, v9, v10

    .line 108
    const/4 v10, 0x2

    aput v8, v9, v10

    .line 109
    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 110
    const/4 v10, 0x4

    aput v11, v9, v10

    .line 112
    const/4 v10, 0x5

    aput v6, v9, v10

    .line 113
    add-float v10, v7, v3

    const/4 v12, 0x6

    aput v10, v9, v12

    .line 114
    const/4 v10, 0x7

    aput v8, v9, v10

    .line 115
    const/16 v10, 0x8

    aput v11, v9, v10

    .line 116
    const/16 v10, 0x9

    aput v11, v9, v10

    .line 118
    const/16 v10, 0xa

    aput v6, v9, v10

    .line 119
    const/16 v10, 0xb

    aput v7, v9, v10

    .line 120
    add-float v10, v8, v3

    const/16 v12, 0xc

    aput v10, v9, v12

    .line 121
    const/16 v10, 0xd

    aput v11, v9, v10

    .line 122
    const/16 v10, 0xe

    aput v11, v9, v10

    .line 124
    const/16 v10, 0xf

    aput v11, v9, v10

    .line 125
    const/16 v10, 0x10

    aput v11, v9, v10

    .line 126
    const/16 v10, 0x11

    aput v11, v9, v10

    .line 127
    const/16 v10, 0x12

    aput v4, v9, v10

    .line 128
    const/16 v4, 0x13

    aput v11, v9, v4

    .line 129
    return-void
.end method

.method private warmth(F)V
    .registers 22
    .param p1, "warmth"    # F

    .line 132
    const v0, 0x459c4000    # 5000.0f

    .line 133
    .local v0, "baseTemprature":F
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_c

    const v2, 0x3c23d70a    # 0.01f

    .end local p1    # "warmth":F
    .local v2, "warmth":F
    goto :goto_e

    .end local v2    # "warmth":F
    .restart local p1    # "warmth":F
    :cond_c
    move/from16 v2, p1

    .line 138
    .end local p1    # "warmth":F
    .restart local v2    # "warmth":F
    :goto_e
    div-float v3, v0, v2

    .line 140
    .local v3, "kelvin":F
    const/high16 v4, 0x42c80000    # 100.0f

    div-float v5, v3, v4

    .line 142
    .local v5, "centiKelvin":F
    const-wide v6, 0x3fb354f0e0000000L

    const v8, 0x43900fa3

    const-wide v9, -0x403ef32580000000L    # -0.13320475816726685

    const v11, 0x43a4d970

    const/high16 v12, 0x42700000    # 60.0f

    const v13, 0x43211e9c

    const v14, 0x42c6f10d

    const/high16 v15, 0x42840000    # 66.0f

    cmpl-float v16, v5, v15

    if-lez v16, :cond_47

    .line 143
    sub-float v4, v5, v12

    .line 144
    .local v4, "tmp":F
    move/from16 v17, v2

    .end local v2    # "warmth":F
    .local v17, "warmth":F
    float-to-double v1, v4

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v11

    .line 145
    .local v1, "colorR":F
    float-to-double v9, v4

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v2, v9

    mul-float v2, v2, v8

    .line 147
    .end local v4    # "tmp":F
    .local v2, "colorG":F
    goto :goto_55

    .line 148
    .end local v1    # "colorR":F
    .end local v17    # "warmth":F
    .local v2, "warmth":F
    :cond_47
    move/from16 v17, v2

    .end local v2    # "warmth":F
    .restart local v17    # "warmth":F
    float-to-double v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v14

    sub-float v2, v1, v13

    .line 149
    .local v2, "colorG":F
    const/high16 v1, 0x437f0000    # 255.0f

    .line 151
    .restart local v1    # "colorR":F
    :goto_55
    const v4, 0x439885bc

    const/high16 v9, 0x41200000    # 10.0f

    const v10, 0x430a848a

    const/high16 v18, 0x41980000    # 19.0f

    cmpg-float v19, v5, v15

    if-gez v19, :cond_75

    .line 152
    cmpl-float v19, v5, v18

    if-lez v19, :cond_73

    .line 153
    sub-float v13, v5, v9

    float-to-double v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v8, v8, v10

    sub-float/2addr v8, v4

    .local v8, "colorB":F
    goto :goto_77

    .line 155
    .end local v8    # "colorB":F
    :cond_73
    const/4 v8, 0x0

    .restart local v8    # "colorB":F
    goto :goto_77

    .line 158
    .end local v8    # "colorB":F
    :cond_75
    const/high16 v8, 0x437f0000    # 255.0f

    .line 160
    .restart local v8    # "colorB":F
    :goto_77
    const/4 v9, 0x0

    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/high16 v4, 0x437f0000    # 255.0f

    invoke-static {v4, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 161
    .local v13, "tmpColor_r":F
    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 162
    .local v10, "tmpColor_g":F
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v4, v14}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 165
    .end local v2    # "colorG":F
    .end local v5    # "centiKelvin":F
    .end local v8    # "colorB":F
    .local v1, "tmpColor_b":F
    move v2, v13

    .line 166
    .local v2, "color_r":F
    move v5, v10

    .line 167
    .local v5, "color_g":F
    move v8, v1

    .line 168
    .local v8, "color_b":F
    move v3, v0

    .line 170
    const/high16 v9, 0x42c80000    # 100.0f

    div-float v9, v3, v9

    .line 172
    .local v9, "centiKelvin":F
    cmpl-float v14, v9, v15

    if-lez v14, :cond_c1

    .line 173
    sub-float v12, v9, v12

    .line 174
    .local v12, "tmp":F
    move v14, v5

    .end local v5    # "color_g":F
    .local v14, "color_g":F
    float-to-double v4, v12

    const-wide v6, -0x403ef32580000000L    # -0.13320475816726685

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v11

    .line 175
    .local v4, "colorR":F
    float-to-double v5, v12

    move v7, v0

    move v11, v1

    const-wide v0, 0x3fb354f0e0000000L

    .end local v0    # "baseTemprature":F
    .end local v1    # "tmpColor_b":F
    .local v7, "baseTemprature":F
    .local v11, "tmpColor_b":F
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x43900fa3

    mul-float v0, v0, v1

    .line 177
    .end local v12    # "tmp":F
    .local v0, "colorG":F
    goto :goto_d5

    .line 178
    .end local v4    # "colorR":F
    .end local v7    # "baseTemprature":F
    .end local v11    # "tmpColor_b":F
    .end local v14    # "color_g":F
    .local v0, "baseTemprature":F
    .restart local v1    # "tmpColor_b":F
    .restart local v5    # "color_g":F
    :cond_c1
    move v7, v0

    move v11, v1

    move v14, v5

    .end local v0    # "baseTemprature":F
    .end local v1    # "tmpColor_b":F
    .end local v5    # "color_g":F
    .restart local v7    # "baseTemprature":F
    .restart local v11    # "tmpColor_b":F
    .restart local v14    # "color_g":F
    float-to-double v0, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42c6f10d

    mul-float v0, v0, v1

    const v1, 0x43211e9c

    sub-float/2addr v0, v1

    .line 179
    .local v0, "colorG":F
    const/high16 v4, 0x437f0000    # 255.0f

    .line 181
    .restart local v4    # "colorR":F
    :goto_d5
    cmpg-float v1, v9, v15

    if-gez v1, :cond_f3

    .line 182
    cmpl-float v1, v9, v18

    if-lez v1, :cond_f1

    .line 183
    const/high16 v1, 0x41200000    # 10.0f

    sub-float v1, v9, v1

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    double-to-float v1, v5

    const v5, 0x430a848a

    mul-float v1, v1, v5

    const v5, 0x439885bc

    sub-float/2addr v1, v5

    .local v1, "colorB":F
    goto :goto_f5

    .line 185
    .end local v1    # "colorB":F
    :cond_f1
    const/4 v1, 0x0

    .restart local v1    # "colorB":F
    goto :goto_f5

    .line 188
    .end local v1    # "colorB":F
    :cond_f3
    const/high16 v1, 0x437f0000    # 255.0f

    .line 190
    .restart local v1    # "colorB":F
    :goto_f5
    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v12, 0x437f0000    # 255.0f

    invoke-static {v12, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 191
    .end local v13    # "tmpColor_r":F
    .local v6, "tmpColor_r":F
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 192
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 195
    .end local v1    # "colorB":F
    .end local v4    # "colorR":F
    .end local v9    # "centiKelvin":F
    .end local v11    # "tmpColor_b":F
    .local v0, "tmpColor_b":F
    div-float/2addr v2, v6

    .line 196
    div-float v5, v14, v10

    .line 197
    .end local v14    # "color_g":F
    .restart local v5    # "color_g":F
    div-float/2addr v8, v0

    .line 198
    move-object/from16 v1, p0

    iget-object v4, v1, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->m:[F

    const/4 v9, 0x0

    aput v2, v4, v9

    .line 199
    const/4 v9, 0x1

    const/4 v11, 0x0

    aput v11, v4, v9

    .line 200
    const/4 v9, 0x2

    aput v11, v4, v9

    .line 201
    const/4 v9, 0x3

    aput v11, v4, v9

    .line 202
    const/4 v9, 0x4

    aput v11, v4, v9

    .line 204
    const/4 v9, 0x5

    aput v11, v4, v9

    .line 205
    const/4 v9, 0x6

    aput v5, v4, v9

    .line 206
    const/4 v9, 0x7

    aput v11, v4, v9

    .line 207
    const/16 v9, 0x8

    aput v11, v4, v9

    .line 208
    const/16 v9, 0x9

    aput v11, v4, v9

    .line 210
    const/16 v9, 0xa

    aput v11, v4, v9

    .line 211
    const/16 v9, 0xb

    aput v11, v4, v9

    .line 212
    const/16 v9, 0xc

    aput v8, v4, v9

    .line 213
    const/16 v9, 0xd

    aput v11, v4, v9

    .line 214
    const/16 v9, 0xe

    aput v11, v4, v9

    .line 216
    const/16 v9, 0xf

    aput v11, v4, v9

    .line 217
    const/16 v9, 0x10

    aput v11, v4, v9

    .line 218
    const/16 v9, 0x11

    aput v11, v4, v9

    .line 219
    const/16 v9, 0x12

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v4, v9

    .line 220
    const/16 v9, 0x13

    aput v11, v4, v9

    .line 221
    return-void
.end method


# virtual methods
.method updateMatrix(Landroid/widget/ImageView;)V
    .registers 6
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 251
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "filter":Z
    iget v1, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mSaturation:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_19

    .line 254
    invoke-direct {p0, v1}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->saturation(F)V

    .line 255
    iget-object v1, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->m:[F

    invoke-virtual {v1, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 256
    const/4 v0, 0x1

    .line 258
    :cond_19
    iget v1, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mContrast:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2c

    .line 259
    iget-object v3, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v3, v1, v1, v1, v2}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 260
    iget-object v1, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1, v3}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 261
    const/4 v0, 0x1

    .line 263
    :cond_2c
    iget v1, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mWarmth:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_44

    .line 264
    invoke-direct {p0, v1}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->warmth(F)V

    .line 265
    iget-object v1, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->m:[F

    invoke-virtual {v1, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 266
    iget-object v1, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1, v3}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 267
    const/4 v0, 0x1

    .line 269
    :cond_44
    iget v1, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mBrightness:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_5c

    .line 270
    invoke-direct {p0, v1}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->brightness(F)V

    .line 271
    iget-object v1, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->m:[F

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 272
    iget-object v1, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 273
    const/4 v0, 0x1

    .line 276
    :cond_5c
    if-eqz v0, :cond_69

    .line 277
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_6c

    .line 279
    :cond_69
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 281
    :goto_6c
    return-void
.end method
