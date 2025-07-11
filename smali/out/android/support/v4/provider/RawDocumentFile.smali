.class Landroid/support/v4/provider/RawDocumentFile;
.super Landroid/support/v4/provider/DocumentFile;
.source "RawDocumentFile.java"


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V
    .registers 3
    .param p1, "parent"    # Landroid/support/v4/provider/DocumentFile;
    .param p2, "file"    # Ljava/io/File;

    .line 33
    invoke-direct {p0, p1}, Landroid/support/v4/provider/DocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;)V

    .line 34
    iput-object p2, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    .line 35
    return-void
.end method

.method private static deleteContents(Ljava/io/File;)Z
    .registers 8
    .param p0, "dir"    # Ljava/io/File;

    .line 169
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 170
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x1

    .line 171
    .local v1, "success":Z
    if-eqz v0, :cond_3a

    .line 172
    array-length v2, v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_3a

    aget-object v4, v0, v3

    .line 173
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 174
    invoke-static {v4}, Landroid/support/v4/provider/RawDocumentFile;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 176
    :cond_18
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_37

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DocumentFile"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, 0x0

    .line 172
    .end local v4    # "file":Ljava/io/File;
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 182
    :cond_3a
    return v1
.end method

.method private static getTypeForName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 156
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 157
    .local v0, "lastDot":I
    if-ltz v0, :cond_1d

    .line 158
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "mime":Ljava/lang/String;
    if-eqz v2, :cond_1d

    .line 161
    return-object v2

    .line 165
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "mime":Ljava/lang/String;
    :cond_1d
    const-string v1, "application/octet-stream"

    return-object v1
.end method


# virtual methods
.method public canRead()Z
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    .registers 4
    .param p1, "displayName"    # Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .local v0, "target":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_16

    .line 62
    :cond_14
    const/4 v1, 0x0

    return-object v1

    .line 60
    :cond_16
    :goto_16
    new-instance v1, Landroid/support/v4/provider/RawDocumentFile;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/provider/RawDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V

    return-object v1
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    .registers 8
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    .line 41
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_21

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 45
    :cond_21
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .local v1, "target":Ljava/io/File;
    :try_start_28
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 48
    new-instance v2, Landroid/support/v4/provider/RawDocumentFile;

    invoke-direct {v2, p0, v1}, Landroid/support/v4/provider/RawDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_31

    return-object v2

    .line 49
    :catch_31
    move-exception v2

    .line 50
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to createFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DocumentFile"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v3, 0x0

    return-object v3
.end method

.method public delete()Z
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-static {v0}, Landroid/support/v4/provider/RawDocumentFile;->deleteContents(Ljava/io/File;)Z

    .line 124
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_a
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/provider/RawDocumentFile;->getTypeForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .registers 2

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public lastModified()J
    .registers 3

    .line 103
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .registers 3

    .line 108
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Landroid/support/v4/provider/DocumentFile;
    .registers 7

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/DocumentFile;>;"
    iget-object v1, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 136
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1e

    .line 137
    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 138
    .local v4, "file":Ljava/io/File;
    new-instance v5, Landroid/support/v4/provider/RawDocumentFile;

    invoke-direct {v5, p0, v4}, Landroid/support/v4/provider/RawDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 141
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/support/v4/provider/DocumentFile;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/support/v4/provider/DocumentFile;

    return-object v2
.end method

.method public renameTo(Ljava/lang/String;)Z
    .registers 4
    .param p1, "displayName"    # Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .local v0, "target":Ljava/io/File;
    iget-object v1, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 148
    iput-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    .line 149
    const/4 v1, 0x1

    return v1

    .line 151
    :cond_17
    const/4 v1, 0x0

    return v1
.end method
