.class Landroid/support/constraint/StateSet$State;
.super Ljava/lang/Object;
.source "StateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/StateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field mConstraintID:I

.field mId:I

.field mIsLayout:Z

.field mVariants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/StateSet$Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 250
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/StateSet$State;->mConstraintID:I

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/StateSet$State;->mIsLayout:Z

    .line 253
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 254
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Landroid/support/constraint/R$styleable;->State:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 255
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 256
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_60

    .line 257
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 258
    .local v4, "attr":I
    sget v5, Landroid/support/constraint/R$styleable;->State_android_id:I

    if-ne v4, v5, :cond_32

    .line 259
    iget v5, p0, Landroid/support/constraint/StateSet$State;->mId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/StateSet$State;->mId:I

    goto :goto_5d

    .line 260
    :cond_32
    sget v5, Landroid/support/constraint/R$styleable;->State_constraints:I

    if-ne v4, v5, :cond_5d

    .line 261
    iget v5, p0, Landroid/support/constraint/StateSet$State;->mConstraintID:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/StateSet$State;->mConstraintID:I

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/StateSet$State;->mConstraintID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Landroid/support/constraint/StateSet$State;->mConstraintID:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, "name":Ljava/lang/String;
    const-string v7, "layout"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 266
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/support/constraint/StateSet$State;->mIsLayout:Z

    .line 256
    .end local v4    # "attr":I
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :cond_5d
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 270
    .end local v3    # "i":I
    :cond_60
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    return-void
.end method


# virtual methods
.method add(Landroid/support/constraint/StateSet$Variant;)V
    .registers 3
    .param p1, "size"    # Landroid/support/constraint/StateSet$Variant;

    .line 274
    iget-object v0, p0, Landroid/support/constraint/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method public findMatch(FF)I
    .registers 5
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/support/constraint/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 279
    iget-object v1, p0, Landroid/support/constraint/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/StateSet$Variant;

    invoke-virtual {v1, p1, p2}, Landroid/support/constraint/StateSet$Variant;->match(FF)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 280
    return v0

    .line 278
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method
