.class Landroid/support/v7/widget/CardViewBaseImpl;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Landroid/support/v7/widget/CardViewImpl;


# instance fields
.field final mCornerRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    return-void
.end method

.method private createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroid/support/v7/widget/RoundRectDrawableWithShadow;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p3, "radius"    # F
    .param p4, "elevation"    # F
    .param p5, "maxElevation"    # F

    .line 93
    new-instance v6, Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object v6
.end method

.method private getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;
    .registers 3
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .line 171
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    return-object v0
.end method


# virtual methods
.method public getBackgroundColor(Landroid/support/v7/widget/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .line 125
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getElevation(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 3
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .line 146
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getShadowSize()F

    move-result v0

    return v0
.end method

.method public getMaxElevation(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 3
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .line 157
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getMaxShadowSize()F

    move-result v0

    return v0
.end method

.method public getMinHeight(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 3
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .line 167
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getMinHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 3
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .line 162
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getMinWidth()F

    move-result v0

    return v0
.end method

.method public getRadius(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 3
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .line 136
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getCornerRadius()F

    move-result v0

    return v0
.end method

.method public initStatic()V
    .registers 2

    .line 37
    new-instance v0, Landroid/support/v7/widget/CardViewBaseImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/CardViewBaseImpl$1;-><init>(Landroid/support/v7/widget/CardViewBaseImpl;)V

    sput-object v0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 78
    return-void
.end method

.method public initialize(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .registers 13
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p4, "radius"    # F
    .param p5, "elevation"    # F
    .param p6, "maxElevation"    # F

    .line 83
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/CardViewBaseImpl;->createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    .line 85
    .local v0, "background":Landroid/support/v7/widget/RoundRectDrawableWithShadow;
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 86
    invoke-interface {p1, v0}, Landroid/support/v7/widget/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 88
    return-void
.end method

.method public onCompatPaddingChanged(Landroid/support/v7/widget/CardViewDelegate;)V
    .registers 2
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .line 110
    return-void
.end method

.method public onPreventCornerOverlapChanged(Landroid/support/v7/widget/CardViewDelegate;)V
    .registers 4
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .line 114
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 115
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 116
    return-void
.end method

.method public setBackgroundColor(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "color"    # Landroid/content/res/ColorStateList;

    .line 120
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setColor(Landroid/content/res/ColorStateList;)V

    .line 121
    return-void
.end method

.method public setElevation(Landroid/support/v7/widget/CardViewDelegate;F)V
    .registers 4
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "elevation"    # F

    .line 141
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setShadowSize(F)V

    .line 142
    return-void
.end method

.method public setMaxElevation(Landroid/support/v7/widget/CardViewDelegate;F)V
    .registers 4
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "maxElevation"    # F

    .line 151
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setMaxShadowSize(F)V

    .line 152
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 153
    return-void
.end method

.method public setRadius(Landroid/support/v7/widget/CardViewDelegate;F)V
    .registers 4
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "radius"    # F

    .line 130
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setCornerRadius(F)V

    .line 131
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 132
    return-void
.end method

.method public updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V
    .registers 7
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 100
    .local v0, "shadowPadding":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V

    .line 101
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getMinWidth(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 102
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getMinHeight(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 101
    invoke-interface {p1, v1, v2}, Landroid/support/v7/widget/CardViewDelegate;->setMinWidthHeightInternal(II)V

    .line 103
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/support/v7/widget/CardViewDelegate;->setShadowPadding(IIII)V

    .line 105
    return-void
.end method
