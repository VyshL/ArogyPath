.class public final Landroid/support/v7/cardview/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/cardview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CardView:[I

.field public static final CardView_android_minHeight:I = 0x1

.field public static final CardView_android_minWidth:I = 0x0

.field public static final CardView_cardBackgroundColor:I = 0x2

.field public static final CardView_cardCornerRadius:I = 0x3

.field public static final CardView_cardElevation:I = 0x4

.field public static final CardView_cardMaxElevation:I = 0x5

.field public static final CardView_cardPreventCornerOverlap:I = 0x6

.field public static final CardView_cardUseCompatPadding:I = 0x7

.field public static final CardView_contentPadding:I = 0x8

.field public static final CardView_contentPaddingBottom:I = 0x9

.field public static final CardView_contentPaddingLeft:I = 0xa

.field public static final CardView_contentPaddingRight:I = 0xb

.field public static final CardView_contentPaddingTop:I = 0xc


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/support/v7/cardview/R$styleable;->CardView:[I

    return-void

    :array_a
    .array-data 4
        0x101013f
        0x1010140
        0x7f02004e
        0x7f02004f
        0x7f020050
        0x7f020051
        0x7f020052
        0x7f020053
        0x7f020078
        0x7f020079
        0x7f02007a
        0x7f02007b
        0x7f02007c
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
