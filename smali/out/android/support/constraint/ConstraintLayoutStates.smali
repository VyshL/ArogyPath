.class public Landroid/support/constraint/ConstraintLayoutStates;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayoutStates$Variant;,
        Landroid/support/constraint/ConstraintLayoutStates$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ConstraintLayoutStates"


# instance fields
.field private final mConstraintLayout:Landroid/support/constraint/ConstraintLayout;

.field private mConstraintSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/ConstraintSet;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintsChangedListener:Landroid/support/constraint/ConstraintsChangedListener;

.field mCurrentConstraintNumber:I

.field mCurrentStateId:I

.field mDefaultConstraintSet:Landroid/support/constraint/ConstraintSet;

.field private mStateList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/ConstraintLayoutStates$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/constraint/ConstraintLayout;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # Landroid/support/constraint/ConstraintLayout;
    .param p3, "resourceID"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayoutStates;->mCurrentStateId:I

    .line 43
    iput v0, p0, Landroid/support/constraint/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayoutStates;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayoutStates;->mConstraintsChangedListener:Landroid/support/constraint/ConstraintsChangedListener;

    .line 49
    iput-object p2, p0, Landroid/support/constraint/ConstraintLayoutStates;->mConstraintLayout:Landroid/support/constraint/ConstraintLayout;

    .line 50
    invoke-direct {p0, p1, p3}, Landroid/support/constraint/ConstraintLayoutStates;->load(Landroid/content/Context;I)V

    .line 51
    return-void
.end method

.method private load(Landroid/content/Context;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 286
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 287
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 288
    .local v2, "document":Ljava/lang/String;
    const/4 v3, 0x0

    .line 291
    .local v3, "tagName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 292
    .local v4, "state":Landroid/support/constraint/ConstraintLayoutStates$State;
    :try_start_b
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 293
    .local v5, "eventType":I
    :goto_f
    const/4 v6, 0x1

    if-eq v5, v6, :cond_a3

    .line 295
    packed-switch v5, :pswitch_data_b0

    :pswitch_15
    goto/16 :goto_9c

    .line 325
    :pswitch_17
    const/4 v3, 0x0

    .line 326
    goto/16 :goto_9c

    .line 300
    :pswitch_1a
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 301
    const/4 v7, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_bc

    :cond_27
    goto :goto_59

    :sswitch_28
    const-string v6, "Variant"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    const/4 v6, 0x3

    goto :goto_5a

    :sswitch_32
    const-string v6, "layoutDescription"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    const/4 v6, 0x0

    goto :goto_5a

    :sswitch_3c
    const-string v8, "StateSet"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    goto :goto_5a

    :sswitch_45
    const-string v6, "State"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    const/4 v6, 0x2

    goto :goto_5a

    :sswitch_4f
    const-string v6, "ConstraintSet"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    const/4 v6, 0x4

    goto :goto_5a

    :goto_59
    const/4 v6, -0x1

    :goto_5a
    packed-switch v6, :pswitch_data_d2

    .line 320
    const-string v6, "ConstraintLayoutStates"

    goto :goto_7f

    .line 317
    :pswitch_60
    invoke-direct {p0, p1, v1}, Landroid/support/constraint/ConstraintLayoutStates;->parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 318
    goto :goto_95

    .line 311
    :pswitch_64
    new-instance v6, Landroid/support/constraint/ConstraintLayoutStates$Variant;

    invoke-direct {v6, p1, v1}, Landroid/support/constraint/ConstraintLayoutStates$Variant;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 312
    .local v6, "match":Landroid/support/constraint/ConstraintLayoutStates$Variant;
    if-eqz v4, :cond_95

    .line 313
    invoke-virtual {v4, v6}, Landroid/support/constraint/ConstraintLayoutStates$State;->add(Landroid/support/constraint/ConstraintLayoutStates$Variant;)V

    goto :goto_95

    .line 307
    .end local v6    # "match":Landroid/support/constraint/ConstraintLayoutStates$Variant;
    :pswitch_6f
    new-instance v6, Landroid/support/constraint/ConstraintLayoutStates$State;

    invoke-direct {v6, p1, v1}, Landroid/support/constraint/ConstraintLayoutStates$State;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v4, v6

    .line 308
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    iget v7, v4, Landroid/support/constraint/ConstraintLayoutStates$State;->mId:I

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    goto :goto_95

    .line 305
    :pswitch_7d
    goto :goto_95

    .line 303
    :pswitch_7e
    goto :goto_95

    .line 320
    :goto_7f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_95
    :goto_95
    goto :goto_9c

    .line 297
    :pswitch_96
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 298
    nop

    .line 294
    :goto_9c
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_a0} :catch_a9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_a0} :catch_a4

    move v5, v6

    goto/16 :goto_f

    .line 293
    .end local v4    # "state":Landroid/support/constraint/ConstraintLayoutStates$State;
    .end local v5    # "eventType":I
    :cond_a3
    goto :goto_ad

    .line 341
    :catch_a4
    move-exception v4

    .line 342
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ae

    .line 339
    .end local v4    # "e":Ljava/io/IOException;
    :catch_a9
    move-exception v4

    .line 340
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 343
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_ad
    nop

    .line 344
    :goto_ae
    return-void

    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_96
        :pswitch_15
        :pswitch_1a
        :pswitch_17
    .end packed-switch

    :sswitch_data_bc
    .sparse-switch
        -0x50764adb -> :sswitch_4f
        0x4c7d471 -> :sswitch_45
        0x526c4e31 -> :sswitch_3c
        0x62ce7272 -> :sswitch_32
        0x7155a865 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7d
        :pswitch_6f
        :pswitch_64
        :pswitch_60
    .end packed-switch
