.class public final Landroid/support/v4/content/res/ComplexColorCompat;
.super Ljava/lang/Object;
.source "ComplexColorCompat.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ComplexColorCompat"


# instance fields
.field private mColor:I

.field private final mColorStateList:Landroid/content/res/ColorStateList;

.field private final mShader:Landroid/graphics/Shader;


# direct methods
.method private constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .registers 4
    .param p1, "shader"    # Landroid/graphics/Shader;
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;
    .param p3, "color"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/support/v4/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    .line 63
    iput-object p2, p0, Landroid/support/v4/content/res/ComplexColorCompat;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 64
    iput p3, p0, Landroid/support/v4/content/res/ComplexColorCompat;->mColor:I

    .line 65
    return-void
.end method

.method private static createFromXml(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/v4/content/res/ComplexColorCompat;
    .registers 10
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 153
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 155
    .local v1, "attrs":Landroid/util/AttributeSet;
    :goto_8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_14

    if-eq v3, v4, :cond_14

    goto :goto_8

    .line 159
    :cond_14
    if-ne v3, v5, :cond_6d

    .line 162
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "name":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_76

    :cond_22
    goto :goto_36

    :sswitch_23
    const-string v4, "selector"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x0

    goto :goto_37

    :sswitch_2d
    const-string v6, "gradient"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_37

    :goto_36
    const/4 v4, -0x1

    :goto_37
    packed-switch v4, :pswitch_data_80

    .line 171
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": unsupported complex color tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 168
    :pswitch_5b
    invoke-static {p0, v0, v1, p2}, Landroid/support/v4/content/res/GradientColorInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/res/ComplexColorCompat;->from(Landroid/graphics/Shader;)Landroid/support/v4/content/res/ComplexColorCompat;

    move-result-object v4

    return-object v4

    .line 165
    :pswitch_64
    invoke-static {p0, v0, v1, p2}, Landroid/support/v4/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/res/ComplexColorCompat;->from(Landroid/content/res/ColorStateList;)Landroid/support/v4/content/res/ComplexColorCompat;

    move-result-object v4

    return-object v4

    .line 160
    .end local v2    # "name":Ljava/lang/String;
    :cond_6d
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "No start tag found"

    invoke-direct {v2, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_76
    .sparse-switch
        0x557f730 -> :sswitch_2d
        0x4705f3df -> :sswitch_23
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_64
        :pswitch_5b
    .end packed-switch
.end method

.method static from(I)Landroid/support/v4/content/res/ComplexColorCompat;
    .registers 3
    .param p0, "color"    # I

    .line 76
    new-instance v0, Landroid/support/v4/content/res/ComplexColorCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0}, Landroid/support/v4/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0
.end method

.method static from(Landroid/content/res/ColorStateList;)Landroid/support/v4/content/res/ComplexColorCompat;
    .registers 4
    .param p0, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 72
    new-instance v0, Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Landroid/support/v4/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0
.end method

.method static from(Landroid/graphics/Shader;)Landroid/support/v4/content/res/ComplexColorCompat;
    .registers 4
    .param p0, "shader"    # Landroid/graphics/Shader;

    .line 68
    new-instance v0, Landroid/support/v4/content/res/ComplexColorCompat;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v4/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0
.end method

.method public static inflate(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/v4/content/res/ComplexColorCompat;
    .registers 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .line 140
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/res/ComplexColorCompat;->createFromXml(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/v4/content/res/ComplexColorCompat;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 141
    :catch_5
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ComplexColorCompat"

    const-string v2, "Failed to inflate ComplexColor."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getColor()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/support/v4/content/res/ComplexColorCompat;->mColor:I

    return v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/support/v4/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public isGradient()Z
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/support/v4/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isStateful()Z
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/support/v4/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/v4/content/res/ComplexColorCompat;->mColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public onStateChanged([I)Z
    .registers 5
    .param p1, "stateSet"    # [I

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "changed":Z
    invoke-virtual {p0}, Landroid/support/v4/content/res/ComplexColorCompat;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 110
    iget-object v1, p0, Landroid/support/v4/content/res/ComplexColorCompat;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 111
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 110
    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 112
    .local v1, "colorForState":I
    iget v2, p0, Landroid/support/v4/content/res/ComplexColorCompat;->mColor:I

    if-eq v1, v2, :cond_18

    .line 113
    const/4 v0, 0x1

    .line 114
    iput v1, p0, Landroid/support/v4/content/res/ComplexColorCompat;->mColor:I

    .line 117
    .end local v1    # "colorForState":I
    :cond_18
    return v0
.end method

.method public setColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 90
    iput p1, p0, Landroid/support/v4/content/res/ComplexColorCompat;->mColor:I

    .line 91
    return-void
.end method

.method public willDraw()Z
    .registers 2

    .line 124
    invoke-virtual {p0}, Landroid/support/v4/content/res/ComplexColorCompat;->isGradient()Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Landroid/support/v4/content/res/ComplexColorCompat;->mColor:I

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
