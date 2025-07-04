.class public Landroid/support/constraint/motion/DesignTool;
.super Ljava/lang/Object;
.source "DesignTool.java"

# interfaces
.implements Landroid/support/constraint/motion/ProxyInterface;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DesignTool"

.field static final allAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final allMargins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLastEndState:Ljava/lang/String;

.field private mLastEndStateId:I

.field private mLastStartState:Ljava/lang/String;

.field private mLastStartStateId:I

.field private final mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

.field private mSceneCache:Landroid/support/constraint/motion/MotionScene;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/constraint/motion/DesignTool;->allAttributes:Ljava/util/HashMap;

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/support/constraint/motion/DesignTool;->allMargins:Ljava/util/HashMap;

    .line 90
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const-string v4, "layout_constraintBottom_toBottomOf"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    const-string v6, "layout_constraintBottom_toTopOf"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v5, "layout_constraintTop_toBottomOf"

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v3, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v3, "layout_constraintTop_toTopOf"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    const-string v8, "layout_constraintStart_toStartOf"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    const-string v10, "layout_constraintStart_toEndOf"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {v7, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v9, "layout_constraintEnd_toStartOf"

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {v7, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v7, "layout_constraintEnd_toEndOf"

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    const-string v12, "layout_constraintLeft_toLeftOf"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    const-string v14, "layout_constraintLeft_toRightOf"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {v11, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    const-string v15, "layout_constraintRight_toRightOf"

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {v11, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v11, "layout_constraintRight_toLeftOf"

    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v13, "layout_constraintBaseline_toBaselineOf"

    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "layout_marginBottom"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "layout_marginTop"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "layout_marginStart"

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "layout_marginEnd"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "layout_marginEnd"

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "layout_marginLeft"

    invoke-virtual {v1, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "layout_marginLeft"

    invoke-virtual {v1, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "layout_marginRight"

    invoke-virtual {v1, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "layout_marginRight"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/motion/MotionLayout;)V
    .registers 3
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndState:Ljava/lang/String;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartStateId:I

    .line 80
    iput v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndStateId:I

    .line 83
    iput-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    .line 84
    return-void
.end method

.method private static Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V
    .registers 19
    .param p0, "dpi"    # I
    .param p1, "set"    # Landroid/support/constraint/ConstraintSet;
    .param p2, "view"    # Landroid/view/View;
    .param p4, "from"    # I
    .param p5, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/constraint/ConstraintSet;",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 132
    .local p3, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p3

    sget-object v1, Landroid/support/constraint/motion/DesignTool;->allAttributes:Ljava/util/HashMap;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    .local v1, "connection":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 135
    .local v2, "connectionValue":Ljava/lang/String;
    if-eqz v2, :cond_49

    .line 136
    const/4 v3, 0x0

    .line 137
    .local v3, "marginValue":I
    sget-object v4, Landroid/support/constraint/motion/DesignTool;->allMargins:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 138
    .local v4, "margin":Ljava/lang/String;
    if-eqz v4, :cond_35

    .line 139
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move v6, p0

    invoke-static {p0, v5}, Landroid/support/constraint/motion/DesignTool;->GetPxFromDp(ILjava/lang/String;)I

    move-result v3

    goto :goto_36

    .line 138
    :cond_35
    move v6, p0

    .line 141
    :goto_36
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 142
    .local v5, "id":I
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v8

    move-object v7, p1

    move/from16 v9, p4

    move v10, v5

    move/from16 v11, p5

    move v12, v3

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_4a

    .line 135
    .end local v3    # "marginValue":I
    .end local v4    # "margin":Ljava/lang/String;
    .end local v5    # "id":I
    :cond_49
    move v6, p0

    .line 144
    :goto_4a
    return-void
.end method

.method private static GetPxFromDp(ILjava/lang/String;)I
    .registers 6
    .param p0, "dpi"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 120
    return v0

    .line 122
    :cond_4
    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 123
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    .line 124
    return v0

    .line 126
    :cond_e
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "filteredValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int v2, v2, p0

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 128
    .local v2, "dpValue":I
    return v2
.end method

.method private static SetAbsolutePositions(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;)V
    .registers 8
    .param p0, "dpi"    # I
    .param p1, "set"    # Landroid/support/constraint/ConstraintSet;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/constraint/ConstraintSet;",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 181
    .local p3, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "layout_editor_absoluteX"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    .local v0, "absoluteX":Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 183
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {p0, v0}, Landroid/support/constraint/motion/DesignTool;->GetPxFromDp(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/support/constraint/ConstraintSet;->setEditorAbsoluteX(II)V

    .line 185
    :cond_15
    const-string v1, "layout_editor_absoluteY"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 186
    .local v1, "absoluteY":Ljava/lang/String;
    if-eqz v1, :cond_2a

    .line 187
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {p0, v1}, Landroid/support/constraint/motion/DesignTool;->GetPxFromDp(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/support/constraint/ConstraintSet;->setEditorAbsoluteY(II)V

    .line 189
    :cond_2a
    return-void
.end method

.method private static SetBias(Landroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V
    .registers 8
    .param p0, "set"    # Landroid/support/constraint/ConstraintSet;
    .param p1, "view"    # Landroid/view/View;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/ConstraintSet;",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 147
    .local p2, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "layout_constraintHorizontal_bias"

    .line 148
    .local v0, "bias":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_7

    .line 149
    const-string v0, "layout_constraintVertical_bias"

    .line 151
    :cond_7
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    .local v2, "biasValue":Ljava/lang/String;
    if-eqz v2, :cond_2a

    .line 153
    if-nez p3, :cond_1d

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/support/constraint/ConstraintSet;->setHorizontalBias(IF)V

    goto :goto_2a

    .line 155
    :cond_1d
    if-ne p3, v1, :cond_2a

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/support/constraint/ConstraintSet;->setVerticalBias(IF)V

    .line 159
    :cond_2a
    :goto_2a
    return-void
.end method

.method private static SetDimensions(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V
    .registers 9
    .param p0, "dpi"    # I
    .param p1, "set"    # Landroid/support/constraint/ConstraintSet;
    .param p2, "view"    # Landroid/view/View;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/constraint/ConstraintSet;",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 162
    .local p3, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "layout_width"

    .line 163
    .local v0, "dimension":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p4, v1, :cond_7

    .line 164
    const-string v0, "layout_height"

    .line 166
    :cond_7
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    .local v1, "dimensionValue":Ljava/lang/String;
    if-eqz v1, :cond_2d

    .line 168
    const/4 v2, -0x2

    .line 169
    .local v2, "value":I
    const-string v3, "wrap_content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 170
    invoke-static {p0, v1}, Landroid/support/constraint/motion/DesignTool;->GetPxFromDp(ILjava/lang/String;)I

    move-result v2

    .line 172
    :cond_1c
    if-nez p4, :cond_26

    .line 173
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p1, v3, v2}, Landroid/support/constraint/ConstraintSet;->constrainWidth(II)V

    goto :goto_2d

    .line 175
    :cond_26
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p1, v3, v2}, Landroid/support/constraint/ConstraintSet;->constrainHeight(II)V

    .line 178
    .end local v2    # "value":I
    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method public designAccess(ILjava/lang/String;Ljava/lang/Object;[FI[FI)I
    .registers 13
    .param p1, "cmd"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "viewObject"    # Ljava/lang/Object;
    .param p4, "in"    # [F
    .param p5, "inLength"    # I
    .param p6, "out"    # [F
    .param p7, "outLength"    # I

    .line 550
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    .line 551
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 552
    .local v1, "motionController":Landroid/support/constraint/motion/MotionController;
    const/4 v2, -0x1

    if-eqz p1, :cond_1f

    .line 553
    iget-object v3, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v3, v3, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v3, :cond_e

    .line 554
    return v2

    .line 557
    :cond_e
    if-eqz v0, :cond_1e

    .line 558
    iget-object v3, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v3, v3, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/support/constraint/motion/MotionController;

    .line 559
    if-nez v1, :cond_1f

    .line 560
    return v2

    .line 563
    :cond_1e
    return v2

    .line 567
    :cond_1f
    packed-switch p1, :pswitch_data_52

    .line 595
    return v2

    .line 588
    :pswitch_23
    iget-object v2, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v2, v2, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v2

    .line 589
    .local v2, "duration":I
    div-int/lit8 v3, v2, 0x10

    .line 591
    .local v3, "frames":I
    invoke-virtual {v1, p2, p6, p7}, Landroid/support/constraint/motion/MotionController;->getAttributeValues(Ljava/lang/String;[FI)I

    move-result v4

    return v4

    .line 580
    .end local v2    # "duration":I
    .end local v3    # "frames":I
    :pswitch_32
    iget-object v2, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v2, v2, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v2

    .line 581
    .restart local v2    # "duration":I
    div-int/lit8 v3, v2, 0x10

    .line 583
    .restart local v3    # "frames":I
    const/4 v4, 0x0

    invoke-virtual {v1, p6, v4}, Landroid/support/constraint/motion/MotionController;->buildKeyFrames([F[I)I

    .line 584
    return v3

    .line 572
    .end local v2    # "duration":I
    .end local v3    # "frames":I
    :pswitch_41
    iget-object v2, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v2, v2, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v2

    .line 573
    .restart local v2    # "duration":I
    div-int/lit8 v3, v2, 0x10

    .line 575
    .restart local v3    # "frames":I
    invoke-virtual {v1, p6, v3}, Landroid/support/constraint/motion/MotionController;->buildPath([FI)V

    .line 576
    return v3

    .line 569
    .end local v2    # "duration":I
    .end local v3    # "frames":I
    :pswitch_4f
    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_41
        :pswitch_32
        :pswitch_23
    .end packed-switch
.end method

.method public disableAutoTransition(Z)V
    .registers 3
    .param p1, "disable"    # Z

    .line 410
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout;->disableAutoTransition(Z)V

    .line 411
    return-void
.end method

.method public dumpConstraintSet(Ljava/lang/String;)V
    .registers 6
    .param p1, "set"    # Ljava/lang/String;

    .line 708
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_c

    .line 709
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mSceneCache:Landroid/support/constraint/motion/MotionScene;

    iput-object v1, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 711
    :cond_c
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v0

    .line 712
    .local v0, "setId":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dumping  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 714
    :try_start_3a
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1, v0}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v2, v2, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-virtual {v1, v2, v3}, Landroid/support/constraint/ConstraintSet;->dump(Landroid/support/constraint/motion/MotionScene;[I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4c} :catch_4d

    .line 717
    goto :goto_51

    .line 715
    :catch_4d
    move-exception v1

    .line 716
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 718
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_51
    return-void
.end method

.method public getAnimationKeyFrames(Ljava/lang/Object;[F)I
    .registers 7
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "key"    # [F

    .line 241
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_8

    .line 242
    const/4 v0, -0x1

    return v0

    .line 244
    :cond_8
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v0

    .line 245
    .local v0, "duration":I
    div-int/lit8 v1, v0, 0x10

    .line 247
    .local v1, "frames":I
    iget-object v2, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v2, v2, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionController;

    .line 248
    .local v2, "motionController":Landroid/support/constraint/motion/MotionController;
    if-nez v2, :cond_20

    .line 249
    const/4 v3, 0x0

    return v3

    .line 252
    :cond_20
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/support/constraint/motion/MotionController;->buildKeyFrames([F[I)I

    .line 253
    return v1
.end method

.method public getAnimationPath(Ljava/lang/Object;[FI)I
    .registers 6
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "path"    # [F
    .param p3, "len"    # I

    .line 199
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_8

    .line 200
    const/4 v0, -0x1

    return v0

    .line 203
    :cond_8
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/motion/MotionController;

    .line 204
    .local v0, "motionController":Landroid/support/constraint/motion/MotionController;
    if-nez v0, :cond_16

    .line 205
    const/4 v1, 0x0

    return v1

    .line 208
    :cond_16
    invoke-virtual {v0, p2, p3}, Landroid/support/constraint/motion/MotionController;->buildPath([FI)V

    .line 209
    return p3
.end method

.method public getAnimationRectangles(Ljava/lang/Object;[F)V
    .registers 6
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "path"    # [F

    .line 219
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_7

    .line 220
    return-void

    .line 222
    :cond_7
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v0

    .line 223
    .local v0, "duration":I
    div-int/lit8 v1, v0, 0x10

    .line 225
    .local v1, "frames":I
    iget-object v2, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v2, v2, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionController;

    .line 226
    .local v2, "motionController":Landroid/support/constraint/motion/MotionController;
    if-nez v2, :cond_1e

    .line 227
    return-void

    .line 230
    :cond_1e
    invoke-virtual {v2, p2, v1}, Landroid/support/constraint/motion/MotionController;->buildRectangles([FI)V

    .line 231
    return-void
.end method

.method public getEndState()Ljava/lang/String;
    .registers 3

    .line 335
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getEndState()I

    move-result v0

    .line 337
    .local v0, "endId":I
    iget v1, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndStateId:I

    if-ne v1, v0, :cond_d

    .line 338
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndState:Ljava/lang/String;

    return-object v1

    .line 340
    :cond_d
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1, v0}, Landroid/support/constraint/motion/MotionLayout;->getConstraintSetNames(I)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "last":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 342
    iput-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndState:Ljava/lang/String;

    .line 343
    iput v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndStateId:I

    .line 345
    :cond_19
    return-object v1
.end method

.method public getKeyFrameInfo(Ljava/lang/Object;I[I)I
    .registers 6
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "type"    # I
    .param p3, "info"    # [I

    .line 447
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/motion/MotionController;

    .line 448
    .local v0, "controller":Landroid/support/constraint/motion/MotionController;
    if-nez v0, :cond_11

    .line 449
    const/4 v1, 0x0

    return v1

    .line 451
    :cond_11
    invoke-virtual {v0, p2, p3}, Landroid/support/constraint/motion/MotionController;->getKeyFrameInfo(I[I)I

    move-result v1

    return v1
.end method

.method public getKeyFramePosition(Ljava/lang/Object;IFF)F
    .registers 7
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "type"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 462
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/motion/MotionController;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/constraint/motion/MotionController;->getKeyFrameParameter(IFF)F

    move-result v0

    return v0
.end method

.method public getKeyFramePositions(Ljava/lang/Object;[I[F)I
    .registers 6
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "type"    # [I
    .param p3, "pos"    # [F

    .line 432
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/motion/MotionController;

    .line 433
    .local v0, "controller":Landroid/support/constraint/motion/MotionController;
    if-nez v0, :cond_11

    .line 434
    const/4 v1, 0x0

    return v1

    .line 436
    :cond_11
    invoke-virtual {v0, p2, p3}, Landroid/support/constraint/motion/MotionController;->getkeyFramePositions([I[F)I

    move-result v1

    return v1
.end method

.method public getKeyframe(III)Ljava/lang/Object;
    .registers 6
    .param p1, "type"    # I
    .param p2, "target"    # I
    .param p3, "position"    # I

    .line 601
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_8

    .line 602
    const/4 v0, 0x0

    return-object v0

    .line 604
    :cond_8
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/support/constraint/motion/MotionScene;->getKeyFrame(Landroid/content/Context;III)Landroid/support/constraint/motion/Key;

    move-result-object v0

    return-object v0
.end method

.method public getKeyframe(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 7
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "type"    # I
    .param p3, "position"    # I

    .line 640
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_8

    .line 641
    const/4 v0, 0x0

    return-object v0

    .line 643
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 644
    .local v0, "target":I
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v2, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0, p3}, Landroid/support/constraint/motion/MotionScene;->getKeyFrame(Landroid/content/Context;III)Landroid/support/constraint/motion/Key;

    move-result-object v1

    return-object v1
.end method

.method public getKeyframeAtLocation(Ljava/lang/Object;FF)Ljava/lang/Object;
    .registers 10
    .param p1, "viewObject"    # Ljava/lang/Object;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 608
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 609
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 610
    .local v1, "motionController":Landroid/support/constraint/motion/MotionController;
    iget-object v2, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v2, v2, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v2, :cond_10

    .line 611
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 613
    :cond_10
    const/4 v2, 0x0

    if-eqz v0, :cond_34

    .line 614
    iget-object v3, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v3, v3, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/support/constraint/motion/MotionController;

    .line 615
    if-nez v1, :cond_21

    .line 616
    return-object v2

    .line 621
    :cond_21
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 622
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 623
    .local v3, "layoutWidth":I
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    .line 624
    .local v4, "layoutHeight":I
    invoke-virtual {v1, v3, v4, p2, p3}, Landroid/support/constraint/motion/MotionController;->getPositionKeyframe(IIFF)Landroid/support/constraint/motion/KeyPositionBase;

    move-result-object v5

    return-object v5

    .line 619
    .end local v2    # "viewGroup":Landroid/view/ViewGroup;
    .end local v3    # "layoutWidth":I
    .end local v4    # "layoutHeight":I
    :cond_34
    return-object v2
.end method

.method public getPositionKeyframe(Ljava/lang/Object;Ljava/lang/Object;FF[Ljava/lang/String;[F)Ljava/lang/Boolean;
    .registers 16
    .param p1, "keyFrame"    # Ljava/lang/Object;
    .param p2, "view"    # Ljava/lang/Object;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "attribute"    # [Ljava/lang/String;
    .param p6, "value"    # [F

    .line 628
    instance-of v0, p1, Landroid/support/constraint/motion/KeyPositionBase;

    if-eqz v0, :cond_30

    .line 629
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/motion/KeyPositionBase;

    .line 630
    .local v0, "key":Landroid/support/constraint/motion/KeyPositionBase;
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    move-object v2, p2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/support/constraint/motion/MotionController;

    .line 631
    .local v8, "motionController":Landroid/support/constraint/motion/MotionController;
    move-object v2, p2

    check-cast v2, Landroid/view/View;

    move-object v1, v8

    move-object v3, v0

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/motion/MotionController;->positionKeyframe(Landroid/view/View;Landroid/support/constraint/motion/KeyPositionBase;FF[Ljava/lang/String;[F)V

    .line 632
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 633
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 634
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 636
    .end local v0    # "key":Landroid/support/constraint/motion/KeyPositionBase;
    .end local v8    # "motionController":Landroid/support/constraint/motion/MotionController;
    :cond_30
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()F
    .registers 2

    .line 354
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v0

    return v0
.end method

.method public getStartState()Ljava/lang/String;
    .registers 4

    .line 321
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getStartState()I

    move-result v0

    .line 322
    .local v0, "startid":I
    iget v1, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartStateId:I

    if-ne v1, v0, :cond_d

    .line 323
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    return-object v1

    .line 325
    :cond_d
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1, v0}, Landroid/support/constraint/motion/MotionLayout;->getConstraintSetNames(I)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "last":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 328
    iput-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    .line 329
    iput v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartStateId:I

    .line 331
    :cond_19
    iget-object v2, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2, v0}, Landroid/support/constraint/motion/MotionLayout;->getConstraintSetNames(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getState()Ljava/lang/String;
    .registers 4

    .line 363
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndState:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 364
    invoke-virtual {p0}, Landroid/support/constraint/motion/DesignTool;->getProgress()F

    move-result v0

    .line 365
    .local v0, "progress":F
    const v1, 0x3c23d70a    # 0.01f

    .line 366
    .local v1, "epsilon":F
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_16

    .line 367
    iget-object v2, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    return-object v2

    .line 368
    :cond_16
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_20

    .line 369
    iget-object v2, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndState:Ljava/lang/String;

    return-object v2

    .line 372
    .end local v0    # "progress":F
    .end local v1    # "epsilon":F
    :cond_20
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    return-object v0
.end method

.method public getTransitionTimeMs()J
    .registers 3

    .line 419
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getTransitionTimeMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public isInTransition()Z
    .registers 2

    .line 381
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndState:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public setAttributes(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 20
    .param p1, "dpi"    # I
    .param p2, "constraintSetId"    # Ljava/lang/String;
    .param p3, "opaqueView"    # Ljava/lang/Object;
    .param p4, "opaqueAttributes"    # Ljava/lang/Object;

    .line 665
    move-object v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    check-cast v8, Landroid/view/View;

    .line 666
    .local v8, "view":Landroid/view/View;
    move-object/from16 v9, p4

    check-cast v9, Ljava/util/HashMap;

    .line 668
    .local v9, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    move-object/from16 v10, p2

    invoke-virtual {v1, v10}, Landroid/support/constraint/motion/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v11

    .line 669
    .local v11, "rscId":I
    iget-object v1, v0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1, v11}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v12

    .line 675
    .local v12, "set":Landroid/support/constraint/ConstraintSet;
    if-nez v12, :cond_1e

    .line 676
    return-void

    .line 679
    :cond_1e
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/support/constraint/ConstraintSet;->clear(I)V

    .line 681
    const/4 v13, 0x0

    invoke-static {v7, v12, v8, v9, v13}, Landroid/support/constraint/motion/DesignTool;->SetDimensions(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    .line 682
    const/4 v14, 0x1

    invoke-static {v7, v12, v8, v9, v14}, Landroid/support/constraint/motion/DesignTool;->SetDimensions(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    .line 684
    const/4 v5, 0x6

    const/4 v6, 0x6

    move/from16 v1, p1

    move-object v2, v12

    move-object v3, v8

    move-object v4, v9

    invoke-static/range {v1 .. v6}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    .line 685
    const/4 v6, 0x7

    invoke-static/range {v1 .. v6}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    .line 686
    const/4 v5, 0x7

    invoke-static/range {v1 .. v6}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    .line 687
    const/4 v6, 0x6

    invoke-static/range {v1 .. v6}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    .line 688
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    .line 689
    const/4 v6, 0x2

    invoke-static/range {v1 .. v6}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    .line 690
    const/4 v5, 0x2

    invoke-static/range {v1 .. v6}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    .line 691
    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    .line 692
    const/4 v5, 0x3

    const/4 v6, 0x3

    invoke-static/range {v1 .. v6}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    .line 693
    const/4 v6, 0x4

    invoke-static/range {v1 .. v6}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    .line 694
    const/4 v5, 0x4

    const/4 v6, 0x3

    invoke-static/range {v1 .. v6}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    .line 695
    const/4 v6, 0x4

    invoke-static/range {v1 .. v6}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    .line 696
    const/4 v5, 0x5

    const/4 v6, 0x5

    invoke-static/range {v1 .. v6}, Landroid/support/constraint/motion/DesignTool;->Connect(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    .line 698
    invoke-static {v12, v8, v9, v13}, Landroid/support/constraint/motion/DesignTool;->SetBias(Landroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    .line 699
    invoke-static {v12, v8, v9, v14}, Landroid/support/constraint/motion/DesignTool;->SetBias(Landroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    .line 701
    invoke-static {v7, v12, v8, v9}, Landroid/support/constraint/motion/DesignTool;->SetAbsolutePositions(ILandroid/support/constraint/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;)V

    .line 703
    iget-object v1, v0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1, v11, v12}, Landroid/support/constraint/motion/MotionLayout;->updateState(ILandroid/support/constraint/ConstraintSet;)V

    .line 704
    iget-object v1, v0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 705
    return-void
.end method

.method public setKeyFrame(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "position"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;

    .line 476
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_28

    .line 477
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/constraint/motion/MotionScene;->setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V

    .line 478
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    int-to-float v1, p2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 479
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 480
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 481
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 483
    :cond_28
    return-void
.end method

.method public setKeyFramePosition(Ljava/lang/Object;IIFF)Z
    .registers 13
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "position"    # I
    .param p3, "type"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 497
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_63

    .line 498
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/motion/MotionController;

    .line 499
    .local v0, "motionController":Landroid/support/constraint/motion/MotionController;
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget v1, v1, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int p2, v1

    .line 500
    if-eqz v0, :cond_63

    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2, p2}, Landroid/support/constraint/motion/MotionScene;->hasKeyFramePosition(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 501
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4, p5}, Landroid/support/constraint/motion/MotionController;->getKeyFrameParameter(IFF)F

    move-result v1

    .line 502
    .local v1, "fx":F
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p4, p5}, Landroid/support/constraint/motion/MotionController;->getKeyFrameParameter(IFF)F

    move-result v2

    .line 504
    .local v2, "fy":F
    iget-object v3, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v3, v3, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "motion:percentX"

    invoke-virtual {v3, v4, p2, v6, v5}, Landroid/support/constraint/motion/MotionScene;->setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V

    .line 505
    iget-object v3, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v3, v3, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "motion:percentY"

    invoke-virtual {v3, v4, p2, v6, v5}, Landroid/support/constraint/motion/MotionScene;->setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V

    .line 506
    iget-object v3, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 507
    iget-object v3, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 508
    iget-object v3, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 509
    return v4

    .line 512
    .end local v0    # "motionController":Landroid/support/constraint/motion/MotionController;
    .end local v1    # "fx":F
    .end local v2    # "fy":F
    :cond_63
    const/4 v0, 0x0

    return v0
.end method

.method public setKeyframe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "keyFrame"    # Ljava/lang/Object;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 648
    instance-of v0, p1, Landroid/support/constraint/motion/Key;

    if-eqz v0, :cond_14

    .line 649
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/motion/Key;

    .line 650
    .local v0, "key":Landroid/support/constraint/motion/Key;
    invoke-virtual {v0, p2, p3}, Landroid/support/constraint/motion/Key;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 651
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 652
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 654
    .end local v0    # "key":Landroid/support/constraint/motion/Key;
    :cond_14
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 276
    if-nez p1, :cond_4

    .line 277
    const-string p1, "motion_base"

    .line 279
    :cond_4
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    if-ne v0, p1, :cond_9

    .line 280
    return-void

    .line 288
    :cond_9
    iput-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndState:Ljava/lang/String;

    .line 290
    nop

    .line 300
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_1b

    .line 301
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mSceneCache:Landroid/support/constraint/motion/MotionScene;

    iput-object v1, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 304
    :cond_1b
    if-eqz p1, :cond_24

    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v0

    goto :goto_26

    :cond_24
    sget v0, Landroid/support/constraint/R$id;->motion_base:I

    .line 305
    .local v0, "rscId":I
    :goto_26
    iput v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartStateId:I

    .line 307
    if-eqz v0, :cond_53

    .line 308
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getStartState()I

    move-result v1

    if-ne v0, v1, :cond_39

    .line 309
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    goto :goto_53

    .line 310
    :cond_39
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getEndState()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_49

    .line 311
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1, v2}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    goto :goto_53

    .line 313
    :cond_49
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1, v0}, Landroid/support/constraint/motion/MotionLayout;->transitionToState(I)V

    .line 314
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1, v2}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 317
    :cond_53
    :goto_53
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 318
    return-void
.end method

.method public setToolPosition(F)V
    .registers 4
    .param p1, "position"    # F

    .line 261
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_c

    .line 262
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mSceneCache:Landroid/support/constraint/motion/MotionScene;

    iput-object v1, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 264
    :cond_c
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 265
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 266
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 267
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 268
    return-void
.end method

.method public setTransition(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .line 391
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_c

    .line 392
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mSceneCache:Landroid/support/constraint/motion/MotionScene;

    iput-object v1, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 394
    :cond_c
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v0

    .line 395
    .local v0, "startId":I
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1, p2}, Landroid/support/constraint/motion/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v1

    .line 397
    .local v1, "endId":I
    iget-object v2, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2, v0, v1}, Landroid/support/constraint/motion/MotionLayout;->setTransition(II)V

    .line 398
    iput v0, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartStateId:I

    .line 399
    iput v1, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndStateId:I

    .line 401
    iput-object p1, p0, Landroid/support/constraint/motion/DesignTool;->mLastStartState:Ljava/lang/String;

    .line 402
    iput-object p2, p0, Landroid/support/constraint/motion/DesignTool;->mLastEndState:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public setViewDebug(Ljava/lang/Object;I)V
    .registers 5
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "debugMode"    # I

    .line 521
    iget-object v0, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/motion/MotionController;

    .line 522
    .local v0, "motionController":Landroid/support/constraint/motion/MotionController;
    if-eqz v0, :cond_14

    .line 523
    invoke-virtual {v0, p2}, Landroid/support/constraint/motion/MotionController;->setDrawPath(I)V

    .line 524
    iget-object v1, p0, Landroid/support/constraint/motion/DesignTool;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 526
    :cond_14
    return-void
.end method