.end method

.method private parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 347
    new-instance v0, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 348
    .local v0, "set":Landroid/support/constraint/ConstraintSet;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 349
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_64

    .line 350
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 351
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "s":Ljava/lang/String;
    const/4 v5, -0x1

    .line 354
    .local v5, "id":I
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3d

    .line 355
    const/16 v6, 0x2f

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, "tmp":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v4, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 359
    .end local v6    # "tmp":Ljava/lang/String;
    :cond_3d
    const/4 v4, -0x1

    if-ne v5, v4, :cond_58

    .line 360
    if-eqz v3, :cond_51

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_51

    .line 361
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_58

    .line 363
    :cond_51
    const-string v4, "ConstraintLayoutStates"

    const-string v6, "error in parsing id"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_58
    :goto_58
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 370
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayoutStates;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    goto :goto_64

    .line 349
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "id":I
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 374
    .end local v2    # "i":I
    :cond_64
    :goto_64
    return-void
.end method


# virtual methods
.method public needsToChange(IFF)Z
    .registers 9
    .param p1, "id"    # I
    .param p2, "width"    # F
    .param p3, "height"    # F

    .line 54
    iget v0, p0, Landroid/support/constraint/ConstraintLayoutStates;->mCurrentStateId:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_6

    .line 55
    return v1

    .line 58
    :cond_6
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_11

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    :cond_11
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_17
    check-cast v0, Landroid/support/constraint/ConstraintLayoutStates$State;

    .line 60
    .local v0, "state":Landroid/support/constraint/ConstraintLayoutStates$State;
    iget v4, p0, Landroid/support/constraint/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    if-eq v4, v2, :cond_2e

    .line 61
    iget-object v2, v0, Landroid/support/constraint/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    iget v4, p0, Landroid/support/constraint/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintLayoutStates$Variant;

    invoke-virtual {v2, p2, p3}, Landroid/support/constraint/ConstraintLayoutStates$Variant;->match(FF)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 62
    return v3

    .line 66
    :cond_2e
    iget v2, p0, Landroid/support/constraint/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    invoke-virtual {v0, p2, p3}, Landroid/support/constraint/ConstraintLayoutStates$State;->findMatch(FF)I

    move-result v4

    if-ne v2, v4, :cond_37

    .line 67
    return v3

    .line 69
    :cond_37
    return v1
.end method

.method public setOnConstraintsChanged(Landroid/support/constraint/ConstraintsChangedListener;)V
    .registers 2
    .param p1, "constraintsChangedListener"    # Landroid/support/constraint/ConstraintsChangedListener;

    .line 133
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayoutStates;->mConstraintsChangedListener:Landroid/support/constraint/ConstraintsChangedListener;

    .line 134
    return-void
.end method

