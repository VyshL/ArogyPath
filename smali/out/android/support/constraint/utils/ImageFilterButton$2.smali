.class Landroid/support/constraint/utils/ImageFilterButton$2;
.super Landroid/view/ViewOutlineProvider;
.source "ImageFilterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/constraint/utils/ImageFilterButton;->setRound(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/constraint/utils/ImageFilterButton;


# direct methods
.method constructor <init>(Landroid/support/constraint/utils/ImageFilterButton;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/constraint/utils/ImageFilterButton;

    .line 336
    iput-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton$2;->this$0:Landroid/support/constraint/utils/ImageFilterButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 339
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton$2;->this$0:Landroid/support/constraint/utils/ImageFilterButton;

    invoke-virtual {v0}, Landroid/support/constraint/utils/ImageFilterButton;->getWidth()I

    move-result v0

    .line 340
    .local v0, "w":I
    iget-object v1, p0, Landroid/support/constraint/utils/ImageFilterButton$2;->this$0:Landroid/support/constraint/utils/ImageFilterButton;

    invoke-virtual {v1}, Landroid/support/constraint/utils/ImageFilterButton;->getHeight()I

    move-result v7

    .line 341
    .local v7, "h":I
    iget-object v1, p0, Landroid/support/constraint/utils/ImageFilterButton$2;->this$0:Landroid/support/constraint/utils/ImageFilterButton;

    invoke-static {v1}, Landroid/support/constraint/utils/ImageFilterButton;->access$100(Landroid/support/constraint/utils/ImageFilterButton;)F

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 342
    return-void
.end method
