.class Landroid/support/v7/widget/CardViewApi17Impl;
.super Landroid/support/v7/widget/CardViewBaseImpl;
.source "CardViewApi17Impl.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/CardViewBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public initStatic()V
    .registers 2

    .line 29
    new-instance v0, Landroid/support/v7/widget/CardViewApi17Impl$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/CardViewApi17Impl$1;-><init>(Landroid/support/v7/widget/CardViewApi17Impl;)V

    sput-object v0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 37
    return-void
.end method
