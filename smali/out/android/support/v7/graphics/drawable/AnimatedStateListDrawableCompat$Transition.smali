.class abstract Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
.super Ljava/lang/Object;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Transition"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$1;

    .line 352
    invoke-direct {p0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;-><init>()V

    return-void
.end method


# virtual methods
.method public canReverse()Z
    .registers 2

    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public reverse()V
    .registers 1

    .line 359
    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
