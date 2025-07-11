.class public final Landroid/support/v4/print/PrintHelper;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/print/PrintHelper$PrintUriAdapter;,
        Landroid/support/v4/print/PrintHelper$PrintBitmapAdapter;,
        Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field static final IS_MIN_MARGINS_HANDLING_CORRECT:Z

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelper"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field static final PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field final mLock:Ljava/lang/Object;

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v3, 0x1

    const/16 v4, 0x14

    if-lt v0, v4, :cond_11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v2, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    sput-boolean v0, Landroid/support/v4/print/PrintHelper;->PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    sput-boolean v1, Landroid/support/v4/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mLock:Ljava/lang/Object;

    .line 143
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/print/PrintHelper;->mScaleMode:I

    .line 144
    iput v0, p0, Landroid/support/v4/print/PrintHelper;->mColorMode:I

    .line 145
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    .line 163
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    .line 164
    return-void
.end method

.method static convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "original"    # Landroid/graphics/Bitmap;
    .param p1, "colorMode"    # I

    .line 816
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 817
    return-object p0

    .line 820
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 822
    .local v0, "grayscale":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 823
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 824
    .local v2, "p":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 825
    .local v3, "cm":Landroid/graphics/ColorMatrix;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 826
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 827
    .local v5, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 828
    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 829
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 831
    return-object v0
.end method

.method private static copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .registers 4
    .param p0, "other"    # Landroid/print/PrintAttributes;

    .line 558
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 559
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 560
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 561
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 563
    .local v0, "b":Landroid/print/PrintAttributes$Builder;
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 564
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 567
    :cond_2a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3d

    .line 568
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v1

    if-eqz v1, :cond_3d

    .line 569
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setDuplexMode(I)Landroid/print/PrintAttributes$Builder;

    .line 573
    :cond_3d
    return-object v0
.end method

.method static getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .registers 10
    .param p0, "imageWidth"    # I
    .param p1, "imageHeight"    # I
    .param p2, "content"    # Landroid/graphics/RectF;
    .param p3, "fittingMode"    # I

    .line 589
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 592
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v2, p0

    div-float/2addr v1, v2

    .line 593
    .local v1, "scale":F
    const/4 v2, 0x2

    if-ne p3, v2, :cond_19

    .line 594
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_23

    .line 596
    :cond_19
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 598
    :goto_23
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 601
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, p0

    mul-float v3, v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 603
    .local v2, "translateX":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, p1

    mul-float v5, v5, v1

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    .line 605
    .local v4, "translateY":F
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 606
    return-object v0
.end method

