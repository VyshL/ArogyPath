.class Landroid/support/constraint/utils/ImageFilterView$1;
.super Landroid/view/ViewOutlineProvider;
.source "ImageFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/constraint/utils/ImageFilterView;->setRoundPercent(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/constraint/utils/ImageFilterView;


# direct methods
.method constructor <init>(Landroid/support/constraint/utils/ImageFilterView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/constraint/utils/ImageFilterView;

    .line 488
    iput-object p1, p0, Landroid/support/constraint/utils/ImageFilterView$1;->this$0:Landroid/support/constraint/utils/ImageFilterView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 491
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterView$1;->this$0:Landroid/support/constraint/utils/ImageFilterView;

    invoke-virtual {v0}, Landroid/support/constraint/utils/ImageFilterView;->getWidth()I

    move-result v0

    .line 492
    .local v0, "w":I
    iget-object v1, p0, Landroid/support/constraint/utils/ImageFilterView$1;->this$0:Landroid/support/constraint/utils/ImageFilterView;

    invoke-virtual {v1}, Landroid/support/constraint/utils/ImageFilterView;->getHeight()I

    move-result v7

    .line 493
    .local v7, "h":I
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterView$1;->this$0:Landroid/support/constraint/utils/ImageFilterView;

    invoke-static {v2}, Landroid/support/constraint/utils/ImageFilterView;->access$000(Landroid/support/constraint/utils/ImageFilterView;)F

    move-result v2

    mul-float v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v8, v1, v2

    .line 494
    .local v8, "r":F
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 495
    return-void
.end method
