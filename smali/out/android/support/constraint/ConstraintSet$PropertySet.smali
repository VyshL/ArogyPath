.class public Landroid/support/constraint/ConstraintSet$PropertySet;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertySet"
.end annotation


# instance fields
.field public alpha:F

.field public mApply:Z

.field public mProgress:F

.field public mVisibilityMode:I

.field public visibility:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->mApply:Z

    .line 1141
    iput v0, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->visibility:I

    .line 1142
    iput v0, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 1143
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->alpha:F

    .line 1144
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->mProgress:F

    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/support/constraint/ConstraintSet$PropertySet;)V
    .registers 3
    .param p1, "src"    # Landroid/support/constraint/ConstraintSet$PropertySet;

    .line 1147
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintSet$PropertySet;->mApply:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->mApply:Z

    .line 1148
    iget v0, p1, Landroid/support/constraint/ConstraintSet$PropertySet;->visibility:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->visibility:I

    .line 1149
    iget v0, p1, Landroid/support/constraint/ConstraintSet$PropertySet;->alpha:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->alpha:F

    .line 1150
    iget v0, p1, Landroid/support/constraint/ConstraintSet$PropertySet;->mProgress:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->mProgress:F

    .line 1151
    iget v0, p1, Landroid/support/constraint/ConstraintSet$PropertySet;->mVisibilityMode:I

    iput v0, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 1152
    return-void
.end method

.method fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1155
    sget-object v0, Landroid/support/constraint/R$styleable;->PropertySet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1156
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->mApply:Z

    .line 1157
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 1158
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_54

    .line 1159
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 1161
    .local v3, "attr":I
    sget v4, Landroid/support/constraint/R$styleable;->PropertySet_android_alpha:I

    if-ne v3, v4, :cond_21

    .line 1162
    iget v4, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->alpha:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->alpha:F

    goto :goto_51

    .line 1163
    :cond_21
    sget v4, Landroid/support/constraint/R$styleable;->PropertySet_android_visibility:I

    if-ne v3, v4, :cond_38

    .line 1164
    iget v4, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->visibility:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->visibility:I

    .line 1165
    invoke-static {}, Landroid/support/constraint/ConstraintSet;->access$200()[I

    move-result-object v4

    iget v5, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->visibility:I

    aget v4, v4, v5

    iput v4, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->visibility:I

    goto :goto_51

    .line 1166
    :cond_38
    sget v4, Landroid/support/constraint/R$styleable;->PropertySet_visibilityMode:I

    if-ne v3, v4, :cond_45

    .line 1167
    iget v4, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->mVisibilityMode:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->mVisibilityMode:I

    goto :goto_51

    .line 1168
    :cond_45
    sget v4, Landroid/support/constraint/R$styleable;->PropertySet_motionProgress:I

    if-ne v3, v4, :cond_51

    .line 1169
    iget v4, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->mProgress:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintSet$PropertySet;->mProgress:F

    .line 1158
    .end local v3    # "attr":I
    :cond_51
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1172
    .end local v2    # "i":I
    :cond_54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1173
    return-void
.end method
