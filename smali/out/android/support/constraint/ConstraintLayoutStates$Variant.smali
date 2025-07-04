.class Landroid/support/constraint/ConstraintLayoutStates$Variant;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintLayoutStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Variant"
.end annotation


# instance fields
.field mConstraintID:I

.field mConstraintSet:Landroid/support/constraint/ConstraintSet;

.field mId:I

.field mMaxHeight:F

.field mMaxWidth:F

.field mMinHeight:F

.field mMinWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMinWidth:F

    .line 187
    iput v0, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMinHeight:F

    .line 188
    iput v0, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMaxWidth:F

    .line 189
    iput v0, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMaxHeight:F

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mConstraintID:I

    .line 194
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 195
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Landroid/support/constraint/R$styleable;->Variant:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 196
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 201
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_98

    .line 202
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 203
    .local v4, "attr":I
    sget v5, Landroid/support/constraint/R$styleable;->Variant_constraints:I

    if-ne v4, v5, :cond_5a

    .line 204
    iget v5, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mConstraintID:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mConstraintID:I

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mConstraintID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mConstraintID:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "name":Ljava/lang/String;
    const-string v7, "layout"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 209
    new-instance v7, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v7}, Landroid/support/constraint/ConstraintSet;-><init>()V

    iput-object v7, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 213
    iget v8, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mConstraintID:I

    invoke-virtual {v7, p1, v8}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/content/Context;I)V

    .line 223
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :cond_59
    goto :goto_95

    :cond_5a
    sget v5, Landroid/support/constraint/R$styleable;->Variant_region_heightLessThan:I

    if-ne v4, v5, :cond_67

    .line 224
    iget v5, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMaxHeight:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMaxHeight:F

    goto :goto_95

    .line 225
    :cond_67
    sget v5, Landroid/support/constraint/R$styleable;->Variant_region_heightMoreThan:I

    if-ne v4, v5, :cond_74

    .line 226
    iget v5, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMinHeight:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMinHeight:F

    goto :goto_95

    .line 227
    :cond_74
    sget v5, Landroid/support/constraint/R$styleable;->Variant_region_widthLessThan:I

    if-ne v4, v5, :cond_81

    .line 228
    iget v5, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMaxWidth:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMaxWidth:F

    goto :goto_95

    .line 229
    :cond_81
    sget v5, Landroid/support/constraint/R$styleable;->Variant_region_widthMoreThan:I

    if-ne v4, v5, :cond_8e

    .line 230
    iget v5, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMinWidth:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMinWidth:F

    goto :goto_95

    .line 232
    :cond_8e
    const-string v5, "ConstraintLayoutStates"

    const-string v6, "Unknown tag"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v4    # "attr":I
    :goto_95
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 235
    .end local v3    # "i":I
    :cond_98
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 251
    return-void
.end method


# virtual methods
.method match(FF)Z
    .registers 5
    .param p1, "widthDp"    # F
    .param p2, "heightDp"    # F

    .line 258
    iget v0, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMinWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 259
    iget v0, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMinWidth:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    return v1

    .line 261
    :cond_10
    iget v0, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMinHeight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 262
    iget v0, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMinHeight:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1f

    return v1

    .line 264
    :cond_1f
    iget v0, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMaxWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 265
    iget v0, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMaxWidth:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2e

    return v1

    .line 267
    :cond_2e
    iget v0, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMaxHeight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 268
    iget v0, p0, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mMaxHeight:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3d

    return v1

    .line 270
    :cond_3d
    const/4 v0, 0x1

    return v0
.end method
