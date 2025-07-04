.class Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPathRenderer"
.end annotation


# static fields
.field private static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# instance fields
.field mBaseHeight:F

.field mBaseWidth:F

.field private mChangingConfigurations:I

.field mFillPaint:Landroid/graphics/Paint;

.field private final mFinalPathMatrix:Landroid/graphics/Matrix;

.field mIsStateful:Ljava/lang/Boolean;

.field private final mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mRenderPath:Landroid/graphics/Path;

.field mRootAlpha:I

.field final mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

.field mRootName:Ljava/lang/String;

.field mStrokePaint:Landroid/graphics/Paint;

.field final mVGTargetsMap:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mViewportHeight:F

.field mViewportWidth:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1161
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1162
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    .line 1172
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 1173
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 1174
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 1175
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 1176
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 1177
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 1178
    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    .line 1180
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    .line 1183
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1184
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 1185
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    .line 1186
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)V
    .registers 5
    .param p1, "copy"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 1207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1162
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    .line 1172
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 1173
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 1174
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 1175
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 1176
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 1177
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 1178
    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    .line 1180
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    .line 1208
    new-instance v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    iget-object v2, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v1, v2, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V

    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1209
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 1210
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    .line 1211
    iget v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 1212
    iget v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 1213
    iget v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 1214
    iget v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 1215
    iget v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mChangingConfigurations:I

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mChangingConfigurations:I

    .line 1216
    iget v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 1217
    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 1218
    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    if-eqz v1, :cond_61

    .line 1219
    invoke-virtual {v0, v1, p0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    :cond_61
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    .line 1222
    return-void
.end method

.method private static cross(FFFF)F
    .registers 6
    .param p0, "v1x"    # F
    .param p1, "v1y"    # F
    .param p2, "v2x"    # F
    .param p3, "v2y"    # F

    .line 1364
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method private drawGroupTree(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 25
    .param p1, "currentGroup"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    .param p2, "currentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "filter"    # Landroid/graphics/ColorFilter;

    .line 1230
    move-object/from16 v7, p1

    iget-object v0, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v8, p2

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1232
    iget-object v0, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    iget-object v1, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 1235
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 1238
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_15
    iget-object v0, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_5a

    .line 1239
    iget-object v0, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/support/graphics/drawable/VectorDrawableCompat$VObject;

    .line 1240
    .local v10, "child":Landroid/support/graphics/drawable/VectorDrawableCompat$VObject;
    instance-of v0, v10, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v0, :cond_3e

    .line 1241
    move-object v0, v10

    check-cast v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1242
    .local v0, "childGroup":Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    iget-object v13, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v11, p0

    move-object v12, v0

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v11 .. v17}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawGroupTree(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .end local v0    # "childGroup":Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    goto :goto_56

    .line 1244
    :cond_3e
    instance-of v0, v10, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;

    if-eqz v0, :cond_56

    .line 1245
    move-object v11, v10

    check-cast v11, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;

    .line 1246
    .local v11, "childPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawPath(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto :goto_57

    .line 1244
    .end local v11    # "childPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
    :cond_56
    :goto_56
    nop

    .line 1238
    .end local v10    # "child":Landroid/support/graphics/drawable/VectorDrawableCompat$VObject;
    :goto_57
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 1250
    .end local v9    # "i":I
    :cond_5a
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    .line 1251
    return-void
.end method

.method private drawPath(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 25
    .param p1, "vGroup"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    .param p2, "vPath"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "filter"    # Landroid/graphics/ColorFilter;

    .line 1260
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move/from16 v4, p4

    int-to-float v5, v4

    iget v6, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    div-float/2addr v5, v6

    .line 1261
    .local v5, "scaleX":F
    move/from16 v6, p5

    int-to-float v7, v6

    iget v8, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    div-float/2addr v7, v8

    .line 1262
    .local v7, "scaleY":F
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1263
    .local v8, "minScale":F
    move-object/from16 v9, p1

    iget-object v10, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 1265
    .local v10, "groupStackedMatrix":Landroid/graphics/Matrix;
    iget-object v11, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1266
    iget-object v11, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v5, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1269
    invoke-direct {v0, v10}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result v11

    .line 1270
    .local v11, "matrixScale":F
    const/4 v12, 0x0

    cmpl-float v13, v11, v12

    if-nez v13, :cond_30

    .line 1272
    return-void

    .line 1274
    :cond_30
    iget-object v13, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v13}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->toPath(Landroid/graphics/Path;)V

    .line 1275
    iget-object v13, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 1277
    .local v13, "path":Landroid/graphics/Path;
    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    .line 1279
    invoke-virtual/range {p2 .. p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->isClipPath()Z

    move-result v14

    if-eqz v14, :cond_52

    .line 1280
    iget-object v12, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1281
    iget-object v12, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move/from16 v16, v5

    goto/16 :goto_18d

    .line 1283
    :cond_52
    move-object v14, v1

    check-cast v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    .line 1284
    .local v14, "fullPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;
    iget v15, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v12

    if-nez v15, :cond_67

    iget v15, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_64

    goto :goto_67

    :cond_64
    move/from16 v16, v5

    goto :goto_b6

    .line 1285
    :cond_67
    :goto_67
    iget v15, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    iget v12, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    add-float/2addr v15, v12

    rem-float v15, v15, v16

    .line 1286
    .local v15, "start":F
    iget v12, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    iget v1, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    add-float/2addr v12, v1

    rem-float v12, v12, v16

    .line 1288
    .local v12, "end":F
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    if-nez v1, :cond_80

    .line 1289
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 1291
    :cond_80
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v4, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    move/from16 v16, v5

    .end local v5    # "scaleX":F
    .local v16, "scaleX":F
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 1293
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    .line 1294
    .local v1, "len":F
    mul-float v15, v15, v1

    .line 1295
    mul-float v12, v12, v1

    .line 1296
    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 1297
    cmpl-float v4, v15, v12

    if-lez v4, :cond_aa

    .line 1298
    iget-object v4, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v5, 0x1

    invoke-virtual {v4, v15, v1, v13, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1299
    iget-object v4, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "len":F
    .local v17, "len":F
    invoke-virtual {v4, v1, v12, v13, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_b3

    .line 1301
    .end local v17    # "len":F
    .restart local v1    # "len":F
    :cond_aa
    move/from16 v17, v1

    const/4 v1, 0x0

    const/4 v5, 0x1

    .end local v1    # "len":F
    .restart local v17    # "len":F
    iget-object v4, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v4, v15, v12, v13, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1303
    :goto_b3
    invoke-virtual {v13, v1, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1305
    .end local v12    # "end":F
    .end local v15    # "start":F
    .end local v17    # "len":F
    :goto_b6
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    iget-object v4, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v13, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1307
    iget-object v1, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v1}, Landroid/support/v4/content/res/ComplexColorCompat;->willDraw()Z

    move-result v1

    const/high16 v4, 0x437f0000    # 255.0f

    if-eqz v1, :cond_11d

    .line 1308
    iget-object v1, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroid/support/v4/content/res/ComplexColorCompat;

    .line 1309
    .local v1, "fill":Landroid/support/v4/content/res/ComplexColorCompat;
    iget-object v5, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_da

    .line 1310
    new-instance v5, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v5, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    .line 1311
    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1314
    :cond_da
    iget-object v5, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    .line 1315
    .local v5, "fillPaint":Landroid/graphics/Paint;
    invoke-virtual {v1}, Landroid/support/v4/content/res/ComplexColorCompat;->isGradient()Z

    move-result v12

    if-eqz v12, :cond_fa

    .line 1316
    invoke-virtual {v1}, Landroid/support/v4/content/res/ComplexColorCompat;->getShader()Landroid/graphics/Shader;

    move-result-object v12

    .line 1317
    .local v12, "shader":Landroid/graphics/Shader;
    iget-object v15, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v15}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1318
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1319
    iget v15, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    mul-float v15, v15, v4

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v5, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1320
    .end local v12    # "shader":Landroid/graphics/Shader;
    goto :goto_107

    .line 1321
    :cond_fa
    invoke-virtual {v1}, Landroid/support/v4/content/res/ComplexColorCompat;->getColor()I

    move-result v12

    iget v15, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    invoke-static {v12, v15}, Landroid/support/graphics/drawable/VectorDrawableCompat;->applyAlpha(IF)I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1323
    :goto_107
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1324
    iget-object v12, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    iget v15, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    if-nez v15, :cond_113

    sget-object v15, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_115

    :cond_113
    sget-object v15, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_115
    invoke-virtual {v12, v15}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1326
    iget-object v12, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-virtual {v2, v12, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1329
    .end local v1    # "fill":Landroid/support/v4/content/res/ComplexColorCompat;
    .end local v5    # "fillPaint":Landroid/graphics/Paint;
    :cond_11d
    iget-object v1, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v1}, Landroid/support/v4/content/res/ComplexColorCompat;->willDraw()Z

    move-result v1

    if-eqz v1, :cond_18d

    .line 1330
    iget-object v1, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroid/support/v4/content/res/ComplexColorCompat;

    .line 1331
    .local v1, "strokeColor":Landroid/support/v4/content/res/ComplexColorCompat;
    iget-object v5, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v5, :cond_138

    .line 1332
    new-instance v5, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v5, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    .line 1333
    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1336
    :cond_138
    iget-object v5, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    .line 1337
    .local v5, "strokePaint":Landroid/graphics/Paint;
    iget-object v12, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    if-eqz v12, :cond_143

    .line 1338
    iget-object v12, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1341
    :cond_143
    iget-object v12, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    if-eqz v12, :cond_14c

    .line 1342
    iget-object v12, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1345
    :cond_14c
    iget v12, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 1346
    invoke-virtual {v1}, Landroid/support/v4/content/res/ComplexColorCompat;->isGradient()Z

    move-result v12

    if-eqz v12, :cond_16f

    .line 1347
    invoke-virtual {v1}, Landroid/support/v4/content/res/ComplexColorCompat;->getShader()Landroid/graphics/Shader;

    move-result-object v12

    .line 1348
    .restart local v12    # "shader":Landroid/graphics/Shader;
    iget-object v15, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v15}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1349
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1350
    iget v15, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    mul-float v15, v15, v4

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1351
    .end local v12    # "shader":Landroid/graphics/Shader;
    goto :goto_17c

    .line 1352
    :cond_16f
    invoke-virtual {v1}, Landroid/support/v4/content/res/ComplexColorCompat;->getColor()I

    move-result v4

    iget v12, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    invoke-static {v4, v12}, Landroid/support/graphics/drawable/VectorDrawableCompat;->applyAlpha(IF)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1355
    :goto_17c
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1356
    mul-float v4, v8, v11

    .line 1357
    .local v4, "finalStrokeScale":F
    iget v12, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    mul-float v12, v12, v4

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1358
    iget-object v12, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-virtual {v2, v12, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1361
    .end local v1    # "strokeColor":Landroid/support/v4/content/res/ComplexColorCompat;
    .end local v4    # "finalStrokeScale":F
    .end local v5    # "strokePaint":Landroid/graphics/Paint;
    .end local v14    # "fullPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;
    :cond_18d
    :goto_18d
    return-void
.end method

.method private getMatrixScale(Landroid/graphics/Matrix;)F
    .registers 12
    .param p1, "groupStackedMatrix"    # Landroid/graphics/Matrix;

    .line 1378
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_40

    .line 1379
    .local v0, "unitVectors":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 1380
    const/4 v1, 0x0

    aget v2, v0, v1

    float-to-double v2, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    float-to-double v5, v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1381
    .local v2, "scaleX":F
    const/4 v3, 0x2

    aget v5, v0, v3

    float-to-double v5, v5

    const/4 v7, 0x3

    aget v8, v0, v7

    float-to-double v8, v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 1382
    .local v5, "scaleY":F
    aget v1, v0, v1

    aget v4, v0, v4

    aget v3, v0, v3

    aget v6, v0, v7

    invoke-static {v1, v4, v3, v6}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->cross(FFFF)F

    move-result v1

    .line 1384
    .local v1, "crossProduct":F
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1386
    .local v3, "maxScale":F
    const/4 v4, 0x0

    .line 1387
    .local v4, "matrixScale":F
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_3f

    .line 1388
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v4, v6, v3

    .line 1393
    :cond_3f
    return v4

    :array_40
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "filter"    # Landroid/graphics/ColorFilter;

    .line 1255
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    sget-object v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawGroupTree(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 1256
    return-void
.end method

.method public getAlpha()F
    .registers 3

    .line 1204
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .registers 2

    .line 1193
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    return v0
.end method

.method public isStateful()Z
    .registers 2

    .line 1397
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    if-nez v0, :cond_10

    .line 1398
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->isStateful()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    .line 1400
    :cond_10
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onStateChanged([I)Z
    .registers 3
    .param p1, "stateSet"    # [I

    .line 1404
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->onStateChanged([I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .line 1199
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->setRootAlpha(I)V

    .line 1200
    return-void
.end method

.method public setRootAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .line 1189
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 1190
    return-void
.end method
