.class public Landroid/support/constraint/solver/state/State;
.super Ljava/lang/Object;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/state/State$Chain;,
        Landroid/support/constraint/solver/state/State$Helper;,
        Landroid/support/constraint/solver/state/State$Direction;,
        Landroid/support/constraint/solver/state/State$Constraint;
    }
.end annotation


# static fields
.field static final CONSTRAINT_RATIO:I = 0x2

.field static final CONSTRAINT_SPREAD:I = 0x0

.field static final CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT:Ljava/lang/Integer;

.field static final UNKNOWN:I = -0x1


# instance fields
.field protected mHelperReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroid/support/constraint/solver/state/HelperReference;",
            ">;"
        }
    .end annotation
.end field

.field public final mParent:Landroid/support/constraint/solver/state/ConstraintReference;

.field protected mReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroid/support/constraint/solver/state/Reference;",
            ">;"
        }
    .end annotation
.end field

.field private numHelpers:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroid/support/constraint/solver/state/State;->PARENT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/state/State;->mReferences:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    .line 50
    new-instance v0, Landroid/support/constraint/solver/state/ConstraintReference;

    invoke-direct {v0, p0}, Landroid/support/constraint/solver/state/ConstraintReference;-><init>(Landroid/support/constraint/solver/state/State;)V

    iput-object v0, p0, Landroid/support/constraint/solver/state/State;->mParent:Landroid/support/constraint/solver/state/ConstraintReference;

    .line 166
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/state/State;->numHelpers:I

    .line 96
    iget-object v1, p0, Landroid/support/constraint/solver/state/State;->mReferences:Ljava/util/HashMap;

    sget-object v2, Landroid/support/constraint/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method private createHelperKey()Ljava/lang/String;
    .registers 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__HELPER_KEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/state/State;->numHelpers:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/constraint/solver/state/State;->numHelpers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 11
    .param p1, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 265
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 266
    iget-object v0, p0, Landroid/support/constraint/solver/state/State;->mParent:Landroid/support/constraint/solver/state/ConstraintReference;

    invoke-virtual {v0}, Landroid/support/constraint/solver/state/ConstraintReference;->getWidth()Landroid/support/constraint/solver/state/Dimension;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/support/constraint/solver/state/Dimension;->apply(Landroid/support/constraint/solver/state/State;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 267
    iget-object v0, p0, Landroid/support/constraint/solver/state/State;->mParent:Landroid/support/constraint/solver/state/ConstraintReference;

    invoke-virtual {v0}, Landroid/support/constraint/solver/state/ConstraintReference;->getHeight()Landroid/support/constraint/solver/state/Dimension;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/support/constraint/solver/state/Dimension;->apply(Landroid/support/constraint/solver/state/State;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 268
    iget-object v0, p0, Landroid/support/constraint/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 269
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Landroid/support/constraint/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/state/HelperReference;

    .line 270
    .local v2, "reference":Landroid/support/constraint/solver/state/HelperReference;
    invoke-virtual {v2}, Landroid/support/constraint/solver/state/HelperReference;->getHelperWidget()Landroid/support/constraint/solver/widgets/HelperWidget;

    move-result-object v3

    .line 271
    .local v3, "helperWidget":Landroid/support/constraint/solver/widgets/HelperWidget;
    if-eqz v3, :cond_4a

    .line 272
    iget-object v4, p0, Landroid/support/constraint/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/state/Reference;

    .line 273
    .local v4, "constraintReference":Landroid/support/constraint/solver/state/Reference;
    if-nez v4, :cond_47

    .line 274
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/state/State;->constraints(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;

    move-result-object v4

    .line 276
    :cond_47
    invoke-interface {v4, v3}, Landroid/support/constraint/solver/state/Reference;->setConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 278
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroid/support/constraint/solver/state/HelperReference;
    .end local v3    # "helperWidget":Landroid/support/constraint/solver/widgets/HelperWidget;
    .end local v4    # "constraintReference":Landroid/support/constraint/solver/state/Reference;
    :cond_4a
    goto :goto_21

    .line 279
    :cond_4b
    iget-object v0, p0, Landroid/support/constraint/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 280
    .restart local v1    # "key":Ljava/lang/Object;
    iget-object v2, p0, Landroid/support/constraint/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/state/Reference;

    .line 281
    .local v2, "reference":Landroid/support/constraint/solver/state/Reference;
    iget-object v3, p0, Landroid/support/constraint/solver/state/State;->mParent:Landroid/support/constraint/solver/state/ConstraintReference;

    if-eq v2, v3, :cond_7e

    .line 282
    invoke-interface {v2}, Landroid/support/constraint/solver/state/Reference;->getConstraintWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 283
    .local v3, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 284
    instance-of v4, v2, Landroid/support/constraint/solver/state/helpers/GuidelineReference;

    if-eqz v4, :cond_7a

    .line 286
    invoke-interface {v2}, Landroid/support/constraint/solver/state/Reference;->apply()V

    .line 288
    :cond_7a
    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 289
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_81

    .line 290
    :cond_7e
    invoke-interface {v2, p1}, Landroid/support/constraint/solver/state/Reference;->setConstraintWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 292
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroid/support/constraint/solver/state/Reference;
    :goto_81
    goto :goto_55

    .line 293
    :cond_82
    iget-object v0, p0, Landroid/support/constraint/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 294
    .restart local v1    # "key":Ljava/lang/Object;
    iget-object v2, p0, Landroid/support/constraint/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/state/HelperReference;

    .line 295
    .local v2, "reference":Landroid/support/constraint/solver/state/HelperReference;
    invoke-virtual {v2}, Landroid/support/constraint/solver/state/HelperReference;->getHelperWidget()Landroid/support/constraint/solver/widgets/HelperWidget;

    move-result-object v3

    .line 296
    .local v3, "helperWidget":Landroid/support/constraint/solver/widgets/HelperWidget;
    if-eqz v3, :cond_cb

    .line 297
    iget-object v4, v2, Landroid/support/constraint/solver/state/HelperReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_aa
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 298
    .local v5, "keyRef":Ljava/lang/Object;
    iget-object v6, p0, Landroid/support/constraint/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/state/Reference;

    .line 299
    .local v6, "constraintReference":Landroid/support/constraint/solver/state/Reference;
    invoke-virtual {v2}, Landroid/support/constraint/solver/state/HelperReference;->getHelperWidget()Landroid/support/constraint/solver/widgets/HelperWidget;

    move-result-object v7

    invoke-interface {v6}, Landroid/support/constraint/solver/state/Reference;->getConstraintWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/HelperWidget;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 300
    .end local v5    # "keyRef":Ljava/lang/Object;
    .end local v6    # "constraintReference":Landroid/support/constraint/solver/state/Reference;
    goto :goto_aa

    .line 301
    :cond_c8
    invoke-virtual {v2}, Landroid/support/constraint/solver/state/HelperReference;->apply()V

    .line 303
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroid/support/constraint/solver/state/HelperReference;
    .end local v3    # "helperWidget":Landroid/support/constraint/solver/widgets/HelperWidget;
    :cond_cb
    goto :goto_8c

    .line 304
    :cond_cc
    iget-object v0, p0, Landroid/support/constraint/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 305
    .restart local v1    # "key":Ljava/lang/Object;
    iget-object v2, p0, Landroid/support/constraint/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/state/Reference;

    .line 306
    .local v2, "reference":Landroid/support/constraint/solver/state/Reference;
    invoke-interface {v2}, Landroid/support/constraint/solver/state/Reference;->apply()V

    .line 307
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroid/support/constraint/solver/state/Reference;
    goto :goto_d6

    .line 308
    :cond_ec
    return-void
.end method

.method public barrier(Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Direction;)Landroid/support/constraint/solver/state/helpers/BarrierReference;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "direction"    # Landroid/support/constraint/solver/state/State$Direction;

    .line 223
    sget-object v0, Landroid/support/constraint/solver/state/State$Helper;->BARRIER:Landroid/support/constraint/solver/state/State$Helper;

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/solver/state/State;->helper(Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Helper;)Landroid/support/constraint/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/state/helpers/BarrierReference;

    .line 224
    .local v0, "reference":Landroid/support/constraint/solver/state/helpers/BarrierReference;
    invoke-virtual {v0, p2}, Landroid/support/constraint/solver/state/helpers/BarrierReference;->setBarrierDirection(Landroid/support/constraint/solver/state/State$Direction;)V

    .line 225
    return-object v0
.end method

.method public varargs centerHorizontally([Ljava/lang/Object;)Landroid/support/constraint/solver/state/helpers/AlignHorizontallyReference;
    .registers 4
    .param p1, "references"    # [Ljava/lang/Object;

    .line 241
    sget-object v0, Landroid/support/constraint/solver/state/State$Helper;->ALIGN_HORIZONTALLY:Landroid/support/constraint/solver/state/State$Helper;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/constraint/solver/state/State;->helper(Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Helper;)Landroid/support/constraint/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/state/helpers/AlignHorizontallyReference;

    .line 242
    .local v0, "reference":Landroid/support/constraint/solver/state/helpers/AlignHorizontallyReference;
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/state/helpers/AlignHorizontallyReference;->add([Ljava/lang/Object;)Landroid/support/constraint/solver/state/HelperReference;

    .line 243
    return-object v0
.end method

.method public varargs centerVertically([Ljava/lang/Object;)Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;
    .registers 4
    .param p1, "references"    # [Ljava/lang/Object;

    .line 247
    sget-object v0, Landroid/support/constraint/solver/state/State$Helper;->ALIGN_VERTICALLY:Landroid/support/constraint/solver/state/State$Helper;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/constraint/solver/state/State;->helper(Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Helper;)Landroid/support/constraint/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;

    .line 248
    .local v0, "reference":Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;->add([Ljava/lang/Object;)Landroid/support/constraint/solver/state/HelperReference;

    .line 249
    return-object v0
.end method

.method public constraints(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Landroid/support/constraint/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/state/Reference;

    .line 155
    .local v0, "reference":Landroid/support/constraint/solver/state/Reference;
    if-nez v0, :cond_16

    .line 156
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/state/State;->createConstraintReference(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;

    move-result-object v0

    .line 157
    iget-object v1, p0, Landroid/support/constraint/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-interface {v0, p1}, Landroid/support/constraint/solver/state/Reference;->setKey(Ljava/lang/Object;)V

    .line 160
    :cond_16
    instance-of v1, v0, Landroid/support/constraint/solver/state/ConstraintReference;

    if-eqz v1, :cond_1e

    .line 161
    move-object v1, v0

    check-cast v1, Landroid/support/constraint/solver/state/ConstraintReference;

    return-object v1

    .line 163
    :cond_1e
    const/4 v1, 0x0

    return-object v1
.end method

.method public convertDimension(Ljava/lang/Object;)I
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 112
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_c

    .line 113
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0

    .line 115
    :cond_c
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    .line 116
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 118
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public createConstraintReference(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 128
    new-instance v0, Landroid/support/constraint/solver/state/ConstraintReference;

    invoke-direct {v0, p0}, Landroid/support/constraint/solver/state/ConstraintReference;-><init>(Landroid/support/constraint/solver/state/State;)V

    return-object v0
.end method

.method public directMapping()V
    .registers 4

    .line 253
    iget-object v0, p0, Landroid/support/constraint/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 254
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/state/State;->constraints(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;

    move-result-object v2

    .line 255
    .local v2, "reference":Landroid/support/constraint/solver/state/ConstraintReference;
    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/state/ConstraintReference;->setView(Ljava/lang/Object;)V

    .line 256
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroid/support/constraint/solver/state/ConstraintReference;
    goto :goto_a

    .line 257
    :cond_1c
    return-void
.end method

.method public guideline(Ljava/lang/Object;I)Landroid/support/constraint/solver/state/helpers/GuidelineReference;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "orientation"    # I

    .line 211
    iget-object v0, p0, Landroid/support/constraint/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/state/Reference;

    .line 212
    .local v0, "reference":Landroid/support/constraint/solver/state/Reference;
    if-nez v0, :cond_1b

    .line 213
    new-instance v1, Landroid/support/constraint/solver/state/helpers/GuidelineReference;

    invoke-direct {v1, p0}, Landroid/support/constraint/solver/state/helpers/GuidelineReference;-><init>(Landroid/support/constraint/solver/state/State;)V

    .line 214
    .local v1, "guidelineReference":Landroid/support/constraint/solver/state/helpers/GuidelineReference;
    invoke-virtual {v1, p2}, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->setOrientation(I)V

    .line 215
    invoke-virtual {v1, p1}, Landroid/support/constraint/solver/state/helpers/GuidelineReference;->setKey(Ljava/lang/Object;)V

    .line 216
    iget-object v2, p0, Landroid/support/constraint/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    move-object v0, v1

    .line 219
    .end local v1    # "guidelineReference":Landroid/support/constraint/solver/state/helpers/GuidelineReference;
    :cond_1b
    move-object v1, v0

    check-cast v1, Landroid/support/constraint/solver/state/helpers/GuidelineReference;

    return-object v1
.end method

.method public height(Landroid/support/constraint/solver/state/Dimension;)Landroid/support/constraint/solver/state/State;
    .registers 3
    .param p1, "dimension"    # Landroid/support/constraint/solver/state/Dimension;

    .line 136
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/state/State;->setHeight(Landroid/support/constraint/solver/state/Dimension;)Landroid/support/constraint/solver/state/State;

    move-result-object v0

    return-object v0
.end method

.method public helper(Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Helper;)Landroid/support/constraint/solver/state/HelperReference;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "type"    # Landroid/support/constraint/solver/state/State$Helper;

    .line 172
    if-nez p1, :cond_6

    .line 173
    invoke-direct {p0}, Landroid/support/constraint/solver/state/State;->createHelperKey()Ljava/lang/String;

    move-result-object p1

    .line 175
    :cond_6
    iget-object v0, p0, Landroid/support/constraint/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/state/HelperReference;

    .line 176
    .local v0, "reference":Landroid/support/constraint/solver/state/HelperReference;
    if-nez v0, :cond_4a

    .line 177
    sget-object v1, Landroid/support/constraint/solver/state/State$1;->$SwitchMap$android$support$constraint$solver$state$State$Helper:[I

    invoke-virtual {p2}, Landroid/support/constraint/solver/state/State$Helper;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4c

    .line 194
    new-instance v1, Landroid/support/constraint/solver/state/HelperReference;

    invoke-direct {v1, p0, p2}, Landroid/support/constraint/solver/state/HelperReference;-><init>(Landroid/support/constraint/solver/state/State;Landroid/support/constraint/solver/state/State$Helper;)V

    move-object v0, v1

    goto :goto_45

    .line 191
    :pswitch_22
    new-instance v1, Landroid/support/constraint/solver/state/helpers/BarrierReference;

    invoke-direct {v1, p0}, Landroid/support/constraint/solver/state/helpers/BarrierReference;-><init>(Landroid/support/constraint/solver/state/State;)V

    move-object v0, v1

    .line 192
    goto :goto_45

    .line 188
    :pswitch_29
    new-instance v1, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;

    invoke-direct {v1, p0}, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;-><init>(Landroid/support/constraint/solver/state/State;)V

    move-object v0, v1

    .line 189
    goto :goto_45

    .line 185
    :pswitch_30
    new-instance v1, Landroid/support/constraint/solver/state/helpers/AlignHorizontallyReference;

    invoke-direct {v1, p0}, Landroid/support/constraint/solver/state/helpers/AlignHorizontallyReference;-><init>(Landroid/support/constraint/solver/state/State;)V

    move-object v0, v1

    .line 186
    goto :goto_45

    .line 182
    :pswitch_37
    new-instance v1, Landroid/support/constraint/solver/state/helpers/VerticalChainReference;

    invoke-direct {v1, p0}, Landroid/support/constraint/solver/state/helpers/VerticalChainReference;-><init>(Landroid/support/constraint/solver/state/State;)V

    move-object v0, v1

    .line 183
    goto :goto_45

    .line 179
    :pswitch_3e
    new-instance v1, Landroid/support/constraint/solver/state/helpers/HorizontalChainReference;

    invoke-direct {v1, p0}, Landroid/support/constraint/solver/state/helpers/HorizontalChainReference;-><init>(Landroid/support/constraint/solver/state/State;)V

    move-object v0, v1

    .line 180
    nop

    .line 197
    :goto_45
    iget-object v1, p0, Landroid/support/constraint/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_4a
    return-object v0

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_37
        :pswitch_30
        :pswitch_29
        :pswitch_22
    .end packed-switch
.end method

.method public varargs horizontalChain([Ljava/lang/Object;)Landroid/support/constraint/solver/state/helpers/HorizontalChainReference;
    .registers 4
    .param p1, "references"    # [Ljava/lang/Object;

    .line 235
    sget-object v0, Landroid/support/constraint/solver/state/State$Helper;->HORIZONTAL_CHAIN:Landroid/support/constraint/solver/state/State$Helper;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/constraint/solver/state/State;->helper(Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Helper;)Landroid/support/constraint/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/state/helpers/HorizontalChainReference;

    .line 236
    .local v0, "reference":Landroid/support/constraint/solver/state/helpers/HorizontalChainReference;
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/state/helpers/HorizontalChainReference;->add([Ljava/lang/Object;)Landroid/support/constraint/solver/state/HelperReference;

    .line 237
    return-object v0
.end method

.method public horizontalGuideline(Ljava/lang/Object;)Landroid/support/constraint/solver/state/helpers/GuidelineReference;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/solver/state/State;->guideline(Ljava/lang/Object;I)Landroid/support/constraint/solver/state/helpers/GuidelineReference;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "view"    # Ljava/lang/Object;

    .line 260
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/state/State;->constraints(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;

    move-result-object v0

    .line 261
    .local v0, "reference":Landroid/support/constraint/solver/state/ConstraintReference;
    invoke-virtual {v0, p2}, Landroid/support/constraint/solver/state/ConstraintReference;->setView(Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method reference(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Reference;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Landroid/support/constraint/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/state/Reference;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/support/constraint/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 101
    return-void
.end method

.method public setHeight(Landroid/support/constraint/solver/state/Dimension;)Landroid/support/constraint/solver/state/State;
    .registers 3
    .param p1, "dimension"    # Landroid/support/constraint/solver/state/Dimension;

    .line 145
    iget-object v0, p0, Landroid/support/constraint/solver/state/State;->mParent:Landroid/support/constraint/solver/state/ConstraintReference;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/state/ConstraintReference;->setHeight(Landroid/support/constraint/solver/state/Dimension;)Landroid/support/constraint/solver/state/ConstraintReference;

    .line 146
    return-object p0
.end method

.method public setWidth(Landroid/support/constraint/solver/state/Dimension;)Landroid/support/constraint/solver/state/State;
    .registers 3
    .param p1, "dimension"    # Landroid/support/constraint/solver/state/Dimension;

    .line 140
    iget-object v0, p0, Landroid/support/constraint/solver/state/State;->mParent:Landroid/support/constraint/solver/state/ConstraintReference;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/state/ConstraintReference;->setWidth(Landroid/support/constraint/solver/state/Dimension;)Landroid/support/constraint/solver/state/ConstraintReference;

    .line 141
    return-object p0
.end method

.method public varargs verticalChain([Ljava/lang/Object;)Landroid/support/constraint/solver/state/helpers/VerticalChainReference;
    .registers 4
    .param p1, "references"    # [Ljava/lang/Object;

    .line 229
    sget-object v0, Landroid/support/constraint/solver/state/State$Helper;->VERTICAL_CHAIN:Landroid/support/constraint/solver/state/State$Helper;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/constraint/solver/state/State;->helper(Ljava/lang/Object;Landroid/support/constraint/solver/state/State$Helper;)Landroid/support/constraint/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/state/helpers/VerticalChainReference;

    .line 230
    .local v0, "reference":Landroid/support/constraint/solver/state/helpers/VerticalChainReference;
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/state/helpers/VerticalChainReference;->add([Ljava/lang/Object;)Landroid/support/constraint/solver/state/HelperReference;

    .line 231
    return-object v0
.end method

.method public verticalGuideline(Ljava/lang/Object;)Landroid/support/constraint/solver/state/helpers/GuidelineReference;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/solver/state/State;->guideline(Ljava/lang/Object;I)Landroid/support/constraint/solver/state/helpers/GuidelineReference;

    move-result-object v0

    return-object v0
.end method

.method public width(Landroid/support/constraint/solver/state/Dimension;)Landroid/support/constraint/solver/state/State;
    .registers 3
    .param p1, "dimension"    # Landroid/support/constraint/solver/state/Dimension;

    .line 132
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/state/State;->setWidth(Landroid/support/constraint/solver/state/Dimension;)Landroid/support/constraint/solver/state/State;

    move-result-object v0

    return-object v0
.end method
