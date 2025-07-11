.class public final Landroid/support/v4/view/MenuItemCompat;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;
    }
.end annotation


# static fields
.field public static final SHOW_AS_ACTION_ALWAYS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_IF_ROOM:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_NEVER:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_WITH_TEXT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MenuItemCompat"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapseActionView(Landroid/view/MenuItem;)Z
    .registers 2
    .param p0, "item"    # Landroid/view/MenuItem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    invoke-interface {p0}, Landroid/view/MenuItem;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public static expandActionView(Landroid/view/MenuItem;)Z
    .registers 2
    .param p0, "item"    # Landroid/view/MenuItem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public static getActionProvider(Landroid/view/MenuItem;)Landroid/support/v4/view/ActionProvider;
    .registers 3
    .param p0, "item"    # Landroid/view/MenuItem;

    .line 224
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_c

    .line 225
    move-object v0, p0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v0}, Landroid/support/v4/internal/view/SupportMenuItem;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v0

    return-object v0

    .line 229
    :cond_c
    const-string v0, "MenuItemCompat"

    const-string v1, "getActionProvider: item does not implement SupportMenuItem; returning null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 2
    .param p0, "item"    # Landroid/view/MenuItem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    invoke-interface {p0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getAlphabeticModifiers(Landroid/view/MenuItem;)I
    .registers 3
    .param p0, "item"    # Landroid/view/MenuItem;

    .line 481
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_c

    .line 482
    move-object v0, p0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v0}, Landroid/support/v4/internal/view/SupportMenuItem;->getAlphabeticModifiers()I

    move-result v0

    return v0

    .line 484
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_17

    .line 485
    invoke-interface {p0}, Landroid/view/MenuItem;->getAlphabeticModifiers()I

    move-result v0

    return v0

    .line 487
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static getContentDescription(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "item"    # Landroid/view/MenuItem;

    .line 335
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_c

    .line 336
    move-object v0, p0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v0}, Landroid/support/v4/internal/view/SupportMenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 338
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_17

    .line 339
    invoke-interface {p0}, Landroid/view/MenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 341
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIconTintList(Landroid/view/MenuItem;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p0, "item"    # Landroid/view/MenuItem;

    .line 515
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_c

    .line 516
    move-object v0, p0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v0}, Landroid/support/v4/internal/view/SupportMenuItem;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 518
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_17

    .line 519
    invoke-interface {p0}, Landroid/view/MenuItem;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 521
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIconTintMode(Landroid/view/MenuItem;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p0, "item"    # Landroid/view/MenuItem;

    .line 548
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_c

    .line 549
    move-object v0, p0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v0}, Landroid/support/v4/internal/view/SupportMenuItem;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 551
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_17

    .line 552
    invoke-interface {p0}, Landroid/view/MenuItem;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 554
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNumericModifiers(Landroid/view/MenuItem;)I
    .registers 3
    .param p0, "item"    # Landroid/view/MenuItem;

    .line 436
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_c

    .line 437
    move-object v0, p0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v0}, Landroid/support/v4/internal/view/SupportMenuItem;->getNumericModifiers()I

    move-result v0

    return v0

    .line 439
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_17

    .line 440
    invoke-interface {p0}, Landroid/view/MenuItem;->getNumericModifiers()I

    move-result v0

    return v0

    .line 442
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static getTooltipText(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "item"    # Landroid/view/MenuItem;

    .line 364
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_c

    .line 365
    move-object v0, p0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v0}, Landroid/support/v4/internal/view/SupportMenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 367
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_17

    .line 368
    invoke-interface {p0}, Landroid/view/MenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 370
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isActionViewExpanded(Landroid/view/MenuItem;)Z
    .registers 2
    .param p0, "item"    # Landroid/view/MenuItem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    invoke-interface {p0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public static setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 4
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "provider"    # Landroid/support/v4/view/ActionProvider;

    .line 207
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_c

    .line 208
    move-object v0, p0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0

    .line 211
    :cond_c
    const-string v0, "MenuItemCompat"

    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-object p0
.end method

.method public static setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .registers 3
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static setAlphabeticShortcut(Landroid/view/MenuItem;CI)V
    .registers 5
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "alphaChar"    # C
    .param p2, "alphaModifiers"    # I

    .line 463
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 464
    move-object v0, p0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/internal/view/SupportMenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_14

    .line 465
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    .line 466
    invoke-interface {p0, p1, p2}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 468
    :cond_14
    :goto_14
    return-void
.end method

.method public static setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .registers 4
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 322
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 323
    move-object v0, p0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;

    goto :goto_14

    .line 324
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    .line 325
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 327
    :cond_14
    :goto_14
    return-void
.end method

.method public static setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 503
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 504
    move-object v0, p0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_14

    .line 505
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    .line 506
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 508
    :cond_14
    :goto_14
    return-void
.end method

.method public static setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 534
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 535
    move-object v0, p0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_14

    .line 536
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    .line 537
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 539
    :cond_14
    :goto_14
    return-void
.end method

.method public static setNumericShortcut(Landroid/view/MenuItem;CI)V
    .registers 5
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "numericChar"    # C
    .param p2, "numericModifiers"    # I

    .line 418
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 419
    move-object v0, p0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/internal/view/SupportMenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_14

    .line 420
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    .line 421
    invoke-interface {p0, p1, p2}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 423
    :cond_14
    :goto_14
    return-void
.end method

.method public static setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 3
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "listener"    # Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    new-instance v0, Landroid/support/v4/view/MenuItemCompat$1;

    invoke-direct {v0, p1}, Landroid/support/v4/view/MenuItemCompat$1;-><init>(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)V

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static setShortcut(Landroid/view/MenuItem;CCII)V
    .registers 7
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C
    .param p3, "numericModifiers"    # I
    .param p4, "alphaModifiers"    # I

    .line 397
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 398
    move-object v0, p0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v4/internal/view/SupportMenuItem;->setShortcut(CCII)Landroid/view/MenuItem;

    goto :goto_14

    .line 400
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    .line 401
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/MenuItem;->setShortcut(CCII)Landroid/view/MenuItem;

    .line 403
    :cond_14
    :goto_14
    return-void
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .registers 2
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "actionEnum"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 136
    return-void
.end method

.method public static setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .registers 4
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 351
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 352
    move-object v0, p0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;

    goto :goto_14

    .line 353
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    .line 354
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 356
    :cond_14
    :goto_14
    return-void
.end method
