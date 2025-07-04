.class public final Landroid/support/v13/view/inputmethod/InputConnectionCompat;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    }
.end annotation


# static fields
.field private static final COMMIT_CONTENT_ACTION:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_RESULT_RECEIVER:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field public static final INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    return-void
.end method

.method public static commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .registers 13
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputContentInfo"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    .param p3, "flags"    # I
    .param p4, "opts"    # Landroid/os/Bundle;

    .line 99
    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 100
    .local v0, "description":Landroid/content/ClipDescription;
    const/4 v1, 0x0

    .line 101
    .local v1, "supported":Z
    invoke-static {p1}, Landroid/support/v13/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v3, :cond_1b

    aget-object v6, v2, v5

    .line 102
    .local v6, "mimeType":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 103
    const/4 v1, 0x1

    .line 104
    goto :goto_1b

    .line 101
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 107
    :cond_1b
    :goto_1b
    if-nez v1, :cond_1e

    .line 108
    return v4

    .line 111
    :cond_1e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_30

    .line 112
    nop

    .line 113
    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputContentInfo;

    .line 112
    invoke-interface {p0, v2, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v2

    return v2

    .line 115
    :cond_30
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v2, "params":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    const-string v4, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-interface {p0, v3, v2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    return v3
.end method

.method public static createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .registers 7
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "onCommitContentListener"    # Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    .line 194
    if-eqz p0, :cond_33

    .line 197
    if-eqz p1, :cond_2b

    .line 200
    if-eqz p2, :cond_23

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    const/4 v2, 0x0

    if-lt v0, v1, :cond_14

    .line 204
    move-object v0, p2

    .line 205
    .local v0, "listener":Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v1, Landroid/support/v13/view/inputmethod/InputConnectionCompat$1;

    invoke-direct {v1, p0, v2, v0}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$1;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    return-object v1

    .line 217
    .end local v0    # "listener":Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    :cond_14
    invoke-static {p1}, Landroid/support/v13/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "contentMimeTypes":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_1c

    .line 219
    return-object p0

    .line 221
    :cond_1c
    move-object v1, p2

    .line 222
    .local v1, "listener":Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v3, Landroid/support/v13/view/inputmethod/InputConnectionCompat$2;

    invoke-direct {v3, p0, v2, v1}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$2;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    return-object v3

    .line 201
    .end local v0    # "contentMimeTypes":[Ljava/lang/String;
    .end local v1    # "listener":Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onCommitContentListener must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "editorInfo must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputConnection must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z
    .registers 14
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "onCommitContentListener"    # Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    .line 58
    const-string v0, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 59
    return v1

    .line 61
    :cond_a
    if-nez p1, :cond_d

    .line 62
    return v1

    .line 64
    :cond_d
    const/4 v0, 0x0

    .line 65
    .local v0, "resultReceiver":Landroid/os/ResultReceiver;
    const/4 v2, 0x0

    .line 67
    .local v2, "result":Z
    const/4 v3, 0x0

    :try_start_10
    const-string v4, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    move-object v0, v4

    .line 68
    const-string v4, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 69
    .local v4, "contentUri":Landroid/net/Uri;
    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/ClipDescription;

    .line 71
    .local v5, "description":Landroid/content/ClipDescription;
    const-string v6, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 72
    .local v6, "linkUri":Landroid/net/Uri;
    const-string v7, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 73
    .local v7, "flags":I
    const-string v8, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 74
    .local v8, "opts":Landroid/os/Bundle;
    new-instance v9, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    invoke-direct {v9, v4, v5, v6}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    .line 76
    .local v9, "inputContentInfo":Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    invoke-interface {p2, v9, v7, v8}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result v10
    :try_end_48
    .catchall {:try_start_10 .. :try_end_48} :catchall_52

    move v2, v10

    .line 78
    .end local v4    # "contentUri":Landroid/net/Uri;
    .end local v5    # "description":Landroid/content/ClipDescription;
    .end local v6    # "linkUri":Landroid/net/Uri;
    .end local v7    # "flags":I
    .end local v8    # "opts":Landroid/os/Bundle;
    .end local v9    # "inputContentInfo":Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    if-eqz v0, :cond_51

    .line 79
    if-eqz v2, :cond_4e

    const/4 v1, 0x1

    :cond_4e
    invoke-virtual {v0, v1, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 82
    :cond_51
    return v2

    .line 78
    :catchall_52
    move-exception v1

    if-eqz v0, :cond_58

    .line 79
    invoke-virtual {v0, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_58
    throw v1
.end method
