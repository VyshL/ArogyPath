.class Landroid/support/v4/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I

.field private static final PLATFORM_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

.field private static final SUPPORT_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Landroid/support/v4/app/FragmentTransition;->INVERSE_OPS:[I

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    new-instance v0, Landroid/support/v4/app/FragmentTransitionCompat21;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;-><init>()V

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    sput-object v0, Landroid/support/v4/app/FragmentTransition;->PLATFORM_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 61
    invoke-static {}, Landroid/support/v4/app/FragmentTransition;->resolveSupportImpl()Landroid/support/v4/app/FragmentTransitionImpl;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/FragmentTransition;->SUPPORT_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

    return-void

    nop

    :array_20
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 1263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1264
    return-void
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 646
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "sharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p2, "nameOverridesSet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1e

    .line 647
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 648
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 649
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    .end local v1    # "view":Landroid/view/View;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 652
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method private static addToFirstInLastOut(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .registers 27
    .param p0, "transaction"    # Landroid/support/v4/app/BackStackRecord;
    .param p1, "op"    # Landroid/support/v4/app/BackStackRecord$Op;
    .param p3, "isPop"    # Z
    .param p4, "isReorderedTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord;",
            "Landroid/support/v4/app/BackStackRecord$Op;",
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1123
    .local p2, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v10, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 1124
    .local v10, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v10, :cond_d

    .line 1125
    return-void

    .line 1127
    :cond_d
    iget v11, v10, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 1128
    .local v11, "containerId":I
    if-nez v11, :cond_12

    .line 1129
    return-void

    .line 1131
    :cond_12
    if-eqz v3, :cond_1b

    sget-object v4, Landroid/support/v4/app/FragmentTransition;->INVERSE_OPS:[I

    iget v5, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    aget v4, v4, v5

    goto :goto_1d

    :cond_1b
    iget v4, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    :goto_1d
    move v12, v4

    .line 1132
    .local v12, "command":I
    const/4 v4, 0x0

    .line 1133
    .local v4, "setLastIn":Z
    const/4 v5, 0x0

    .line 1134
    .local v5, "wasRemoved":Z
    const/4 v6, 0x0

    .line 1135
    .local v6, "setFirstOut":Z
    const/4 v7, 0x0

    .line 1136
    .local v7, "wasAdded":Z
    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v12, :pswitch_data_12c

    :pswitch_27
    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    goto/16 :goto_af

    .line 1138
    :pswitch_2e
    if-eqz p4, :cond_3f

    .line 1139
    iget-boolean v13, v10, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v13, :cond_3d

    iget-boolean v13, v10, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v13, :cond_3d

    iget-boolean v13, v10, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_3d

    const/4 v8, 0x1

    :cond_3d
    move v4, v8

    goto :goto_41

    .line 1141
    :cond_3f
    iget-boolean v4, v10, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1143
    :goto_41
    const/4 v7, 0x1

    .line 1144
    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    goto/16 :goto_af

    .line 1155
    :pswitch_49
    if-eqz p4, :cond_5a

    .line 1156
    iget-boolean v13, v10, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v13, :cond_58

    iget-boolean v13, v10, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_58

    iget-boolean v13, v10, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v13, :cond_58

    const/4 v8, 0x1

    :cond_58
    move v6, v8

    goto :goto_64

    .line 1158
    :cond_5a
    iget-boolean v13, v10, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_63

    iget-boolean v13, v10, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v13, :cond_63

    const/4 v8, 0x1

    :cond_63
    move v6, v8

    .line 1160
    :goto_64
    const/4 v5, 0x1

    .line 1161
    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    goto :goto_af

    .line 1164
    :pswitch_6b
    if-eqz p4, :cond_89

    .line 1165
    iget-boolean v13, v10, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v13, :cond_86

    iget-object v13, v10, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v13, :cond_86

    iget-object v13, v10, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1166
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_86

    iget v13, v10, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_86

    const/4 v8, 0x1

    goto :goto_87

    :cond_86
    nop

    :goto_87
    move v6, v8

    goto :goto_93

    .line 1169
    :cond_89
    iget-boolean v13, v10, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_92

    iget-boolean v13, v10, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v13, :cond_92

    const/4 v8, 0x1

    :cond_92
    move v6, v8

    .line 1171
    :goto_93
    const/4 v5, 0x1

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    goto :goto_af

    .line 1147
    :pswitch_9a
    if-eqz p4, :cond_9f

    .line 1148
    iget-boolean v4, v10, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_a9

    .line 1150
    :cond_9f
    iget-boolean v13, v10, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v13, :cond_a8

    iget-boolean v13, v10, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v13, :cond_a8

    const/4 v8, 0x1

    :cond_a8
    move v4, v8

    .line 1152
    :goto_a9
    const/4 v7, 0x1

    .line 1153
    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    .line 1174
    .end local v4    # "setLastIn":Z
    .end local v5    # "wasRemoved":Z
    .end local v6    # "setFirstOut":Z
    .end local v7    # "wasAdded":Z
    .local v13, "setLastIn":Z
    .local v14, "wasRemoved":Z
    .local v15, "setFirstOut":Z
    .local v16, "wasAdded":Z
    :goto_af
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    .line 1175
    .local v4, "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    if-eqz v13, :cond_c4

    .line 1176
    nop

    .line 1177
    invoke-static {v4, v2, v11}, Landroid/support/v4/app/FragmentTransition;->ensureContainer(Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v4

    .line 1178
    iput-object v10, v4, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 1179
    iput-boolean v3, v4, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 1180
    iput-object v0, v4, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/support/v4/app/BackStackRecord;

    move-object v8, v4

    goto :goto_c5

    .line 1175
    :cond_c4
    move-object v8, v4

    .line 1182
    .end local v4    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .local v8, "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    :goto_c5
    const/4 v7, 0x0

    if-nez p4, :cond_103

    if-eqz v16, :cond_103

    .line 1183
    if-eqz v8, :cond_d2

    iget-object v4, v8, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    if-ne v4, v10, :cond_d2

    .line 1184
    iput-object v7, v8, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 1191
    :cond_d2
    iget-object v6, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1192
    .local v6, "manager":Landroid/support/v4/app/FragmentManagerImpl;
    iget v4, v10, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v4, v9, :cond_fd

    iget v4, v6, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lt v4, v9, :cond_fd

    iget-boolean v4, v0, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v4, :cond_fd

    .line 1194
    invoke-virtual {v6, v10}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V

    .line 1195
    const/4 v9, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v4, v6

    move-object v5, v10

    move-object/from16 v20, v6

    .end local v6    # "manager":Landroid/support/v4/app/FragmentManagerImpl;
    .local v20, "manager":Landroid/support/v4/app/FragmentManagerImpl;
    move v6, v9

    move-object v9, v7

    move/from16 v7, v17

    move-object/from16 v21, v8

    .end local v8    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .local v21, "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    move/from16 v8, v18

    move-object v1, v9

    move/from16 v9, v19

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_106

    .line 1192
    .end local v20    # "manager":Landroid/support/v4/app/FragmentManagerImpl;
    .end local v21    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .restart local v6    # "manager":Landroid/support/v4/app/FragmentManagerImpl;
    .restart local v8    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    :cond_fd
    move-object/from16 v20, v6

    move-object v1, v7

    move-object/from16 v21, v8

    .end local v6    # "manager":Landroid/support/v4/app/FragmentManagerImpl;
    .end local v8    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .restart local v20    # "manager":Landroid/support/v4/app/FragmentManagerImpl;
    .restart local v21    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    goto :goto_106

    .line 1182
    .end local v20    # "manager":Landroid/support/v4/app/FragmentManagerImpl;
    .end local v21    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .restart local v8    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    :cond_103
    move-object v1, v7

    move-object/from16 v21, v8

    .line 1198
    .end local v8    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .restart local v21    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    :goto_106
    if-eqz v15, :cond_11c

    move-object/from16 v4, v21

    .end local v21    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .restart local v4    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    if-eqz v4, :cond_110

    iget-object v5, v4, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    if-nez v5, :cond_11e

    .line 1199
    :cond_110
    nop

    .line 1200
    invoke-static {v4, v2, v11}, Landroid/support/v4/app/FragmentTransition;->ensureContainer(Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v8

    .line 1201
    .end local v4    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .restart local v8    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    iput-object v10, v8, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 1202
    iput-boolean v3, v8, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 1203
    iput-object v0, v8, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

    goto :goto_11f

    .line 1198
    .end local v8    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .restart local v21    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    :cond_11c
    move-object/from16 v4, v21

    .line 1206
    .end local v21    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .restart local v4    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    :cond_11e
    move-object v8, v4

    .end local v4    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .restart local v8    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    :goto_11f
    if-nez p4, :cond_12b

    if-eqz v14, :cond_12b

    if-eqz v8, :cond_12b

    iget-object v4, v8, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    if-ne v4, v10, :cond_12b

    .line 1208
    iput-object v1, v8, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 1210
    :cond_12b
    return-void

    :pswitch_data_12c
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_27
        :pswitch_6b
        :pswitch_49
        :pswitch_2e
        :pswitch_6b
        :pswitch_9a
    .end packed-switch
.end method

.method public static calculateFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 7
    .param p0, "transaction"    # Landroid/support/v4/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1075
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1076
    .local v0, "numOps":I
    const/4 v1, 0x0

    .local v1, "opNum":I
    :goto_7
    if-ge v1, v0, :cond_18

    .line 1077
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/BackStackRecord$Op;

    .line 1078
    .local v2, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v3, 0x0

    invoke-static {p0, v2, p1, v3, p2}, Landroid/support/v4/app/FragmentTransition;->addToFirstInLastOut(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 1076
    .end local v2    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1080
    .end local v1    # "opNum":I
    :cond_18
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/util/ArrayMap;
    .registers 16
    .param p0, "containerId"    # I
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 162
    .local v0, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v1, p4, -0x1

    .local v1, "recordNum":I
    :goto_7
    if-lt v1, p3, :cond_59

    .line 163
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/BackStackRecord;

    .line 164
    .local v2, "record":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {v2, p0}, Landroid/support/v4/app/BackStackRecord;->interactsWith(I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 165
    goto :goto_56

    .line 167
    :cond_16
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 168
    .local v3, "isPop":Z
    iget-object v4, v2, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_56

    .line 169
    iget-object v4, v2, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 172
    .local v4, "numSharedElements":I
    if-eqz v3, :cond_31

    .line 173
    iget-object v5, v2, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 174
    .local v5, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, v2, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .local v6, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_35

    .line 176
    .end local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_31
    iget-object v6, v2, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 177
    .restart local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, v2, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 179
    .restart local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_35
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_36
    if-ge v7, v4, :cond_56

    .line 180
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 181
    .local v8, "sourceName":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 182
    .local v9, "targetName":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 183
    .local v10, "previousTarget":Ljava/lang/String;
    if-eqz v10, :cond_50

    .line 184
    invoke-virtual {v0, v8, v10}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 186
    :cond_50
    invoke-virtual {v0, v8, v9}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .end local v8    # "sourceName":Ljava/lang/String;
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "previousTarget":Ljava/lang/String;
    :goto_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 162
    .end local v2    # "record":Landroid/support/v4/app/BackStackRecord;
    .end local v3    # "isPop":Z
    .end local v4    # "numSharedElements":I
    .end local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i":I
    :cond_56
    :goto_56
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 191
    .end local v1    # "recordNum":I
    :cond_59
    return-object v0
.end method

.method public static calculatePopFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 7
    .param p0, "transaction"    # Landroid/support/v4/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1092
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1093
    return-void

    .line 1095
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1096
    .local v0, "numOps":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "opNum":I
    :goto_13
    if-ltz v1, :cond_24

    .line 1097
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/BackStackRecord$Op;

    .line 1098
    .local v2, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v3, 0x1

    invoke-static {p0, v2, p1, v3, p2}, Landroid/support/v4/app/FragmentTransition;->addToFirstInLastOut(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 1096
    .end local v2    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 1100
    .end local v1    # "opNum":I
    :cond_24
    return-void
.end method

.method static callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V
    .registers 11
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "isPop"    # Z
    .param p4, "isStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 978
    .local p3, "sharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p2, :cond_7

    .line 979
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v0

    goto :goto_b

    .line 980
    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v0

    :goto_b
    nop

    .line 981
    .local v0, "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    if-eqz v0, :cond_3e

    .line 982
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 983
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 984
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_1c

    const/4 v3, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {p3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v3

    .line 985
    .local v3, "count":I
    :goto_20
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    if-ge v4, v3, :cond_34

    .line 986
    invoke-virtual {p3, v4}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    invoke-virtual {p3, v4}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 989
    .end local v4    # "i":I
    :cond_34
    const/4 v4, 0x0

    if-eqz p4, :cond_3b

    .line 990
    invoke-virtual {v0, v2, v1, v4}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3e

    .line 992
    :cond_3b
    invoke-virtual {v0, v2, v1, v4}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 995
    .end local v1    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "count":I
    :cond_3e
    :goto_3e
    return-void
.end method

.method private static canHandleAll(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/util/List;)Z
    .registers 5
    .param p0, "impl"    # Landroid/support/v4/app/FragmentTransitionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentTransitionImpl;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 469
    .local p1, "transitions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 470
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 471
    const/4 v2, 0x0

    return v2

    .line 469
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 474
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method static captureInSharedElements(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
    .registers 15
    .param p0, "impl"    # Landroid/support/v4/app/FragmentTransitionImpl;
    .param p2, "sharedElementTransition"    # Ljava/lang/Object;
    .param p3, "fragments"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentTransitionImpl;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 838
    .local p1, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 839
    .local v0, "inFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 840
    .local v1, "fragmentView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7f

    if-eqz p2, :cond_7f

    if-nez v1, :cond_12

    goto/16 :goto_7f

    .line 844
    :cond_12
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 845
    .local v2, "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 849
    iget-object v3, p3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 850
    .local v3, "inTransaction":Landroid/support/v4/app/BackStackRecord;
    iget-boolean v4, p3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz v4, :cond_27

    .line 851
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v4

    .line 852
    .local v4, "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    iget-object v5, v3, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2d

    .line 854
    .end local v4    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    .end local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_27
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v4

    .line 855
    .restart local v4    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    iget-object v5, v3, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 858
    .restart local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2d
    if-eqz v5, :cond_39

    .line 859
    invoke-virtual {v2, v5}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 860
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 862
    :cond_39
    if-eqz v4, :cond_7b

    .line 863
    invoke-virtual {v4, v5, v2}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 864
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_44
    if-ltz v6, :cond_7a

    .line 865
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 866
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 867
    .local v8, "view":Landroid/view/View;
    if-nez v8, :cond_5e

    .line 868
    invoke-static {p1, v7}, Landroid/support/v4/app/FragmentTransition;->findKeyForValue(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 869
    .local v9, "key":Ljava/lang/String;
    if-eqz v9, :cond_76

    .line 870
    invoke-virtual {p1, v9}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    .line 872
    .end local v9    # "key":Ljava/lang/String;
    :cond_5e
    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_76

    .line 873
    invoke-static {p1, v7}, Landroid/support/v4/app/FragmentTransition;->findKeyForValue(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 874
    .restart local v9    # "key":Ljava/lang/String;
    if-eqz v9, :cond_77

    .line 875
    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_77

    .line 872
    .end local v9    # "key":Ljava/lang/String;
    :cond_76
    :goto_76
    nop

    .line 864
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "view":Landroid/view/View;
    :cond_77
    :goto_77
    add-int/lit8 v6, v6, -0x1

    goto :goto_44

    .end local v6    # "i":I
    :cond_7a
    goto :goto_7e

    .line 880
    :cond_7b
    invoke-static {p1, v2}, Landroid/support/v4/app/FragmentTransition;->retainValues(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    .line 882
    :goto_7e
    return-object v2

    .line 841
    .end local v2    # "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v3    # "inTransaction":Landroid/support/v4/app/BackStackRecord;
    .end local v4    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    .end local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7f
    :goto_7f
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 842
    const/4 v2, 0x0

    return-object v2
.end method

.method private static captureOutSharedElements(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
    .registers 14
    .param p0, "impl"    # Landroid/support/v4/app/FragmentTransitionImpl;
    .param p2, "sharedElementTransition"    # Ljava/lang/Object;
    .param p3, "fragments"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentTransitionImpl;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 782
    .local p1, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    if-nez p2, :cond_9

    goto :goto_6f

    .line 786
    :cond_9
    iget-object v0, p3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 787
    .local v0, "outFragment":Landroid/support/v4/app/Fragment;
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 788
    .local v1, "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 792
    iget-object v2, p3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 793
    .local v2, "outTransaction":Landroid/support/v4/app/BackStackRecord;
    iget-boolean v3, p3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz v3, :cond_24

    .line 794
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v3

    .line 795
    .local v3, "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    iget-object v4, v2, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .local v4, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2a

    .line 797
    .end local v3    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    .end local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_24
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v3

    .line 798
    .restart local v3    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    iget-object v4, v2, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 801
    .restart local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2a
    invoke-virtual {v1, v4}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 802
    if-eqz v3, :cond_67

    .line 803
    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 804
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_38
    if-ltz v5, :cond_66

    .line 805
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 806
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 807
    .local v7, "view":Landroid/view/View;
    if-nez v7, :cond_4c

    .line 808
    invoke-virtual {p1, v6}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 809
    :cond_4c
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_63

    .line 810
    invoke-virtual {p1, v6}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 811
    .local v8, "targetValue":Ljava/lang/String;
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v8}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "targetValue":Ljava/lang/String;
    :cond_63
    :goto_63
    add-int/lit8 v5, v5, -0x1

    goto :goto_38

    .end local v5    # "i":I
    :cond_66
    goto :goto_6e

    .line 815
    :cond_67
    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 817
    :goto_6e
    return-object v1

    .line 783
    .end local v0    # "outFragment":Landroid/support/v4/app/Fragment;
    .end local v1    # "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v2    # "outTransaction":Landroid/support/v4/app/BackStackRecord;
    .end local v3    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    .end local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6f
    :goto_6f
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 784
    const/4 v0, 0x0

    return-object v0
.end method

.method private static chooseImpl(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransitionImpl;
    .registers 7
    .param p0, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "inFragment"    # Landroid/support/v4/app/Fragment;

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v0, "transitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p0, :cond_22

    .line 425
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    .line 426
    .local v1, "exitTransition":Ljava/lang/Object;
    if-eqz v1, :cond_10

    .line 427
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_10
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v2

    .line 430
    .local v2, "returnTransition":Ljava/lang/Object;
    if-eqz v2, :cond_19

    .line 431
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_19
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v3

    .line 434
    .local v3, "sharedReturnTransition":Ljava/lang/Object;
    if-eqz v3, :cond_22

    .line 435
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v1    # "exitTransition":Ljava/lang/Object;
    .end local v2    # "returnTransition":Ljava/lang/Object;
    .end local v3    # "sharedReturnTransition":Ljava/lang/Object;
    :cond_22
    if-eqz p1, :cond_3f

    .line 439
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v1

    .line 440
    .local v1, "enterTransition":Ljava/lang/Object;
    if-eqz v1, :cond_2d

    .line 441
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_2d
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v2

    .line 444
    .local v2, "reenterTransition":Ljava/lang/Object;
    if-eqz v2, :cond_36

    .line 445
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_36
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v3

    .line 448
    .local v3, "sharedEnterTransition":Ljava/lang/Object;
    if-eqz v3, :cond_3f

    .line 449
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    .end local v1    # "enterTransition":Ljava/lang/Object;
    .end local v2    # "reenterTransition":Ljava/lang/Object;
    .end local v3    # "sharedEnterTransition":Ljava/lang/Object;
    :cond_3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_47

    .line 453
    return-object v2

    .line 456
    :cond_47
    sget-object v1, Landroid/support/v4/app/FragmentTransition;->PLATFORM_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

    if-eqz v1, :cond_52

    invoke-static {v1, v0}, Landroid/support/v4/app/FragmentTransition;->canHandleAll(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 457
    return-object v1

    .line 459
    :cond_52
    sget-object v3, Landroid/support/v4/app/FragmentTransition;->SUPPORT_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

    if-eqz v3, :cond_5d

    invoke-static {v3, v0}, Landroid/support/v4/app/FragmentTransition;->canHandleAll(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 460
    return-object v3

    .line 462
    :cond_5d
    if-nez v1, :cond_62

    if-nez v3, :cond_62

    .line 465
    return-object v2

    .line 463
    :cond_62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Transition types"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static configureEnteringExitingViews(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "impl"    # Landroid/support/v4/app/FragmentTransitionImpl;
    .param p1, "transition"    # Ljava/lang/Object;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p4, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1001
    .local p3, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1002
    .local v0, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_23

    .line 1003
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1004
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1005
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_12

    .line 1006
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentTransitionImpl;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1008
    :cond_12
    if-eqz p3, :cond_17

    .line 1009
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1011
    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1012
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1016
    .end local v1    # "root":Landroid/view/View;
    :cond_23
    return-object v0
.end method

.method private static configureSharedElementsOrdered(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 31
    .param p0, "impl"    # Landroid/support/v4/app/FragmentTransitionImpl;
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .param p4, "fragments"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p7, "enterTransition"    # Ljava/lang/Object;
    .param p8, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 689
    .local p3, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v13, p0

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v12, p7

    iget-object v11, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 690
    .local v11, "inFragment":Landroid/support/v4/app/Fragment;
    iget-object v10, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 692
    .local v10, "outFragment":Landroid/support/v4/app/Fragment;
    const/4 v0, 0x0

    if-eqz v11, :cond_a4

    if-nez v10, :cond_19

    move-object/from16 v1, p1

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    goto/16 :goto_aa

    .line 696
    :cond_19
    iget-boolean v9, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 697
    .local v9, "inIsPop":Z
    invoke-virtual/range {p3 .. p3}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    move-object v1, v0

    goto :goto_27

    .line 698
    :cond_23
    invoke-static {v13, v11, v10, v9}, Landroid/support/v4/app/FragmentTransition;->getSharedElementTransition(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    :goto_27
    nop

    .line 700
    .local v1, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v8, p3

    invoke-static {v13, v8, v1, v14}, Landroid/support/v4/app/FragmentTransition;->captureOutSharedElements(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;

    move-result-object v7

    .line 703
    .local v7, "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 704
    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_3f

    .line 706
    :cond_37
    invoke-virtual {v7}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v6, v1

    .line 709
    .end local v1    # "sharedElementTransition":Ljava/lang/Object;
    .local v6, "sharedElementTransition":Ljava/lang/Object;
    :goto_3f
    if-nez v12, :cond_46

    if-nez p8, :cond_46

    if-nez v6, :cond_46

    .line 711
    return-object v0

    .line 714
    :cond_46
    const/4 v0, 0x1

    invoke-static {v11, v10, v9, v7, v0}, Landroid/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V

    .line 717
    if-eqz v6, :cond_77

    .line 718
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v0

    .line 719
    .local v5, "inEpicenter":Landroid/graphics/Rect;
    move-object/from16 v4, p2

    invoke-virtual {v13, v6, v4, v15}, Landroid/support/v4/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 721
    iget-boolean v3, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 722
    .local v3, "outIsPop":Z
    iget-object v2, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 723
    .local v2, "outTransaction":Landroid/support/v4/app/BackStackRecord;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v16, v2

    .end local v2    # "outTransaction":Landroid/support/v4/app/BackStackRecord;
    .local v16, "outTransaction":Landroid/support/v4/app/BackStackRecord;
    move-object/from16 v2, p8

    move/from16 v17, v3

    .end local v3    # "outIsPop":Z
    .local v17, "outIsPop":Z
    move-object v3, v7

    move/from16 v4, v17

    move-object/from16 v18, v7

    move-object v7, v5

    .end local v5    # "inEpicenter":Landroid/graphics/Rect;
    .local v7, "inEpicenter":Landroid/graphics/Rect;
    .local v18, "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/FragmentTransition;->setOutEpicenter(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/util/ArrayMap;ZLandroid/support/v4/app/BackStackRecord;)V

    .line 725
    if-eqz v12, :cond_74

    .line 726
    invoke-virtual {v13, v12, v7}, Landroid/support/v4/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 728
    .end local v16    # "outTransaction":Landroid/support/v4/app/BackStackRecord;
    .end local v17    # "outIsPop":Z
    :cond_74
    move-object/from16 v16, v7

    goto :goto_7c

    .line 729
    .end local v18    # "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v7, "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_77
    move-object/from16 v18, v7

    .end local v7    # "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v18    # "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v5, 0x0

    move-object/from16 v16, v5

    .line 733
    .local v16, "inEpicenter":Landroid/graphics/Rect;
    :goto_7c
    move-object v3, v6

    .line 734
    .local v3, "finalSharedElementTransition":Ljava/lang/Object;
    new-instance v7, Landroid/support/v4/app/FragmentTransition$4;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v17, v6

    .end local v6    # "sharedElementTransition":Ljava/lang/Object;
    .local v17, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v6, p2

    move-object v13, v7

    move-object v7, v11

    move-object v8, v10

    move/from16 v19, v9

    .end local v9    # "inIsPop":Z
    .local v19, "inIsPop":Z
    move-object/from16 v20, v10

    .end local v10    # "outFragment":Landroid/support/v4/app/Fragment;
    .local v20, "outFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v10, p5

    move-object/from16 v21, v11

    .end local v11    # "inFragment":Landroid/support/v4/app/Fragment;
    .local v21, "inFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v11, p7

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Landroid/support/v4/app/FragmentTransition$4;-><init>(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v1, p1

    invoke-static {v1, v13}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    .line 762
    return-object v17

    .line 692
    .end local v3    # "finalSharedElementTransition":Ljava/lang/Object;
    .end local v16    # "inEpicenter":Landroid/graphics/Rect;
    .end local v17    # "sharedElementTransition":Ljava/lang/Object;
    .end local v18    # "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v19    # "inIsPop":Z
    .end local v20    # "outFragment":Landroid/support/v4/app/Fragment;
    .end local v21    # "inFragment":Landroid/support/v4/app/Fragment;
    .restart local v10    # "outFragment":Landroid/support/v4/app/Fragment;
    .restart local v11    # "inFragment":Landroid/support/v4/app/Fragment;
    :cond_a4
    move-object/from16 v1, p1

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    .line 693
    .end local v10    # "outFragment":Landroid/support/v4/app/Fragment;
    .end local v11    # "inFragment":Landroid/support/v4/app/Fragment;
    .restart local v20    # "outFragment":Landroid/support/v4/app/Fragment;
    .restart local v21    # "inFragment":Landroid/support/v4/app/Fragment;
    :goto_aa
    return-object v0
.end method

.method private static configureSharedElementsReordered(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 31
    .param p0, "impl"    # Landroid/support/v4/app/FragmentTransitionImpl;
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .param p4, "fragments"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p7, "enterTransition"    # Ljava/lang/Object;
    .param p8, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 560
    .local p3, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    iget-object v15, v11, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 561
    .local v15, "inFragment":Landroid/support/v4/app/Fragment;
    iget-object v7, v11, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 562
    .local v7, "outFragment":Landroid/support/v4/app/Fragment;
    if-eqz v15, :cond_1c

    .line 563
    invoke-virtual {v15}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 565
    :cond_1c
    const/4 v0, 0x0

    if-eqz v15, :cond_c8

    if-nez v7, :cond_27

    move-object/from16 v1, p1

    move-object/from16 v21, v7

    goto/16 :goto_cc

    .line 569
    :cond_27
    iget-boolean v6, v11, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 570
    .local v6, "inIsPop":Z
    invoke-virtual/range {p3 .. p3}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    move-object v1, v0

    goto :goto_35

    .line 571
    :cond_31
    invoke-static {v8, v15, v7, v6}, Landroid/support/v4/app/FragmentTransition;->getSharedElementTransition(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    :goto_35
    nop

    .line 573
    .local v1, "sharedElementTransition":Ljava/lang/Object;
    invoke-static {v8, v10, v1, v11}, Landroid/support/v4/app/FragmentTransition;->captureOutSharedElements(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    .line 576
    .local v5, "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-static {v8, v10, v1, v11}, Landroid/support/v4/app/FragmentTransition;->captureInSharedElements(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;

    move-result-object v4

    .line 579
    .local v4, "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 580
    const/4 v1, 0x0

    .line 581
    if-eqz v5, :cond_4a

    .line 582
    invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 584
    :cond_4a
    if-eqz v4, :cond_4f

    .line 585
    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 594
    :cond_4f
    move-object v3, v1

    goto :goto_62

    .line 588
    :cond_51
    nop

    .line 589
    invoke-virtual/range {p3 .. p3}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 588
    invoke-static {v12, v5, v2}, Landroid/support/v4/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Ljava/util/Collection;)V

    .line 590
    nop

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 590
    invoke-static {v13, v4, v2}, Landroid/support/v4/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Ljava/util/Collection;)V

    move-object v3, v1

    .line 594
    .end local v1    # "sharedElementTransition":Ljava/lang/Object;
    .local v3, "sharedElementTransition":Ljava/lang/Object;
    :goto_62
    if-nez v14, :cond_69

    if-nez p8, :cond_69

    if-nez v3, :cond_69

    .line 596
    return-object v0

    .line 599
    :cond_69
    const/4 v0, 0x1

    invoke-static {v15, v7, v6, v5, v0}, Landroid/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V

    .line 603
    if-eqz v3, :cond_a2

    .line 604
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {v8, v3, v9, v12}, Landroid/support/v4/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 607
    iget-boolean v2, v11, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 608
    .local v2, "outIsPop":Z
    iget-object v1, v11, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 609
    .local v1, "outTransaction":Landroid/support/v4/app/BackStackRecord;
    move-object/from16 v0, p0

    move-object/from16 v16, v1

    .end local v1    # "outTransaction":Landroid/support/v4/app/BackStackRecord;
    .local v16, "outTransaction":Landroid/support/v4/app/BackStackRecord;
    move-object v1, v3

    move/from16 v17, v2

    .end local v2    # "outIsPop":Z
    .local v17, "outIsPop":Z
    move-object/from16 v2, p8

    move-object/from16 v18, v3

    .end local v3    # "sharedElementTransition":Ljava/lang/Object;
    .local v18, "sharedElementTransition":Ljava/lang/Object;
    move-object v3, v5

    move-object v9, v4

    .end local v4    # "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v9, "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move/from16 v4, v17

    move-object/from16 v19, v5

    .end local v5    # "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v19, "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/FragmentTransition;->setOutEpicenter(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/util/ArrayMap;ZLandroid/support/v4/app/BackStackRecord;)V

    .line 611
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 612
    .local v0, "epicenter":Landroid/graphics/Rect;
    invoke-static {v9, v11, v14, v6}, Landroid/support/v4/app/FragmentTransition;->getInEpicenterView(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    .line 614
    .local v1, "epicenterView":Landroid/view/View;
    if-eqz v1, :cond_9d

    .line 615
    invoke-virtual {v8, v14, v0}, Landroid/support/v4/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 617
    .end local v16    # "outTransaction":Landroid/support/v4/app/BackStackRecord;
    .end local v17    # "outIsPop":Z
    :cond_9d
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    goto :goto_ad

    .line 618
    .end local v0    # "epicenter":Landroid/graphics/Rect;
    .end local v1    # "epicenterView":Landroid/view/View;
    .end local v9    # "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v18    # "sharedElementTransition":Ljava/lang/Object;
    .end local v19    # "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v3    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v4    # "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v5    # "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_a2
    move-object/from16 v18, v3

    move-object v9, v4

    move-object/from16 v19, v5

    .end local v3    # "sharedElementTransition":Ljava/lang/Object;
    .end local v4    # "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v5    # "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v9    # "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v18    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v19    # "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 619
    .restart local v0    # "epicenter":Landroid/graphics/Rect;
    const/4 v1, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 622
    .end local v0    # "epicenter":Landroid/graphics/Rect;
    .local v16, "epicenter":Landroid/graphics/Rect;
    .local v17, "epicenterView":Landroid/view/View;
    :goto_ad
    new-instance v5, Landroid/support/v4/app/FragmentTransition$3;

    move-object v0, v5

    move-object v1, v15

    move-object v2, v7

    move v3, v6

    move-object v4, v9

    move-object v8, v5

    move-object/from16 v5, v17

    move/from16 v20, v6

    .end local v6    # "inIsPop":Z
    .local v20, "inIsPop":Z
    move-object/from16 v6, p0

    move-object/from16 v21, v7

    .end local v7    # "outFragment":Landroid/support/v4/app/Fragment;
    .local v21, "outFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/FragmentTransition$3;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V

    move-object/from16 v1, p1

    invoke-static {v1, v8}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    .line 632
    return-object v18

    .line 565
    .end local v9    # "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v16    # "epicenter":Landroid/graphics/Rect;
    .end local v17    # "epicenterView":Landroid/view/View;
    .end local v18    # "sharedElementTransition":Ljava/lang/Object;
    .end local v19    # "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v20    # "inIsPop":Z
    .end local v21    # "outFragment":Landroid/support/v4/app/Fragment;
    .restart local v7    # "outFragment":Landroid/support/v4/app/Fragment;
    :cond_c8
    move-object/from16 v1, p1

    move-object/from16 v21, v7

    .line 566
    .end local v7    # "outFragment":Landroid/support/v4/app/Fragment;
    .restart local v21    # "outFragment":Landroid/support/v4/app/Fragment;
    :goto_cc
    return-object v0
.end method

.method private static configureTransitionsOrdered(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V
    .registers 35
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManagerImpl;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManagerImpl;",
            "I",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 310
    .local p4, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    const/4 v1, 0x0

    .line 311
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 312
    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move/from16 v13, p1

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    move-object v14, v1

    goto :goto_21

    .line 311
    :cond_1e
    move/from16 v13, p1

    move-object v14, v1

    .line 314
    .end local v1    # "sceneRoot":Landroid/view/ViewGroup;
    .local v14, "sceneRoot":Landroid/view/ViewGroup;
    :goto_21
    if-nez v14, :cond_24

    .line 315
    return-void

    .line 317
    :cond_24
    iget-object v15, v10, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 318
    .local v15, "inFragment":Landroid/support/v4/app/Fragment;
    iget-object v9, v10, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 319
    .local v9, "outFragment":Landroid/support/v4/app/Fragment;
    invoke-static {v9, v15}, Landroid/support/v4/app/FragmentTransition;->chooseImpl(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransitionImpl;

    move-result-object v8

    .line 320
    .local v8, "impl":Landroid/support/v4/app/FragmentTransitionImpl;
    if-nez v8, :cond_2f

    .line 321
    return-void

    .line 323
    :cond_2f
    iget-boolean v7, v10, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 324
    .local v7, "inIsPop":Z
    iget-boolean v6, v10, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 326
    .local v6, "outIsPop":Z
    invoke-static {v8, v15, v7}, Landroid/support/v4/app/FragmentTransition;->getEnterTransition(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    .line 327
    .local v5, "enterTransition":Ljava/lang/Object;
    invoke-static {v8, v9, v6}, Landroid/support/v4/app/FragmentTransition;->getExitTransition(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v4

    .line 329
    .local v4, "exitTransition":Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    .line 330
    .local v3, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 332
    .local v2, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v1, v8

    move-object/from16 v24, v2

    .end local v2    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v24, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v2, v14

    move-object/from16 v25, v3

    .end local v3    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v25, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v3, p3

    move-object/from16 v16, v4

    .end local v4    # "exitTransition":Ljava/lang/Object;
    .local v16, "exitTransition":Ljava/lang/Object;
    move-object/from16 v4, p4

    move-object/from16 v26, v5

    .end local v5    # "enterTransition":Ljava/lang/Object;
    .local v26, "enterTransition":Ljava/lang/Object;
    move-object/from16 v5, p2

    move/from16 v27, v6

    .end local v6    # "outIsPop":Z
    .local v27, "outIsPop":Z
    move-object/from16 v6, v25

    move/from16 v28, v7

    .end local v7    # "inIsPop":Z
    .local v28, "inIsPop":Z
    move-object/from16 v7, v24

    move-object v0, v8

    .end local v8    # "impl":Landroid/support/v4/app/FragmentTransitionImpl;
    .local v0, "impl":Landroid/support/v4/app/FragmentTransitionImpl;
    move-object/from16 v8, v26

    move-object v13, v9

    .end local v9    # "outFragment":Landroid/support/v4/app/Fragment;
    .local v13, "outFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v9, v16

    invoke-static/range {v1 .. v9}, Landroid/support/v4/app/FragmentTransition;->configureSharedElementsOrdered(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .line 336
    .local v29, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v9, v26

    .end local v26    # "enterTransition":Ljava/lang/Object;
    .local v9, "enterTransition":Ljava/lang/Object;
    if-nez v9, :cond_74

    if-nez v29, :cond_74

    move-object/from16 v1, v16

    .end local v16    # "exitTransition":Ljava/lang/Object;
    .local v1, "exitTransition":Ljava/lang/Object;
    if-nez v1, :cond_76

    .line 338
    return-void

    .line 336
    .end local v1    # "exitTransition":Ljava/lang/Object;
    .restart local v16    # "exitTransition":Ljava/lang/Object;
    :cond_74
    move-object/from16 v1, v16

    .line 341
    .end local v16    # "exitTransition":Ljava/lang/Object;
    .restart local v1    # "exitTransition":Ljava/lang/Object;
    :cond_76
    move-object/from16 v8, v25

    .end local v25    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v8, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, v1, v13, v8, v11}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v25

    .line 344
    .local v25, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v25, :cond_88

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_85

    goto :goto_88

    :cond_85
    move-object/from16 v26, v1

    goto :goto_8b

    .line 345
    :cond_88
    :goto_88
    const/4 v4, 0x0

    move-object/from16 v26, v4

    .line 350
    .end local v1    # "exitTransition":Ljava/lang/Object;
    .local v26, "exitTransition":Ljava/lang/Object;
    :goto_8b
    invoke-virtual {v0, v9, v11}, Landroid/support/v4/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 352
    iget-boolean v6, v10, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object v1, v0

    move-object v2, v9

    move-object/from16 v3, v26

    move-object/from16 v4, v29

    move-object v5, v15

    invoke-static/range {v1 .. v6}, Landroid/support/v4/app/FragmentTransition;->mergeTransitions(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 355
    .local v7, "transition":Ljava/lang/Object;
    if-eqz v7, :cond_d5

    .line 356
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v19, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v16, v0

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v20, v26

    move-object/from16 v21, v25

    move-object/from16 v22, v29

    move-object/from16 v23, v24

    invoke-virtual/range {v16 .. v23}, Landroid/support/v4/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 360
    move-object v1, v0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p3

    move-object/from16 v5, v24

    move-object v6, v9

    move-object v10, v7

    .end local v7    # "transition":Ljava/lang/Object;
    .local v10, "transition":Ljava/lang/Object;
    move-object/from16 v7, v19

    move-object/from16 v16, v8

    .end local v8    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v16, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v8, v26

    move-object/from16 v17, v9

    .end local v9    # "enterTransition":Ljava/lang/Object;
    .local v17, "enterTransition":Ljava/lang/Object;
    move-object/from16 v9, v25

    invoke-static/range {v1 .. v9}, Landroid/support/v4/app/FragmentTransition;->scheduleTargetChange(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 362
    move-object/from16 v1, v24

    .end local v24    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v1, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, v14, v1, v12}, Landroid/support/v4/app/FragmentTransitionImpl;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 364
    invoke-virtual {v0, v14, v10}, Landroid/support/v4/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 365
    invoke-virtual {v0, v14, v1, v12}, Landroid/support/v4/app/FragmentTransitionImpl;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_dc

    .line 355
    .end local v1    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v10    # "transition":Ljava/lang/Object;
    .end local v16    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v17    # "enterTransition":Ljava/lang/Object;
    .end local v19    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v7    # "transition":Ljava/lang/Object;
    .restart local v8    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v9    # "enterTransition":Ljava/lang/Object;
    .restart local v24    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_d5
    move-object v10, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v1, v24

    .line 367
    .end local v7    # "transition":Ljava/lang/Object;
    .end local v8    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "enterTransition":Ljava/lang/Object;
    .end local v24    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v10    # "transition":Ljava/lang/Object;
    .restart local v16    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v17    # "enterTransition":Ljava/lang/Object;
    :goto_dc
    return-void
.end method

.method private static configureTransitionsReordered(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V
    .registers 28
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManagerImpl;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManagerImpl;",
            "I",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 212
    .local p4, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const/4 v1, 0x0

    .line 213
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 214
    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move/from16 v12, p1

    invoke-virtual {v2, v12}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    move-object v13, v1

    goto :goto_1f

    .line 213
    :cond_1c
    move/from16 v12, p1

    move-object v13, v1

    .line 216
    .end local v1    # "sceneRoot":Landroid/view/ViewGroup;
    .local v13, "sceneRoot":Landroid/view/ViewGroup;
    :goto_1f
    if-nez v13, :cond_22

    .line 217
    return-void

    .line 219
    :cond_22
    iget-object v14, v10, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 220
    .local v14, "inFragment":Landroid/support/v4/app/Fragment;
    iget-object v15, v10, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 221
    .local v15, "outFragment":Landroid/support/v4/app/Fragment;
    invoke-static {v15, v14}, Landroid/support/v4/app/FragmentTransition;->chooseImpl(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransitionImpl;

    move-result-object v9

    .line 222
    .local v9, "impl":Landroid/support/v4/app/FragmentTransitionImpl;
    if-nez v9, :cond_2d

    .line 223
    return-void

    .line 225
    :cond_2d
    iget-boolean v8, v10, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 226
    .local v8, "inIsPop":Z
    iget-boolean v7, v10, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 228
    .local v7, "outIsPop":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 229
    .local v6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    .line 230
    .local v5, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v9, v14, v8}, Landroid/support/v4/app/FragmentTransition;->getEnterTransition(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v4

    .line 231
    .local v4, "enterTransition":Ljava/lang/Object;
    invoke-static {v9, v15, v7}, Landroid/support/v4/app/FragmentTransition;->getExitTransition(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v3

    .line 233
    .local v3, "exitTransition":Ljava/lang/Object;
    move-object v1, v9

    move-object v2, v13

    move-object/from16 v16, v3

    .end local v3    # "exitTransition":Ljava/lang/Object;
    .local v16, "exitTransition":Ljava/lang/Object;
    move-object/from16 v3, p3

    move-object/from16 v17, v4

    .end local v4    # "enterTransition":Ljava/lang/Object;
    .local v17, "enterTransition":Ljava/lang/Object;
    move-object/from16 v4, p4

    move-object/from16 v18, v5

    .end local v5    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v18, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v5, p2

    move-object/from16 v19, v6

    .end local v6    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v19, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v6, v18

    move/from16 v20, v7

    .end local v7    # "outIsPop":Z
    .local v20, "outIsPop":Z
    move-object/from16 v7, v19

    move/from16 v21, v8

    .end local v8    # "inIsPop":Z
    .local v21, "inIsPop":Z
    move-object/from16 v8, v17

    move-object v0, v9

    .end local v9    # "impl":Landroid/support/v4/app/FragmentTransitionImpl;
    .local v0, "impl":Landroid/support/v4/app/FragmentTransitionImpl;
    move-object/from16 v9, v16

    invoke-static/range {v1 .. v9}, Landroid/support/v4/app/FragmentTransition;->configureSharedElementsReordered(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 237
    .local v9, "sharedElementTransition":Ljava/lang/Object;
    nop

    .end local v17    # "enterTransition":Ljava/lang/Object;
    .local v8, "enterTransition":Ljava/lang/Object;
    if-nez v8, :cond_70

    if-nez v9, :cond_70

    move-object/from16 v7, v16

    .end local v16    # "exitTransition":Ljava/lang/Object;
    .local v7, "exitTransition":Ljava/lang/Object;
    if-nez v7, :cond_72

    .line 239
    return-void

    .line 237
    .end local v7    # "exitTransition":Ljava/lang/Object;
    .restart local v16    # "exitTransition":Ljava/lang/Object;
    :cond_70
    move-object/from16 v7, v16

    .line 242
    .end local v16    # "exitTransition":Ljava/lang/Object;
    .restart local v7    # "exitTransition":Ljava/lang/Object;
    :cond_72
    move-object/from16 v6, v18

    .end local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v6, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, v7, v15, v6, v11}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 245
    .local v5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v4, v19

    .end local v19    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v4, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, v8, v14, v4, v11}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v3

    .line 248
    .local v3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x4

    invoke-static {v3, v1}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 250
    move-object v1, v0

    move-object v2, v8

    move-object/from16 v16, v3

    .end local v3    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v16, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v3, v7

    move-object v10, v4

    .end local v4    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v10, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v4, v9

    move-object v11, v5

    .end local v5    # "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v11, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v5, v14

    .end local v6    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move/from16 v6, v21

    invoke-static/range {v1 .. v6}, Landroid/support/v4/app/FragmentTransition;->mergeTransitions(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    .line 253
    .local v6, "transition":Ljava/lang/Object;
    if-eqz v6, :cond_c7

    .line 254
    invoke-static {v0, v7, v15, v11}, Landroid/support/v4/app/FragmentTransition;->replaceHide(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V

    .line 255
    nop

    .line 256
    invoke-virtual {v0, v10}, Landroid/support/v4/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v17

    .line 257
    .local v17, "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v0

    move-object v2, v6

    move-object v3, v8

    move-object/from16 v4, v16

    move-object v5, v7

    move-object v12, v6

    .end local v6    # "transition":Ljava/lang/Object;
    .local v12, "transition":Ljava/lang/Object;
    move-object v6, v11

    move-object/from16 v19, v7

    .end local v7    # "exitTransition":Ljava/lang/Object;
    .local v19, "exitTransition":Ljava/lang/Object;
    move-object v7, v9

    move-object/from16 v22, v8

    .end local v8    # "enterTransition":Ljava/lang/Object;
    .local v22, "enterTransition":Ljava/lang/Object;
    move-object v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/support/v4/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 260
    invoke-virtual {v0, v13, v12}, Landroid/support/v4/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 261
    move-object v2, v0

    move-object v3, v13

    move-object/from16 v4, v18

    move-object v5, v10

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 263
    const/4 v1, 0x0

    move-object/from16 v2, v16

    .end local v16    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v2, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v2, v1}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 264
    move-object/from16 v1, v18

    .end local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v1, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, v9, v1, v10}, Landroid/support/v4/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_d0

    .line 253
    .end local v1    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v12    # "transition":Ljava/lang/Object;
    .end local v17    # "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "exitTransition":Ljava/lang/Object;
    .end local v22    # "enterTransition":Ljava/lang/Object;
    .restart local v6    # "transition":Ljava/lang/Object;
    .restart local v7    # "exitTransition":Ljava/lang/Object;
    .restart local v8    # "enterTransition":Ljava/lang/Object;
    .restart local v16    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_c7
    move-object v12, v6

    move-object/from16 v19, v7

    move-object/from16 v22, v8

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    .line 267
    .end local v6    # "transition":Ljava/lang/Object;
    .end local v7    # "exitTransition":Ljava/lang/Object;
    .end local v8    # "enterTransition":Ljava/lang/Object;
    .end local v16    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v2    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v12    # "transition":Ljava/lang/Object;
    .restart local v19    # "exitTransition":Ljava/lang/Object;
    .restart local v22    # "enterTransition":Ljava/lang/Object;
    :goto_d0
    return-void
.end method

.method private static ensureContainer(Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .registers 4
    .param p0, "containerTransition"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    .line 1220
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;>;"
    if-nez p0, :cond_b

    .line 1221
    new-instance v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    move-object p0, v0

    .line 1222
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1224
    :cond_b
    return-object p0
.end method

.method private static findKeyForValue(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 889
    .local p0, "map":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 890
    .local v0, "numElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1b

    .line 891
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 892
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 890
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 895
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getEnterTransition(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 4
    .param p0, "impl"    # Landroid/support/v4/app/FragmentTransitionImpl;
    .param p1, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "isPop"    # Z

    .line 505
    if-nez p1, :cond_4

    .line 506
    const/4 v0, 0x0

    return-object v0

    .line 508
    :cond_4
    if-eqz p2, :cond_b

    .line 509
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_f

    .line 510
    :cond_b
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 508
    :goto_f
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getExitTransition(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 4
    .param p0, "impl"    # Landroid/support/v4/app/FragmentTransitionImpl;
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "isPop"    # Z

    .line 518
    if-nez p1, :cond_4

    .line 519
    const/4 v0, 0x0

    return-object v0

    .line 521
    :cond_4
    if-eqz p2, :cond_b

    .line 522
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_f

    .line 523
    :cond_b
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    .line 521
    :goto_f
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getInEpicenterView(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 7
    .param p1, "fragments"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "enterTransition"    # Ljava/lang/Object;
    .param p3, "inIsPop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 911
    .local p0, "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p1, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 912
    .local v0, "inTransaction":Landroid/support/v4/app/BackStackRecord;
    if-eqz p2, :cond_2e

    if-eqz p0, :cond_2e

    iget-object v1, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_2e

    iget-object v1, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 914
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 915
    const/4 v1, 0x0

    if-eqz p3, :cond_1e

    iget-object v2, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 916
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_26

    :cond_1e
    iget-object v2, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 917
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_26
    nop

    .line 918
    .local v1, "targetName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    return-object v2

    .line 920
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_2e
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getSharedElementTransition(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 6
    .param p0, "impl"    # Landroid/support/v4/app/FragmentTransitionImpl;
    .param p1, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "isPop"    # Z

    .line 491
    if-eqz p1, :cond_19

    if-nez p2, :cond_5

    goto :goto_19

    .line 494
    :cond_5
    if-eqz p3, :cond_c

    .line 495
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_10

    .line 496
    :cond_c
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 494
    :goto_10
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 497
    .local v0, "transition":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 492
    .end local v0    # "transition":Ljava/lang/Object;
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private static mergeTransitions(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 8
    .param p0, "impl"    # Landroid/support/v4/app/FragmentTransitionImpl;
    .param p1, "enterTransition"    # Ljava/lang/Object;
    .param p2, "exitTransition"    # Ljava/lang/Object;
    .param p3, "sharedElementTransition"    # Ljava/lang/Object;
    .param p4, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p5, "isPop"    # Z

    .line 1040
    const/4 v0, 0x1

    .line 1041
    .local v0, "overlap":Z
    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    if-eqz p4, :cond_13

    .line 1042
    if-eqz p5, :cond_e

    invoke-virtual {p4}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v1

    goto :goto_12

    .line 1043
    :cond_e
    invoke-virtual {p4}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v1

    :goto_12
    move v0, v1

    .line 1051
    :cond_13
    if-eqz v0, :cond_1a

    .line 1053
    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "transition":Ljava/lang/Object;
    goto :goto_1e

    .line 1058
    .end local v1    # "transition":Ljava/lang/Object;
    :cond_1a
    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1061
    .restart local v1    # "transition":Ljava/lang/Object;
    :goto_1e
    return-object v1
.end method

.method private static replaceHide(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V
    .registers 6
    .param p0, "impl"    # Landroid/support/v4/app/FragmentTransitionImpl;
    .param p1, "exitTransition"    # Ljava/lang/Object;
    .param p2, "exitingFragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 277
    .local p3, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_26

    if-eqz p1, :cond_26

    iget-boolean v0, p2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p2, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_26

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V

    .line 280
    nop

    .line 281
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 280
    invoke-virtual {p0, p1, v0, p3}, Landroid/support/v4/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 282
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 283
    .local v0, "container":Landroid/view/ViewGroup;
    new-instance v1, Landroid/support/v4/app/FragmentTransition$1;

    invoke-direct {v1, p3}, Landroid/support/v4/app/FragmentTransition$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    .line 290
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_26
    return-void
.end method

.method private static resolveSupportImpl()Landroid/support/v4/app/FragmentTransitionImpl;
    .registers 3

    .line 66
    :try_start_0
    const-string v0, "android.support.transition.FragmentTransitionSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    .local v0, "impl":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/support/v4/app/FragmentTransitionImpl;>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentTransitionImpl;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    .line 69
    .end local v0    # "impl":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/support/v4/app/FragmentTransitionImpl;>;"
    :catch_16
    move-exception v0

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method private static retainValues(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 956
    .local p0, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 957
    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 958
    .local v1, "targetName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 959
    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 956
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 962
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method private static scheduleTargetChange(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 19
    .param p0, "impl"    # Landroid/support/v4/app/FragmentTransitionImpl;
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .param p5, "enterTransition"    # Ljava/lang/Object;
    .param p7, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 392
    .local p4, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p8, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v9, Landroid/support/v4/app/FragmentTransition$2;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/app/FragmentTransition$2;-><init>(Ljava/lang/Object;Landroid/support/v4/app/FragmentTransitionImpl;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v0, p1

    invoke-static {p1, v9}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    .line 415
    return-void
.end method

.method private static setOutEpicenter(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/util/ArrayMap;ZLandroid/support/v4/app/BackStackRecord;)V
    .registers 8
    .param p0, "impl"    # Landroid/support/v4/app/FragmentTransitionImpl;
    .param p1, "sharedElementTransition"    # Ljava/lang/Object;
    .param p2, "exitTransition"    # Ljava/lang/Object;
    .param p4, "outIsPop"    # Z
    .param p5, "outTransaction"    # Landroid/support/v4/app/BackStackRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroid/support/v4/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .line 935
    .local p3, "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p5, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_2f

    iget-object v0, p5, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 936
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 937
    const/4 v0, 0x0

    if-eqz p4, :cond_18

    iget-object v1, p5, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 938
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_20

    :cond_18
    iget-object v1, p5, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 939
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_20
    nop

    .line 940
    .local v0, "sourceName":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 941
    .local v1, "outEpicenterView":Landroid/view/View;
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 943
    if-eqz p2, :cond_2f

    .line 944
    invoke-virtual {p0, p2, v1}, Landroid/support/v4/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 947
    .end local v0    # "sourceName":Ljava/lang/String;
    .end local v1    # "outEpicenterView":Landroid/view/View;
    :cond_2f
    return-void
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .registers 4
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1024
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p0, :cond_3

    .line 1025
    return-void

    .line 1027
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_17

    .line 1028
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1029
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1031
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method static startTransitions(Landroid/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .registers 13
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManagerImpl;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .line 105
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 106
    return-void

    .line 109
    :cond_6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 111
    .local v0, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;>;"
    move v1, p3

    .local v1, "i":I
    :goto_c
    if-ge v1, p4, :cond_2a

    .line 112
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/BackStackRecord;

    .line 113
    .local v2, "record":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 114
    .local v3, "isPop":Z
    if-eqz v3, :cond_24

    .line 115
    invoke-static {v2, v0, p5}, Landroid/support/v4/app/FragmentTransition;->calculatePopFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_27

    .line 117
    :cond_24
    invoke-static {v2, v0, p5}, Landroid/support/v4/app/FragmentTransition;->calculateFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    .line 111
    .end local v2    # "record":Landroid/support/v4/app/BackStackRecord;
    .end local v3    # "isPop":Z
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 121
    .end local v1    # "i":I
    :cond_2a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_5d

    .line 122
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 123
    .local v1, "nonExistentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 124
    .local v2, "numContainers":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_40
    if-ge v3, v2, :cond_5d

    .line 125
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 126
    .local v4, "containerId":I
    invoke-static {v4, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    .line 129
    .local v5, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 130
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    .line 132
    .local v6, "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    if-eqz p5, :cond_57

    .line 133
    invoke-static {p0, v4, v6, v1, v5}, Landroid/support/v4/app/FragmentTransition;->configureTransitionsReordered(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_5a

    .line 136
    :cond_57
    invoke-static {p0, v4, v6, v1, v5}, Landroid/support/v4/app/FragmentTransition;->configureTransitionsOrdered(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V

    .line 124
    .end local v4    # "containerId":I
    .end local v5    # "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 141
    .end local v1    # "nonExistentView":Landroid/view/View;
    .end local v2    # "numContainers":I
    .end local v3    # "i":I
    :cond_5d
    return-void
.end method

.method static supportsTransition()Z
    .registers 1

    .line 1103
    sget-object v0, Landroid/support/v4/app/FragmentTransition;->PLATFORM_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

    if-nez v0, :cond_b

    sget-object v0, Landroid/support/v4/app/FragmentTransition;->SUPPORT_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
