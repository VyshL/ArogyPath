.class public Landroid/support/constraint/solver/state/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/state/Dimension$Type;
    }
.end annotation


# static fields
.field public static final FIXED_DIMENSION:Ljava/lang/Object;

.field public static final PARENT_DIMENSION:Ljava/lang/Object;

.field public static final PERCENT_DIMENSION:Ljava/lang/Object;

.field public static final SPREAD_DIMENSION:Ljava/lang/Object;

.field public static final WRAP_DIMENSION:Ljava/lang/Object;


# instance fields
.field private final WRAP_CONTENT:I

.field mInitialValue:Ljava/lang/Object;

.field mIsSuggested:Z

.field mMax:I

.field mMin:I

.field mPercent:F

.field mRatio:F

.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/constraint/solver/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/constraint/solver/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/constraint/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/constraint/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x2

    iput v0, p0, Landroid/support/constraint/solver/state/Dimension;->WRAP_CONTENT:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/state/Dimension;->mMin:I

    .line 37
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/support/constraint/solver/state/Dimension;->mPercent:F

    .line 39
    iput v0, p0, Landroid/support/constraint/solver/state/Dimension;->mValue:I

    .line 40
    iput v1, p0, Landroid/support/constraint/solver/state/Dimension;->mRatio:F

    .line 41
    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 42
    iput-boolean v0, p0, Landroid/support/constraint/solver/state/Dimension;->mIsSuggested:Z

    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/Object;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x2

    iput v0, p0, Landroid/support/constraint/solver/state/Dimension;->WRAP_CONTENT:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/state/Dimension;->mMin:I

    .line 37
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/support/constraint/solver/state/Dimension;->mPercent:F

    .line 39
    iput v0, p0, Landroid/support/constraint/solver/state/Dimension;->mValue:I

    .line 40
    iput v1, p0, Landroid/support/constraint/solver/state/Dimension;->mRatio:F

    .line 41
    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 42
    iput-boolean v0, p0, Landroid/support/constraint/solver/state/Dimension;->mIsSuggested:Z

    .line 52
    iput-object p1, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    return-void
.end method

.method public static Fixed(I)Landroid/support/constraint/solver/state/Dimension;
    .registers 3
    .param p0, "value"    # I

    .line 67
    new-instance v0, Landroid/support/constraint/solver/state/Dimension;

    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 68
    .local v0, "dimension":Landroid/support/constraint/solver/state/Dimension;
    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/state/Dimension;->fixed(I)Landroid/support/constraint/solver/state/Dimension;

    .line 69
    return-object v0
.end method

