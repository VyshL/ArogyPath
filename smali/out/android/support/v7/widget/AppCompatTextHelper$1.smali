.class Landroid/support/v7/widget/AppCompatTextHelper$1;
.super Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroid/support/v7/widget/TintTypedArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/AppCompatTextHelper;

.field final synthetic val$textViewWeak:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AppCompatTextHelper;Ljava/lang/ref/WeakReference;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/v7/widget/AppCompatTextHelper;

    .line 252
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper$1;->this$0:Landroid/support/v7/widget/AppCompatTextHelper;

    iput-object p2, p0, Landroid/support/v7/widget/AppCompatTextHelper$1;->val$textViewWeak:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 261
    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .registers 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 255
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper$1;->this$0:Landroid/support/v7/widget/AppCompatTextHelper;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper$1;->val$textViewWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/AppCompatTextHelper;->onAsyncTypefaceReceived(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V

    .line 256
    return-void
.end method
