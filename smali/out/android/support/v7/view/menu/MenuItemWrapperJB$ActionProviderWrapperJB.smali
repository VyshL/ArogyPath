.class Landroid/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
.super Landroid/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
.source "MenuItemWrapperJB.java"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/MenuItemWrapperJB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionProviderWrapperJB"
.end annotation


# instance fields
.field mListener:Landroid/support/v4/view/ActionProvider$VisibilityListener;

.field final synthetic this$0:Landroid/support/v7/view/menu/MenuItemWrapperJB;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/MenuItemWrapperJB;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .registers 4
    .param p1, "this$0"    # Landroid/support/v7/view/menu/MenuItemWrapperJB;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "inner"    # Landroid/view/ActionProvider;

    .line 51
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->this$0:Landroid/support/v7/view/menu/MenuItemWrapperJB;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;-><init>(Landroid/support/v7/view/menu/MenuItemWrapperICS;Landroid/content/Context;Landroid/view/ActionProvider;)V

    .line 53
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .registers 3
    .param p1, "isVisible"    # Z

    .line 83
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mListener:Landroid/support/v4/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_7

    .line 84
    invoke-interface {v0, p1}, Landroid/support/v4/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    .line 86
    :cond_7
    return-void
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 3
    .param p1, "forItem"    # Landroid/view/MenuItem;

    .line 57
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public overridesItemVisibility()Z
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public refreshVisibility()V
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->refreshVisibility()V

    .line 73
    return-void
.end method

.method public setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/support/v4/view/ActionProvider$VisibilityListener;

    .line 77
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mListener:Landroid/support/v4/view/ActionProvider$VisibilityListener;

    .line 78
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    if-eqz p1, :cond_8

    move-object v1, p0

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    .line 79
    return-void
.end method
