.class Landroid/support/constraint/ConstraintLayoutStates$State;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintLayoutStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field mConstraintID:I

.field mConstraintSet:Landroid/support/constraint/ConstraintSet;

.field mId:I

.field mVariants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/ConstraintLayoutStates$Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayoutStates$State;->mConstraintID:I

    .line 146
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 147
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Landroid/support/constraint/R$styleable;->State:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 148
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 149
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v2, :cond_66

    .line 150
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 151
    .local v4, "attr":I
    sget v5, Landroid/support/constraint/R$styleable;->State_android_id:I

    if-ne v4, v5, :cond_2f

    .line 152
    iget v5, p0, Landroid/support/constraint/ConstraintLayoutStates$State;->mId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayoutStates$State;->mId:I

    goto :goto_63

    .line 153
    :cond_2f
    sget v5, Landroid/support/constraint/R$styleable;->State_constraints:I

    if-ne v4, v5, :cond_63

    .line 154
    iget v5, p0, Landroid/support/constraint/ConstraintLayoutStates$State;->mConstraintID:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayoutStates$State;->mConstraintID:I

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Landroid/support/constraint/ConstraintLayoutStates$State;->mConstraintID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Landroid/support/constraint/ConstraintLayoutStates$State;->mConstraintID:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "name":Ljava/lang/String;
    const-string v7, "layout"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 159
    new-instance v7, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v7}, Landroid/support/constraint/ConstraintSet;-><init>()V

    iput-object v7, p0, Landroid/support/constraint/ConstraintLayoutStates$State;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 160
    iget v8, p0, Landroid/support/constraint/ConstraintLayoutStates$State;->mConstraintID:I

    invoke-virtual {v7, p1, v8}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/content/Context;I)V

    .line 149
    .end local v4    # "attr":I
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :cond_63
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 167
    .end local v3    # "i":I
    :cond_66
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    return-void
.end method


# virtual methods
.method add(Landroid/support/constraint/ConstraintLayoutStates$Variant;)V
    .registers 3
    .param p1, "size"    # Landroid/support/constraint/ConstraintLayoutStates$Variant;

    .line 171
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public findMatch(FF)I
    .registers 5
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 176
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayoutStates$Variant;

    invoke-virtual {v1, p1, p2}, Landroid/support/constraint/ConstraintLayoutStates$Variant;->match(FF)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 177
    return v0

    .line 175
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method
