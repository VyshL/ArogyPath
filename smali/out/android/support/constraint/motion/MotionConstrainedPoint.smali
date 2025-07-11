.class Landroid/support/constraint/motion/MotionConstrainedPoint;
.super Ljava/lang/Object;
.source "MotionConstrainedPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/support/constraint/motion/MotionConstrainedPoint;",
        ">;"
    }
.end annotation


# static fields
.field static final CARTESIAN:I = 0x2

.field public static final DEBUG:Z = false

.field static final PERPENDICULAR:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field static names:[Ljava/lang/String;


# instance fields
.field private alpha:F

.field private applyElevation:Z

.field attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private elevation:F

.field private height:F

.field private mDrawPath:I

.field private mKeyFrameEasing:Landroid/support/constraint/motion/utils/Easing;

.field mMode:I

.field private mPathRotate:F

.field private mPivotX:F

.field private mPivotY:F

.field private mProgress:F

.field mTempDelta:[D

.field mTempValue:[D

.field mVisibilityMode:I

.field private position:F

.field private rotation:F

.field private rotationX:F

.field public rotationY:F

.field private scaleX:F

.field private scaleY:F

.field private translationX:F

.field private translationY:F

.field private translationZ:F

.field visibility:I

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 67
    const-string v0, "position"

    const-string v1, "x"

    const-string v2, "y"

    const-string v3, "width"

    const-string v4, "height"

    const-string v5, "pathRotate"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/constraint/motion/MotionConstrainedPoint;->names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->alpha:F

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mVisibilityMode:I

    .line 43
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->applyElevation:Z

    .line 44
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->elevation:F

    .line 45
    iput v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotation:F

    .line 46
    iput v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationX:F

    .line 47
    iput v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationY:F

    .line 48
    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleX:F

    .line 49
    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleY:F

    .line 50
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotX:F

    .line 51
    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotY:F

    .line 52
    iput v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationX:F

    .line 53
    iput v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationY:F

    .line 54
    iput v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationZ:F

    .line 56
    iput v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mDrawPath:I

    .line 62
    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPathRotate:F

    .line 63
    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mProgress:F

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    .line 70
    iput v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mMode:I

    .line 150
    const/16 v0, 0x12

    new-array v1, v0, [D

    iput-object v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mTempValue:[D

    .line 151
    new-array v0, v0, [D

    iput-object v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mTempDelta:[D

    .line 74
    return-void
.end method

.method private diff(FF)Z
    .registers 7
    .param p1, "a"    # F
    .param p2, "b"    # F

    .line 77
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1f

    .line 80
    :cond_f
    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x358637bd    # 1.0E-6f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1

    .line 78
    :cond_1f
    :goto_1f
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eq v0, v3, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    return v1
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;I)V
    .registers 11
    .param p2, "mFramePosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/motion/SplineSet;",
            ">;I)V"
        }
    .end annotation

    .line 254
    .local p1, "splines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/constraint/motion/SplineSet;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_228

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 255
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/SplineSet;

    .line 259
    .local v2, "splineSet":Landroid/support/constraint/motion/SplineSet;
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_22a

    :cond_23
    goto/16 :goto_ba

    :sswitch_25
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v3, 0x0

    goto/16 :goto_ba

    :sswitch_30
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v3, 0x7

    goto/16 :goto_ba

    :sswitch_3b
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v3, 0x1

    goto/16 :goto_ba

    :sswitch_46
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v3, 0x2

    goto/16 :goto_ba

    :sswitch_51
    const-string v4, "transformPivotY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v3, 0x6

    goto :goto_ba

    :sswitch_5b
    const-string v4, "transformPivotX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v3, 0x5

    goto :goto_ba

    :sswitch_65
    const-string v4, "scaleY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/16 v3, 0xa

    goto :goto_ba

    :sswitch_70
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/16 v3, 0x9

    goto :goto_ba

    :sswitch_7b
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/16 v3, 0x8

    goto :goto_ba

    :sswitch_86
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/16 v3, 0xd

    goto :goto_ba

    :sswitch_91
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/16 v3, 0xc

    goto :goto_ba

    :sswitch_9c
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/16 v3, 0xb

    goto :goto_ba

    :sswitch_a7
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v3, 0x4

    goto :goto_ba

    :sswitch_b1
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v3, 0x3

    :goto_ba
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_264

    .line 303
    const-string v3, "CUSTOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "MotionPaths"

    if-eqz v3, :cond_210

    .line 304
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    .line 305
    .local v3, "customName":Ljava/lang/String;
    iget-object v5, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f9

    .line 306
    iget-object v5, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintAttribute;

    .line 307
    .local v5, "custom":Landroid/support/constraint/ConstraintAttribute;
    instance-of v6, v2, Landroid/support/constraint/motion/SplineSet$CustomSet;

    if-eqz v6, :cond_1cc

    .line 308
    move-object v4, v2

    check-cast v4, Landroid/support/constraint/motion/SplineSet$CustomSet;

    invoke-virtual {v4, p2, v5}, Landroid/support/constraint/motion/SplineSet$CustomSet;->setPoint(ILandroid/support/constraint/ConstraintAttribute;)V

    goto/16 :goto_1f8

    .line 300
    .end local v3    # "customName":Ljava/lang/String;
    .end local v5    # "custom":Landroid/support/constraint/ConstraintAttribute;
    :pswitch_ee
    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationZ:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_f7

    goto :goto_f9

    :cond_f7
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationZ:F

    :goto_f9
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 301
    goto/16 :goto_226

    .line 297
    :pswitch_fe
    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_107

    goto :goto_109

    :cond_107
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationY:F

    :goto_109
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 298
    goto/16 :goto_226

    .line 294
    :pswitch_10e
    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_117

    goto :goto_119

    :cond_117
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationX:F

    :goto_119
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 295
    goto/16 :goto_226

    .line 291
    :pswitch_11e
    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_127

    goto :goto_129

    :cond_127
    iget v4, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleY:F

    :goto_129
    invoke-virtual {v2, p2, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 292
    goto/16 :goto_226

    .line 288
    :pswitch_12e
    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_137

    goto :goto_139

    :cond_137
    iget v4, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleX:F

    :goto_139
    invoke-virtual {v2, p2, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 289
    goto/16 :goto_226

    .line 285
    :pswitch_13e
    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mProgress:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_147

    goto :goto_149

    :cond_147
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mProgress:F

    :goto_149
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 286
    goto/16 :goto_226

    .line 282
    :pswitch_14e
    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_157

    goto :goto_159

    :cond_157
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPathRotate:F

    :goto_159
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 283
    goto/16 :goto_226

    .line 279
    :pswitch_15e
    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_167

    goto :goto_169

    :cond_167
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotY:F

    :goto_169
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 280
    goto/16 :goto_226

    .line 276
    :pswitch_16e
    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_177

    goto :goto_179

    :cond_177
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotX:F

    :goto_179
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 277
    goto/16 :goto_226

    .line 273
    :pswitch_17e
    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_187

    goto :goto_189

    :cond_187
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationY:F

    :goto_189
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 274
    goto/16 :goto_226

    .line 270
    :pswitch_18e
    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_197

    goto :goto_199

    :cond_197
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationX:F

    :goto_199
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 271
    goto/16 :goto_226

    .line 267
    :pswitch_19e
    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotation:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1a7

    goto :goto_1a9

    :cond_1a7
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotation:F

    :goto_1a9
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 268
    goto/16 :goto_226

    .line 264
    :pswitch_1ae
    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->elevation:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1b7

    goto :goto_1b9

    :cond_1b7
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->elevation:F

    :goto_1b9
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 265
    goto :goto_226

    .line 261
    :pswitch_1bd
    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->alpha:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1c6

    goto :goto_1c8

    :cond_1c6
    iget v4, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->alpha:F

    :goto_1c8
    invoke-virtual {v2, p2, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    .line 262
    goto :goto_226

    .line 310
    .restart local v3    # "customName":Ljava/lang/String;
    .restart local v5    # "custom":Landroid/support/constraint/ConstraintAttribute;
    :cond_1cc
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " splineSet not a CustomSet frame = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 311
    invoke-virtual {v5}, Landroid/support/constraint/ConstraintAttribute;->getValueToInterpolate()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 310
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v5    # "custom":Landroid/support/constraint/ConstraintAttribute;
    :goto_1f8
    goto :goto_20f

    .line 317
    :cond_1f9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UNKNOWN customName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v3    # "customName":Ljava/lang/String;
    :goto_20f
    goto :goto_226

    .line 320
    :cond_210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNKNOWN spline "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "splineSet":Landroid/support/constraint/motion/SplineSet;
    :goto_226
    goto/16 :goto_8

    .line 325
    :cond_228
    return-void

    nop

    :sswitch_data_22a
    .sparse-switch
        -0x4a771f66 -> :sswitch_b1
        -0x4a771f65 -> :sswitch_a7
        -0x490b9c39 -> :sswitch_9c
        -0x490b9c38 -> :sswitch_91
        -0x490b9c37 -> :sswitch_86
        -0x3bab3dd3 -> :sswitch_7b
        -0x3621dfb2 -> :sswitch_70
        -0x3621dfb1 -> :sswitch_65
        -0x2d5a2d1e -> :sswitch_5b
        -0x2d5a2d1d -> :sswitch_51
        -0x266f082 -> :sswitch_46
        -0x42d1a3 -> :sswitch_3b
        0x2382115 -> :sswitch_30
        0x589b15e -> :sswitch_25
    .end sparse-switch

    :pswitch_data_264
    .packed-switch 0x0
        :pswitch_1bd
        :pswitch_1ae
        :pswitch_19e
        :pswitch_18e
        :pswitch_17e
        :pswitch_16e
        :pswitch_15e
        :pswitch_14e
        :pswitch_13e
        :pswitch_12e
        :pswitch_11e
        :pswitch_10e
        :pswitch_fe
        :pswitch_ee
    .end packed-switch
.end method

.method public applyParameters(Landroid/support/constraint/ConstraintSet$Constraint;)V
    .registers 8
    .param p1, "c"    # Landroid/support/constraint/ConstraintSet$Constraint;

    .line 223
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->propertySet:Landroid/support/constraint/ConstraintSet$PropertySet;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$PropertySet;->mVisibilityMode:I

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mVisibilityMode:I

    .line 224
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->propertySet:Landroid/support/constraint/ConstraintSet$PropertySet;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$PropertySet;->visibility:I

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->visibility:I

    .line 225
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->propertySet:Landroid/support/constraint/ConstraintSet$PropertySet;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$PropertySet;->visibility:I

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_1c

    :cond_18
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->propertySet:Landroid/support/constraint/ConstraintSet$PropertySet;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$PropertySet;->alpha:F

    :goto_1c
    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->alpha:F

    .line 227
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->applyElevation:Z

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->applyElevation:Z

    .line 228
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->elevation:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->elevation:F

    .line 229
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->rotation:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotation:F

    .line 230
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->rotationX:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationX:F

    .line 231
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->rotationY:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationY:F

    .line 232
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->scaleX:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleX:F

    .line 233
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->scaleY:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleY:F

    .line 234
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->transformPivotX:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotX:F

    .line 235
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->transformPivotY:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotY:F

    .line 236
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->translationX:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationX:F

    .line 237
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->translationY:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationY:F

    .line 238
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->translationZ:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationZ:F

    .line 240
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->motion:Landroid/support/constraint/ConstraintSet$Motion;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroid/support/constraint/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroid/support/constraint/motion/utils/Easing;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mKeyFrameEasing:Landroid/support/constraint/motion/utils/Easing;

    .line 241
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->motion:Landroid/support/constraint/ConstraintSet$Motion;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Motion;->mPathRotate:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPathRotate:F

    .line 242
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->motion:Landroid/support/constraint/ConstraintSet$Motion;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Motion;->mDrawPath:I

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mDrawPath:I

    .line 243
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->propertySet:Landroid/support/constraint/ConstraintSet$PropertySet;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$PropertySet;->mProgress:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mProgress:F

    .line 244
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 245
    .local v0, "at":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintAttribute;

    .line 247
    .local v3, "attr":Landroid/support/constraint/ConstraintAttribute;
    invoke-virtual {v3}, Landroid/support/constraint/ConstraintAttribute;->getType()Landroid/support/constraint/ConstraintAttribute$AttributeType;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    if-eq v4, v5, :cond_ad

    .line 248
    iget-object v4, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "attr":Landroid/support/constraint/ConstraintAttribute;
    :cond_ad
    goto :goto_8c

    .line 251
    :cond_ae
    return-void
.end method

.method public applyParameters(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->visibility:I

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    :goto_12
    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->alpha:F

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->applyElevation:Z

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_23

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->elevation:F

    .line 208
    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotation:F

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationX:F

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationY:F

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleX:F

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleY:F

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotX:F

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotY:F

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationX:F

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationY:F

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_63

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationZ:F

    .line 220
    :cond_63
    return-void
.end method

.method public compareTo(Landroid/support/constraint/motion/MotionConstrainedPoint;)I
    .registers 4
    .param p1, "o"    # Landroid/support/constraint/motion/MotionConstrainedPoint;

    .line 197
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->position:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->position:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 36
    check-cast p1, Landroid/support/constraint/motion/MotionConstrainedPoint;

    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->compareTo(Landroid/support/constraint/motion/MotionConstrainedPoint;)I

    move-result p1

    return p1
.end method

.method different(Landroid/support/constraint/motion/MotionConstrainedPoint;Ljava/util/HashSet;)V
    .registers 7
    .param p1, "points"    # Landroid/support/constraint/motion/MotionConstrainedPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/motion/MotionConstrainedPoint;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p2, "keySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->alpha:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->alpha:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    const-string v1, "alpha"

    if-eqz v0, :cond_f

    .line 91
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_f
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->elevation:F

    iget v2, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->elevation:F

    invoke-direct {p0, v0, v2}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 94
    const-string v0, "elevation"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1e
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->visibility:I

    iget v2, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->visibility:I

    if-eq v0, v2, :cond_2f

    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v3, :cond_2f

    if-eqz v0, :cond_2c

    if-nez v2, :cond_2f

    .line 100
    :cond_2c
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_2f
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotation:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotation:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 103
    const-string v0, "rotation"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_3e
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget v0, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_53

    .line 106
    :cond_4e
    const-string v0, "transitionPathRotate"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_53
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_63

    iget v0, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_68

    .line 109
    :cond_63
    const-string v0, "progress"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_68
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationX:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationX:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 112
    const-string v0, "rotationX"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_77
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationY:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationY:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 115
    const-string v0, "rotationY"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_86
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotX:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotX:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 118
    const-string v0, "transformPivotX"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_95
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotY:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotY:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 121
    const-string v0, "transformPivotY"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_a4
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleX:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleX:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 124
    const-string v0, "scaleX"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_b3
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleY:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleY:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 127
    const-string v0, "scaleY"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_c2
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationX:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationX:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 130
    const-string v0, "translationX"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_d1
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationY:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationY:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 133
    const-string v0, "translationY"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_e0
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationZ:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationZ:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 136
    const-string v0, "translationZ"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_ef
    return-void
.end method

.method different(Landroid/support/constraint/motion/MotionConstrainedPoint;[Z[Ljava/lang/String;)V
    .registers 9
    .param p1, "points"    # Landroid/support/constraint/motion/MotionConstrainedPoint;
    .param p2, "mask"    # [Z
    .param p3, "custom"    # [Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "c":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .local v1, "c":I
    aget-boolean v2, p2, v0

    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->position:F

    iget v4, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->position:F

    invoke-direct {p0, v3, v4}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v0

    .line 143
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    aget-boolean v2, p2, v1

    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->x:F

    iget v4, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->x:F

    invoke-direct {p0, v3, v4}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v1

    .line 144
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    aget-boolean v2, p2, v0

    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->y:F

    iget v4, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->y:F

    invoke-direct {p0, v3, v4}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v0

    .line 145
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    aget-boolean v2, p2, v1

    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->width:F

    iget v4, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->width:F

    invoke-direct {p0, v3, v4}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v1

    .line 146
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    aget-boolean v2, p2, v0

    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->height:F

    iget v4, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->height:F

    invoke-direct {p0, v3, v4}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v0

    .line 148
    return-void
.end method

.method fillStandard([D[I)V
    .registers 9
    .param p1, "data"    # [D
    .param p2, "toUse"    # [I

    .line 154
    const/16 v0, 0x12

    new-array v0, v0, [F

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->position:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->x:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->y:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->width:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->height:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->alpha:F

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->elevation:F

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotation:F

    const/4 v2, 0x7

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationX:F

    const/16 v2, 0x8

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationY:F

    const/16 v2, 0x9

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleX:F

    const/16 v2, 0xa

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleY:F

    const/16 v2, 0xb

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotX:F

    const/16 v2, 0xc

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotY:F

    const/16 v2, 0xd

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationX:F

    const/16 v2, 0xe

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationY:F

    const/16 v2, 0xf

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationZ:F

    const/16 v2, 0x10

    aput v1, v0, v2

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPathRotate:F

    const/16 v2, 0x11

    aput v1, v0, v2

    .line 156
    .local v0, "set":[F
    const/4 v1, 0x0

    .line 157
    .local v1, "c":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6a
    array-length v3, p2

    if-ge v2, v3, :cond_7f

    .line 158
    aget v3, p2, v2

    array-length v4, v0

    if-ge v3, v4, :cond_7c

    .line 159
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "c":I
    .local v3, "c":I
    aget v4, p2, v2

    aget v4, v0, v4

    float-to-double v4, v4

    aput-wide v4, p1, v1

    move v1, v3

    .line 157
    .end local v3    # "c":I
    .restart local v1    # "c":I
    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 162
    .end local v2    # "i":I
    :cond_7f
    return-void
.end method

.method getCustomData(Ljava/lang/String;[DI)I
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [D
    .param p3, "offset"    # I

    .line 173
    iget-object v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintAttribute;

    .line 174
    .local v0, "a":Landroid/support/constraint/ConstraintAttribute;
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintAttribute;->noOfInterpValues()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 175
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintAttribute;->getValueToInterpolate()F

    move-result v1

    float-to-double v3, v1

    aput-wide v3, p2, p3

    .line 176
    return v2

    .line 178
    :cond_17
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintAttribute;->noOfInterpValues()I

    move-result v1

    .line 179
    .local v1, "N":I
    new-array v2, v1, [F

    .line 180
    .local v2, "f":[F
    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintAttribute;->getValuesToInterpolate([F)V

    .line 181
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v1, :cond_2e

    .line 182
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "offset":I
    .local v4, "offset":I
    aget v5, v2, v3

    float-to-double v5, v5

    aput-wide v5, p2, p3

    .line 181
    add-int/lit8 v3, v3, 0x1

    move p3, v4

    goto :goto_21

    .line 184
    .end local v3    # "i":I
    .end local v4    # "offset":I
    .restart local p3    # "offset":I
    :cond_2e
    return v1
.end method

.method getCustomDataCount(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintAttribute;

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintAttribute;->noOfInterpValues()I

    move-result v0

    return v0
.end method

.method hasCustomData(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method setBounds(FFFF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .line 189
    iput p1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->x:F

    .line 190
    iput p2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->y:F

    .line 191
    iput p3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->width:F

    .line 192
    iput p4, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->height:F

    .line 193
    return-void
.end method

.method public setState(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintSet;I)V
    .registers 8
    .param p1, "cw"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "constraintSet"    # Landroid/support/constraint/ConstraintSet;
    .param p3, "viewId"    # I

    .line 333
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/constraint/motion/MotionConstrainedPoint;->setBounds(FFFF)V

    .line 334
    invoke-virtual {p2, p3}, Landroid/support/constraint/ConstraintSet;->getParameters(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionConstrainedPoint;->applyParameters(Landroid/support/constraint/ConstraintSet$Constraint;)V

    .line 335
    return-void
.end method

.method public setState(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/constraint/motion/MotionConstrainedPoint;->setBounds(FFFF)V

    .line 329
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->applyParameters(Landroid/view/View;)V

    .line 330
    return-void
.end method
