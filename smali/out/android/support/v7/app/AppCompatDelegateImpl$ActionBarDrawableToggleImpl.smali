.class Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarDrawableToggleImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .registers 2

    .line 2732
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2733
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .registers 2

    .line 2746
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 2737
    nop

    .line 2738
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Landroid/support/v7/appcompat/R$attr;->homeAsUpIndicator:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2737
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 2739
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2740
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 2741
    return-object v1
.end method

.method public isNavigationVisible()Z
    .registers 3

    .line 2751
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 2752
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public setActionBarDescription(I)V
    .registers 3
    .param p1, "contentDescRes"    # I

    .line 2766
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 2767
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_b

    .line 2768
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 2770
    :cond_b
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .registers 4
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .line 2757
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 2758
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_e

    .line 2759
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 2760
    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 2762
    :cond_e
    return-void
.end method
