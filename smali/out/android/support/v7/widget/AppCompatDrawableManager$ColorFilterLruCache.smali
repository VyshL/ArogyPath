.class Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;
.super Landroid/support/v4/util/LruCache;
.source "AppCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatDrawableManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorFilterLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/PorterDuffColorFilter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "maxSize"    # I

    .line 673
    invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 674
    return-void
.end method

.method private static generateCacheKey(ILandroid/graphics/PorterDuff$Mode;)I
    .registers 5
    .param p0, "color"    # I
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 685
    const/4 v0, 0x1

    .line 686
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, p0

    .line 687
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 688
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    return v0
.end method


# virtual methods
.method get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 4
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 677
    invoke-static {p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->generateCacheKey(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method

.method put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;
    .param p3, "filter"    # Landroid/graphics/PorterDuffColorFilter;

    .line 681
    invoke-static {p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->generateCacheKey(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method
