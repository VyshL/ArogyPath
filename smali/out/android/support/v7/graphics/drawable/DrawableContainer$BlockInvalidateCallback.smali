.class Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;
.super Ljava/lang/Object;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/drawable/DrawableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BlockInvalidateCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1189
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 1193
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_7

    .line 1194
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 1196
    :cond_7
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 1200
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_7

    .line 1201
    invoke-interface {v0, p1, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 1203
    :cond_7
    return-void
.end method

.method public unwrap()Landroid/graphics/drawable/Drawable$Callback;
    .registers 3

    .line 1181
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 1182
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 1183
    return-object v0
.end method

.method public wrap(Landroid/graphics/drawable/Drawable$Callback;)Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;
    .registers 2
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;

    .line 1176
    iput-object p1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 1177
    return-object p0
.end method
