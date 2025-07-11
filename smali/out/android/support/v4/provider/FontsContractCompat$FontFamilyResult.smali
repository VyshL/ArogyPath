.class public Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontFamilyResult"
.end annotation


# static fields
.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_UNEXPECTED_DATA_PROVIDED:I = 0x2

.field public static final STATUS_WRONG_CERTIFICATES:I = 0x1


# instance fields
.field private final mFonts:[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(I[Landroid/support/v4/provider/FontsContractCompat$FontInfo;)V
    .registers 3
    .param p1, "statusCode"    # I
    .param p2, "fonts"    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput p1, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    .line 430
    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->mFonts:[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    .line 431
    return-void
.end method


# virtual methods
.method public getFonts()[Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    .registers 2

    .line 438
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->mFonts:[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .line 434
    iget v0, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    return v0
.end method
