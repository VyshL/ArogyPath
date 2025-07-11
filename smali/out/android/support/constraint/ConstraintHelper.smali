.class public abstract Landroid/support/constraint/ConstraintHelper;
.super Landroid/view/View;
.source "ConstraintHelper.java"


# instance fields
.field protected mCount:I

.field protected mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

.field protected mIds:[I

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mReferenceIds:Ljava/lang/String;

.field protected mReferenceTags:Ljava/lang/String;

.field protected mUseViewMeasure:Z

.field private mViews:[Landroid/view/View;

.field protected myContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    .line 84
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    .line 90
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p0, p2}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    .line 96
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p0, p2}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method private addID(Ljava/lang/String;)V
    .registers 6
    .param p1, "idString"    # Ljava/lang/String;

    .line 252
    if-eqz p1, :cond_54

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_54

    .line 255
    :cond_9
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    if-nez v0, :cond_e

    .line 256
    return-void

    .line 259
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "parent":Landroid/support/constraint/ConstraintLayout;
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_22

    .line 263
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    .line 265
    :cond_22
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;->findId(Ljava/lang/String;)I

    move-result v1

    .line 266
    .local v1, "rscId":I
    if-eqz v1, :cond_35

    .line 267
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintHelper;->addRscID(I)V

    goto :goto_53

    .line 270
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find id of \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConstraintHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_53
    return-void

    .line 253
    .end local v0    # "parent":Landroid/support/constraint/ConstraintLayout;
    .end local v1    # "rscId":I
    :cond_54
    :goto_54
    return-void
.end method

.method private addRscID(I)V
    .registers 5
    .param p1, "id"    # I

    .line 203
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getId()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 204
    return-void

    .line 206
    :cond_7
    iget v0, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    array-length v2, v1

    if-le v0, v2, :cond_19

    .line 207
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    .line 209
    :cond_19
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    aput p1, v0, v1

    .line 210
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    .line 211
    return-void
.end method

.method private addTag(Ljava/lang/String;)V
    .registers 11
    .param p1, "tagString"    # Ljava/lang/String;

    .line 278
    if-eqz p1, :cond_82

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_82

    .line 281
    :cond_a
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 282
    return-void

    .line 285
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "parent":Landroid/support/constraint/ConstraintLayout;
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_23

    .line 289
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    .line 291
    :cond_23
    const-string v1, "ConstraintHelper"

    if-nez v0, :cond_2d

    .line 292
    const-string v2, "Parent not a ConstraintLayout"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 295
    :cond_2d
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v2

    .line 296
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_32
    if-ge v3, v2, :cond_81

    .line 297
    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 298
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 299
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v6, :cond_7e

    .line 300
    move-object v6, v5

    check-cast v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 301
    .local v6, "lp":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v7, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 302
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_77

    .line 303
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "to use ConstraintTag view "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " must have an ID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 305
    :cond_77
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/support/constraint/ConstraintHelper;->addRscID(I)V

    .line 296
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "lp":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_7e
    :goto_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 311
    .end local v3    # "i":I
    :cond_81
    return-void

    .line 279
    .end local v0    # "parent":Landroid/support/constraint/ConstraintLayout;
    .end local v2    # "count":I
    :cond_82
    :goto_82
    return-void
.end method

