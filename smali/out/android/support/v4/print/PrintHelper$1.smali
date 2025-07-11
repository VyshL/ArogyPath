.class Landroid/support/v4/print/PrintHelper$1;
.super Landroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/print/PrintHelper;

.field final synthetic val$attributes:Landroid/print/PrintAttributes;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$fittingMode:I

.field final synthetic val$pdfAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 9
    .param p1, "this$0"    # Landroid/support/v4/print/PrintHelper;

    .line 635
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$1;->this$0:Landroid/support/v4/print/PrintHelper;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroid/support/v4/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroid/support/v4/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Landroid/support/v4/print/PrintHelper$1;->val$attributes:Landroid/print/PrintAttributes;

    iput p6, p0, Landroid/support/v4/print/PrintHelper$1;->val$fittingMode:I

    iput-object p7, p0, Landroid/support/v4/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object p8, p0, Landroid/support/v4/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 635
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .registers 10
    .param p1, "params"    # [Ljava/lang/Void;

    .line 639
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 640
    return-object v1

    .line 643
    :cond_a
    new-instance v0, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$1;->this$0:Landroid/support/v4/print/PrintHelper;

    iget-object v2, v2, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    invoke-direct {v0, v2, v3}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 646
    .local v0, "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    .line 647
    invoke-virtual {v3}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v3

    .line 646
    invoke-static {v2, v3}, Landroid/support/v4/print/PrintHelper;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 649
    .local v2, "maybeGrayscale":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_e6

    if-eqz v3, :cond_2a

    .line 650
    return-object v1

    .line 654
    :cond_2a
    const/4 v3, 0x1

    :try_start_2b
    invoke-virtual {v0, v3}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v4

    .line 657
    .local v4, "page":Landroid/graphics/pdf/PdfDocument$Page;
    sget-boolean v5, Landroid/support/v4/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    if-eqz v5, :cond_41

    .line 658
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .local v3, "contentRect":Landroid/graphics/RectF;
    goto :goto_64

    .line 662
    .end local v3    # "contentRect":Landroid/graphics/RectF;
    :cond_41
    new-instance v5, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v6, p0, Landroid/support/v4/print/PrintHelper$1;->this$0:Landroid/support/v4/print/PrintHelper;

    iget-object v6, v6, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/support/v4/print/PrintHelper$1;->val$attributes:Landroid/print/PrintAttributes;

    invoke-direct {v5, v6, v7}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 664
    .local v5, "dummyDocument":Landroid/print/pdf/PrintedPdfDocument;
    invoke-virtual {v5, v3}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v3

    .line 665
    .local v3, "dummyPage":Landroid/graphics/pdf/PdfDocument$Page;
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 666
    .local v6, "contentRect":Landroid/graphics/RectF;
    invoke-virtual {v5, v3}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 667
    invoke-virtual {v5}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    move-object v3, v6

    .line 671
    .end local v5    # "dummyDocument":Landroid/print/pdf/PrintedPdfDocument;
    .end local v6    # "contentRect":Landroid/graphics/RectF;
    .local v3, "contentRect":Landroid/graphics/RectF;
    :goto_64
    nop

    .line 672
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/support/v4/print/PrintHelper$1;->val$fittingMode:I

    .line 671
    invoke-static {v5, v6, v3, v7}, Landroid/support/v4/print/PrintHelper;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v5

    .line 675
    .local v5, "matrix":Landroid/graphics/Matrix;
    sget-boolean v6, Landroid/support/v4/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    if-eqz v6, :cond_78

    goto :goto_86

    .line 679
    :cond_78
    iget v6, v3, Landroid/graphics/RectF;->left:F

    iget v7, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 682
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 686
    :goto_86
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v6, v2, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 689
    invoke-virtual {v0, v4}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 691
    iget-object v6, p0, Landroid/support/v4/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v6}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v6
    :try_end_96
    .catchall {:try_start_2b .. :try_end_96} :catchall_d0

    if-eqz v6, :cond_ad

    .line 692
    nop

    .line 700
    :try_start_99
    invoke-virtual {v0}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 702
    iget-object v6, p0, Landroid/support/v4/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_9e
    .catchall {:try_start_99 .. :try_end_9e} :catchall_e6

    if-eqz v6, :cond_a5

    .line 704
    :try_start_a0
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a4
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_e6

    .line 707
    goto :goto_a5

    .line 705
    :catch_a4
    move-exception v6

    .line 710
    :cond_a5
    :goto_a5
    :try_start_a5
    iget-object v6, p0, Landroid/support/v4/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v2, v6, :cond_ac

    .line 711
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_ac
    .catchall {:try_start_a5 .. :try_end_ac} :catchall_e6

    :cond_ac
    return-object v1

    .line 696
    :cond_ad
    :try_start_ad
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Landroid/support/v4/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 697
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 696
    invoke-virtual {v0, v6}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_bb
    .catchall {:try_start_ad .. :try_end_bb} :catchall_d0

    .line 698
    nop

    .line 700
    :try_start_bc
    invoke-virtual {v0}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 702
    iget-object v6, p0, Landroid/support/v4/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_c1
    .catchall {:try_start_bc .. :try_end_c1} :catchall_e6

    if-eqz v6, :cond_c8

    .line 704
    :try_start_c3
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_c7
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_e6

    .line 707
    goto :goto_c8

    .line 705
    :catch_c7
    move-exception v6

    .line 710
    :cond_c8
    :goto_c8
    :try_start_c8
    iget-object v6, p0, Landroid/support/v4/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v2, v6, :cond_cf

    .line 711
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_cf
    return-object v1

    .line 700
    .end local v3    # "contentRect":Landroid/graphics/RectF;
    .end local v4    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :catchall_d0
    move-exception v1

    invoke-virtual {v0}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 702
    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_d6
    .catchall {:try_start_c8 .. :try_end_d6} :catchall_e6

    if-eqz v3, :cond_dd

    .line 704
    :try_start_d8
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_dc
    .catchall {:try_start_d8 .. :try_end_db} :catchall_e6

    .line 707
    goto :goto_dd

    .line 705
    :catch_dc
    move-exception v3

    .line 710
    :cond_dd
    :goto_dd
    :try_start_dd
    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v2, v3, :cond_e4

    .line 711
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e4
    nop

    .end local p1    # "params":[Ljava/lang/Void;
    throw v1
    :try_end_e6
    .catchall {:try_start_dd .. :try_end_e6} :catchall_e6

    .line 714
    .end local v0    # "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    .end local v2    # "maybeGrayscale":Landroid/graphics/Bitmap;
    .restart local p1    # "params":[Ljava/lang/Void;
    :catchall_e6
    move-exception v0

    .line 715
    .local v0, "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 635
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$1;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 721
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 723
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    goto :goto_2b

    .line 724
    :cond_e
    if-nez p1, :cond_1e

    .line 726
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/print/PageRange;

    const/4 v2, 0x0

    sget-object v3, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    goto :goto_2b

    .line 730
    :cond_1e
    const-string v0, "PrintHelper"

    const-string v1, "Error writing printed content"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    .line 733
    :goto_2b
    return-void
.end method
