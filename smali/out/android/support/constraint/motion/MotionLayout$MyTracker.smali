.class Landroid/support/constraint/motion/MotionLayout$MyTracker;
.super Ljava/lang/Object;
.source "MotionLayout.java"

# interfaces
.implements Landroid/support/constraint/motion/MotionLayout$MotionTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTracker"
.end annotation


# static fields
.field private static me:Landroid/support/constraint/motion/MotionLayout$MyTracker;


# instance fields
.field tracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1071
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$MyTracker;

    invoke-direct {v0}, Landroid/support/constraint/motion/MotionLayout$MyTracker;-><init>()V

    sput-object v0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->me:Landroid/support/constraint/motion/MotionLayout$MyTracker;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Landroid/support/constraint/motion/MotionLayout$MyTracker;
    .registers 2

    .line 1074
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->me:Landroid/support/constraint/motion/MotionLayout$MyTracker;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    .line 1075
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->me:Landroid/support/constraint/motion/MotionLayout$MyTracker;

    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1095
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 1096
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1098
    :cond_7
    return-void
.end method

.method public clear()V
    .registers 2

    .line 1088
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 1089
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1091
    :cond_7
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .registers 3
    .param p1, "units"    # I

    .line 1102
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 1103
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1105
    :cond_7
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .registers 4
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # F

    .line 1109
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 1110
    invoke-virtual {v0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1112
    :cond_7
    return-void
.end method

.method public getXVelocity()F
    .registers 2

    .line 1116
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 1117
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0

    .line 1119
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getXVelocity(I)F
    .registers 3
    .param p1, "id"    # I

    .line 1132
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 1133
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0

    .line 1135
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getYVelocity()F
    .registers 2

    .line 1124
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 1125
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0

    .line 1127
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getYVelocity(I)F
    .registers 3
    .param p1, "id"    # I

    .line 1140
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 1141
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout$MyTracker;->getYVelocity(I)F

    move-result v0

    return v0

    .line 1143
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .registers 2

    .line 1080
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 1081
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1082
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    .line 1084
    :cond_a
    return-void
.end method
