.class Landroid/support/constraint/StateSet$Variant;
.super Ljava/lang/Object;
.source "StateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/StateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Variant"
.end annotation


# instance fields
.field mConstraintID:I

.field mId:I

.field mIsLayout:Z

.field mMaxHeight:F

.field mMaxWidth:F

.field mMinHeight:F

.field mMinWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/StateSet$Variant;->mMinWidth:F

    .line 290
    iput v0, p0, Landroid/support/constraint/StateSet$Variant;->mMinHeight:F

    .line 291
    iput v0, p0, Landroid/support/constraint/StateSet$Variant;->mMaxWidth:F

    .line 292
    iput v0, p0, Landroid/support/constraint/StateSet$Variant;->mMaxHeight:F

    .line 293
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/StateSet$Variant;->mConstraintID:I

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/StateSet$Variant;->mIsLayout:Z

    .line 297
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 298
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Landroid/support/constraint/R$styleable;->Variant:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 299
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 304
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    if-ge v3, v2, :cond_92

    .line 305
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 306
    .local v4, "attr":I
    sget v5, Landroid/support/constraint/R$styleable;->Variant_constraints:I

    if-ne v4, v5, :cond_54

    .line 307
    iget v5, p0, Landroid/support/constraint/StateSet$Variant;->mConstraintID:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/StateSet$Variant;->mConstraintID:I

    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/StateSet$Variant;->mConstraintID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Landroid/support/constraint/StateSet$Variant;->mConstraintID:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, "name":Ljava/lang/String;
    const-string v7, "layout"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 312
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/support/constraint/StateSet$Variant;->mIsLayout:Z

    .line 314
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :cond_53
    goto :goto_8f

    :cond_54
    sget v5, Landroid/support/constraint/R$styleable;->Variant_region_heightLessThan:I

    if-ne v4, v5, :cond_61

    .line 315
    iget v5, p0, Landroid/support/constraint/StateSet$Variant;->mMaxHeight:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/StateSet$Variant;->mMaxHeight:F

    goto :goto_8f

    .line 316
    :cond_61
    sget v5, Landroid/support/constraint/R$styleable;->Variant_region_heightMoreThan:I

    if-ne v4, v5, :cond_6e

    .line 317
    iget v5, p0, Landroid/support/constraint/StateSet$Variant;->mMinHeight:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/StateSet$Variant;->mMinHeight:F

    goto :goto_8f

    .line 318
    :cond_6e
    sget v5, Landroid/support/constraint/R$styleable;->Variant_region_widthLessThan:I

    if-ne v4, v5, :cond_7b

    .line 319
    iget v5, p0, Landroid/support/constraint/StateSet$Variant;->mMaxWidth:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/StateSet$Variant;->mMaxWidth:F

    goto :goto_8f

    .line 320
    :cond_7b
    sget v5, Landroid/support/constraint/R$styleable;->Variant_region_widthMoreThan:I

    if-ne v4, v5, :cond_88

    .line 321
    iget v5, p0, Landroid/support/constraint/StateSet$Variant;->mMinWidth:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/StateSet$Variant;->mMinWidth:F

    goto :goto_8f

    .line 323
    :cond_88
    const-string v5, "ConstraintLayoutStates"

    const-string v6, "Unknown tag"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v4    # "attr":I
    :goto_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 326
    .end local v3    # "i":I
    :cond_92
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 342
    return-void
.end method


# virtual methods
.method match(FF)Z
    .registers 5
    .param p1, "widthDp"    # F
    .param p2, "heightDp"    # F

    .line 349
    iget v0, p0, Landroid/support/constraint/StateSet$Variant;->mMinWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 350
    iget v0, p0, Landroid/support/constraint/StateSet$Variant;->mMinWidth:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    return v1

    .line 352
    :cond_10
    iget v0, p0, Landroid/support/constraint/StateSet$Variant;->mMinHeight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 353
    iget v0, p0, Landroid/support/constraint/StateSet$Variant;->mMinHeight:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1f

    return v1

    .line 355
    :cond_1f
    iget v0, p0, Landroid/support/constraint/StateSet$Variant;->mMaxWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 356
    iget v0, p0, Landroid/support/constraint/StateSet$Variant;->mMaxWidth:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2e

    return v1

    .line 358
    :cond_2e
    iget v0, p0, Landroid/support/constraint/StateSet$Variant;->mMaxHeight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 359
    iget v0, p0, Landroid/support/constraint/StateSet$Variant;->mMaxHeight:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3d

    return v1

    .line 361
    :cond_3d
    const/4 v0, 0x1

    return v0
.end method
