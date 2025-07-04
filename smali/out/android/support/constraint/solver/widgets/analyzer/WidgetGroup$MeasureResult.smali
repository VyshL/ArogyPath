.class Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;
.super Ljava/lang/Object;
.source "WidgetGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MeasureResult"
.end annotation


# instance fields
.field baseline:I

.field bottom:I

.field left:I

.field orientation:I

.field right:I

.field final synthetic this$0:Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;

.field top:I

.field widgetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/LinearSystem;I)V
    .registers 6
    .param p1, "this$0"    # Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;
    .param p2, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p3, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p4, "orientation"    # I

    .line 235
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->this$0:Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->widgetRef:Ljava/lang/ref/WeakReference;

    .line 237
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, v0}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->left:I

    .line 238
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, v0}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->top:I

    .line 239
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, v0}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->right:I

    .line 240
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, v0}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->bottom:I

    .line 241
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, v0}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->baseline:I

    .line 242
    iput p4, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->orientation:I

    .line 243
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 9

    .line 246
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->widgetRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 247
    .local v0, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v0, :cond_1a

    .line 248
    iget v2, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->left:I

    iget v3, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->top:I

    iget v4, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->right:I

    iget v5, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->bottom:I

    iget v6, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->baseline:I

    iget v7, p0, Landroid/support/constraint/solver/widgets/analyzer/WidgetGroup$MeasureResult;->orientation:I

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalFrame(IIIIII)V

    .line 250
    :cond_1a
    return-void
.end method
