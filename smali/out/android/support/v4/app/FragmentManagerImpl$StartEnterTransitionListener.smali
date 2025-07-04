.class Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field final mIsBack:Z

.field private mNumPostponed:I

.field final mRecord:Landroid/support/v4/app/BackStackRecord;


# direct methods
.method constructor <init>(Landroid/support/v4/app/BackStackRecord;Z)V
    .registers 3
    .param p1, "record"    # Landroid/support/v4/app/BackStackRecord;
    .param p2, "isBack"    # Z

    .line 3873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3874
    iput-boolean p2, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    .line 3875
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    .line 3876
    return-void
.end method


# virtual methods
.method public cancelTransaction()V
    .registers 5

    .line 3934
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/support/v4/app/FragmentManagerImpl;->completeExecute(Landroid/support/v4/app/BackStackRecord;ZZZ)V

    .line 3935
    return-void
.end method

.method public completeTransaction()V
    .registers 9

    .line 3916
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 3917
    .local v0, "canceled":Z
    :goto_9
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 3918
    .local v3, "manager":Landroid/support/v4/app/FragmentManagerImpl;
    iget-object v4, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3919
    .local v4, "numAdded":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    if-ge v5, v4, :cond_30

    .line 3920
    iget-object v6, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    .line 3921
    .local v6, "fragment":Landroid/support/v4/app/Fragment;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v4/app/Fragment;->setOnStartEnterTransitionListener(Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;)V

    .line 3922
    if-eqz v0, :cond_2d

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->isPostponed()Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 3923
    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->startPostponedEnterTransition()V

    .line 3919
    .end local v6    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 3926
    .end local v5    # "i":I
    :cond_30
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-boolean v7, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-nez v0, :cond_3b

    const/4 v1, 0x1

    :cond_3b
    invoke-virtual {v5, v6, v7, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->completeExecute(Landroid/support/v4/app/BackStackRecord;ZZZ)V

    .line 3927
    return-void
.end method

.method public isReady()Z
    .registers 2

    .line 3906
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onStartEnterTransition()V
    .registers 2

    .line 3885
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3886
    if-eqz v0, :cond_9

    .line 3887
    return-void

    .line 3889
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->scheduleCommit()V

    .line 3890
    return-void
.end method

.method public startListening()V
    .registers 2

    .line 3899
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3900
    return-void
.end method