.method public updateConstraints(IFF)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "width"    # F
    .param p3, "height"    # F

    .line 73
    iget v0, p0, Landroid/support/constraint/ConstraintLayoutStates;->mCurrentStateId:I

    const/4 v1, -0x1

    if-ne v0, p1, :cond_70

    .line 75
    if-ne p1, v1, :cond_11

    .line 76
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayoutStates$State;

    .local v0, "state":Landroid/support/constraint/ConstraintLayoutStates$State;
    goto :goto_19

    .line 78
    .end local v0    # "state":Landroid/support/constraint/ConstraintLayoutStates$State;
    :cond_11
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayoutStates$State;

    .line 81
    .restart local v0    # "state":Landroid/support/constraint/ConstraintLayoutStates$State;
    :goto_19
    iget v2, p0, Landroid/support/constraint/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    if-eq v2, v1, :cond_2e

    .line 82
    iget-object v2, v0, Landroid/support/constraint/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    iget v3, p0, Landroid/support/constraint/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintLayoutStates$Variant;

    invoke-virtual {v2, p2, p3}, Landroid/support/constraint/ConstraintLayoutStates$Variant;->match(FF)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 83
    return-void

    .line 86
    :cond_2e
    invoke-virtual {v0, p2, p3}, Landroid/support/constraint/ConstraintLayoutStates$State;->findMatch(FF)I

    move-result v2

    .line 87
    .local v2, "match":I
    iget v3, p0, Landroid/support/constraint/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    if-ne v3, v2, :cond_37

    .line 88
    return-void

    .line 91
    :cond_37
    if-ne v2, v1, :cond_3c

    iget-object v3, p0, Landroid/support/constraint/ConstraintLayoutStates;->mDefaultConstraintSet:Landroid/support/constraint/ConstraintSet;

    goto :goto_46

    :cond_3c
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayoutStates$Variant;

    iget-object v3, v3, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    :goto_46
    nop

    .line 93
    .local v3, "constraintSet":Landroid/support/constraint/ConstraintSet;
    if-ne v2, v1, :cond_4c

    iget v4, v0, Landroid/support/constraint/ConstraintLayoutStates$State;->mConstraintID:I

    goto :goto_56

    :cond_4c
    iget-object v4, v0, Landroid/support/constraint/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintLayoutStates$Variant;

    iget v4, v4, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mConstraintID:I

    :goto_56
    nop

    .line 95
    .local v4, "cid":I
    if-nez v3, :cond_5a

    .line 96
    return-void

    .line 98
    :cond_5a
    iput v2, p0, Landroid/support/constraint/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 99
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayoutStates;->mConstraintsChangedListener:Landroid/support/constraint/ConstraintsChangedListener;

    if-eqz v5, :cond_63

    .line 100
    invoke-virtual {v5, v1, v4}, Landroid/support/constraint/ConstraintsChangedListener;->preLayoutChange(II)V

    .line 102
    :cond_63
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayoutStates;->mConstraintLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v5}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    .line 103
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayoutStates;->mConstraintsChangedListener:Landroid/support/constraint/ConstraintsChangedListener;

    if-eqz v5, :cond_6f

    .line 104
    invoke-virtual {v5, v1, v4}, Landroid/support/constraint/ConstraintsChangedListener;->postLayoutChange(II)V

    .line 107
    .end local v0    # "state":Landroid/support/constraint/ConstraintLayoutStates$State;
    .end local v2    # "match":I
    .end local v3    # "constraintSet":Landroid/support/constraint/ConstraintSet;
    .end local v4    # "cid":I
    :cond_6f
    goto :goto_e2

    .line 108
    :cond_70
    iput p1, p0, Landroid/support/constraint/ConstraintLayoutStates;->mCurrentStateId:I

    .line 109
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayoutStates$State;

    .line 110
    .restart local v0    # "state":Landroid/support/constraint/ConstraintLayoutStates$State;
    invoke-virtual {v0, p2, p3}, Landroid/support/constraint/ConstraintLayoutStates$State;->findMatch(FF)I

    move-result v2

    .line 111
    .restart local v2    # "match":I
    if-ne v2, v1, :cond_83

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayoutStates$State;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    goto :goto_8d

    :cond_83
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayoutStates$Variant;

    iget-object v3, v3, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    :goto_8d
    nop

    .line 113
    .restart local v3    # "constraintSet":Landroid/support/constraint/ConstraintSet;
    if-ne v2, v1, :cond_93

    iget v1, v0, Landroid/support/constraint/ConstraintLayoutStates$State;->mConstraintID:I

    goto :goto_9d

    :cond_93
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayoutStates$Variant;

    iget v1, v1, Landroid/support/constraint/ConstraintLayoutStates$Variant;->mConstraintID:I

    :goto_9d
    nop

    .line 116
    .local v1, "cid":I
    if-nez v3, :cond_cd

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NO Constraint set found ! id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dim ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ConstraintLayoutStates"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 120
    :cond_cd
    iput v2, p0, Landroid/support/constraint/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 121
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayoutStates;->mConstraintsChangedListener:Landroid/support/constraint/ConstraintsChangedListener;

    if-eqz v4, :cond_d6

    .line 122
    invoke-virtual {v4, p1, v1}, Landroid/support/constraint/ConstraintsChangedListener;->preLayoutChange(II)V

    .line 124
    :cond_d6
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayoutStates;->mConstraintLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    .line 125
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayoutStates;->mConstraintsChangedListener:Landroid/support/constraint/ConstraintsChangedListener;

    if-eqz v4, :cond_e2

    .line 126
    invoke-virtual {v4, p1, v1}, Landroid/support/constraint/ConstraintsChangedListener;->postLayoutChange(II)V

    .line 130
    .end local v0    # "state":Landroid/support/constraint/ConstraintLayoutStates$State;
    .end local v1    # "cid":I
    .end local v2    # "match":I
    .end local v3    # "constraintSet":Landroid/support/constraint/ConstraintSet;
    :cond_e2
    :goto_e2
    return-void
.end method
