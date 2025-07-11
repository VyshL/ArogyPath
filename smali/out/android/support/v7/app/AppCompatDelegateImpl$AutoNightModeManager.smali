.class final Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AutoNightModeManager"
.end annotation


# instance fields
.field private mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

.field private mIsNight:Z

.field private mTwilightManager:Landroid/support/v7/app/TwilightManager;

.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/support/v7/app/TwilightManager;)V
    .registers 4
    .param p1, "this$0"    # Landroid/support/v7/app/AppCompatDelegateImpl;
    .param p2, "twilightManager"    # Landroid/support/v7/app/TwilightManager;

    .line 2673
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2674
    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mTwilightManager:Landroid/support/v7/app/TwilightManager;

    .line 2675
    invoke-virtual {p2}, Landroid/support/v7/app/TwilightManager;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    .line 2676
    return-void
.end method


# virtual methods
.method cleanup()V
    .registers 3

    .line 2719
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_10

    .line 2720
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2721
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2723
    :cond_10
    return-void
.end method

.method dispatchTimeChanged()V
    .registers 3

    .line 2685
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mTwilightManager:Landroid/support/v7/app/TwilightManager;

    invoke-virtual {v0}, Landroid/support/v7/app/TwilightManager;->isNight()Z

    move-result v0

    .line 2686
    .local v0, "isNight":Z
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    if-eq v0, v1, :cond_11

    .line 2687
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    .line 2688
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->applyDayNight()Z

    .line 2690
    :cond_11
    return-void
.end method

.method getApplyableNightMode()I
    .registers 2

    .line 2680
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mTwilightManager:Landroid/support/v7/app/TwilightManager;

    invoke-virtual {v0}, Landroid/support/v7/app/TwilightManager;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    .line 2681
    if-eqz v0, :cond_c

    const/4 v0, 0x2

    goto :goto_d

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method setup()V
    .registers 4

    .line 2693
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    .line 2698
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_e

    .line 2699
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2709
    :cond_e
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_2c

    .line 2710
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    .line 2711
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2712
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2713
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2715
    :cond_2c
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2716
    return-void
.end method
