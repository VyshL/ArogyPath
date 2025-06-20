.class public Landroid/support/constraint/solver/widgets/Flow;
.super Landroid/support/constraint/solver/widgets/VirtualLayout;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    }
.end annotation


# static fields
.field public static final HORIZONTAL_ALIGN_CENTER:I = 0x2

.field public static final HORIZONTAL_ALIGN_END:I = 0x1

.field public static final HORIZONTAL_ALIGN_START:I = 0x0

.field public static final VERTICAL_ALIGN_BASELINE:I = 0x3

.field public static final VERTICAL_ALIGN_BOTTOM:I = 0x1

.field public static final VERTICAL_ALIGN_CENTER:I = 0x2

.field public static final VERTICAL_ALIGN_TOP:I = 0x0

.field public static final WRAP_ALIGNED:I = 0x2

.field public static final WRAP_CHAIN:I = 0x1

.field public static final WRAP_NONE:I


# instance fields
.field private mAlignedBiggestElementsInCols:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mAlignedBiggestElementsInRows:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mAlignedDimensions:[I

.field private mChainList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/Flow$WidgetsList;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mDisplayedWidgetsCount:I

.field private mFirstHorizontalBias:F

.field private mFirstHorizontalStyle:I

.field private mFirstVerticalBias:F

.field private mFirstVerticalStyle:I

.field private mHorizontalAlign:I

.field private mHorizontalBias:F

.field private mHorizontalGap:I

.field private mHorizontalStyle:I

.field private mLastHorizontalBias:F

.field private mLastHorizontalStyle:I

.field private mLastVerticalBias:F

.field private mLastVerticalStyle:I

.field private mMaxElementsWrap:I

.field private mOrientation:I

.field private mVerticalAlign:I

.field private mVerticalBias:F

.field private mVerticalGap:I

.field private mVerticalStyle:I

.field private mWrapMode:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/VirtualLayout;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalStyle:I

    .line 48
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalStyle:I

    .line 49
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mFirstHorizontalStyle:I

    .line 50
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mFirstVerticalStyle:I

    .line 51
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mLastHorizontalStyle:I

    .line 52
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mLastVerticalStyle:I

    .line 54
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalBias:F

    .line 55
    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalBias:F

    .line 56
    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mFirstHorizontalBias:F

    .line 57
    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mFirstVerticalBias:F

    .line 58
    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mLastHorizontalBias:F

    .line 59
    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mLastVerticalBias:F

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalGap:I

    .line 62
    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalGap:I

    .line 64
    const/4 v2, 0x2

    iput v2, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalAlign:I

    .line 65
    iput v2, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalAlign:I

    .line 66
    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mWrapMode:I

    .line 68
    iput v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 70
    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mOrientation:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 77
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 78
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedDimensions:[I

    .line 80
    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalGap:I

    return v0
.end method

.method static synthetic access$100(Landroid/support/constraint/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalGap:I

    return v0
.end method

.method static synthetic access$1000(Landroid/support/constraint/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mFirstHorizontalStyle:I

    return v0
.end method

.method static synthetic access$1100(Landroid/support/constraint/solver/widgets/Flow;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mFirstHorizontalBias:F

    return v0
.end method

.method static synthetic access$1200(Landroid/support/constraint/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mLastHorizontalStyle:I

    return v0
.end method

.method static synthetic access$1300(Landroid/support/constraint/solver/widgets/Flow;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mLastHorizontalBias:F

    return v0
.end method

.method static synthetic access$1400(Landroid/support/constraint/solver/widgets/Flow;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalBias:F

    return v0
.end method

.method static synthetic access$1500(Landroid/support/constraint/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mFirstVerticalStyle:I

    return v0
.end method

.method static synthetic access$1600(Landroid/support/constraint/solver/widgets/Flow;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mFirstVerticalBias:F

    return v0
.end method

.method static synthetic access$1700(Landroid/support/constraint/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mLastVerticalStyle:I

    return v0
.end method

.method static synthetic access$1800(Landroid/support/constraint/solver/widgets/Flow;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mLastVerticalBias:F

    return v0
.end method

.method static synthetic access$1900(Landroid/support/constraint/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalAlign:I

    return v0
.end method

.method static synthetic access$200(Landroid/support/constraint/solver/widgets/Flow;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I
    .registers 4
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "x2"    # I

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/solver/widgets/Flow;->getWidgetWidth(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/support/constraint/solver/widgets/Flow;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I
    .registers 4
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "x2"    # I

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/solver/widgets/Flow;->getWidgetHeight(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/support/constraint/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    return v0
.end method

.method static synthetic access$500(Landroid/support/constraint/solver/widgets/Flow;)[Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mDisplayedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/constraint/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalStyle:I

    return v0
.end method

.method static synthetic access$700(Landroid/support/constraint/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalAlign:I

    return v0
.end method

.method static synthetic access$800(Landroid/support/constraint/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalStyle:I

    return v0
.end method

.method static synthetic access$900(Landroid/support/constraint/solver/widgets/Flow;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/constraint/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalBias:F

    return v0
.end method

.method private createAlignedConstraints(Z)V
    .registers 16
    .param p1, "isInRtl"    # Z

    .line 1121
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedDimensions:[I

    if-eqz v0, :cond_118

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_118

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_e

    goto/16 :goto_118

    .line 1127
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    if-ge v0, v1, :cond_1d

    .line 1128
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mDisplayedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    .line 1129
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 1127
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1132
    .end local v0    # "i":I
    :cond_1d
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedDimensions:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    .line 1133
    .local v2, "cols":I
    const/4 v3, 0x1

    aget v0, v0, v3

    .line 1135
    .local v0, "rows":I
    const/4 v4, 0x0

    .line 1136
    .local v4, "previous":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_27
    const/16 v6, 0x8

    if-ge v5, v2, :cond_7b

    .line 1137
    move v7, v5

    .line 1138
    .local v7, "index":I
    if-eqz p1, :cond_32

    .line 1139
    sub-int v8, v2, v5

    add-int/lit8 v7, v8, -0x1

    .line 1141
    :cond_32
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v8, v8, v7

    .line 1142
    .local v8, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v8, :cond_78

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    if-ne v9, v6, :cond_3f

    .line 1143
    goto :goto_78

    .line 1145
    :cond_3f
    if-nez v5, :cond_56

    .line 1146
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/Flow;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingLeft()I

    move-result v10

    invoke-virtual {v8, v6, v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 1147
    iget v6, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalStyle:I

    invoke-virtual {v8, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1148
    iget v6, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalBias:F

    invoke-virtual {v8, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1150
    :cond_56
    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_65

    .line 1151
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/Flow;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingRight()I

    move-result v10

    invoke-virtual {v8, v6, v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 1153
    :cond_65
    if-lez v5, :cond_77

    .line 1154
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v10, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalGap:I

    invoke-virtual {v8, v6, v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 1155
    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v6, v9, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 1157
    :cond_77
    move-object v4, v8

    .line 1136
    .end local v7    # "index":I
    .end local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_78
    :goto_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 1159
    .end local v5    # "i":I
    :cond_7b
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_7c
    if-ge v5, v0, :cond_c7

    .line 1160
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v5

    .line 1161
    .local v7, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v7, :cond_c4

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    if-ne v8, v6, :cond_8b

    .line 1162
    goto :goto_c4

    .line 1164
    :cond_8b
    if-nez v5, :cond_a2

    .line 1165
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/Flow;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingTop()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 1166
    iget v8, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalStyle:I

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1167
    iget v8, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalBias:F

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1169
    :cond_a2
    add-int/lit8 v8, v0, -0x1

    if-ne v5, v8, :cond_b1

    .line 1170
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/Flow;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 1172
    :cond_b1
    if-lez v5, :cond_c3

    .line 1173
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v10, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalGap:I

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 1174
    iget-object v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v8, v9, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 1176
    :cond_c3
    move-object v4, v7

    .line 1159
    .end local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_c4
    :goto_c4
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 1179
    .end local v5    # "j":I
    :cond_c7
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c8
    if-ge v5, v2, :cond_117

    .line 1180
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_cb
    if-ge v7, v0, :cond_114

    .line 1181
    mul-int v8, v7, v2

    add-int/2addr v8, v5

    .line 1182
    .local v8, "index":I
    iget v9, p0, Landroid/support/constraint/solver/widgets/Flow;->mOrientation:I

    if-ne v9, v3, :cond_d8

    .line 1183
    mul-int v9, v5, v0

    add-int v8, v9, v7

    .line 1185
    :cond_d8
    iget-object v9, p0, Landroid/support/constraint/solver/widgets/Flow;->mDisplayedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v10, v9

    if-lt v8, v10, :cond_de

    .line 1186
    goto :goto_111

    .line 1188
    :cond_de
    aget-object v9, v9, v8

    .line 1189
    .local v9, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v9, :cond_111

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-ne v10, v6, :cond_e9

    .line 1190
    goto :goto_111

    .line 1192
    :cond_e9
    iget-object v10, p0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v10, v10, v5

    .line 1193
    .local v10, "biggestInCol":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v11, p0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v7

    .line 1194
    .local v11, "biggestInRow":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eq v9, v10, :cond_101

    .line 1195
    iget-object v12, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v12, v13, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 1196
    iget-object v12, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v12, v13, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 1198
    :cond_101
    if-eq v9, v11, :cond_111

    .line 1199
    iget-object v12, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v12, v13, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 1200
    iget-object v12, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v12, v13, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 1180
    .end local v8    # "index":I
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v10    # "biggestInCol":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "biggestInRow":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_111
    :goto_111
    add-int/lit8 v7, v7, 0x1

    goto :goto_cb

    .line 1179
    .end local v7    # "j":I
    :cond_114
    add-int/lit8 v5, v5, 0x1

    goto :goto_c8

    .line 1204
    .end local v5    # "i":I
    :cond_117
    return-void

    .line 1124
    .end local v0    # "rows":I
    .end local v2    # "cols":I
    .end local v4    # "previous":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_118
    :goto_118
    return-void
.end method

.method private final getWidgetHeight(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I
    .registers 12
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "max"    # I

    .line 200
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 201
    return v0

    .line 203
    :cond_4
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_53

    .line 204
    iget v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v1, :cond_11

    .line 205
    return v0

    .line 206
    :cond_11
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_37

    .line 207
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    int-to-float v1, p2

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 208
    .local v0, "value":I
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_36

    .line 209
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    .line 210
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, p0

    move-object v4, p1

    move v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/Flow;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 212
    :cond_36
    return v0

    .line 213
    .end local v0    # "value":I
    :cond_37
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v0, v2, :cond_40

    .line 214
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    return v0

    .line 215
    :cond_40
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_53

    .line 216
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 219
    :cond_53
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    return v0
.end method

.method private final getWidgetWidth(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I
    .registers 12
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "max"    # I

    .line 177
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 178
    return v0

    .line 180
    :cond_4
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_53

    .line 181
    iget v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v1, :cond_11

    .line 182
    return v0

    .line 183
    :cond_11
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_37

    .line 184
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    int-to-float v1, p2

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 185
    .local v0, "value":I
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_36

    .line 186
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    .line 187
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/Flow;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 189
    :cond_36
    return v0

    .line 190
    .end local v0    # "value":I
    :cond_37
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v0, v2, :cond_40

    .line 191
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    return v0

    .line 192
    :cond_40
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_53

    .line 193
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 196
    :cond_53
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    return v0
.end method

.method private measureAligned([Landroid/support/constraint/solver/widgets/ConstraintWidget;III[I)V
    .registers 22
    .param p1, "widgets"    # [Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "count"    # I
    .param p3, "orientation"    # I
    .param p4, "max"    # I
    .param p5, "measured"    # [I

    .line 967
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    .line 968
    .local v5, "done":Z
    const/4 v6, 0x0

    .line 969
    .local v6, "rows":I
    const/4 v7, 0x0

    .line 971
    .local v7, "cols":I
    if-nez v3, :cond_30

    .line 972
    iget v7, v0, Landroid/support/constraint/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 973
    if-gtz v7, :cond_50

    .line 975
    const/4 v8, 0x0

    .line 976
    .local v8, "w":I
    const/4 v7, 0x0

    .line 977
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_16
    if-ge v9, v2, :cond_2f

    .line 978
    if-lez v9, :cond_1d

    .line 979
    iget v10, v0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v8, v10

    .line 981
    :cond_1d
    aget-object v10, v1, v9

    .line 982
    .local v10, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v10, :cond_22

    .line 983
    goto :goto_2c

    .line 985
    :cond_22
    invoke-direct {v0, v10, v4}, Landroid/support/constraint/solver/widgets/Flow;->getWidgetWidth(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v11

    add-int/2addr v8, v11

    .line 986
    if-le v8, v4, :cond_2a

    .line 987
    goto :goto_2f

    .line 989
    :cond_2a
    add-int/lit8 v7, v7, 0x1

    .line 977
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2c
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    .line 991
    .end local v8    # "w":I
    .end local v9    # "i":I
    :cond_2f
    :goto_2f
    goto :goto_50

    .line 993
    :cond_30
    iget v6, v0, Landroid/support/constraint/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 994
    if-gtz v6, :cond_50

    .line 996
    const/4 v8, 0x0

    .line 997
    .local v8, "h":I
    const/4 v6, 0x0

    .line 998
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_37
    if-ge v9, v2, :cond_50

    .line 999
    if-lez v9, :cond_3e

    .line 1000
    iget v10, v0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v8, v10

    .line 1002
    :cond_3e
    aget-object v10, v1, v9

    .line 1003
    .restart local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v10, :cond_43

    .line 1004
    goto :goto_4d

    .line 1006
    :cond_43
    invoke-direct {v0, v10, v4}, Landroid/support/constraint/solver/widgets/Flow;->getWidgetHeight(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v11

    add-int/2addr v8, v11

    .line 1007
    if-le v8, v4, :cond_4b

    .line 1008
    goto :goto_50

    .line 1010
    :cond_4b
    add-int/lit8 v6, v6, 0x1

    .line 998
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_4d
    add-int/lit8 v9, v9, 0x1

    goto :goto_37

    .line 1015
    .end local v8    # "h":I
    .end local v9    # "i":I
    :cond_50
    :goto_50
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedDimensions:[I

    if-nez v8, :cond_59

    .line 1016
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, v0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedDimensions:[I

    .line 1019
    :cond_59
    const/4 v8, 0x1

    if-nez v6, :cond_5e

    if-eq v3, v8, :cond_62

    :cond_5e
    if-nez v7, :cond_63

    if-nez v3, :cond_63

    .line 1021
    :cond_62
    const/4 v5, 0x1

    .line 1024
    :cond_63
    :goto_63
    const/4 v9, 0x0

    if-nez v5, :cond_132

    .line 1028
    if-nez v3, :cond_72

    .line 1029
    int-to-float v10, v2

    int-to-float v11, v7

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    goto :goto_7b

    .line 1031
    :cond_72
    int-to-float v10, v2

    int-to-float v11, v6

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 1034
    :goto_7b
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v11, 0x0

    if-eqz v10, :cond_88

    array-length v12, v10

    if-ge v12, v7, :cond_84

    goto :goto_88

    .line 1037
    :cond_84
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8c

    .line 1035
    :cond_88
    :goto_88
    new-array v10, v7, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v10, v0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1039
    :goto_8c
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v10, :cond_98

    array-length v12, v10

    if-ge v12, v6, :cond_94

    goto :goto_98

    .line 1042
    :cond_94
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9c

    .line 1040
    :cond_98
    :goto_98
    new-array v10, v6, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v10, v0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1045
    :goto_9c
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_9d
    if-ge v10, v7, :cond_e4

    .line 1046
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_a0
    if-ge v11, v6, :cond_e0

    .line 1047
    mul-int v12, v11, v7

    add-int/2addr v12, v10

    .line 1048
    .local v12, "index":I
    if-ne v3, v8, :cond_ab

    .line 1049
    mul-int v13, v10, v6

    add-int v12, v13, v11

    .line 1051
    :cond_ab
    array-length v13, v1

    if-lt v12, v13, :cond_af

    .line 1052
    goto :goto_dc

    .line 1054
    :cond_af
    aget-object v13, v1, v12

    .line 1055
    .local v13, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v13, :cond_b4

    .line 1056
    goto :goto_dc

    .line 1058
    :cond_b4
    invoke-direct {v0, v13, v4}, Landroid/support/constraint/solver/widgets/Flow;->getWidgetWidth(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v14

    .line 1059
    .local v14, "w":I
    iget-object v15, v0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v15, v15, v10

    if-eqz v15, :cond_c4

    .line 1060
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    if-ge v15, v14, :cond_c8

    .line 1061
    :cond_c4
    iget-object v15, v0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v13, v15, v10

    .line 1063
    :cond_c8
    invoke-direct {v0, v13, v4}, Landroid/support/constraint/solver/widgets/Flow;->getWidgetHeight(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v15

    .line 1064
    .local v15, "h":I
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v8, v8, v11

    if-eqz v8, :cond_d8

    .line 1065
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    if-ge v8, v15, :cond_dc

    .line 1066
    :cond_d8
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v13, v8, v11

    .line 1046
    .end local v12    # "index":I
    .end local v13    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "w":I
    .end local v15    # "h":I
    :cond_dc
    :goto_dc
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto :goto_a0

    .line 1045
    .end local v11    # "j":I
    :cond_e0
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    goto :goto_9d

    .line 1071
    .end local v10    # "i":I
    :cond_e4
    const/4 v8, 0x0

    .line 1072
    .local v8, "w":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_e6
    if-ge v10, v7, :cond_fb

    .line 1073
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v10

    .line 1074
    .local v11, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v11, :cond_f8

    .line 1075
    if-lez v10, :cond_f3

    .line 1076
    iget v12, v0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v8, v12

    .line 1078
    :cond_f3
    invoke-direct {v0, v11, v4}, Landroid/support/constraint/solver/widgets/Flow;->getWidgetWidth(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v12

    add-int/2addr v8, v12

    .line 1072
    .end local v11    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_f8
    add-int/lit8 v10, v10, 0x1

    goto :goto_e6

    .line 1081
    .end local v10    # "i":I
    :cond_fb
    const/4 v10, 0x0

    .line 1082
    .local v10, "h":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_fd
    if-ge v11, v6, :cond_112

    .line 1083
    iget-object v12, v0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v12, v12, v11

    .line 1084
    .local v12, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v12, :cond_10f

    .line 1085
    if-lez v11, :cond_10a

    .line 1086
    iget v13, v0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v10, v13

    .line 1088
    :cond_10a
    invoke-direct {v0, v12, v4}, Landroid/support/constraint/solver/widgets/Flow;->getWidgetHeight(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v13

    add-int/2addr v10, v13

    .line 1082
    .end local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_10f
    add-int/lit8 v11, v11, 0x1

    goto :goto_fd

    .line 1091
    .end local v11    # "j":I
    :cond_112
    aput v8, p5, v9

    .line 1092
    const/4 v9, 0x1

    aput v10, p5, v9

    .line 1094
    if-nez v3, :cond_124

    .line 1095
    if-le v8, v4, :cond_122

    .line 1096
    if-le v7, v9, :cond_120

    .line 1097
    add-int/lit8 v7, v7, -0x1

    goto :goto_12f

    .line 1099
    :cond_120
    const/4 v5, 0x1

    goto :goto_12f

    .line 1102
    :cond_122
    const/4 v5, 0x1

    goto :goto_12f

    .line 1105
    :cond_124
    if-le v10, v4, :cond_12e

    .line 1106
    const/4 v9, 0x1

    if-le v6, v9, :cond_12c

    .line 1107
    add-int/lit8 v6, v6, -0x1

    goto :goto_12f

    .line 1109
    :cond_12c
    const/4 v5, 0x1

    goto :goto_12f

    .line 1112
    :cond_12e
    const/4 v5, 0x1

    .line 1115
    .end local v8    # "w":I
    .end local v10    # "h":I
    :goto_12f
    const/4 v8, 0x1

    goto/16 :goto_63

    .line 1116
    :cond_132
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/Flow;->mAlignedDimensions:[I

    aput v7, v8, v9

    .line 1117
    const/4 v9, 0x1

    aput v6, v8, v9

    .line 1118
    return-void
.end method

.method private measureChainWrap([Landroid/support/constraint/solver/widgets/ConstraintWidget;III[I)V
    .registers 38
    .param p1, "widgets"    # [Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "count"    # I
    .param p3, "orientation"    # I
    .param p4, "max"    # I
    .param p5, "measured"    # [I

    .line 778
    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v15, p4

    if-nez v9, :cond_9

    .line 779
    return-void

    .line 782
    :cond_9
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 783
    new-instance v10, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/Flow;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/Flow;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroid/support/constraint/solver/widgets/Flow;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroid/support/constraint/solver/widgets/Flow;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;-><init>(Landroid/support/constraint/solver/widgets/Flow;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 784
    .local v0, "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    const/4 v1, 0x0

    .line 788
    .local v1, "nbMatchConstraintsWidgets":I
    const/16 v21, 0x0

    const/16 v22, 0x1

    if-nez p3, :cond_a2

    .line 789
    const/4 v2, 0x0

    .line 790
    .local v2, "width":I
    const/4 v3, 0x0

    move-object v10, v0

    move v11, v3

    .end local v0    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    .local v10, "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    .local v11, "i":I
    :goto_32
    if-ge v11, v9, :cond_9f

    .line 791
    aget-object v12, p1, v11

    .line 792
    .local v12, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-direct {v8, v12, v15}, Landroid/support/constraint/solver/widgets/Flow;->getWidgetWidth(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v13

    .line 793
    .local v13, "w":I
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_46

    .line 794
    add-int/lit8 v1, v1, 0x1

    move v14, v1

    goto :goto_47

    .line 793
    :cond_46
    move v14, v1

    .line 796
    .end local v1    # "nbMatchConstraintsWidgets":I
    .local v14, "nbMatchConstraintsWidgets":I
    :goto_47
    if-eq v2, v15, :cond_4f

    iget v0, v8, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v2

    add-int/2addr v0, v13

    if-le v0, v15, :cond_57

    :cond_4f
    invoke-static {v10}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->access$2000(Landroid/support/constraint/solver/widgets/Flow$WidgetsList;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_57

    const/4 v0, 0x1

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    .line 797
    .local v0, "doWrap":Z
    :goto_58
    if-nez v0, :cond_68

    if-lez v11, :cond_68

    iget v1, v8, Landroid/support/constraint/solver/widgets/Flow;->mMaxElementsWrap:I

    if-lez v1, :cond_68

    rem-int v1, v11, v1

    if-nez v1, :cond_68

    .line 798
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_6a

    .line 800
    :cond_68
    move/from16 v16, v0

    .end local v0    # "doWrap":Z
    .local v16, "doWrap":Z
    :goto_6a
    if-eqz v16, :cond_8f

    .line 801
    move/from16 v17, v13

    .line 802
    .end local v2    # "width":I
    .local v17, "width":I
    new-instance v18, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/Flow;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/Flow;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroid/support/constraint/solver/widgets/Flow;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroid/support/constraint/solver/widgets/Flow;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;-><init>(Landroid/support/constraint/solver/widgets/Flow;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 803
    .end local v10    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    .local v0, "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    invoke-virtual {v0, v11}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 804
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v0

    move/from16 v2, v17

    goto :goto_98

    .line 806
    .end local v0    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    .end local v17    # "width":I
    .restart local v2    # "width":I
    .restart local v10    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    :cond_8f
    if-lez v11, :cond_96

    .line 807
    iget v0, v8, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v13

    add-int/2addr v2, v0

    goto :goto_98

    .line 809
    :cond_96
    move v0, v13

    move v2, v0

    .line 812
    :goto_98
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 790
    .end local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "w":I
    .end local v16    # "doWrap":Z
    add-int/lit8 v11, v11, 0x1

    move v1, v14

    goto :goto_32

    .line 814
    .end local v2    # "width":I
    .end local v11    # "i":I
    .end local v14    # "nbMatchConstraintsWidgets":I
    .restart local v1    # "nbMatchConstraintsWidgets":I
    :cond_9f
    move-object v0, v10

    goto/16 :goto_114

    .line 815
    .end local v10    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    .restart local v0    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    :cond_a2
    const/4 v2, 0x0

    .line 816
    .local v2, "height":I
    const/4 v3, 0x0

    move-object v10, v0

    move v11, v3

    .end local v0    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    .restart local v10    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    .restart local v11    # "i":I
    :goto_a6
    if-ge v11, v9, :cond_113

    .line 817
    aget-object v12, p1, v11

    .line 818
    .restart local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-direct {v8, v12, v15}, Landroid/support/constraint/solver/widgets/Flow;->getWidgetHeight(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v13

    .line 819
    .local v13, "h":I
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_ba

    .line 820
    add-int/lit8 v1, v1, 0x1

    move v14, v1

    goto :goto_bb

    .line 819
    :cond_ba
    move v14, v1

    .line 822
    .end local v1    # "nbMatchConstraintsWidgets":I
    .restart local v14    # "nbMatchConstraintsWidgets":I
    :goto_bb
    if-eq v2, v15, :cond_c3

    iget v0, v8, Landroid/support/constraint/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v2

    add-int/2addr v0, v13

    if-le v0, v15, :cond_cb

    :cond_c3
    invoke-static {v10}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->access$2000(Landroid/support/constraint/solver/widgets/Flow$WidgetsList;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_cb

    const/4 v0, 0x1

    goto :goto_cc

    :cond_cb
    const/4 v0, 0x0

    .line 823
    .local v0, "doWrap":Z
    :goto_cc
    if-nez v0, :cond_dc

    if-lez v11, :cond_dc

    iget v1, v8, Landroid/support/constraint/solver/widgets/Flow;->mMaxElementsWrap:I

    if-lez v1, :cond_dc

    rem-int v1, v11, v1

    if-nez v1, :cond_dc

    .line 824
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_de

    .line 826
    :cond_dc
    move/from16 v16, v0

    .end local v0    # "doWrap":Z
    .restart local v16    # "doWrap":Z
    :goto_de
    if-eqz v16, :cond_103

    .line 827
    move/from16 v17, v13

    .line 828
    .end local v2    # "height":I
    .local v17, "height":I
    new-instance v18, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/Flow;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/Flow;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroid/support/constraint/solver/widgets/Flow;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroid/support/constraint/solver/widgets/Flow;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;-><init>(Landroid/support/constraint/solver/widgets/Flow;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 829
    .end local v10    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    .local v0, "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    invoke-virtual {v0, v11}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 830
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v0

    move/from16 v2, v17

    goto :goto_10c

    .line 832
    .end local v0    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    .end local v17    # "height":I
    .restart local v2    # "height":I
    .restart local v10    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    :cond_103
    if-lez v11, :cond_10a

    .line 833
    iget v0, v8, Landroid/support/constraint/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v13

    add-int/2addr v2, v0

    goto :goto_10c

    .line 835
    :cond_10a
    move v0, v13

    move v2, v0

    .line 838
    :goto_10c
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 816
    .end local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "h":I
    .end local v16    # "doWrap":Z
    add-int/lit8 v11, v11, 0x1

    move v1, v14

    goto :goto_a6

    .end local v14    # "nbMatchConstraintsWidgets":I
    .restart local v1    # "nbMatchConstraintsWidgets":I
    :cond_113
    move-object v0, v10

    .line 841
    .end local v2    # "height":I
    .end local v10    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    .end local v11    # "i":I
    .restart local v0    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    :goto_114
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 843
    .local v2, "listCount":I
    iget-object v3, v8, Landroid/support/constraint/solver/widgets/Flow;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 844
    .local v3, "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v4, v8, Landroid/support/constraint/solver/widgets/Flow;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 845
    .local v4, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v5, v8, Landroid/support/constraint/solver/widgets/Flow;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 846
    .local v5, "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/Flow;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 848
    .local v6, "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingLeft()I

    move-result v7

    .line 849
    .local v7, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingTop()I

    move-result v10

    .line 850
    .local v10, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingRight()I

    move-result v11

    .line 851
    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingBottom()I

    move-result v12

    .line 853
    .local v12, "paddingBottom":I
    const/4 v13, 0x0

    .line 854
    .local v13, "maxWidth":I
    const/4 v14, 0x0

    .line 856
    .local v14, "maxHeight":I
    nop

    .line 857
    move-object/from16 v23, v0

    .end local v0    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    .local v23, "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    move-object/from16 v16, v3

    .end local v3    # "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v16, "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v3, :cond_14c

    .line 858
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_14a

    goto :goto_14c

    :cond_14a
    const/4 v0, 0x0

    goto :goto_14d

    :cond_14c
    :goto_14c
    const/4 v0, 0x1

    .line 860
    .local v0, "needInternalMeasure":Z
    :goto_14d
    if-lez v1, :cond_183

    if-eqz v0, :cond_183

    .line 862
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_152
    if-ge v3, v2, :cond_17e

    .line 863
    move/from16 v24, v0

    .end local v0    # "needInternalMeasure":Z
    .local v24, "needInternalMeasure":Z
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;

    .line 864
    .local v0, "current":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    if-nez p3, :cond_16c

    .line 865
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v17

    move/from16 v25, v1

    .end local v1    # "nbMatchConstraintsWidgets":I
    .local v25, "nbMatchConstraintsWidgets":I
    sub-int v1, v15, v17

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    goto :goto_177

    .line 867
    .end local v25    # "nbMatchConstraintsWidgets":I
    .restart local v1    # "nbMatchConstraintsWidgets":I
    :cond_16c
    move/from16 v25, v1

    .end local v1    # "nbMatchConstraintsWidgets":I
    .restart local v25    # "nbMatchConstraintsWidgets":I
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v1

    sub-int v1, v15, v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 862
    .end local v0    # "current":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    :goto_177
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    goto :goto_152

    .end local v24    # "needInternalMeasure":Z
    .end local v25    # "nbMatchConstraintsWidgets":I
    .local v0, "needInternalMeasure":Z
    .restart local v1    # "nbMatchConstraintsWidgets":I
    :cond_17e
    move/from16 v24, v0

    move/from16 v25, v1

    .end local v0    # "needInternalMeasure":Z
    .end local v1    # "nbMatchConstraintsWidgets":I
    .restart local v24    # "needInternalMeasure":Z
    .restart local v25    # "nbMatchConstraintsWidgets":I
    goto :goto_187

    .line 860
    .end local v3    # "i":I
    .end local v24    # "needInternalMeasure":Z
    .end local v25    # "nbMatchConstraintsWidgets":I
    .restart local v0    # "needInternalMeasure":Z
    .restart local v1    # "nbMatchConstraintsWidgets":I
    :cond_183
    move/from16 v24, v0

    move/from16 v25, v1

    .line 872
    .end local v0    # "needInternalMeasure":Z
    .end local v1    # "nbMatchConstraintsWidgets":I
    .restart local v24    # "needInternalMeasure":Z
    .restart local v25    # "nbMatchConstraintsWidgets":I
    :goto_187
    const/4 v0, 0x0

    move v1, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move-object/from16 v3, v16

    move/from16 v31, v14

    move v14, v13

    move/from16 v13, v31

    .end local v10    # "paddingTop":I
    .end local v11    # "paddingRight":I
    .end local v12    # "paddingBottom":I
    .end local v16    # "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v0, "i":I
    .local v1, "paddingTop":I
    .local v3, "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v13, "maxHeight":I
    .local v14, "maxWidth":I
    .local v26, "paddingRight":I
    .local v27, "paddingBottom":I
    :goto_194
    if-ge v0, v2, :cond_264

    .line 873
    iget-object v10, v8, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v28, v10

    check-cast v28, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;

    .line 874
    .local v28, "current":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    if-nez p3, :cond_1fd

    .line 875
    add-int/lit8 v10, v2, -0x1

    if-ge v0, v10, :cond_1ba

    .line 876
    iget-object v10, v8, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;

    .line 877
    .local v10, "next":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    invoke-static {v10}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->access$2000(Landroid/support/constraint/solver/widgets/Flow$WidgetsList;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v11

    iget-object v6, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 878
    const/4 v10, 0x0

    .line 879
    .end local v27    # "paddingBottom":I
    .local v10, "paddingBottom":I
    move/from16 v27, v10

    goto :goto_1c2

    .line 880
    .end local v10    # "paddingBottom":I
    .restart local v27    # "paddingBottom":I
    :cond_1ba
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/Flow;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 881
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingBottom()I

    move-result v10

    move/from16 v27, v10

    .line 883
    :goto_1c2
    invoke-static/range {v28 .. v28}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->access$2000(Landroid/support/constraint/solver/widgets/Flow$WidgetsList;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    iget-object v12, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 884
    .local v12, "currentBottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v10, v28

    move/from16 v11, p3

    move-object/from16 v29, v12

    .end local v12    # "currentBottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v29, "currentBottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object v12, v3

    move v9, v13

    .end local v13    # "maxHeight":I
    .local v9, "maxHeight":I
    move-object v13, v4

    move-object/from16 v30, v4

    move v4, v14

    .end local v14    # "maxWidth":I
    .local v4, "maxWidth":I
    .local v30, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v1

    move/from16 v18, v26

    move/from16 v19, v27

    move/from16 v20, p4

    invoke-virtual/range {v10 .. v20}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->setup(ILandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIII)V

    .line 886
    move-object/from16 v10, v29

    .line 887
    .end local v30    # "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v10, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v1, 0x0

    .line 888
    invoke-virtual/range {v28 .. v28}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 889
    invoke-virtual/range {v28 .. v28}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v11

    add-int v13, v9, v11

    .line 890
    .end local v9    # "maxHeight":I
    .restart local v13    # "maxHeight":I
    if-lez v0, :cond_1f9

    .line 891
    iget v9, v8, Landroid/support/constraint/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v13, v9

    .line 893
    .end local v29    # "currentBottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_1f9
    move v14, v4

    move-object v4, v10

    goto/16 :goto_25c

    .line 894
    .end local v10    # "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v4, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v14    # "maxWidth":I
    :cond_1fd
    move-object/from16 v30, v4

    move v9, v13

    move v4, v14

    .end local v13    # "maxHeight":I
    .end local v14    # "maxWidth":I
    .local v4, "maxWidth":I
    .restart local v9    # "maxHeight":I
    .restart local v30    # "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    add-int/lit8 v10, v2, -0x1

    if-ge v0, v10, :cond_219

    .line 895
    iget-object v10, v8, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;

    .line 896
    .local v10, "next":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    invoke-static {v10}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->access$2000(Landroid/support/constraint/solver/widgets/Flow$WidgetsList;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v11

    iget-object v5, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 897
    const/4 v10, 0x0

    .line 898
    .end local v26    # "paddingRight":I
    .local v10, "paddingRight":I
    move/from16 v26, v10

    goto :goto_221

    .line 899
    .end local v10    # "paddingRight":I
    .restart local v26    # "paddingRight":I
    :cond_219
    iget-object v5, v8, Landroid/support/constraint/solver/widgets/Flow;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 900
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingRight()I

    move-result v10

    move/from16 v26, v10

    .line 902
    :goto_221
    invoke-static/range {v28 .. v28}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->access$2000(Landroid/support/constraint/solver/widgets/Flow$WidgetsList;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    iget-object v15, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 903
    .local v15, "currentRight":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v10, v28

    move/from16 v11, p3

    move-object v12, v3

    move-object/from16 v13, v30

    move-object v14, v5

    move-object/from16 v29, v15

    .end local v15    # "currentRight":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v29, "currentRight":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v1

    move/from16 v18, v26

    move/from16 v19, v27

    move/from16 v20, p4

    invoke-virtual/range {v10 .. v20}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->setup(ILandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIII)V

    .line 905
    move-object/from16 v3, v29

    .line 906
    const/4 v7, 0x0

    .line 907
    invoke-virtual/range {v28 .. v28}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v10

    add-int v14, v4, v10

    .line 908
    .end local v4    # "maxWidth":I
    .restart local v14    # "maxWidth":I
    invoke-virtual/range {v28 .. v28}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 909
    .end local v9    # "maxHeight":I
    .local v4, "maxHeight":I
    if-lez v0, :cond_259

    .line 910
    iget v9, v8, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v14, v9

    move v13, v4

    move-object/from16 v4, v30

    goto :goto_25c

    .line 909
    :cond_259
    move v13, v4

    move-object/from16 v4, v30

    .line 872
    .end local v28    # "current":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    .end local v29    # "currentRight":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v30    # "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v4, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v13    # "maxHeight":I
    :goto_25c
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, p2

    move/from16 v15, p4

    goto/16 :goto_194

    :cond_264
    move-object/from16 v30, v4

    move v9, v13

    move v4, v14

    .line 914
    .end local v0    # "i":I
    .end local v13    # "maxHeight":I
    .end local v14    # "maxWidth":I
    .local v4, "maxWidth":I
    .restart local v9    # "maxHeight":I
    .restart local v30    # "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    aput v4, p5, v21

    .line 915
    aput v9, p5, v22

    .line 916
    return-void
.end method

.method private measureNoWrap([Landroid/support/constraint/solver/widgets/ConstraintWidget;III[I)V
    .registers 29
    .param p1, "widgets"    # [Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "count"    # I
    .param p3, "orientation"    # I
    .param p4, "max"    # I
    .param p5, "measured"    # [I

    .line 931
    move-object/from16 v8, p0

    move/from16 v9, p2

    if-nez v9, :cond_7

    .line 932
    return-void

    .line 934
    :cond_7
    const/4 v10, 0x0

    .line 935
    .local v10, "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_2b

    .line 936
    new-instance v12, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/Flow;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/Flow;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroid/support/constraint/solver/widgets/Flow;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroid/support/constraint/solver/widgets/Flow;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;-><init>(Landroid/support/constraint/solver/widgets/Flow;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V

    .line 937
    .end local v10    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    .local v0, "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 939
    .end local v0    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    .restart local v10    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    :cond_2b
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;

    .line 940
    .end local v10    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    .restart local v0    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->clear()V

    .line 941
    iget-object v14, v8, Landroid/support/constraint/solver/widgets/Flow;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v15, v8, Landroid/support/constraint/solver/widgets/Flow;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v8, Landroid/support/constraint/solver/widgets/Flow;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v8, Landroid/support/constraint/solver/widgets/Flow;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 942
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingLeft()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingRight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingBottom()I

    move-result v21

    .line 941
    move-object v12, v0

    move/from16 v13, p3

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v22, p4

    invoke-virtual/range {v12 .. v22}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->setup(ILandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIII)V

    .line 945
    :goto_5a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5b
    if-ge v1, v9, :cond_65

    .line 946
    aget-object v2, p1, v1

    .line 947
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 945
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 950
    .end local v1    # "i":I
    :cond_65
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v1

    aput v1, p5, v11

    .line 951
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    aput v1, p5, v2

    .line 952
    return-void
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;Z)V
    .registers 10
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "optimize"    # Z

    .line 1218
    invoke-super {p0, p1, p2}, Landroid/support/constraint/solver/widgets/VirtualLayout;->addToSolver(Landroid/support/constraint/solver/LinearSystem;Z)V

    .line 1220
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Flow;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Flow;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 1221
    .local v0, "isInRtl":Z
    :goto_16
    iget v2, p0, Landroid/support/constraint/solver/widgets/Flow;->mWrapMode:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_58

    goto :goto_53

    .line 1237
    :pswitch_1d
    invoke-direct {p0, v0}, Landroid/support/constraint/solver/widgets/Flow;->createAlignedConstraints(Z)V

    goto :goto_53

    .line 1223
    :pswitch_21
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1224
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    if-ge v4, v2, :cond_3f

    .line 1225
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;

    .line 1226
    .local v5, "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    add-int/lit8 v6, v2, -0x1

    if-ne v4, v6, :cond_38

    const/4 v6, 0x1

    goto :goto_39

    :cond_38
    const/4 v6, 0x0

    :goto_39
    invoke-virtual {v5, v0, v4, v6}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 1224
    .end local v5    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 1228
    .end local v2    # "count":I
    .end local v4    # "i":I
    :cond_3f
    goto :goto_53

    .line 1230
    :pswitch_40
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_53

    .line 1231
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;

    .line 1232
    .local v2, "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    invoke-virtual {v2, v0, v1, v3}, Landroid/support/constraint/solver/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 1240
    .end local v2    # "list":Landroid/support/constraint/solver/widgets/Flow$WidgetsList;
    :cond_53
    :goto_53
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    .line 1241
    return-void

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_40
        :pswitch_21
        :pswitch_1d
    .end packed-switch
.end method

.method public copy(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .registers 5
    .param p1, "src"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-super {p0, p1, p2}, Landroid/support/constraint/solver/widgets/VirtualLayout;->copy(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 86
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/solver/widgets/Flow;

    .line 88
    .local v0, "srcFLow":Landroid/support/constraint/solver/widgets/Flow;
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalStyle:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalStyle:I

    .line 89
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalStyle:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalStyle:I

    .line 90
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mFirstHorizontalStyle:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mFirstHorizontalStyle:I

    .line 91
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mFirstVerticalStyle:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mFirstVerticalStyle:I

    .line 92
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mLastHorizontalStyle:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mLastHorizontalStyle:I

    .line 93
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mLastVerticalStyle:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mLastVerticalStyle:I

    .line 95
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalBias:F

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalBias:F

    .line 96
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalBias:F

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalBias:F

    .line 97
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mFirstHorizontalBias:F

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mFirstHorizontalBias:F

    .line 98
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mFirstVerticalBias:F

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mFirstVerticalBias:F

    .line 99
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mLastHorizontalBias:F

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mLastHorizontalBias:F

    .line 100
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mLastVerticalBias:F

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mLastVerticalBias:F

    .line 102
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalGap:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalGap:I

    .line 103
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalGap:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalGap:I

    .line 105
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalAlign:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalAlign:I

    .line 106
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalAlign:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalAlign:I

    .line 107
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mWrapMode:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mWrapMode:I

    .line 109
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mMaxElementsWrap:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 111
    iget v1, v0, Landroid/support/constraint/solver/widgets/Flow;->mOrientation:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/Flow;->mOrientation:I

    .line 112
    return-void
.end method

.method public measure(IIII)V
    .registers 28
    .param p1, "widthMode"    # I
    .param p2, "widthSize"    # I
    .param p3, "heightMode"    # I
    .param p4, "heightSize"    # I

    .line 227
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    iget v0, v6, Landroid/support/constraint/solver/widgets/Flow;->mWidgetsCount:I

    const/4 v11, 0x0

    if-lez v0, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->measureChildren()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 228
    invoke-virtual {v6, v11, v11}, Landroid/support/constraint/solver/widgets/Flow;->setMeasure(II)V

    .line 229
    invoke-virtual {v6, v11}, Landroid/support/constraint/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    .line 230
    return-void

    .line 233
    :cond_1c
    const/4 v12, 0x0

    .line 234
    .local v12, "width":I
    const/4 v13, 0x0

    .line 235
    .local v13, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingLeft()I

    move-result v14

    .line 236
    .local v14, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingRight()I

    move-result v15

    .line 237
    .local v15, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingTop()I

    move-result v16

    .line 238
    .local v16, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/Flow;->getPaddingBottom()I

    move-result v17

    .line 240
    .local v17, "paddingBottom":I
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 241
    .local v5, "measured":[I
    sub-int v0, v8, v14

    sub-int/2addr v0, v15

    .line 242
    .local v0, "max":I
    iget v1, v6, Landroid/support/constraint/solver/widgets/Flow;->mOrientation:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_40

    .line 243
    sub-int v2, v10, v16

    sub-int v0, v2, v17

    move/from16 v18, v0

    goto :goto_42

    .line 242
    :cond_40
    move/from16 v18, v0

    .line 246
    .end local v0    # "max":I
    .local v18, "max":I
    :goto_42
    const/4 v0, -0x1

    if-nez v1, :cond_52

    .line 247
    iget v1, v6, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalStyle:I

    if-ne v1, v0, :cond_4b

    .line 248
    iput v11, v6, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalStyle:I

    .line 250
    :cond_4b
    iget v1, v6, Landroid/support/constraint/solver/widgets/Flow;->mVerticalStyle:I

    if-ne v1, v0, :cond_5e

    .line 251
    iput v11, v6, Landroid/support/constraint/solver/widgets/Flow;->mVerticalStyle:I

    goto :goto_5e

    .line 254
    :cond_52
    iget v1, v6, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalStyle:I

    if-ne v1, v0, :cond_58

    .line 255
    iput v11, v6, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalStyle:I

    .line 257
    :cond_58
    iget v1, v6, Landroid/support/constraint/solver/widgets/Flow;->mVerticalStyle:I

    if-ne v1, v0, :cond_5e

    .line 258
    iput v11, v6, Landroid/support/constraint/solver/widgets/Flow;->mVerticalStyle:I

    .line 262
    :cond_5e
    :goto_5e
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/Flow;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 264
    .local v0, "widgets":[Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v1, 0x0

    .line 265
    .local v1, "gone":I
    const/4 v2, 0x0

    move/from16 v19, v1

    .end local v1    # "gone":I
    .local v2, "i":I
    .local v19, "gone":I
    :goto_64
    iget v1, v6, Landroid/support/constraint/solver/widgets/Flow;->mWidgetsCount:I

    const/16 v3, 0x8

    if-ge v2, v1, :cond_7a

    .line 266
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/Flow;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v2

    .line 267
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    if-ne v4, v3, :cond_76

    .line 268
    add-int/lit8 v19, v19, 0x1

    .line 265
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_76
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    goto :goto_64

    .line 271
    .end local v2    # "i":I
    :cond_7a
    iget v1, v6, Landroid/support/constraint/solver/widgets/Flow;->mWidgetsCount:I

    .line 272
    .local v1, "count":I
    if-lez v19, :cond_a6

    .line 273
    iget v2, v6, Landroid/support/constraint/solver/widgets/Flow;->mWidgetsCount:I

    sub-int v2, v2, v19

    new-array v0, v2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 274
    const/4 v2, 0x0

    .line 275
    .local v2, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_86
    iget v11, v6, Landroid/support/constraint/solver/widgets/Flow;->mWidgetsCount:I

    if-ge v4, v11, :cond_a0

    .line 276
    iget-object v11, v6, Landroid/support/constraint/solver/widgets/Flow;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v4

    .line 277
    .local v11, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v21, v1

    .end local v1    # "count":I
    .local v21, "count":I
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_9a

    .line 278
    aput-object v11, v0, v2

    .line 279
    add-int/lit8 v2, v2, 0x1

    .line 275
    .end local v11    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_9a
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v21

    const/4 v11, 0x0

    goto :goto_86

    .end local v21    # "count":I
    .restart local v1    # "count":I
    :cond_a0
    move/from16 v21, v1

    .line 282
    .end local v1    # "count":I
    .end local v4    # "i":I
    .restart local v21    # "count":I
    move v1, v2

    move-object v11, v0

    move v4, v1

    .end local v21    # "count":I
    .restart local v1    # "count":I
    goto :goto_ab

    .line 272
    .end local v2    # "j":I
    :cond_a6
    move/from16 v21, v1

    .end local v1    # "count":I
    .restart local v21    # "count":I
    move-object v11, v0

    move/from16 v4, v21

    .line 284
    .end local v0    # "widgets":[Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v21    # "count":I
    .local v4, "count":I
    .local v11, "widgets":[Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_ab
    iput-object v11, v6, Landroid/support/constraint/solver/widgets/Flow;->mDisplayedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 285
    iput v4, v6, Landroid/support/constraint/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 286
    iget v0, v6, Landroid/support/constraint/solver/widgets/Flow;->mWrapMode:I

    packed-switch v0, :pswitch_data_134

    move/from16 v21, v4

    move-object/from16 v22, v5

    const/16 v20, 0x1

    .end local v4    # "count":I
    .end local v5    # "measured":[I
    .restart local v21    # "count":I
    .local v22, "measured":[I
    goto :goto_f2

    .line 288
    .end local v21    # "count":I
    .end local v22    # "measured":[I
    .restart local v4    # "count":I
    .restart local v5    # "measured":[I
    :pswitch_bb
    iget v3, v6, Landroid/support/constraint/solver/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v4

    move/from16 v21, v4

    const/16 v20, 0x1

    .end local v4    # "count":I
    .restart local v21    # "count":I
    move/from16 v4, v18

    move-object/from16 v22, v5

    .end local v5    # "measured":[I
    .restart local v22    # "measured":[I
    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/Flow;->measureAligned([Landroid/support/constraint/solver/widgets/ConstraintWidget;III[I)V

    .line 290
    goto :goto_f2

    .line 292
    .end local v21    # "count":I
    .end local v22    # "measured":[I
    .restart local v4    # "count":I
    .restart local v5    # "measured":[I
    :pswitch_cd
    move/from16 v21, v4

    move-object/from16 v22, v5

    const/16 v20, 0x1

    .end local v4    # "count":I
    .end local v5    # "measured":[I
    .restart local v21    # "count":I
    .restart local v22    # "measured":[I
    iget v3, v6, Landroid/support/constraint/solver/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, v21

    move/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/Flow;->measureChainWrap([Landroid/support/constraint/solver/widgets/ConstraintWidget;III[I)V

    .line 294
    goto :goto_f2

    .line 296
    .end local v21    # "count":I
    .end local v22    # "measured":[I
    .restart local v4    # "count":I
    .restart local v5    # "measured":[I
    :pswitch_e0
    move/from16 v21, v4

    move-object/from16 v22, v5

    const/16 v20, 0x1

    .end local v4    # "count":I
    .end local v5    # "measured":[I
    .restart local v21    # "count":I
    .restart local v22    # "measured":[I
    iget v3, v6, Landroid/support/constraint/solver/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, v21

    move/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/Flow;->measureNoWrap([Landroid/support/constraint/solver/widgets/ConstraintWidget;III[I)V

    .line 301
    :goto_f2
    const/4 v0, 0x0

    aget v1, v22, v0

    add-int/2addr v1, v14

    add-int/2addr v1, v15

    .line 302
    .end local v12    # "width":I
    .local v1, "width":I
    aget v2, v22, v20

    add-int v2, v2, v16

    add-int v2, v2, v17

    .line 304
    .end local v13    # "height":I
    .local v2, "height":I
    const/4 v3, 0x0

    .line 305
    .local v3, "measuredWidth":I
    const/4 v4, 0x0

    .line 307
    .local v4, "measuredHeight":I
    const/high16 v5, -0x80000000

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v7, v12, :cond_108

    .line 308
    move/from16 v3, p2

    goto :goto_112

    .line 309
    :cond_108
    if-ne v7, v5, :cond_10f

    .line 310
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_112

    .line 311
    :cond_10f
    if-nez v7, :cond_112

    .line 312
    move v3, v1

    .line 315
    :cond_112
    :goto_112
    if-ne v9, v12, :cond_117

    .line 316
    move/from16 v4, p4

    goto :goto_121

    .line 317
    :cond_117
    if-ne v9, v5, :cond_11e

    .line 318
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_121

    .line 319
    :cond_11e
    if-nez v9, :cond_121

    .line 320
    move v4, v2

    .line 323
    :cond_121
    :goto_121
    invoke-virtual {v6, v3, v4}, Landroid/support/constraint/solver/widgets/Flow;->setMeasure(II)V

    .line 324
    invoke-virtual {v6, v3}, Landroid/support/constraint/solver/widgets/Flow;->setWidth(I)V

    .line 325
    invoke-virtual {v6, v4}, Landroid/support/constraint/solver/widgets/Flow;->setHeight(I)V

    .line 326
    iget v5, v6, Landroid/support/constraint/solver/widgets/Flow;->mWidgetsCount:I

    if-lez v5, :cond_12f

    const/4 v0, 0x1

    :cond_12f
    invoke-virtual {v6, v0}, Landroid/support/constraint/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    .line 327
    return-void

    nop

    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_cd
        :pswitch_bb
    .end packed-switch
.end method

.method public setFirstHorizontalBias(F)V
    .registers 2
    .param p1, "value"    # F

    .line 146
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mFirstHorizontalBias:F

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .registers 2
    .param p1, "value"    # I

    .line 122
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mFirstHorizontalStyle:I

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .registers 2
    .param p1, "value"    # F

    .line 148
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mFirstVerticalBias:F

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .registers 2
    .param p1, "value"    # I

    .line 124
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mFirstVerticalStyle:I

    return-void
.end method

.method public setHorizontalAlign(I)V
    .registers 2
    .param p1, "value"    # I

    .line 155
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalAlign:I

    .line 156
    return-void
.end method

.method public setHorizontalBias(F)V
    .registers 2
    .param p1, "value"    # F

    .line 139
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalBias:F

    .line 140
    return-void
.end method

.method public setHorizontalGap(I)V
    .registers 2
    .param p1, "value"    # I

    .line 166
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalGap:I

    return-void
.end method

.method public setHorizontalStyle(I)V
    .registers 2
    .param p1, "value"    # I

    .line 131
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mHorizontalStyle:I

    .line 132
    return-void
.end method

.method public setLastHorizontalBias(F)V
    .registers 2
    .param p1, "value"    # F

    .line 150
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mLastHorizontalBias:F

    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .registers 2
    .param p1, "value"    # I

    .line 126
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mLastHorizontalStyle:I

    return-void
.end method

.method public setLastVerticalBias(F)V
    .registers 2
    .param p1, "value"    # F

    .line 152
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mLastVerticalBias:F

    return-void
.end method

.method public setLastVerticalStyle(I)V
    .registers 2
    .param p1, "value"    # I

    .line 128
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mLastVerticalStyle:I

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .registers 2
    .param p1, "value"    # I

    .line 170
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mMaxElementsWrap:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "value"    # I

    .line 119
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mOrientation:I

    .line 120
    return-void
.end method

.method public setVerticalAlign(I)V
    .registers 2
    .param p1, "value"    # I

    .line 159
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalAlign:I

    .line 160
    return-void
.end method

.method public setVerticalBias(F)V
    .registers 2
    .param p1, "value"    # F

    .line 143
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalBias:F

    .line 144
    return-void
.end method

.method public setVerticalGap(I)V
    .registers 2
    .param p1, "value"    # I

    .line 168
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalGap:I

    return-void
.end method

.method public setVerticalStyle(I)V
    .registers 2
    .param p1, "value"    # I

    .line 135
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mVerticalStyle:I

    .line 136
    return-void
.end method

.method public setWrapMode(I)V
    .registers 2
    .param p1, "value"    # I

    .line 163
    iput p1, p0, Landroid/support/constraint/solver/widgets/Flow;->mWrapMode:I

    .line 164
    return-void
.end method
