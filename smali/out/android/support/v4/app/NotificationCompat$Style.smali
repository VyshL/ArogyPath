.class public abstract Landroid/support/v4/app/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1666
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method

.method private calculateTopPadding()I
    .registers 8

    .line 1947
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1948
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Landroid/support/compat/R$dimen;->notification_top_pad:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1949
    .local v1, "padding":I
    sget v2, Landroid/support/compat/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1951
    .local v2, "largePadding":I
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 1952
    .local v3, "fontScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3fa66666    # 1.3f

    invoke-static {v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Style;->constrain(FFF)F

    move-result v5

    sub-float/2addr v5, v4

    const v6, 0x3e999998    # 0.29999995f

    div-float/2addr v5, v6

    .line 1956
    .local v5, "largeFactor":F
    sub-float/2addr v4, v5

    int-to-float v6, v1

    mul-float v4, v4, v6

    int-to-float v6, v2

    mul-float v6, v6, v5

    add-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    return v4
.end method

.method private static constrain(FFF)F
    .registers 4
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 1960
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move v0, p1

    goto :goto_d

    :cond_6
    cmpl-float v0, p0, p2

    if-lez v0, :cond_c

    move v0, p2

    goto :goto_d

    :cond_c
    move v0, p0

    :goto_d
    return v0
.end method

.method private createColoredBitmap(III)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "iconId"    # I
    .param p2, "color"    # I
    .param p3, "size"    # I

    .line 1893
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1894
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez p3, :cond_13

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_14

    :cond_13
    move v1, p3

    .line 1895
    .local v1, "width":I
    :goto_14
    if-nez p3, :cond_1b

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_1c

    :cond_1b
    move v2, p3

    .line 1896
    .local v2, "height":I
    :goto_1c
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1897
    .local v3, "resultBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1898
    if-eqz p2, :cond_36

    .line 1899
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, p2, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1902
    :cond_36
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1903
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1904
    return-object v3
.end method

.method private createIconWithBackground(IIII)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "iconId"    # I
    .param p2, "size"    # I
    .param p3, "iconSize"    # I
    .param p4, "color"    # I

    .line 1909
    sget v0, Landroid/support/compat/R$drawable;->notification_icon_background:I

    if-nez p4, :cond_6

    const/4 v1, 0x0

    goto :goto_7

    :cond_6
    move v1, p4

    :goto_7
    invoke-direct {p0, v0, v1, p2}, Landroid/support/v4/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1911
    .local v0, "coloredBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1912
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1913
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 1914
    sub-int v3, p2, p3

    div-int/lit8 v3, v3, 0x2

    .line 1915
    .local v3, "inset":I
    add-int v4, p3, v3

    add-int v5, p3, v3

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1916
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/4 v5, -0x1

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1917
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1918
    return-object v0
.end method

.method private hideNormalContent(Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "outerView"    # Landroid/widget/RemoteViews;

    .line 1941
    sget v0, Landroid/support/compat/R$id;->title:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1942
    sget v0, Landroid/support/compat/R$id;->text2:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1943
    sget v0, Landroid/support/compat/R$id;->text:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1944
    return-void
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1726
    return-void
.end method

.method public apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V
    .registers 2
    .param p1, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;

    .line 1694
    return-void
.end method

.method public applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;
    .registers 23
    .param p1, "showSmallIcon"    # Z
    .param p2, "resId"    # I
    .param p3, "fitIn1U"    # Z

    .line 1742
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1743
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move/from16 v4, p2

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1744
    .local v2, "contentView":Landroid/widget/RemoteViews;
    const/4 v3, 0x0

    .line 1745
    .local v3, "showLine3":Z
    const/4 v5, 0x0

    .line 1747
    .local v5, "showLine2":Z
    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I

    move-result v6

    const/4 v7, -0x1

    const/4 v12, 0x0

    if-ge v6, v7, :cond_27

    const/4 v6, 0x1

    goto :goto_28

    :cond_27
    const/4 v6, 0x0

    :goto_28
    move v13, v6

    .line 1748
    .local v13, "minPriority":Z
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    const/16 v14, 0x10

    if-lt v6, v14, :cond_56

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v8, :cond_56

    .line 1750
    const-string v6, "setBackgroundResource"

    if-eqz v13, :cond_48

    .line 1751
    sget v9, Landroid/support/compat/R$id;->notification_background:I

    sget v10, Landroid/support/compat/R$drawable;->notification_bg_low:I

    invoke-virtual {v2, v9, v6, v10}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1753
    sget v9, Landroid/support/compat/R$id;->icon:I

    sget v10, Landroid/support/compat/R$drawable;->notification_template_icon_low_bg:I

    invoke-virtual {v2, v9, v6, v10}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_56

    .line 1756
    :cond_48
    sget v9, Landroid/support/compat/R$id;->notification_background:I

    sget v10, Landroid/support/compat/R$drawable;->notification_bg:I

    invoke-virtual {v2, v9, v6, v10}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1758
    sget v9, Landroid/support/compat/R$id;->icon:I

    sget v10, Landroid/support/compat/R$drawable;->notification_template_icon_bg:I

    invoke-virtual {v2, v9, v6, v10}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1763
    :cond_56
    :goto_56
    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    const/16 v15, 0x8

    if-eqz v6, :cond_bf

    .line 1766
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v14, :cond_71

    .line 1767
    sget v6, Landroid/support/compat/R$id;->icon:I

    invoke-virtual {v2, v6, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1768
    sget v6, Landroid/support/compat/R$id;->icon:I

    iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v9, v9, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_76

    .line 1770
    :cond_71
    sget v6, Landroid/support/compat/R$id;->icon:I

    invoke-virtual {v2, v6, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1772
    :goto_76
    if-eqz p1, :cond_10a

    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    if-eqz v6, :cond_10a

    .line 1773
    sget v6, Landroid/support/compat/R$dimen;->notification_right_icon_size:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1775
    .local v6, "backgroundSize":I
    sget v9, Landroid/support/compat/R$dimen;->notification_small_icon_background_padding:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v6, v9

    .line 1777
    .local v9, "iconSize":I
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v8, :cond_aa

    .line 1778
    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1782
    invoke-virtual {v10}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v10

    .line 1778
    invoke-direct {v0, v7, v6, v9, v10}, Landroid/support/v4/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1783
    .local v7, "smallBit":Landroid/graphics/Bitmap;
    sget v10, Landroid/support/compat/R$id;->right_icon:I

    invoke-virtual {v2, v10, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1784
    .end local v7    # "smallBit":Landroid/graphics/Bitmap;
    goto :goto_b9

    .line 1785
    :cond_aa
    sget v10, Landroid/support/compat/R$id;->right_icon:I

    iget-object v11, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v11, v11, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v11, v11, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v11, v7}, Landroid/support/v4/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v10, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1788
    :goto_b9
    sget v7, Landroid/support/compat/R$id;->right_icon:I

    invoke-virtual {v2, v7, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1789
    .end local v6    # "backgroundSize":I
    .end local v9    # "iconSize":I
    goto :goto_10a

    .line 1790
    :cond_bf
    if-eqz p1, :cond_10a

    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    if-eqz v6, :cond_10a

    .line 1791
    sget v6, Landroid/support/compat/R$id;->icon:I

    invoke-virtual {v2, v6, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1792
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v8, :cond_fb

    .line 1793
    sget v6, Landroid/support/compat/R$dimen;->notification_large_icon_width:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Landroid/support/compat/R$dimen;->notification_big_circle_margin:I

    .line 1795
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    .line 1796
    .restart local v6    # "backgroundSize":I
    sget v7, Landroid/support/compat/R$dimen;->notification_small_icon_size_as_large:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1798
    .local v7, "iconSize":I
    iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v9, v9, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v9, v9, Landroid/app/Notification;->icon:I

    iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1802
    invoke-virtual {v10}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v10

    .line 1798
    invoke-direct {v0, v9, v6, v7, v10}, Landroid/support/v4/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1803
    .local v9, "smallBit":Landroid/graphics/Bitmap;
    sget v10, Landroid/support/compat/R$id;->icon:I

    invoke-virtual {v2, v10, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1804
    .end local v6    # "backgroundSize":I
    .end local v7    # "iconSize":I
    .end local v9    # "smallBit":Landroid/graphics/Bitmap;
    goto :goto_10a

    .line 1805
    :cond_fb
    sget v6, Landroid/support/compat/R$id;->icon:I

    iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v9, v9, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v9, v9, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v9, v7}, Landroid/support/v4/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1809
    :cond_10a
    :goto_10a
    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v6, :cond_119

    .line 1810
    sget v6, Landroid/support/compat/R$id;->title:I

    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1812
    :cond_119
    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_129

    .line 1813
    sget v6, Landroid/support/compat/R$id;->text:I

    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1814
    const/4 v3, 0x1

    .line 1817
    :cond_129
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v8, :cond_135

    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_135

    const/4 v6, 0x1

    goto :goto_136

    :cond_135
    const/4 v6, 0x0

    .line 1818
    .local v6, "hasRightSide":Z
    :goto_136
    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v7, :cond_14e

    .line 1819
    sget v7, Landroid/support/compat/R$id;->info:I

    iget-object v8, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v8, v8, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1820
    sget v7, Landroid/support/compat/R$id;->info:I

    invoke-virtual {v2, v7, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1821
    const/4 v3, 0x1

    .line 1822
    const/4 v6, 0x1

    move v11, v6

    goto :goto_18d

    .line 1823
    :cond_14e
    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget v7, v7, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    if-lez v7, :cond_187

    .line 1824
    sget v7, Landroid/support/compat/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1826
    .local v7, "tooBig":I
    iget-object v8, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget v8, v8, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    if-le v8, v7, :cond_16c

    .line 1827
    sget v8, Landroid/support/compat/R$id;->info:I

    sget v9, Landroid/support/compat/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_17e

    .line 1830
    :cond_16c
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v8

    .line 1831
    .local v8, "f":Ljava/text/NumberFormat;
    sget v9, Landroid/support/compat/R$id;->info:I

    iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget v10, v10, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1833
    .end local v8    # "f":Ljava/text/NumberFormat;
    :goto_17e
    sget v8, Landroid/support/compat/R$id;->info:I

    invoke-virtual {v2, v8, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1834
    const/4 v3, 0x1

    .line 1835
    const/4 v6, 0x1

    .line 1836
    .end local v7    # "tooBig":I
    move v11, v6

    goto :goto_18d

    .line 1837
    :cond_187
    sget v7, Landroid/support/compat/R$id;->info:I

    invoke-virtual {v2, v7, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v11, v6

    .line 1841
    .end local v6    # "hasRightSide":Z
    .local v11, "hasRightSide":Z
    :goto_18d
    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1bd

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v14, :cond_1bd

    .line 1842
    sget v6, Landroid/support/compat/R$id;->text:I

    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1843
    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1b8

    .line 1844
    sget v6, Landroid/support/compat/R$id;->text2:I

    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1845
    sget v6, Landroid/support/compat/R$id;->text2:I

    invoke-virtual {v2, v6, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1846
    const/4 v5, 0x1

    move/from16 v16, v5

    goto :goto_1bf

    .line 1848
    :cond_1b8
    sget v6, Landroid/support/compat/R$id;->text2:I

    invoke-virtual {v2, v6, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1854
    :cond_1bd
    move/from16 v16, v5

    .end local v5    # "showLine2":Z
    .local v16, "showLine2":Z
    :goto_1bf
    if-eqz v16, :cond_1dd

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v14, :cond_1dd

    .line 1855
    if-eqz p3, :cond_1d3

    .line 1857
    sget v5, Landroid/support/compat/R$dimen;->notification_subtext_size:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 1859
    .local v5, "subTextSize":F
    sget v6, Landroid/support/compat/R$id;->text:I

    invoke-virtual {v2, v6, v12, v5}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 1863
    .end local v5    # "subTextSize":F
    :cond_1d3
    sget v6, Landroid/support/compat/R$id;->line1:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 1866
    :cond_1dd
    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_22c

    .line 1867
    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-boolean v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    if-eqz v5, :cond_219

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v14, :cond_219

    .line 1868
    sget v5, Landroid/support/compat/R$id;->chronometer:I

    invoke-virtual {v2, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1869
    sget v5, Landroid/support/compat/R$id;->chronometer:I

    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1870
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v6

    .line 1871
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v8, v8, v17

    add-long/2addr v6, v8

    .line 1869
    const-string v8, "setBase"

    invoke-virtual {v2, v5, v8, v6, v7}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1872
    sget v5, Landroid/support/compat/R$id;->chronometer:I

    const-string v6, "setStarted"

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v6, v7}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_22b

    .line 1874
    :cond_219
    sget v5, Landroid/support/compat/R$id;->time:I

    invoke-virtual {v2, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1875
    sget v5, Landroid/support/compat/R$id;->time:I

    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v6

    const-string v8, "setTime"

    invoke-virtual {v2, v5, v8, v6, v7}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1877
    :goto_22b
    const/4 v11, 0x1

    .line 1879
    :cond_22c
    sget v5, Landroid/support/compat/R$id;->right_side:I

    if-eqz v11, :cond_232

    const/4 v6, 0x0

    goto :goto_234

    :cond_232
    const/16 v6, 0x8

    :goto_234
    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1880
    sget v5, Landroid/support/compat/R$id;->line3:I

    if-eqz v3, :cond_23c

    goto :goto_23e

    :cond_23c
    const/16 v12, 0x8

    :goto_23e
    invoke-virtual {v2, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1881
    return-object v2
.end method

.method public build()Landroid/app/Notification;
    .registers 3

    .line 1678
    const/4 v0, 0x0

    .line 1679
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v1, :cond_9

    .line 1680
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1682
    :cond_9
    return-object v0
.end method

.method public buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 11
    .param p1, "outerView"    # Landroid/widget/RemoteViews;
    .param p2, "innerView"    # Landroid/widget/RemoteViews;

    .line 1929
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationCompat$Style;->hideNormalContent(Landroid/widget/RemoteViews;)V

    .line 1930
    sget v0, Landroid/support/compat/R$id;->notification_main_column:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1931
    sget v0, Landroid/support/compat/R$id;->notification_main_column:I

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1932
    sget v0, Landroid/support/compat/R$id;->notification_main_column:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1933
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2a

    .line 1935
    sget v3, Landroid/support/compat/R$id;->notification_main_column_container:I

    const/4 v4, 0x0

    .line 1936
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;->calculateTopPadding()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1935
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 1938
    :cond_2a
    return-void
.end method

.method public createColoredBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "iconId"    # I
    .param p2, "color"    # I

    .line 1889
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public makeBigContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 3
    .param p1, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;

    .line 1709
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 3
    .param p1, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;

    .line 1701
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeHeadsUpContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 3
    .param p1, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;

    .line 1717
    const/4 v0, 0x0

    return-object v0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1734
    return-void
.end method

.method public setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1669
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eq v0, p1, :cond_b

    .line 1670
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1671
    if-eqz p1, :cond_b

    .line 1672
    invoke-virtual {p1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1675
    :cond_b
    return-void
.end method
