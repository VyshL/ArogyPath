.class final Landroid/support/v4/provider/FontsContractCompat$4;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/provider/FontsContractCompat;->requestFont(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

.field final synthetic val$callerThreadHandler:Landroid/os/Handler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$request:Landroid/support/v4/provider/FontRequest;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/os/Handler;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V
    .registers 5

    .line 533
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$request:Landroid/support/v4/provider/FontRequest;

    iput-object p3, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 539
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$request:Landroid/support/v4/provider/FontRequest;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/support/v4/provider/FontsContractCompat;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/support/v4/provider/FontRequest;)Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_96

    .line 549
    .local v0, "result":Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
    nop

    .line 551
    invoke-virtual {v0}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v1

    if-eqz v1, :cond_38

    .line 552
    invoke-virtual {v0}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v1

    packed-switch v1, :pswitch_data_a2

    .line 573
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/v4/provider/FontsContractCompat$4$4;

    invoke-direct {v2, p0}, Landroid/support/v4/provider/FontsContractCompat$4$4;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 580
    return-void

    .line 563
    :pswitch_22
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/v4/provider/FontsContractCompat$4$3;

    invoke-direct {v2, p0}, Landroid/support/v4/provider/FontsContractCompat$4$3;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 570
    return-void

    .line 554
    :pswitch_2d
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/v4/provider/FontsContractCompat$4$2;

    invoke-direct {v2, p0}, Landroid/support/v4/provider/FontsContractCompat$4$2;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 561
    return-void

    .line 584
    :cond_38
    invoke-virtual {v0}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object v1

    .line 585
    .local v1, "fonts":[Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    if-eqz v1, :cond_8b

    array-length v3, v1

    if-nez v3, :cond_42

    goto :goto_8b

    .line 595
    :cond_42
    array-length v3, v1

    const/4 v4, 0x0

    :goto_44
    if-ge v4, v3, :cond_6d

    aget-object v5, v1, v4

    .line 596
    .local v5, "font":Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    invoke-virtual {v5}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v6

    if-eqz v6, :cond_6a

    .line 599
    invoke-virtual {v5}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v2

    .line 600
    .local v2, "resultCode":I
    if-gez v2, :cond_5f

    .line 603
    iget-object v3, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v4, Landroid/support/v4/provider/FontsContractCompat$4$6;

    invoke-direct {v4, p0}, Landroid/support/v4/provider/FontsContractCompat$4$6;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_69

    .line 611
    :cond_5f
    iget-object v3, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v4, Landroid/support/v4/provider/FontsContractCompat$4$7;

    invoke-direct {v4, p0, v2}, Landroid/support/v4/provider/FontsContractCompat$4$7;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 618
    :goto_69
    return-void

    .line 595
    .end local v2    # "resultCode":I
    .end local v5    # "font":Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    :cond_6a
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 622
    :cond_6d
    iget-object v3, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$context:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Landroid/support/v4/provider/FontsContractCompat;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 624
    .local v2, "typeface":Landroid/graphics/Typeface;
    if-nez v2, :cond_80

    .line 627
    iget-object v3, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v4, Landroid/support/v4/provider/FontsContractCompat$4$8;

    invoke-direct {v4, p0}, Landroid/support/v4/provider/FontsContractCompat$4$8;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 634
    return-void

    .line 637
    :cond_80
    iget-object v3, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v4, Landroid/support/v4/provider/FontsContractCompat$4$9;

    invoke-direct {v4, p0, v2}, Landroid/support/v4/provider/FontsContractCompat$4$9;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 643
    return-void

    .line 586
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_8b
    :goto_8b
    iget-object v2, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v3, Landroid/support/v4/provider/FontsContractCompat$4$5;

    invoke-direct {v3, p0}, Landroid/support/v4/provider/FontsContractCompat$4$5;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 593
    return-void

    .line 540
    .end local v0    # "result":Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
    .end local v1    # "fonts":[Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    :catch_96
    move-exception v0

    .line 541
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/v4/provider/FontsContractCompat$4$1;

    invoke-direct {v2, p0}, Landroid/support/v4/provider/FontsContractCompat$4$1;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 548
    return-void

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_22
    .end packed-switch
.end method