.method private convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "referenceIdString"    # Ljava/lang/String;

    .line 574
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "split":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 576
    .local v1, "context":Landroid/content/Context;
    array-length v2, v0

    new-array v2, v2, [I

    .line 577
    .local v2, "rscIds":[I
    const/4 v3, 0x0

    .line 578
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    array-length v5, v0

    if-ge v4, v5, :cond_26

    .line 579
    aget-object v5, v0, v4

    .line 580
    .local v5, "idString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 581
    invoke-direct {p0, v5}, Landroid/support/constraint/ConstraintHelper;->findId(Ljava/lang/String;)I

    move-result v6

    .line 582
    .local v6, "id":I
    if-eqz v6, :cond_23

    .line 583
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "count":I
    .local v7, "count":I
    aput v6, v2, v3

    move v3, v7

    .line 578
    .end local v5    # "idString":Ljava/lang/String;
    .end local v6    # "id":I
    .end local v7    # "count":I
    .restart local v3    # "count":I
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 586
    .end local v4    # "i":I
    :cond_26
    array-length v4, v0

    if-eq v3, v4, :cond_2d

    .line 587
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 589
    :cond_2d
    return-object v2
.end method

.method private findId(Landroid/support/constraint/ConstraintLayout;Ljava/lang/String;)I
    .registers 10
    .param p1, "container"    # Landroid/support/constraint/ConstraintLayout;
    .param p2, "idString"    # Ljava/lang/String;

    .line 368
    const/4 v0, 0x0

    if-eqz p2, :cond_3c

    if-nez p1, :cond_6

    goto :goto_3c

    .line 371
    :cond_6
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 372
    .local v1, "resources":Landroid/content/res/Resources;
    if-nez v1, :cond_f

    .line 373
    return v0

    .line 375
    :cond_f
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v2

    .line 376
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_14
    if-ge v3, v2, :cond_3b

    .line 377
    invoke-virtual {p1, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 378
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_38

    .line 379
    const/4 v5, 0x0

    .line 381
    .local v5, "res":Ljava/lang/String;
    :try_start_22
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_2a} :catch_2c

    move-object v5, v6

    .line 384
    goto :goto_2d

    .line 382
    :catch_2c
    move-exception v6

    .line 385
    :goto_2d
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 386
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v0

    return v0

    .line 376
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "res":Ljava/lang/String;
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 390
    .end local v3    # "j":I
    :cond_3b
    return v0

    .line 369
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "count":I
    :cond_3c
    :goto_3c
    return v0
.end method

.method private findId(Ljava/lang/String;)I
    .registers 7
    .param p1, "referenceId"    # Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "parent":Landroid/support/constraint/ConstraintLayout;
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_10

    .line 321
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    .line 323
    :cond_10
    const/4 v1, 0x0

    .line 326
    .local v1, "rscId":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_29

    if-eqz v0, :cond_29

    .line 327
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Landroid/support/constraint/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 328
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_29

    .line 329
    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 334
    .end local v2    # "value":Ljava/lang/Object;
    :cond_29
    if-nez v1, :cond_31

    if-eqz v0, :cond_31

    .line 336
    invoke-direct {p0, v0, p1}, Landroid/support/constraint/ConstraintHelper;->findId(Landroid/support/constraint/ConstraintLayout;Ljava/lang/String;)I

    move-result v1

    .line 339
    :cond_31
    if-nez v1, :cond_41

    .line 341
    :try_start_33
    const-class v2, Landroid/support/constraint/R$id;

    .line 342
    .local v2, "res":Ljava/lang/Class;
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 343
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_40

    move v1, v4

    .line 346
    .end local v2    # "res":Ljava/lang/Class;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    goto :goto_41

    .line 344
    :catch_40
    move-exception v2

    .line 349
    :cond_41
    :goto_41
    if-nez v1, :cond_55

    .line 352
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 353
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 352
    const-string v4, "id"

    invoke-virtual {v2, p1, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 356
    :cond_55
    return v1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 139
    if-ne p1, p0, :cond_3

    .line 140
    return-void

    .line 142
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "ConstraintHelper"

    if-ne v0, v1, :cond_12

    .line 143
    const-string v0, "Views added to a ConstraintHelper need to have an id"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 146
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 147
    const-string v0, "Views added to a ConstraintHelper need to have a parent"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 150
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintHelper;->addRscID(I)V

    .line 152
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->requestLayout()V

    .line 153
    return-void
.end method

.method protected applyLayoutFeatures()V
    .registers 3

    .line 461
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 462
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_10

    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_10

    .line 463
    move-object v1, v0

    check-cast v1, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroid/support/constraint/ConstraintHelper;->applyLayoutFeatures(Landroid/support/constraint/ConstraintLayout;)V

    .line 465
    :cond_10
    return-void
.end method

.method protected applyLayoutFeatures(Landroid/support/constraint/ConstraintLayout;)V
    .registers 9
    .param p1, "container"    # Landroid/support/constraint/ConstraintLayout;

    .line 440
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getVisibility()I

    move-result v0

    .line 441
    .local v0, "visibility":I
    const/4 v1, 0x0

    .line 442
    .local v1, "elevation":F
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_f

    .line 443
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getElevation()F

    move-result v1

    .line 445
    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    iget v4, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge v2, v4, :cond_35

    .line 446
    iget-object v4, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v4, v4, v2

    .line 447
    .local v4, "id":I
    invoke-virtual {p1, v4}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v5

    .line 448
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_32

    .line 449
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 450
    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-lez v6, :cond_32

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_32

    .line 451
    invoke-virtual {v5}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    add-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationZ(F)V

    .line 445
    .end local v4    # "id":I
    .end local v5    # "view":Landroid/view/View;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 455
    .end local v2    # "i":I
    :cond_35
    return-void
.end method

.method public getReferencedIds()[I
    .registers 3

    .line 184
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method protected getViews(Landroid/support/constraint/ConstraintLayout;)[Landroid/view/View;
    .registers 6
    .param p1, "layout"    # Landroid/support/constraint/ConstraintLayout;

    .line 514
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    if-eqz v0, :cond_9

    array-length v0, v0

    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-eq v0, v1, :cond_f

    .line 515
    :cond_9
    iget v0, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    .line 518
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge v0, v1, :cond_23

    .line 519
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v1, v1, v0

    .line 520
    .local v1, "id":I
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    .line 518
    .end local v1    # "id":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 522
    .end local v0    # "i":I
    :cond_23
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mViews:[Landroid/view/View;

    return-object v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 104
    if-eqz p1, :cond_38

    .line 105
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 107
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_35

    .line 108
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 109
    .local v3, "attr":I
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraint_referenced_ids:I

    if-ne v3, v4, :cond_25

    .line 110
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 111
    invoke-virtual {p0, v4}, Landroid/support/constraint/ConstraintHelper;->setIds(Ljava/lang/String;)V

    goto :goto_32

    .line 112
    :cond_25
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraint_referenced_tags:I

    if-ne v3, v4, :cond_32

    .line 113
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceTags:Ljava/lang/String;

    .line 114
    invoke-virtual {p0, v4}, Landroid/support/constraint/ConstraintHelper;->setReferenceTags(Ljava/lang/String;)V

    .line 107
    .end local v3    # "attr":I
    :cond_32
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 117
    .end local v2    # "i":I
    :cond_35
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "N":I
    :cond_38
    return-void
.end method

.method public loadParameters(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/support/constraint/solver/widgets/HelperWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .registers 8
    .param p1, "constraint"    # Landroid/support/constraint/ConstraintSet$Constraint;
    .param p2, "child"    # Landroid/support/constraint/solver/widgets/HelperWidget;
    .param p3, "layoutParams"    # Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/ConstraintSet$Constraint;",
            "Landroid/support/constraint/solver/widgets/HelperWidget;",
            "Landroid/support/constraint/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 554
    .local p4, "mapIdToWidget":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz v0, :cond_e

    .line 555
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setReferencedIds([I)V

    goto :goto_2a

    .line 556
    :cond_e
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 557
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a

    .line 558
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v1, v1, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    invoke-direct {p0, p0, v1}, Landroid/support/constraint/ConstraintHelper;->convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    .line 561
    :cond_2a
    :goto_2a
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/HelperWidget;->removeAllIds()V

    .line 562
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz v0, :cond_4f

    .line 563
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_34
    iget-object v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v1, v1, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4f

    .line 564
    iget-object v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-object v1, v1, Landroid/support/constraint/ConstraintSet$Layout;->mReferenceIds:[I

    aget v1, v1, v0

    .line 565
    .local v1, "id":I
    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 566
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v2, :cond_4c

    .line 567
    invoke-virtual {p2, v2}, Landroid/support/constraint/solver/widgets/HelperWidget;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 563
    .end local v1    # "id":I
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 571
    .end local v0    # "i":I
    :cond_4f
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 123
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 124
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 125
    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 127
    :cond_a
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceTags:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 128
    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setReferenceTags(Ljava/lang/String;)V

    .line 130
    :cond_11
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 219
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 226
    iget-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    if-eqz v0, :cond_8

    .line 227
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_c

    .line 229
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/support/constraint/ConstraintHelper;->setMeasuredDimension(II)V

    .line 231
    :goto_c
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 162
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 163
    return-void

    .line 165
    :cond_8
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget v2, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge v1, v2, :cond_37

    .line 167
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_34

    .line 168
    move v2, v1

    .local v2, "j":I
    :goto_17
    iget v3, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    add-int/lit8 v4, v3, -0x1

    if-ge v2, v4, :cond_28

    .line 169
    iget-object v3, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    add-int/lit8 v4, v2, 0x1

    aget v4, v3, v4

    aput v4, v3, v2

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 171
    .end local v2    # "j":I
    :cond_28
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    aput v5, v2, v4

    .line 172
    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    .line 173
    goto :goto_37

    .line 166
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 176
    .end local v1    # "i":I
    :cond_37
    :goto_37
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->requestLayout()V

    .line 177
    return-void
.end method

.method public resolveRtl(Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)V
    .registers 3
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "isRtl"    # Z

    .line 594
    return-void
.end method

.method protected setIds(Ljava/lang/String;)V
    .registers 5
    .param p1, "idList"    # Ljava/lang/String;

    .line 397
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 398
    if-nez p1, :cond_5

    .line 399
    return-void

    .line 401
    :cond_5
    const/4 v0, 0x0

    .line 402
    .local v0, "begin":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    .line 404
    :goto_9
    const/16 v1, 0x2c

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 405
    .local v1, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    .line 406
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintHelper;->addID(Ljava/lang/String;)V

    .line 407
    nop

    .line 412
    .end local v1    # "end":I
    return-void

    .line 409
    .restart local v1    # "end":I
    :cond_1b
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintHelper;->addID(Ljava/lang/String;)V

    .line 410
    add-int/lit8 v0, v1, 0x1

    .line 411
    .end local v1    # "end":I
    goto :goto_9
.end method

.method protected setReferenceTags(Ljava/lang/String;)V
    .registers 5
    .param p1, "tagList"    # Ljava/lang/String;

    .line 417
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceTags:Ljava/lang/String;

    .line 418
    if-nez p1, :cond_5

    .line 419
    return-void

    .line 421
    :cond_5
    const/4 v0, 0x0

    .line 422
    .local v0, "begin":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    .line 424
    :goto_9
    const/16 v1, 0x2c

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 425
    .local v1, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintHelper;->addTag(Ljava/lang/String;)V

    .line 427
    nop

    .line 432
    .end local v1    # "end":I
    return-void

    .line 429
    .restart local v1    # "end":I
    :cond_1b
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintHelper;->addTag(Ljava/lang/String;)V

    .line 430
    add-int/lit8 v0, v1, 0x1

    .line 431
    .end local v1    # "end":I
    goto :goto_9
.end method

.method public setReferencedIds([I)V
    .registers 4
    .param p1, "ids"    # [I

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_12

    .line 195
    aget v1, p1, v0

    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintHelper;->addRscID(I)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 197
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .registers 4
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .line 598
    invoke-super {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 599
    if-nez p2, :cond_c

    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 600
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;->addRscID(I)V

    .line 602
    :cond_c
    return-void
.end method

.method public updatePostConstraints(Landroid/support/constraint/ConstraintLayout;)V
    .registers 2
    .param p1, "constainer"    # Landroid/support/constraint/ConstraintLayout;

    .line 545
    return-void
.end method

.method public updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V
    .registers 2
    .param p1, "container"    # Landroid/support/constraint/ConstraintLayout;

    .line 533
    return-void
.end method

.method public updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V
    .registers 2
    .param p1, "container"    # Landroid/support/constraint/ConstraintLayout;

    .line 541
    return-void
.end method

.method public updatePreDraw(Landroid/support/constraint/ConstraintLayout;)V
    .registers 2
    .param p1, "container"    # Landroid/support/constraint/ConstraintLayout;

    .line 549
    return-void
.end method

.method public updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V
    .registers 9
    .param p1, "container"    # Landroid/support/constraint/ConstraintLayout;

    .line 474
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 475
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 477
    :cond_b
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    if-nez v0, :cond_10

    .line 478
    return-void

    .line 480
    :cond_10
    invoke-interface {v0}, Landroid/support/constraint/solver/widgets/Helper;->removeAllIds()V

    .line 481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge v0, v1, :cond_53

    .line 482
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v1, v1, v0

    .line 483
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v2

    .line 484
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_45

    .line 487
    iget-object v3, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 488
    .local v3, "candidate":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Landroid/support/constraint/ConstraintHelper;->findId(Landroid/support/constraint/ConstraintLayout;Ljava/lang/String;)I

    move-result v4

    .line 489
    .local v4, "foundId":I
    if-eqz v4, :cond_45

    .line 490
    iget-object v5, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aput v4, v5, v0

    .line 491
    iget-object v5, p0, Landroid/support/constraint/ConstraintHelper;->mMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-virtual {p1, v4}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v2

    .line 495
    .end local v3    # "candidate":Ljava/lang/String;
    .end local v4    # "foundId":I
    :cond_45
    if-eqz v2, :cond_50

    .line 496
    iget-object v3, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    invoke-virtual {p1, v2}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/support/constraint/solver/widgets/Helper;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 481
    .end local v1    # "id":I
    .end local v2    # "view":Landroid/view/View;
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 499
    .end local v0    # "i":I
    :cond_53
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    iget-object v1, p1, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-interface {v0, v1}, Landroid/support/constraint/solver/widgets/Helper;->updateConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 500
    return-void
.end method

.method public updatePreLayout(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/Helper;Landroid/util/SparseArray;)V
    .registers 7
    .param p1, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "helper"    # Landroid/support/constraint/solver/widgets/Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;",
            "Landroid/support/constraint/solver/widgets/Helper;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 505
    .local p3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-interface {p2}, Landroid/support/constraint/solver/widgets/Helper;->removeAllIds()V

    .line 506
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge v0, v1, :cond_18

    .line 507
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v1, v1, v0

    .line 508
    .local v1, "id":I
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-interface {p2, v2}, Landroid/support/constraint/solver/widgets/Helper;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 506
    .end local v1    # "id":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 510
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public validateParams()V
    .registers 4

    .line 238
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    if-nez v0, :cond_5

    .line 239
    return-void

    .line 241
    :cond_5
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 242
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_16

    .line 243
    move-object v1, v0

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 244
    .local v1, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 246
    .end local v1    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_16
    return-void
.end method
