.class public Landroid/support/v4/app/FrameMetricsAggregator;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;,
        Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;,
        Landroid/support/v4/app/FrameMetricsAggregator$MetricType;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x100

.field public static final ANIMATION_INDEX:I = 0x8

.field public static final COMMAND_DURATION:I = 0x20

.field public static final COMMAND_INDEX:I = 0x5

.field private static final DBG:Z = false

.field public static final DELAY_DURATION:I = 0x80

.field public static final DELAY_INDEX:I = 0x7

.field public static final DRAW_DURATION:I = 0x8

.field public static final DRAW_INDEX:I = 0x3

.field public static final EVERY_DURATION:I = 0x1ff

.field public static final INPUT_DURATION:I = 0x2

.field public static final INPUT_INDEX:I = 0x1

.field private static final LAST_INDEX:I = 0x8

.field public static final LAYOUT_MEASURE_DURATION:I = 0x4

.field public static final LAYOUT_MEASURE_INDEX:I = 0x2

.field public static final SWAP_DURATION:I = 0x40

.field public static final SWAP_INDEX:I = 0x6

.field public static final SYNC_DURATION:I = 0x10

.field public static final SYNC_INDEX:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FrameMetrics"

.field public static final TOTAL_DURATION:I = 0x1

.field public static final TOTAL_INDEX:I


# instance fields
.field private mInstance:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 202
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/FrameMetricsAggregator;-><init>(I)V

    .line 203
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "metricTypeFlags"    # I

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_11

    .line 217
    new-instance v0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-direct {v0, p1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator;->mInstance:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    goto :goto_18

    .line 219
    :cond_11
    new-instance v0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator;->mInstance:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    .line 221
    :goto_18
    return-void
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 229
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator;->mInstance:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->add(Landroid/app/Activity;)V

    .line 230
    return-void
.end method

.method public getMetrics()[Landroid/util/SparseIntArray;
    .registers 2

    .line 304
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator;->mInstance:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->getMetrics()[Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 246
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator;->mInstance:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public reset()[Landroid/util/SparseIntArray;
    .registers 2

    .line 276
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator;->mInstance:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->reset()[Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public stop()[Landroid/util/SparseIntArray;
    .registers 2

    .line 263
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator;->mInstance:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->stop()[Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method
