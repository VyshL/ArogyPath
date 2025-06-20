.class Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;
.super Landroid/support/constraint/motion/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressSet"
.end annotation


# instance fields
.field mNoMethod:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 389
    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet;-><init>()V

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->mNoMethod:Z

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z
    .registers 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroid/support/constraint/motion/KeyCache;

    .line 394
    move-object v7, p0

    move-object v8, p1

    const-string v9, "unable to setProgress"

    const-string v10, "SplineSet"

    instance-of v0, v8, Landroid/support/constraint/motion/MotionLayout;

    if-eqz v0, :cond_1c

    .line 395
    move-object v0, v8

    check-cast v0, Landroid/support/constraint/motion/MotionLayout;

    move-object v1, p0

    move v2, p2

    move-wide/from16 v3, p3

    move-object v5, p1

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->get(FJLandroid/view/View;Landroid/support/constraint/motion/KeyCache;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    goto :goto_5d

    .line 397
    :cond_1c
    iget-boolean v0, v7, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->mNoMethod:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_22

    .line 398
    return v11

    .line 400
    :cond_22
    const/4 v1, 0x0

    .line 402
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    :try_start_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setProgress"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v11

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_34} :catch_37

    move-object v1, v0

    .line 405
    move-object v12, v1

    goto :goto_3b

    .line 403
    :catch_37
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    iput-boolean v2, v7, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->mNoMethod:Z

    move-object v12, v1

    .line 406
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .local v12, "method":Ljava/lang/reflect/Method;
    :goto_3b
    if-eqz v12, :cond_5d

    .line 408
    :try_start_3d
    new-array v0, v2, [Ljava/lang/Object;

    move-object v1, p0

    move v2, p2

    move-wide/from16 v3, p3

    move-object v5, p1

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->get(FJLandroid/view/View;Landroid/support/constraint/motion/KeyCache;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-virtual {v12, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_3d .. :try_end_53} :catch_59
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3d .. :try_end_53} :catch_54

    goto :goto_5d

    .line 411
    :catch_54
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d

    .line 409
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_59
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v12    # "method":Ljava/lang/reflect/Method;
    :cond_5d
    :goto_5d
    iget-boolean v0, v7, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;->mContinue:Z

    return v0
.end method
