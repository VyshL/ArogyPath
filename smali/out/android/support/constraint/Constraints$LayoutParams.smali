.class public Landroid/support/constraint/Constraints$LayoutParams;
.super Landroid/support/constraint/ConstraintLayout$LayoutParams;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alpha:F

.field public applyElevation:Z

.field public elevation:F

.field public rotation:F

.field public rotationX:F

.field public rotationY:F

.field public scaleX:F

.field public scaleY:F

.field public transformPivotX:F

.field public transformPivotY:F

.field public translationX:F

.field public translationY:F

.field public translationZ:F


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->alpha:F

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->applyElevation:Z

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->elevation:F

    .line 70
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotation:F

    .line 71
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationX:F

    .line 72
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationY:F

    .line 73
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleX:F

    .line 74
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleY:F

    .line 75
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotX:F

    .line 76
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotY:F

    .line 77
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationX:F

    .line 78
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationY:F

    .line 79
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationZ:F

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->alpha:F

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->applyElevation:Z

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->elevation:F

    .line 70
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotation:F

    .line 71
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationX:F

    .line 72
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationY:F

    .line 73
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleX:F

    .line 74
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleY:F

    .line 75
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotX:F

    .line 76
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotY:F

    .line 77
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationX:F

    .line 78
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationY:F

    .line 79
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationZ:F

    .line 91
    sget-object v0, Landroid/support/constraint/R$styleable;->ConstraintSet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 93
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    if-ge v2, v1, :cond_e2

    .line 94
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 95
    .local v3, "attr":I
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintSet_android_alpha:I

    if-ne v3, v4, :cond_40

    .line 96
    iget v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->alpha:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->alpha:F

    goto/16 :goto_de

    .line 97
    :cond_40
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintSet_android_elevation:I

    const/16 v5, 0x15

    if-ne v3, v4, :cond_57

    .line 98
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_de

    .line 99
    iget v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->elevation:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->elevation:F

    .line 100
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->applyElevation:Z

    goto/16 :goto_de

    .line 102
    :cond_57
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotationX:I

    if-ne v3, v4, :cond_65

    .line 103
    iget v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationX:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationX:F

    goto/16 :goto_de

    .line 104
    :cond_65
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotationY:I

    if-ne v3, v4, :cond_73

    .line 105
    iget v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationY:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationY:F

    goto/16 :goto_de

    .line 106
    :cond_73
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotation:I

    if-ne v3, v4, :cond_80

    .line 107
    iget v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotation:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotation:F

    goto :goto_de

    .line 108
    :cond_80
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintSet_android_scaleX:I

    if-ne v3, v4, :cond_8d

    .line 109
    iget v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleX:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleX:F

    goto :goto_de

    .line 110
    :cond_8d
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintSet_android_scaleY:I

    if-ne v3, v4, :cond_9a

    .line 111
    iget v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleY:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleY:F

    goto :goto_de

    .line 112
    :cond_9a
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintSet_android_transformPivotX:I

    if-ne v3, v4, :cond_a7

    .line 113
    iget v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotX:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotX:F

    goto :goto_de

    .line 114
    :cond_a7
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintSet_android_transformPivotY:I

    if-ne v3, v4, :cond_b4

    .line 115
    iget v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotY:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotY:F

    goto :goto_de

    .line 116
    :cond_b4
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationX:I

    if-ne v3, v4, :cond_c1

    .line 117
    iget v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationX:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationX:F

    goto :goto_de

    .line 118
    :cond_c1
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationY:I

    if-ne v3, v4, :cond_ce

    .line 119
    iget v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationY:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationY:F

    goto :goto_de

    .line 120
    :cond_ce
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationZ:I

    if-ne v3, v4, :cond_de

    .line 121
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_de

    .line 122
    iget v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationZ:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationZ:F

    .line 93
    .end local v3    # "attr":I
    :cond_de
    :goto_de
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2c

    .line 126
    .end local v2    # "i":I
    :cond_e2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/Constraints$LayoutParams;)V
    .registers 4
    .param p1, "source"    # Landroid/support/constraint/Constraints$LayoutParams;

    .line 86
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->alpha:F

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->applyElevation:Z

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->elevation:F

    .line 70
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotation:F

    .line 71
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationX:F

    .line 72
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationY:F

    .line 73
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleX:F

    .line 74
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleY:F

    .line 75
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotX:F

    .line 76
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotY:F

    .line 77
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationX:F

    .line 78
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationY:F

    .line 79
    iput v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationZ:F

    .line 87
    return-void
.end method