.method public static Fixed(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 73
    new-instance v0, Landroid/support/constraint/solver/state/Dimension;

    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 74
    .local v0, "dimension":Landroid/support/constraint/solver/state/Dimension;
    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/state/Dimension;->fixed(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;

    .line 75
    return-object v0
.end method

.method public static Parent()Landroid/support/constraint/solver/state/Dimension;
    .registers 2

    .line 85
    new-instance v0, Landroid/support/constraint/solver/state/Dimension;

    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static Percent(Ljava/lang/Object;F)Landroid/support/constraint/solver/state/Dimension;
    .registers 4
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # F

    .line 79
    new-instance v0, Landroid/support/constraint/solver/state/Dimension;

    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 80
    .local v0, "dimension":Landroid/support/constraint/solver/state/Dimension;
    invoke-virtual {v0, p0, p1}, Landroid/support/constraint/solver/state/Dimension;->percent(Ljava/lang/Object;F)Landroid/support/constraint/solver/state/Dimension;

    .line 81
    return-object v0
.end method

.method public static Spread()Landroid/support/constraint/solver/state/Dimension;
    .registers 2

    .line 93
    new-instance v0, Landroid/support/constraint/solver/state/Dimension;

    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static Suggested(I)Landroid/support/constraint/solver/state/Dimension;
    .registers 2
    .param p0, "value"    # I

    .line 55
    new-instance v0, Landroid/support/constraint/solver/state/Dimension;

    invoke-direct {v0}, Landroid/support/constraint/solver/state/Dimension;-><init>()V

    .line 56
    .local v0, "dimension":Landroid/support/constraint/solver/state/Dimension;
    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/state/Dimension;->suggested(I)Landroid/support/constraint/solver/state/Dimension;

    .line 57
    return-object v0
.end method

.method public static Suggested(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;
    .registers 2
    .param p0, "startValue"    # Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/support/constraint/solver/state/Dimension;

    invoke-direct {v0}, Landroid/support/constraint/solver/state/Dimension;-><init>()V

    .line 62
    .local v0, "dimension":Landroid/support/constraint/solver/state/Dimension;
    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/state/Dimension;->suggested(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;

    .line 63
    return-object v0
.end method

.method public static Wrap()Landroid/support/constraint/solver/state/Dimension;
    .registers 2

    .line 89
    new-instance v0, Landroid/support/constraint/solver/state/Dimension;

    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/support/constraint/solver/state/State;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V
    .registers 8
    .param p1, "state"    # Landroid/support/constraint/solver/state/State;
    .param p2, "constraintWidget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p3, "orientation"    # I

    .line 180
    const v0, 0x7fffffff

    if-nez p3, :cond_59

    .line 181
    iget-boolean v1, p0, Landroid/support/constraint/solver/state/Dimension;->mIsSuggested:Z

    if-eqz v1, :cond_27

    .line 182
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "type":I
    iget-object v1, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v2, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v1, v2, :cond_17

    .line 185
    const/4 v0, 0x1

    goto :goto_1c

    .line 186
    :cond_17
    sget-object v2, Landroid/support/constraint/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    if-ne v1, v2, :cond_1c

    .line 187
    const/4 v0, 0x2

    .line 189
    :cond_1c
    :goto_1c
    iget v1, p0, Landroid/support/constraint/solver/state/Dimension;->mMin:I

    iget v2, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    iget v3, p0, Landroid/support/constraint/solver/state/Dimension;->mPercent:F

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 190
    .end local v0    # "type":I
    goto/16 :goto_aa

    .line 191
    :cond_27
    iget v1, p0, Landroid/support/constraint/solver/state/Dimension;->mMin:I

    if-lez v1, :cond_2e

    .line 192
    invoke-virtual {p2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setMinWidth(I)V

    .line 194
    :cond_2e
    iget v1, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    if-ge v1, v0, :cond_35

    .line 195
    invoke-virtual {p2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setMaxWidth(I)V

    .line 197
    :cond_35
    iget-object v0, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v0, v1, :cond_42

    .line 198
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/16 :goto_aa

    .line 199
    :cond_42
    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    if-ne v0, v1, :cond_4c

    .line 200
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_aa

    .line 201
    :cond_4c
    if-nez v0, :cond_aa

    .line 202
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 203
    iget v0, p0, Landroid/support/constraint/solver/state/Dimension;->mValue:I

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_aa

    .line 207
    :cond_59
    iget-boolean v1, p0, Landroid/support/constraint/solver/state/Dimension;->mIsSuggested:Z

    if-eqz v1, :cond_7a

    .line 208
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 209
    const/4 v0, 0x0

    .line 210
    .restart local v0    # "type":I
    iget-object v1, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v2, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v1, v2, :cond_6b

    .line 211
    const/4 v0, 0x1

    goto :goto_70

    .line 212
    :cond_6b
    sget-object v2, Landroid/support/constraint/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    if-ne v1, v2, :cond_70

    .line 213
    const/4 v0, 0x2

    .line 215
    :cond_70
    :goto_70
    iget v1, p0, Landroid/support/constraint/solver/state/Dimension;->mMin:I

    iget v2, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    iget v3, p0, Landroid/support/constraint/solver/state/Dimension;->mPercent:F

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    .line 216
    .end local v0    # "type":I
    goto :goto_aa

    .line 217
    :cond_7a
    iget v1, p0, Landroid/support/constraint/solver/state/Dimension;->mMin:I

    if-lez v1, :cond_81

    .line 218
    invoke-virtual {p2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setMinHeight(I)V

    .line 220
    :cond_81
    iget v1, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    if-ge v1, v0, :cond_88

    .line 221
    invoke-virtual {p2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setMaxHeight(I)V

    .line 223
    :cond_88
    iget-object v0, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v0, v1, :cond_94

    .line 224
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_aa

    .line 225
    :cond_94
    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    if-ne v0, v1, :cond_9e

    .line 226
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_aa

    .line 227
    :cond_9e
    if-nez v0, :cond_aa

    .line 228
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 229
    iget v0, p0, Landroid/support/constraint/solver/state/Dimension;->mValue:I

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 233
    :cond_aa
    :goto_aa
    return-void
.end method

.method public fixed(I)Landroid/support/constraint/solver/state/Dimension;
    .registers 3
    .param p1, "value"    # I

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 152
    iput p1, p0, Landroid/support/constraint/solver/state/Dimension;->mValue:I

    .line 153
    return-object p0
.end method

.method public fixed(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 142
    iput-object p1, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 143
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 144
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/state/Dimension;->mValue:I

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 147
    :cond_12
    return-object p0
.end method

.method getRatio()F
    .registers 2

    .line 172
    iget v0, p0, Landroid/support/constraint/solver/state/Dimension;->mRatio:F

    return v0
.end method

.method getValue()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/support/constraint/solver/state/Dimension;->mValue:I

    return v0
.end method

.method public max(I)Landroid/support/constraint/solver/state/Dimension;
    .registers 3
    .param p1, "value"    # I

    .line 116
    iget v0, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    if-ltz v0, :cond_6

    .line 117
    iput p1, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    .line 119
    :cond_6
    return-object p0
.end method

.method public max(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 123
    sget-object v0, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p1, v0, :cond_f

    iget-boolean v1, p0, Landroid/support/constraint/solver/state/Dimension;->mIsSuggested:Z

    if-eqz v1, :cond_f

    .line 124
    iput-object v0, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 125
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    .line 127
    :cond_f
    return-object p0
.end method

.method public min(I)Landroid/support/constraint/solver/state/Dimension;
    .registers 2
    .param p1, "value"    # I

    .line 102
    if-ltz p1, :cond_4

    .line 103
    iput p1, p0, Landroid/support/constraint/solver/state/Dimension;->mMin:I

    .line 105
    :cond_4
    return-object p0
.end method

.method public min(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 109
    sget-object v0, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p1, v0, :cond_7

    .line 110
    const/4 v0, -0x2

    iput v0, p0, Landroid/support/constraint/solver/state/Dimension;->mMin:I

    .line 112
    :cond_7
    return-object p0
.end method

.method public percent(Ljava/lang/Object;F)Landroid/support/constraint/solver/state/Dimension;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # F

    .line 97
    iput p2, p0, Landroid/support/constraint/solver/state/Dimension;->mPercent:F

    .line 98
    return-object p0
.end method

.method public ratio(F)Landroid/support/constraint/solver/state/Dimension;
    .registers 2
    .param p1, "ratio"    # F

    .line 157
    return-object p0
.end method

.method setRatio(F)V
    .registers 2
    .param p1, "value"    # F

    .line 169
    iput p1, p0, Landroid/support/constraint/solver/state/Dimension;->mRatio:F

    .line 170
    return-void
.end method

.method setValue(I)V
    .registers 3
    .param p1, "value"    # I

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/state/Dimension;->mIsSuggested:Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 163
    iput p1, p0, Landroid/support/constraint/solver/state/Dimension;->mValue:I

    .line 164
    return-void
.end method

.method public suggested(I)Landroid/support/constraint/solver/state/Dimension;
    .registers 3
    .param p1, "value"    # I

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/state/Dimension;->mIsSuggested:Z

    .line 132
    return-object p0
.end method

.method public suggested(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 136
    iput-object p1, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/state/Dimension;->mIsSuggested:Z

    .line 138
    return-object p0
.end method
