.class Landroid/support/constraint/motion/MotionLayout$StateCache;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateCache"
.end annotation


# instance fields
.field final KeyEndState:Ljava/lang/String;

.field final KeyProgress:Ljava/lang/String;

.field final KeyStartState:Ljava/lang/String;

.field final KeyVelocity:Ljava/lang/String;

.field endState:I

.field mProgress:F

.field mVelocity:F

.field startState:I

.field final synthetic this$0:Landroid/support/constraint/motion/MotionLayout;


# direct methods
.method constructor <init>(Landroid/support/constraint/motion/MotionLayout;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 1362
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1363
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    .line 1364
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mVelocity:F

    .line 1365
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->startState:I

    .line 1366
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    .line 1367
    const-string v0, "motion.progress"

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->KeyProgress:Ljava/lang/String;

    .line 1368
    const-string v0, "motion.velocity"

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->KeyVelocity:Ljava/lang/String;

    .line 1369
    const-string v0, "motion.StartState"

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->KeyStartState:Ljava/lang/String;

    .line 1370
    const-string v0, "motion.EndState"

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->KeyEndState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method apply()V
    .registers 5

    .line 1373
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->startState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    if-eq v2, v1, :cond_29

    .line 1374
    :cond_9
    if-ne v0, v1, :cond_13

    .line 1375
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->transitionToState(I)V

    goto :goto_22

    .line 1376
    :cond_13
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    if-ne v2, v1, :cond_1d

    .line 1377
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2, v0, v1, v1}, Landroid/support/constraint/motion/MotionLayout;->setState(III)V

    goto :goto_22

    .line 1379
    :cond_1d
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v3, v0, v2}, Landroid/support/constraint/motion/MotionLayout;->setTransition(II)V

    .line 1381
    :goto_22
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    sget-object v2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1383
    :cond_29
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1384
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1385
    return-void

    .line 1387
    :cond_3a
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 1388
    return-void

    .line 1390
    :cond_42
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mVelocity:F

    invoke-virtual {v0, v2, v3}, Landroid/support/constraint/motion/MotionLayout;->setProgress(FF)V

    .line 1391
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    .line 1392
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mVelocity:F

    .line 1393
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->startState:I

    .line 1394
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    .line 1395
    return-void
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .registers 4

    .line 1398
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1399
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    const-string v2, "motion.progress"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1400
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mVelocity:F

    const-string v2, "motion.velocity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1401
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->startState:I

    const-string v2, "motion.StartState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1402
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    const-string v2, "motion.EndState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1403
    return-object v0
.end method

.method public recordState()V
    .registers 2

    .line 1430
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$000(Landroid/support/constraint/motion/MotionLayout;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    .line 1431
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionLayout;->access$100(Landroid/support/constraint/motion/MotionLayout;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->startState:I

    .line 1432
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getVelocity()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mVelocity:F

    .line 1433
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->this$0:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    .line 1434
    return-void
.end method

.method public setEndState(I)V
    .registers 2
    .param p1, "endState"    # I

    .line 1418
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    .line 1419
    return-void
.end method

.method public setProgress(F)V
    .registers 2
    .param p1, "progress"    # F

    .line 1414
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    .line 1415
    return-void
.end method

.method public setStartState(I)V
    .registers 2
    .param p1, "startState"    # I

    .line 1426
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->startState:I

    .line 1427
    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1407
    const-string v0, "motion.progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mProgress:F

    .line 1408
    const-string v0, "motion.velocity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mVelocity:F

    .line 1409
    const-string v0, "motion.StartState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->startState:I

    .line 1410
    const-string v0, "motion.EndState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->endState:I

    .line 1411
    return-void
.end method

.method public setVelocity(F)V
    .registers 2
    .param p1, "mVelocity"    # F

    .line 1422
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout$StateCache;->mVelocity:F

    .line 1423
    return-void
.end method
