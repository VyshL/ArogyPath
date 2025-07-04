.class public Landroid/support/v7/widget/FitWindowsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FitWindowsFrameLayout.java"

# interfaces
.implements Landroid/support/v7/widget/FitWindowsViewGroup;


# instance fields
.field private mListener:Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 51
    iget-object v0, p0, Landroid/support/v7/widget/FitWindowsFrameLayout;->mListener:Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    if-eqz v0, :cond_7

    .line 52
    invoke-interface {v0, p1}, Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;->onFitSystemWindows(Landroid/graphics/Rect;)V

    .line 54
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setOnFitSystemWindowsListener(Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    .line 46
    iput-object p1, p0, Landroid/support/v7/widget/FitWindowsFrameLayout;->mListener:Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    .line 47
    return-void
.end method
