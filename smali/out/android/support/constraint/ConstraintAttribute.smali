.class public Landroid/support/constraint/ConstraintAttribute;
.super Ljava/lang/Object;
.source "ConstraintAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintAttribute$AttributeType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionLayout"


# instance fields
.field mBooleanValue:Z

.field private mColorValue:I

.field private mFloatValue:F

.field private mIntegerValue:I

.field mName:Ljava/lang/String;

.field private mStringValue:Ljava/lang/String;

.field private mType:Landroid/support/constraint/ConstraintAttribute$AttributeType;


# direct methods
.method public constructor <init>(Landroid/support/constraint/ConstraintAttribute;Ljava/lang/Object;)V
    .registers 4
    .param p1, "source"    # Landroid/support/constraint/ConstraintAttribute;
    .param p2, "value"    # Ljava/lang/Object;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iget-object v0, p1, Landroid/support/constraint/ConstraintAttribute;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/constraint/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 219
    iget-object v0, p1, Landroid/support/constraint/ConstraintAttribute;->mType:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    iput-object v0, p0, Landroid/support/constraint/ConstraintAttribute;->mType:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 220
    invoke-virtual {p0, p2}, Landroid/support/constraint/ConstraintAttribute;->setValue(Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/constraint/ConstraintAttribute$AttributeType;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributeType"    # Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Landroid/support/constraint/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Landroid/support/constraint/ConstraintAttribute;->mType:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 209
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/constraint/ConstraintAttribute$AttributeType;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributeType"    # Landroid/support/constraint/ConstraintAttribute$AttributeType;
    .param p3, "value"    # Ljava/lang/Object;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Landroid/support/constraint/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Landroid/support/constraint/ConstraintAttribute;->mType:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 214
    invoke-virtual {p0, p3}, Landroid/support/constraint/ConstraintAttribute;->setValue(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method private static clamp(I)I
    .registers 3
    .param p0, "c"    # I

    .line 331
    const/16 v0, 0xff

    .line 332
    .local v0, "N":I
    shr-int/lit8 v1, p0, 0x1f

    not-int v1, v1

    and-int/2addr p0, v1

    .line 333
    sub-int/2addr p0, v0

    .line 334
    shr-int/lit8 v1, p0, 0x1f

    and-int/2addr p0, v1

    .line 335
    add-int/2addr p0, v0

    .line 336
    return p0
.end method

.method public static extractAttributes(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/HashMap;
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;"
        }
    .end annotation

    .line 250
    .local p0, "base":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/constraint/ConstraintAttribute;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v0, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/constraint/ConstraintAttribute;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 252
    .local v1, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 253
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintAttribute;

    .line 256
    .local v4, "constraintAttribute":Landroid/support/constraint/ConstraintAttribute;
    :try_start_23
    const-string v5, "BackgroundColor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/ColorDrawable;

    .line 258
    .local v5, "viewColor":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 259
    .local v6, "val":Ljava/lang/Object;
    new-instance v7, Landroid/support/constraint/ConstraintAttribute;

    invoke-direct {v7, v4, v6}, Landroid/support/constraint/ConstraintAttribute;-><init>(Landroid/support/constraint/ConstraintAttribute;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    nop

    .end local v5    # "viewColor":Landroid/graphics/drawable/ColorDrawable;
    .end local v6    # "val":Ljava/lang/Object;
    goto :goto_7a

    .line 261
    :cond_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 262
    .local v5, "method":Ljava/lang/reflect/Method;
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 263
    .restart local v6    # "val":Ljava/lang/Object;
    new-instance v7, Landroid/support/constraint/ConstraintAttribute;

    invoke-direct {v7, v4, v6}, Landroid/support/constraint/ConstraintAttribute;-><init>(Landroid/support/constraint/ConstraintAttribute;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_23 .. :try_end_6b} :catch_76
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_6b} :catch_71
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_6b} :catch_6c

    goto :goto_7a

    .line 270
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "val":Ljava/lang/Object;
    :catch_6c
    move-exception v5

    .line 271
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_7b

    .line 268
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_71
    move-exception v5

    .line 269
    .local v5, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_7a

    .line 266
    :catch_76
    move-exception v5

    .line 267
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 272
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :goto_7a
    nop

    .line 273
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "constraintAttribute":Landroid/support/constraint/ConstraintAttribute;
    :goto_7b
    goto :goto_11

    .line 274
    :cond_7c
    return-object v0
.end method

.method public static parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    .line 399
    .local p2, "custom":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/constraint/ConstraintAttribute;>;"
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 400
    .local v0, "attributeSet":Landroid/util/AttributeSet;
    sget-object v1, Landroid/support/constraint/R$styleable;->CustomAttribute:[I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 401
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 402
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 403
    .local v3, "value":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 404
    .local v4, "type":Landroid/support/constraint/ConstraintAttribute$AttributeType;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 405
    .local v5, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_12
    if-ge v6, v5, :cond_d2

    .line 406
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 407
    .local v7, "attr":I
    sget v8, Landroid/support/constraint/R$styleable;->CustomAttribute_attributeName:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v7, v8, :cond_49

    .line 408
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 409
    if-eqz v2, :cond_ce

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_ce

    .line 410
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_ce

    .line 412
    :cond_49
    sget v8, Landroid/support/constraint/R$styleable;->CustomAttribute_customBoolean:I

    if-ne v7, v8, :cond_59

    .line 413
    invoke-virtual {v1, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 414
    sget-object v4, Landroid/support/constraint/ConstraintAttribute$AttributeType;->BOOLEAN_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    goto/16 :goto_ce

    .line 415
    :cond_59
    sget v8, Landroid/support/constraint/R$styleable;->CustomAttribute_customColorValue:I

    if-ne v7, v8, :cond_68

    .line 416
    sget-object v4, Landroid/support/constraint/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 417
    invoke-virtual {v1, v7, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_ce

    .line 418
    :cond_68
    sget v8, Landroid/support/constraint/R$styleable;->CustomAttribute_customColorDrawableValue:I

    if-ne v7, v8, :cond_77

    .line 419
    sget-object v4, Landroid/support/constraint/ConstraintAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 420
    invoke-virtual {v1, v7, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_ce

    .line 421
    :cond_77
    sget v8, Landroid/support/constraint/R$styleable;->CustomAttribute_customPixelDimension:I

    const/4 v10, 0x0

    if-ne v7, v8, :cond_94

    .line 422
    sget-object v4, Landroid/support/constraint/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 423
    nop

    .line 425
    invoke-virtual {v1, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 423
    invoke-static {v9, v8, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_ce

    .line 427
    :cond_94
    sget v8, Landroid/support/constraint/R$styleable;->CustomAttribute_customDimension:I

    if-ne v7, v8, :cond_a3

    .line 428
    sget-object v4, Landroid/support/constraint/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 429
    invoke-virtual {v1, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_ce

    .line 430
    :cond_a3
    sget v8, Landroid/support/constraint/R$styleable;->CustomAttribute_customFloatValue:I

    if-ne v7, v8, :cond_b4

    .line 431
    sget-object v4, Landroid/support/constraint/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 432
    const/high16 v8, 0x7fc00000    # Float.NaN

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_ce

    .line 433
    :cond_b4
    sget v8, Landroid/support/constraint/R$styleable;->CustomAttribute_customIntegerValue:I

    if-ne v7, v8, :cond_c4

    .line 434
    sget-object v4, Landroid/support/constraint/ConstraintAttribute$AttributeType;->INT_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 435
    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_ce

    .line 436
    :cond_c4
    sget v8, Landroid/support/constraint/R$styleable;->CustomAttribute_customStringValue:I

    if-ne v7, v8, :cond_ce

    .line 437
    sget-object v4, Landroid/support/constraint/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    .line 438
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 405
    .end local v7    # "attr":I
    :cond_ce
    :goto_ce
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_12

    .line 441
    .end local v6    # "i":I
    :cond_d2
    if-eqz v2, :cond_de

    if-eqz v3, :cond_de

    .line 442
    new-instance v6, Landroid/support/constraint/ConstraintAttribute;

    invoke-direct {v6, v2, v4, v3}, Landroid/support/constraint/ConstraintAttribute;-><init>(Ljava/lang/String;Landroid/support/constraint/ConstraintAttribute$AttributeType;Ljava/lang/Object;)V

    invoke-virtual {p2, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_de
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 445
    return-void
.end method

.method public static setAttributes(Landroid/view/View;Ljava/util/HashMap;)V
    .registers 15
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    .line 278
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/constraint/ConstraintAttribute;>;"
    const-string v0, "\" not found on "

    const-string v1, " Custom Attribute \""

    const-string v2, "TransitionLayout"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 279
    .local v3, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 280
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/ConstraintAttribute;

    .line 281
    .local v6, "constraintAttribute":Landroid/support/constraint/ConstraintAttribute;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, "methodName":Ljava/lang/String;
    :try_start_37
    sget-object v8, Landroid/support/constraint/ConstraintAttribute$1;->$SwitchMap$android$support$constraint$ConstraintAttribute$AttributeType:[I

    iget-object v9, v6, Landroid/support/constraint/ConstraintAttribute;->mType:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    invoke-virtual {v9}, Landroid/support/constraint/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v8, :pswitch_data_18c

    goto/16 :goto_187

    .line 312
    :pswitch_48
    new-array v8, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 313
    .local v8, "method":Ljava/lang/reflect/Method;
    new-array v10, v10, [Ljava/lang/Object;

    iget v11, v6, Landroid/support/constraint/ConstraintAttribute;->mFloatValue:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_187

    .line 308
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :pswitch_61
    new-array v8, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 309
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    new-array v10, v10, [Ljava/lang/Object;

    iget-boolean v11, v6, Landroid/support/constraint/ConstraintAttribute;->mBooleanValue:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    goto/16 :goto_187

    .line 304
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :pswitch_7a
    new-array v8, v10, [Ljava/lang/Class;

    const-class v11, Ljava/lang/CharSequence;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 305
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v6, Landroid/support/constraint/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    aput-object v11, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    goto/16 :goto_187

    .line 290
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :pswitch_8f
    new-array v8, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 291
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    new-array v10, v10, [Ljava/lang/Object;

    iget v11, v6, Landroid/support/constraint/ConstraintAttribute;->mFloatValue:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    goto/16 :goto_187

    .line 286
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :pswitch_a8
    new-array v8, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 287
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    new-array v10, v10, [Ljava/lang/Object;

    iget v11, v6, Landroid/support/constraint/ConstraintAttribute;->mIntegerValue:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    goto/16 :goto_187

    .line 294
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :pswitch_c1
    new-array v8, v10, [Ljava/lang/Class;

    const-class v11, Landroid/graphics/drawable/Drawable;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 295
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 296
    .local v11, "drawable":Landroid/graphics/drawable/ColorDrawable;
    iget v12, v6, Landroid/support/constraint/ConstraintAttribute;->mColorValue:I

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 297
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v11, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    goto/16 :goto_187

    .line 300
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v11    # "drawable":Landroid/graphics/drawable/ColorDrawable;
    :pswitch_de
    new-array v8, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 301
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    new-array v10, v10, [Ljava/lang/Object;

    iget v11, v6, Landroid/support/constraint/ConstraintAttribute;->mColorValue:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_37 .. :try_end_f5} :catch_141
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_f5} :catch_11c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_37 .. :try_end_f5} :catch_f7

    .line 302
    goto/16 :goto_187

    .line 323
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :catch_f7
    move-exception v8

    .line 324
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_188

    .line 320
    .end local v8    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_11c
    move-exception v8

    .line 321
    .local v8, "e":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_187

    .line 316
    :catch_141
    move-exception v8

    .line 317
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v8}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " must have a method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    :goto_187
    nop

    .line 327
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "constraintAttribute":Landroid/support/constraint/ConstraintAttribute;
    .end local v7    # "methodName":Ljava/lang/String;
    :goto_188
    goto/16 :goto_12

    .line 328
    :cond_18a
    return-void

    nop

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_de
        :pswitch_c1
        :pswitch_a8
        :pswitch_8f
        :pswitch_7a
        :pswitch_61
        :pswitch_48
    .end packed-switch
.end method


# virtual methods
.method public diff(Landroid/support/constraint/ConstraintAttribute;)Z
    .registers 6
    .param p1, "constraintAttribute"    # Landroid/support/constraint/ConstraintAttribute;

    .line 185
    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    iget-object v1, p0, Landroid/support/constraint/ConstraintAttribute;->mType:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    iget-object v2, p1, Landroid/support/constraint/ConstraintAttribute;->mType:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    if-eq v1, v2, :cond_a

    goto :goto_4d

    .line 188
    :cond_a
    sget-object v1, Landroid/support/constraint/ConstraintAttribute$1;->$SwitchMap$android$support$constraint$ConstraintAttribute$AttributeType:[I

    iget-object v2, p0, Landroid/support/constraint/ConstraintAttribute;->mType:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    invoke-virtual {v2}, Landroid/support/constraint/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_4e

    .line 203
    return v0

    .line 201
    :pswitch_19
    iget v1, p0, Landroid/support/constraint/ConstraintAttribute;->mFloatValue:F

    iget v3, p1, Landroid/support/constraint/ConstraintAttribute;->mFloatValue:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0

    .line 199
    :pswitch_23
    iget-boolean v1, p0, Landroid/support/constraint/ConstraintAttribute;->mBooleanValue:Z

    iget-boolean v3, p1, Landroid/support/constraint/ConstraintAttribute;->mBooleanValue:Z

    if-ne v1, v3, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    return v0

    .line 197
    :pswitch_2b
    iget v1, p0, Landroid/support/constraint/ConstraintAttribute;->mIntegerValue:I

    iget v3, p1, Landroid/support/constraint/ConstraintAttribute;->mIntegerValue:I

    if-ne v1, v3, :cond_32

    const/4 v0, 0x1

    :cond_32
    return v0

    .line 192
    :pswitch_33
    iget v1, p0, Landroid/support/constraint/ConstraintAttribute;->mFloatValue:F

    iget v3, p1, Landroid/support/constraint/ConstraintAttribute;->mFloatValue:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3c

    const/4 v0, 0x1

    :cond_3c
    return v0

    .line 190
    :pswitch_3d
    iget v1, p0, Landroid/support/constraint/ConstraintAttribute;->mIntegerValue:I

    iget v3, p1, Landroid/support/constraint/ConstraintAttribute;->mIntegerValue:I

    if-ne v1, v3, :cond_44

    const/4 v0, 0x1

    :cond_44
    return v0

    .line 195
    :pswitch_45
    iget v1, p0, Landroid/support/constraint/ConstraintAttribute;->mColorValue:I

    iget v3, p1, Landroid/support/constraint/ConstraintAttribute;->mColorValue:I

    if-ne v1, v3, :cond_4c

    const/4 v0, 0x1

    :cond_4c
    return v0

    .line 186
    :cond_4d
    :goto_4d
    return v0

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_45
        :pswitch_45
        :pswitch_3d
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_19
    .end packed-switch
.end method

.method public getType()Landroid/support/constraint/ConstraintAttribute$AttributeType;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/support/constraint/ConstraintAttribute;->mType:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    return-object v0
.end method

.method public getValueToInterpolate()F
    .registers 3

    .line 103
    sget-object v0, Landroid/support/constraint/ConstraintAttribute$1;->$SwitchMap$android$support$constraint$ConstraintAttribute$AttributeType:[I

    iget-object v1, p0, Landroid/support/constraint/ConstraintAttribute;->mType:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    invoke-virtual {v1}, Landroid/support/constraint/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 118
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 116
    :pswitch_10
    iget v0, p0, Landroid/support/constraint/ConstraintAttribute;->mFloatValue:F

    return v0

    .line 114
    :pswitch_13
    iget-boolean v0, p0, Landroid/support/constraint/ConstraintAttribute;->mBooleanValue:Z

    if-eqz v0, :cond_1a

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0

    .line 112
    :pswitch_1c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot interpolate String"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :pswitch_24
    iget v0, p0, Landroid/support/constraint/ConstraintAttribute;->mFloatValue:F

    return v0

    .line 105
    :pswitch_27
    iget v0, p0, Landroid/support/constraint/ConstraintAttribute;->mIntegerValue:I

    int-to-float v0, v0

    return v0

    .line 110
    :pswitch_2b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Color does not have a single color to interpolate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2b
        :pswitch_27
        :pswitch_24
        :pswitch_1c
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public getValuesToInterpolate([F)V
    .registers 15
    .param p1, "ret"    # [F

    .line 122
    sget-object v0, Landroid/support/constraint/ConstraintAttribute$1;->$SwitchMap$android$support$constraint$ConstraintAttribute$AttributeType:[I

    iget-object v1, p0, Landroid/support/constraint/ConstraintAttribute;->mType:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    invoke-virtual {v1}, Landroid/support/constraint/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_70

    goto :goto_6f

    .line 149
    :pswitch_f
    iget v0, p0, Landroid/support/constraint/ConstraintAttribute;->mFloatValue:F

    aput v0, p1, v1

    goto :goto_6f

    .line 146
    :pswitch_14
    iget-boolean v0, p0, Landroid/support/constraint/ConstraintAttribute;->mBooleanValue:Z

    if-eqz v0, :cond_1b

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    aput v0, p1, v1

    .line 147
    goto :goto_6f

    .line 144
    :pswitch_1f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Color does not have a single color to interpolate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :pswitch_27
    iget v0, p0, Landroid/support/constraint/ConstraintAttribute;->mFloatValue:F

    aput v0, p1, v1

    .line 128
    goto :goto_6f

    .line 124
    :pswitch_2c
    iget v0, p0, Landroid/support/constraint/ConstraintAttribute;->mIntegerValue:I

    int-to-float v0, v0

    aput v0, p1, v1

    .line 125
    goto :goto_6f

    .line 131
    :pswitch_32
    iget v0, p0, Landroid/support/constraint/ConstraintAttribute;->mColorValue:I

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    .line 132
    .local v2, "a":I
    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 133
    .local v3, "r":I
    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 134
    .local v4, "g":I
    and-int/lit16 v0, v0, 0xff

    .line 135
    .local v0, "b":I
    int-to-float v5, v3

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    float-to-double v7, v5

    const-wide v9, 0x400199999999999aL    # 2.2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v5, v7

    .line 136
    .local v5, "f_r":F
    int-to-float v7, v4

    div-float/2addr v7, v6

    float-to-double v7, v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 137
    .local v7, "f_g":F
    int-to-float v8, v0

    div-float/2addr v8, v6

    float-to-double v11, v8

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 138
    .local v8, "f_b":F
    aput v5, p1, v1

    .line 139
    const/4 v1, 0x1

    aput v7, p1, v1

    .line 140
    const/4 v1, 0x2

    aput v8, p1, v1

    .line 141
    const/4 v1, 0x3

    int-to-float v9, v2

    div-float/2addr v9, v6

    aput v9, p1, v1

    .line 142
    nop

    .line 152
    .end local v0    # "b":I
    .end local v2    # "a":I
    .end local v3    # "r":I
    .end local v4    # "g":I
    .end local v5    # "f_r":F
    .end local v7    # "f_g":F
    .end local v8    # "f_b":F
    :goto_6f
    return-void

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_32
        :pswitch_32
        :pswitch_2c
        :pswitch_27
        :pswitch_1f
        :pswitch_14
        :pswitch_f
    .end packed-switch
.end method

.method public noOfInterpValues()I
    .registers 3

    .line 88
    sget-object v0, Landroid/support/constraint/ConstraintAttribute$1;->$SwitchMap$android$support$constraint$ConstraintAttribute$AttributeType:[I

    iget-object v1, p0, Landroid/support/constraint/ConstraintAttribute;->mType:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    invoke-virtual {v1}, Landroid/support/constraint/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 93
    const/4 v0, 0x1

    return v0

    .line 91
    :pswitch_f
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public setColorValue(I)V
    .registers 2
    .param p1, "value"    # I

    .line 70
    iput p1, p0, Landroid/support/constraint/ConstraintAttribute;->mColorValue:I

    .line 71
    return-void
.end method

.method public setFloatValue(F)V
    .registers 2
    .param p1, "value"    # F

    .line 66
    iput p1, p0, Landroid/support/constraint/ConstraintAttribute;->mFloatValue:F

    .line 67
    return-void
.end method

.method public setIntValue(I)V
    .registers 2
    .param p1, "value"    # I

    .line 74
    iput p1, p0, Landroid/support/constraint/ConstraintAttribute;->mIntegerValue:I

    .line 75
    return-void
.end method

.method public setInterpolatedValue(Landroid/view/View;[F)V
    .registers 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # [F

    .line 340
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "\""

    const-string v4, "on View \""

    const-string v5, "TransitionLayout"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 342
    .local v6, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v1, Landroid/support/constraint/ConstraintAttribute;->mName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 345
    .local v7, "methodName":Ljava/lang/String;
    :try_start_23
    sget-object v0, Landroid/support/constraint/ConstraintAttribute$1;->$SwitchMap$android$support$constraint$ConstraintAttribute$AttributeType:[I

    iget-object v8, v1, Landroid/support/constraint/ConstraintAttribute;->mType:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    invoke-virtual {v8}, Landroid/support/constraint/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v8

    aget v0, v0, v8

    const/4 v8, 0x3

    const/4 v9, 0x2

    const-wide v10, 0x3fdd1745d1745d17L    # 0.45454545454545453

    const/high16 v12, 0x437f0000    # 255.0f

    const/4 v13, 0x1

    const/4 v14, 0x0

    packed-switch v0, :pswitch_data_1dc

    goto/16 :goto_1d9

    .line 383
    :pswitch_3d
    new-array v0, v13, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v8, v0, v14

    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 384
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v8, v13, [Ljava/lang/Object;

    aget v9, p2, v14

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-virtual {v0, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d9

    .line 379
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :pswitch_56
    new-array v0, v13, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v0, v14

    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 380
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    new-array v8, v13, [Ljava/lang/Object;

    aget v9, p2, v14

    const/high16 v10, 0x3f000000    # 0.5f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v13, 0x0

    :goto_6c
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-virtual {v0, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    goto/16 :goto_1d9

    .line 376
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :pswitch_77
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unable to interpolate strings "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/support/constraint/ConstraintAttribute;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v6    # "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local v7    # "methodName":Ljava/lang/String;
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "value":[F
    throw v0

    .line 351
    .restart local v6    # "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local v7    # "methodName":Ljava/lang/String;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "value":[F
    :pswitch_92
    new-array v0, v13, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v8, v0, v14

    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 352
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    new-array v8, v13, [Ljava/lang/Object;

    aget v9, p2, v14

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-virtual {v0, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    goto/16 :goto_1d9

    .line 347
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :pswitch_ab
    new-array v0, v13, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v0, v14

    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 348
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    new-array v8, v13, [Ljava/lang/Object;

    aget v9, p2, v14

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-virtual {v0, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    goto/16 :goto_1d9

    .line 355
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :pswitch_c5
    new-array v0, v13, [Ljava/lang/Class;

    const-class v15, Landroid/graphics/drawable/Drawable;

    aput-object v15, v0, v14

    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 356
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    aget v15, p2, v14

    float-to-double v14, v15

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float v14, v14, v12

    float-to-int v14, v14

    invoke-static {v14}, Landroid/support/constraint/ConstraintAttribute;->clamp(I)I

    move-result v14

    .line 357
    .local v14, "r":I
    aget v15, p2, v13

    move/from16 v16, v14

    .end local v14    # "r":I
    .local v16, "r":I
    float-to-double v13, v15

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float v13, v13, v12

    float-to-int v13, v13

    invoke-static {v13}, Landroid/support/constraint/ConstraintAttribute;->clamp(I)I

    move-result v13

    .line 358
    .local v13, "g":I
    aget v9, p2, v9

    float-to-double v14, v9

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v9, v9, v12

    float-to-int v9, v9

    invoke-static {v9}, Landroid/support/constraint/ConstraintAttribute;->clamp(I)I

    move-result v9

    .line 359
    .local v9, "b":I
    aget v8, p2, v8

    mul-float v8, v8, v12

    float-to-int v8, v8

    invoke-static {v8}, Landroid/support/constraint/ConstraintAttribute;->clamp(I)I

    move-result v8

    .line 360
    .local v8, "a":I
    shl-int/lit8 v10, v8, 0x18

    shl-int/lit8 v11, v16, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v13, 0x8

    or-int/2addr v10, v11

    or-int/2addr v10, v9

    .line 361
    .local v10, "color":I
    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 362
    .local v11, "drawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 363
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v11, v12, v14

    invoke-virtual {v0, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    nop

    .end local v8    # "a":I
    .end local v9    # "b":I
    .end local v10    # "color":I
    .end local v11    # "drawable":Landroid/graphics/drawable/ColorDrawable;
    .end local v13    # "g":I
    .end local v16    # "r":I
    goto/16 :goto_1d9

    .line 367
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :pswitch_124
    const/4 v0, 0x1

    new-array v13, v0, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    invoke-virtual {v6, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 368
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    aget v13, p2, v14

    float-to-double v13, v13

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float v13, v13, v12

    float-to-int v13, v13

    invoke-static {v13}, Landroid/support/constraint/ConstraintAttribute;->clamp(I)I

    move-result v13

    .line 369
    .local v13, "r":I
    const/4 v14, 0x1

    aget v15, p2, v14

    float-to-double v14, v15

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float v14, v14, v12

    float-to-int v14, v14

    invoke-static {v14}, Landroid/support/constraint/ConstraintAttribute;->clamp(I)I

    move-result v14

    .line 370
    .local v14, "g":I
    aget v9, p2, v9

    float-to-double v8, v9

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v8, v8, v12

    float-to-int v8, v8

    invoke-static {v8}, Landroid/support/constraint/ConstraintAttribute;->clamp(I)I

    move-result v8

    .line 371
    .local v8, "b":I
    const/4 v9, 0x3

    aget v9, p2, v9

    mul-float v9, v9, v12

    float-to-int v9, v9

    invoke-static {v9}, Landroid/support/constraint/ConstraintAttribute;->clamp(I)I

    move-result v9

    .line 372
    .local v9, "a":I
    shl-int/lit8 v10, v9, 0x18

    shl-int/lit8 v11, v13, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v14, 0x8

    or-int/2addr v10, v11

    or-int/2addr v10, v8

    .line 373
    .restart local v10    # "color":I
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x0

    aput-object v12, v11, v15

    invoke-virtual {v0, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_23 .. :try_end_17e} :catch_1af
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_17e} :catch_184
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_17e} :catch_17f

    .line 374
    goto :goto_1d9

    .line 393
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "b":I
    .end local v9    # "a":I
    .end local v10    # "color":I
    .end local v13    # "r":I
    .end local v14    # "g":I
    :catch_17f
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1da

    .line 390
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_184
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot access method "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1d9

    .line 387
    :catch_1af
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no method "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 395
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1d9
    nop

    .line 396
    :goto_1da
    return-void

    nop

    :pswitch_data_1dc
    .packed-switch 0x1
        :pswitch_124
        :pswitch_c5
        :pswitch_ab
        :pswitch_92
        :pswitch_77
        :pswitch_56
        :pswitch_3d
    .end packed-switch
.end method

.method public setStringValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Landroid/support/constraint/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 225
    sget-object v0, Landroid/support/constraint/ConstraintAttribute$1;->$SwitchMap$android$support$constraint$ConstraintAttribute$AttributeType:[I

    iget-object v1, p0, Landroid/support/constraint/ConstraintAttribute;->mType:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    invoke-virtual {v1}, Landroid/support/constraint/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    goto :goto_46

    .line 243
    :pswitch_e
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintAttribute;->mFloatValue:F

    goto :goto_46

    .line 240
    :pswitch_18
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintAttribute;->mBooleanValue:Z

    .line 241
    goto :goto_46

    .line 237
    :pswitch_22
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/support/constraint/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    .line 238
    goto :goto_46

    .line 230
    :pswitch_28
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintAttribute;->mFloatValue:F

    .line 231
    goto :goto_46

    .line 227
    :pswitch_32
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintAttribute;->mIntegerValue:I

    .line 228
    goto :goto_46

    .line 234
    :pswitch_3c
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintAttribute;->mColorValue:I

    .line 235
    nop

    .line 246
    :goto_46
    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3c
        :pswitch_32
        :pswitch_28
        :pswitch_22
        :pswitch_18
        :pswitch_e
    .end packed-switch
.end method

.method public setValue([F)V
    .registers 8
    .param p1, "value"    # [F

    .line 155
    sget-object v0, Landroid/support/constraint/ConstraintAttribute$1;->$SwitchMap$android$support$constraint$ConstraintAttribute$AttributeType:[I

    iget-object v1, p0, Landroid/support/constraint/ConstraintAttribute;->mType:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    invoke-virtual {v1}, Landroid/support/constraint/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_52

    goto :goto_50

    .line 173
    :pswitch_f
    aget v0, p1, v1

    iput v0, p0, Landroid/support/constraint/ConstraintAttribute;->mFloatValue:F

    goto :goto_50

    .line 170
    :pswitch_14
    aget v0, p1, v1

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintAttribute;->mBooleanValue:Z

    .line 171
    goto :goto_50

    .line 168
    :pswitch_21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Color does not have a single color to interpolate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :pswitch_29
    aget v0, p1, v1

    iput v0, p0, Landroid/support/constraint/ConstraintAttribute;->mFloatValue:F

    .line 161
    goto :goto_50

    .line 157
    :pswitch_2e
    aget v0, p1, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/constraint/ConstraintAttribute;->mIntegerValue:I

    .line 158
    goto :goto_50

    .line 164
    :pswitch_34
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintAttribute;->mColorValue:I

    .line 165
    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x3

    aget v2, p1, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-static {v1}, Landroid/support/constraint/ConstraintAttribute;->clamp(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/ConstraintAttribute;->mColorValue:I

    .line 166
    nop

    .line 176
    :goto_50
    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_34
        :pswitch_34
        :pswitch_2e
        :pswitch_29
        :pswitch_21
        :pswitch_14
        :pswitch_f
    .end packed-switch
.end method
