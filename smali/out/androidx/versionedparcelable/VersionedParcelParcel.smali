.class Landroidx/versionedparcelable/VersionedParcelParcel;
.super Landroidx/versionedparcelable/VersionedParcel;
.source "VersionedParcelParcel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VersionedParcelParcel"


# instance fields
.field private mCurrentField:I

.field private final mEnd:I

.field private mNextRead:I

.field private final mOffset:I

.field private final mParcel:Landroid/os/Parcel;

.field private final mPositionLookup:Landroid/util/SparseIntArray;

.field private final mPrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const-string v2, ""

    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/versionedparcelable/VersionedParcelParcel;-><init>(Landroid/os/Parcel;IILjava/lang/String;)V

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;IILjava/lang/String;)V
    .registers 6
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "offset"    # I
    .param p3, "end"    # I
    .param p4, "prefix"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Landroidx/versionedparcelable/VersionedParcel;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPositionLookup:Landroid/util/SparseIntArray;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mCurrentField:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    .line 50
    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 51
    iput p2, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mOffset:I

    .line 52
    iput p3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mEnd:I

    .line 53
    iput p2, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    .line 54
    iput-object p4, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPrefix:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private readUntilField(I)I
    .registers 5
    .param p1, "fieldId"    # I

    .line 58
    :goto_0
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mEnd:I

    if-ge v0, v1, :cond_26

    .line 59
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "size":I
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .local v1, "fid":I
    iget v2, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    .line 65
    if-ne v1, p1, :cond_25

    iget-object v2, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    return v2

    .line 66
    .end local v0    # "size":I
    .end local v1    # "fid":I
    :cond_25
    goto :goto_0

    .line 67
    :cond_26
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public closeField()V
    .registers 5

    .line 93
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mCurrentField:I

    if-ltz v0, :cond_21

    .line 94
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPositionLookup:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 95
    .local v0, "currentFieldPosition":I
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 96
    .local v1, "position":I
    sub-int v2, v1, v0

    .line 101
    .local v2, "size":I
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    .end local v0    # "currentFieldPosition":I
    .end local v1    # "position":I
    .end local v2    # "size":I
    :cond_21
    return-void
.end method

.method protected createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
    .registers 7

    .line 113
    new-instance v0, Landroidx/versionedparcelable/VersionedParcelParcel;

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    iget v3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    iget v4, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mOffset:I

    if-ne v3, v4, :cond_10

    iget v3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mEnd:I

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcelParcel;-><init>(Landroid/os/Parcel;IILjava/lang/String;)V

    return-object v0
.end method

.method public readBoolean()Z
    .registers 2

    .line 241
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public readBundle()Landroid/os/Bundle;
    .registers 3

    .line 236
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public readByteArray()[B
    .registers 4

    .line 219
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 220
    .local v0, "len":I
    if-gez v0, :cond_a

    .line 221
    const/4 v1, 0x0

    return-object v1

    .line 223
    :cond_a
    new-array v1, v0, [B

    .line 224
    .local v1, "bytes":[B
    iget-object v2, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 225
    return-object v1
.end method

.method public readDouble()D
    .registers 3

    .line 204
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readField(I)Z
    .registers 4
    .param p1, "fieldId"    # I

    .line 72
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcelParcel;->readUntilField(I)I

    move-result v0

    .line 73
    .local v0, "position":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 74
    const/4 v1, 0x0

    return v1

    .line 77
    :cond_9
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    const/4 v1, 0x1

    return v1
.end method

.method public readFloat()F
    .registers 2

    .line 199
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    return v0
.end method

.method public readInt()I
    .registers 2

    .line 189
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 3

    .line 194
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readParcelable()Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStrongBinder()Landroid/os/IBinder;
    .registers 2

    .line 214
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public setOutputField(I)V
    .registers 4
    .param p1, "fieldId"    # I

    .line 83
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelParcel;->closeField()V

    .line 84
    iput p1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mCurrentField:I

    .line 85
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPositionLookup:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelParcel;->writeInt(I)V

    .line 88
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelParcel;->writeInt(I)V

    .line 89
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 3
    .param p1, "val"    # Z

    .line 174
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return-void
.end method

.method public writeBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "val"    # Landroid/os/Bundle;

    .line 184
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 185
    return-void
.end method

.method public writeByteArray([B)V
    .registers 4
    .param p1, "b"    # [B

    .line 119
    if-eqz p1, :cond_e

    .line 120
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_14

    .line 123
    :cond_e
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    :goto_14
    return-void
.end method

.method public writeByteArray([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 129
    if-eqz p1, :cond_e

    .line 130
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Parcel;->writeByteArray([BII)V

    goto :goto_14

    .line 133
    :cond_e
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    :goto_14
    return-void
.end method

.method public writeDouble(D)V
    .registers 4
    .param p1, "val"    # D

    .line 154
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 155
    return-void
.end method

.method public writeFloat(F)V
    .registers 3
    .param p1, "val"    # F

    .line 149
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 150
    return-void
.end method

.method public writeInt(I)V
    .registers 3
    .param p1, "val"    # I

    .line 139
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    return-void
.end method

.method public writeLong(J)V
    .registers 4
    .param p1, "val"    # J

    .line 144
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    return-void
.end method

.method public writeParcelable(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "p"    # Landroid/os/Parcelable;

    .line 169
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 170
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 3
    .param p1, "val"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public writeStrongBinder(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "val"    # Landroid/os/IBinder;

    .line 164
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 165
    return-void
.end method

.method public writeStrongInterface(Landroid/os/IInterface;)V
    .registers 3
    .param p1, "val"    # Landroid/os/IInterface;

    .line 179
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 180
    return-void
.end method
