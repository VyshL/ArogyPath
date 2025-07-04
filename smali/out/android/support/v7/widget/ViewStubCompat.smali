.class public final Landroid/support/v7/widget/ViewStubCompat;
.super Landroid/view/View;
.source "ViewStubCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ViewStubCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    .line 59
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ViewStubCompat:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 62
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewStubCompat_android_inflatedId:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedId:I

    .line 63
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewStubCompat_android_layout:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    .line 65
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewStubCompat_android_id:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ViewStubCompat;->setId(I)V

    .line 66
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ViewStubCompat;->setVisibility(I)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ViewStubCompat;->setWillNotDraw(Z)V

    .line 70
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 159
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 155
    return-void
.end method

.method public getInflatedId()I
    .registers 2

    .line 83
    iget v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedId:I

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutResource()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    return v0
.end method

.method public inflate()Landroid/view/View;
    .registers 8

    .line 196
    invoke-virtual {p0}, Landroid/support/v7/widget/ViewStubCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 198
    .local v0, "viewParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_5a

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5a

    .line 199
    iget v1, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    if-eqz v1, :cond_52

    .line 200
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 202
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_18

    .line 203
    iget-object v2, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    .local v2, "factory":Landroid/view/LayoutInflater;
    goto :goto_20

    .line 205
    .end local v2    # "factory":Landroid/view/LayoutInflater;
    :cond_18
    invoke-virtual {p0}, Landroid/support/v7/widget/ViewStubCompat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 207
    .restart local v2    # "factory":Landroid/view/LayoutInflater;
    :goto_20
    iget v3, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 210
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2f

    .line 211
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 214
    :cond_2f
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 215
    .local v4, "index":I
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 217
    invoke-virtual {p0}, Landroid/support/v7/widget/ViewStubCompat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 218
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v5, :cond_40

    .line 219
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_43

    .line 221
    :cond_40
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 224
    :goto_43
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 226
    iget-object v6, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflateListener:Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;

    if-eqz v6, :cond_51

    .line 227
    invoke-interface {v6, p0, v3}, Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;->onInflate(Landroid/support/v7/widget/ViewStubCompat;Landroid/view/View;)V

    .line 230
    :cond_51
    return-object v3

    .line 232
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "factory":Landroid/view/LayoutInflater;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "index":I
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ViewStub must have a valid layoutResource"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_5a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onMeasure(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/support/v7/widget/ViewStubCompat;->setMeasuredDimension(II)V

    .line 150
    return-void
.end method

.method public setInflatedId(I)V
    .registers 2
    .param p1, "inflatedId"    # I

    .line 97
    iput p1, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedId:I

    .line 98
    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .registers 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 137
    iput-object p1, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    .line 138
    return-void
.end method

.method public setLayoutResource(I)V
    .registers 2
    .param p1, "layoutResource"    # I

    .line 129
    iput p1, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    .line 130
    return-void
.end method

.method public setOnInflateListener(Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;)V
    .registers 2
    .param p1, "inflateListener"    # Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;

    .line 248
    iput-object p1, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflateListener:Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;

    .line 249
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .line 173
    iget-object v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    .line 174
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 175
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_10

    .line 176
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .end local v0    # "view":Landroid/view/View;
    goto :goto_23

    .line 178
    .restart local v0    # "view":Landroid/view/View;
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setVisibility called on un-referenced view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    .end local v0    # "view":Landroid/view/View;
    :cond_18
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    if-eqz p1, :cond_20

    const/4 v0, 0x4

    if-ne p1, v0, :cond_23

    .line 183
    :cond_20
    invoke-virtual {p0}, Landroid/support/v7/widget/ViewStubCompat;->inflate()Landroid/view/View;

    .line 186
    :cond_23
    :goto_23
    return-void
.end method