.method static isPortrait(Landroid/graphics/Bitmap;)Z
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 546
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "o"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 796
    const-string v0, "close fail "

    const-string v1, "PrintHelper"

    if-eqz p1, :cond_30

    iget-object v2, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_30

    .line 799
    const/4 v3, 0x0

    .line 801
    .local v3, "is":Ljava/io/InputStream;
    :try_start_b
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    move-object v3, v2

    .line 802
    const/4 v2, 0x0

    invoke-static {v3, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_24

    .line 804
    if-eqz v3, :cond_23

    .line 806
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 809
    goto :goto_23

    .line 807
    :catch_1f
    move-exception v4

    .line 808
    .local v4, "t":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    .end local v4    # "t":Ljava/io/IOException;
    :cond_23
    :goto_23
    return-object v2

    .line 804
    :catchall_24
    move-exception v2

    if-eqz v3, :cond_2f

    .line 806
    :try_start_27
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 809
    goto :goto_2f

    .line 807
    :catch_2b
    move-exception v4

    .line 808
    .restart local v4    # "t":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    .end local v4    # "t":Ljava/io/IOException;
    :cond_2f
    :goto_2f
    throw v2

    .line 797
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad argument to loadBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static systemSupportsPrint()Z
    .registers 2

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public getColorMode()I
    .registers 2

    .line 210
    iget v0, p0, Landroid/support/v4/print/PrintHelper;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .registers 3

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    if-nez v0, :cond_c

    .line 233
    const/4 v0, 0x1

    return v0

    .line 235
    :cond_c
    iget v0, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    return v0
.end method

.method public getScaleMode()I
    .registers 2

    .line 187
    iget v0, p0, Landroid/support/v4/print/PrintHelper;->mScaleMode:I

    return v0
.end method

.method loadConstrainedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 746
    if-eqz p1, :cond_69

    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_69

    .line 750
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 751
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 752
    invoke-direct {p0, p1, v0}, Landroid/support/v4/print/PrintHelper;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 754
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 755
    .local v2, "w":I
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 758
    .local v3, "h":I
    const/4 v4, 0x0

    if-lez v2, :cond_68

    if-gtz v3, :cond_1b

    goto :goto_68

    .line 763
    :cond_1b
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 765
    .local v5, "imageSide":I
    const/4 v6, 0x1

    .line 766
    .local v6, "sampleSize":I
    :goto_20
    const/16 v7, 0xdac

    if-le v5, v7, :cond_29

    .line 767
    ushr-int/lit8 v5, v5, 0x1

    .line 768
    shl-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 772
    :cond_29
    if-lez v6, :cond_67

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/2addr v7, v6

    if-gtz v7, :cond_33

    goto :goto_67

    .line 776
    :cond_33
    iget-object v7, p0, Landroid/support/v4/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 777
    :try_start_36
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v8, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 778
    iput-boolean v1, v8, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 779
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 780
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_5f

    .line 781
    .local v1, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :try_start_45
    monitor-exit v7
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_65

    .line 783
    :try_start_46
    invoke-direct {p0, p1, v1}, Landroid/support/v4/print/PrintHelper;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_54

    .line 785
    iget-object v8, p0, Landroid/support/v4/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 786
    :try_start_4d
    iput-object v4, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 787
    monitor-exit v8

    return-object v7

    :catchall_51
    move-exception v4

    monitor-exit v8
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_51

    throw v4

    .line 785
    :catchall_54
    move-exception v7

    iget-object v8, p0, Landroid/support/v4/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 786
    :try_start_58
    iput-object v4, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 787
    monitor-exit v8
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    throw v7

    :catchall_5c
    move-exception v4

    :try_start_5d
    monitor-exit v8
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v4

    .line 781
    .end local v1    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_5f
    move-exception v1

    move-object v9, v4

    move-object v4, v1

    move-object v1, v9

    .restart local v1    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :goto_63
    :try_start_63
    monitor-exit v7
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_65

    throw v4

    :catchall_65
    move-exception v4

    goto :goto_63

    .line 773
    .end local v1    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_67
    :goto_67
    return-object v4

    .line 759
    .end local v5    # "imageSide":I
    .end local v6    # "sampleSize":I
    :cond_68
    :goto_68
    return-object v4

    .line 747
    .end local v0    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad argument to getScaledBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 247
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 14
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_41

    if-nez p2, :cond_9

    goto :goto_41

    .line 262
    :cond_9
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    .line 263
    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 265
    .local v0, "printManager":Landroid/print/PrintManager;
    invoke-static {p2}, Landroid/support/v4/print/PrintHelper;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 266
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    .local v1, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    goto :goto_1e

    .line 268
    .end local v1    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :cond_1c
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    .line 270
    .restart local v1    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :goto_1e
    new-instance v2, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 271
    invoke-virtual {v2, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v2

    iget v3, p0, Landroid/support/v4/print/PrintHelper;->mColorMode:I

    .line 272
    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v2

    .line 273
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v2

    .line 275
    .local v2, "attr":Landroid/print/PrintAttributes;
    new-instance v9, Landroid/support/v4/print/PrintHelper$PrintBitmapAdapter;

    iget v6, p0, Landroid/support/v4/print/PrintHelper;->mScaleMode:I

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/support/v4/print/PrintHelper$PrintBitmapAdapter;-><init>(Landroid/support/v4/print/PrintHelper;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    invoke-virtual {v0, p1, v9, v2}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 277
    return-void

    .line 259
    .end local v0    # "printManager":Landroid/print/PrintManager;
    .end local v1    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    .end local v2    # "attr":Landroid/print/PrintAttributes;
    :cond_41
    :goto_41
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 341
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 12
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 356
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_7

    .line 357
    return-void

    .line 360
    :cond_7
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;

    iget v7, p0, Landroid/support/v4/print/PrintHelper;->mScaleMode:I

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;-><init>(Landroid/support/v4/print/PrintHelper;Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;I)V

    .line 363
    .local v0, "printDocumentAdapter":Landroid/print/PrintDocumentAdapter;
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    .line 364
    const-string v2, "print"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager;

    .line 365
    .local v1, "printManager":Landroid/print/PrintManager;
    new-instance v2, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 366
    .local v2, "builder":Landroid/print/PrintAttributes$Builder;
    iget v3, p0, Landroid/support/v4/print/PrintHelper;->mColorMode:I

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 368
    iget v3, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_38

    if-nez v3, :cond_2f

    goto :goto_38

    .line 370
    :cond_2f
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3d

    .line 371
    sget-object v3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_3d

    .line 369
    :cond_38
    :goto_38
    sget-object v3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 373
    :cond_3d
    :goto_3d
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v3

    .line 375
    .local v3, "attr":Landroid/print/PrintAttributes;
    invoke-virtual {v1, p1, v0, v3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 376
    return-void
.end method

.method public setColorMode(I)V
    .registers 2
    .param p1, "colorMode"    # I

    .line 199
    iput p1, p0, Landroid/support/v4/print/PrintHelper;->mColorMode:I

    .line 200
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .line 221
    iput p1, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    .line 222
    return-void
.end method

.method public setScaleMode(I)V
    .registers 2
    .param p1, "scaleMode"    # I

    .line 176
    iput p1, p0, Landroid/support/v4/print/PrintHelper;->mScaleMode:I

    .line 177
    return-void
.end method

.method writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 19
    .param p1, "attributes"    # Landroid/print/PrintAttributes;
    .param p2, "fittingMode"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 626
    sget-boolean v0, Landroid/support/v4/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 627
    move-object v0, p1

    .local v0, "pdfAttributes":Landroid/print/PrintAttributes;
    goto :goto_18

    .line 631
    .end local v0    # "pdfAttributes":Landroid/print/PrintAttributes;
    :cond_7
    invoke-static {p1}, Landroid/support/v4/print/PrintHelper;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    new-instance v2, Landroid/print/PrintAttributes$Margins;

    invoke-direct {v2, v1, v1, v1, v1}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    .line 632
    invoke-virtual {v0, v2}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v0

    .line 635
    .restart local v0    # "pdfAttributes":Landroid/print/PrintAttributes;
    :goto_18
    new-instance v11, Landroid/support/v4/print/PrintHelper$1;

    move-object v2, v11

    move-object v3, p0

    move-object/from16 v4, p5

    move-object v5, v0

    move-object v6, p3

    move-object v7, p1

    move v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Landroid/support/v4/print/PrintHelper$1;-><init>(Landroid/support/v4/print/PrintHelper;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 734
    invoke-virtual {v11, v1}, Landroid/support/v4/print/PrintHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 735
    return-void
.end method
