.class Landroid/support/constraint/motion/SplineSet$CustomSet;
.super Landroid/support/constraint/motion/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mConstraintAttributeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mTempValues:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 5
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    .line 259
    .local p2, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/constraint/ConstraintAttribute;>;"
    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet;-><init>()V

    .line 260
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mAttributeName:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    .line 262
    return-void
.end method


# virtual methods
.method public setPoint(IF)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "value"    # F

    .line 287
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPoint(ILandroid/support/constraint/ConstraintAttribute;)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "value"    # Landroid/support/constraint/ConstraintAttribute;

    .line 291
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 292
    return-void
.end method

.method public setProperty(Landroid/view/View;F)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 296
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    float-to-double v1, p2

    iget-object v3, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/constraint/motion/utils/CurveFit;->getPos(D[F)V

    .line 297
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintAttribute;

    iget-object v1, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    .line 298
    return-void
.end method

.method public setup(I)V
    .registers 14
    .param p1, "curveType"    # I

    .line 265
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 266
    .local v0, "size":I
    iget-object v1, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintAttribute;

    invoke-virtual {v1}, Landroid/support/constraint/ConstraintAttribute;->noOfInterpValues()I

    move-result v1

    .line 267
    .local v1, "dimensionality":I
    new-array v3, v0, [D

    .line 268
    .local v3, "time":[D
    new-array v4, v1, [F

    iput-object v4, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mTempValues:[F

    .line 269
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v1, v4, v5

    aput v0, v4, v2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 270
    .local v2, "values":[[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    if-ge v4, v0, :cond_5c

    .line 272
    iget-object v5, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 273
    .local v5, "key":I
    iget-object v6, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/ConstraintAttribute;

    .line 275
    .local v6, "ca":Landroid/support/constraint/ConstraintAttribute;
    int-to-double v7, v5

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    mul-double v7, v7, v9

    aput-wide v7, v3, v4

    .line 276
    iget-object v7, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v6, v7}, Landroid/support/constraint/ConstraintAttribute;->getValuesToInterpolate([F)V

    .line 277
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_4a
    iget-object v8, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mTempValues:[F

    array-length v9, v8

    if-ge v7, v9, :cond_59

    .line 278
    aget-object v9, v2, v4

    aget v8, v8, v7

    float-to-double v10, v8

    aput-wide v10, v9, v7

    .line 277
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    .line 270
    .end local v5    # "key":I
    .end local v6    # "ca":Landroid/support/constraint/ConstraintAttribute;
    .end local v7    # "k":I
    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 282
    .end local v4    # "i":I
    :cond_5c
    invoke-static {p1, v3, v2}, Landroid/support/constraint/motion/utils/CurveFit;->get(I[D[[D)Landroid/support/constraint/motion/utils/CurveFit;

    move-result-object v4

    iput-object v4, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    .line 283
    return-void
.end method
