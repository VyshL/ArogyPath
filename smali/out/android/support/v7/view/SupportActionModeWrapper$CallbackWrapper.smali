.class public Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;
.super Ljava/lang/Object;
.source "SupportActionModeWrapper.java"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/SupportActionModeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackWrapper"
.end annotation


# instance fields
.field final mActionModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/SupportActionModeWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mMenus:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field

.field final mWrappedCallback:Landroid/view/ActionMode$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportCallback"    # Landroid/view/ActionMode$Callback;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    .line 151
    iput-object p2, p0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->mMenus:Landroid/support/v4/util/SimpleArrayMap;

    .line 154
    return-void
.end method

.method private getMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .line 181
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->mMenus:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    .line 182
    .local v0, "wrapper":Landroid/view/Menu;
    if-nez v0, :cond_18

    .line 183
    iget-object v1, p0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    move-object v2, p1

    check-cast v2, Landroid/support/v4/internal/view/SupportMenu;

    invoke-static {v1, v2}, Landroid/support/v7/view/menu/MenuWrapperFactory;->wrapSupportMenu(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenu;)Landroid/view/Menu;

    move-result-object v0

    .line 184
    iget-object v1, p0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->mMenus:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_18
    return-object v0
.end method


# virtual methods
.method public getActionModeWrapper(Landroid/support/v7/view/ActionMode;)Landroid/view/ActionMode;
    .registers 6
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    :goto_7
    if-ge v0, v1, :cond_1b

    .line 192
    iget-object v2, p0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/SupportActionModeWrapper;

    .line 193
    .local v2, "wrapper":Landroid/support/v7/view/SupportActionModeWrapper;
    if-eqz v2, :cond_18

    iget-object v3, v2, Landroid/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Landroid/support/v7/view/ActionMode;

    if-ne v3, p1, :cond_18

    .line 195
    return-object v2

    .line 191
    .end local v2    # "wrapper":Landroid/support/v7/view/SupportActionModeWrapper;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 201
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1b
    new-instance v0, Landroid/support/v7/view/SupportActionModeWrapper;

    iget-object v1, p0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/view/SupportActionModeWrapper;-><init>(Landroid/content/Context;Landroid/support/v7/view/ActionMode;)V

    .line 202
    .local v0, "wrapper":Landroid/support/v7/view/SupportActionModeWrapper;
    iget-object v1, p0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    return-object v0
.end method

.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 171
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/support/v7/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    move-object v3, p2

    check-cast v3, Landroid/support/v4/internal/view/SupportMenuItem;

    .line 172
    invoke-static {v2, v3}, Landroid/support/v7/view/menu/MenuWrapperFactory;->wrapSupportMenuItem(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)Landroid/view/MenuItem;

    move-result-object v2

    .line 171
    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .registers 6
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 158
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/support/v7/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    .line 159
    invoke-direct {p0, p2}, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->getMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    .line 158
    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .registers 4
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .line 177
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/support/v7/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 178
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .registers 6
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 164
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/support/v7/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    .line 165
    invoke-direct {p0, p2}, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->getMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    .line 164
    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
