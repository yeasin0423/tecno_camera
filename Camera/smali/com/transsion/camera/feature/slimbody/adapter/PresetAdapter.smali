.class public Lcom/transsion/camera/feature/slimbody/adapter/PresetAdapter;
.super Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;
.source "PresetAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/slimbody/listener/RvListener;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/slimbody/listener/RvListener;)V

    return-void
.end method


# virtual methods
.method protected getHolder(Landroid/view/View;I)Lcom/transsion/camera/feature/slimbody/holder/RvHolder;
    .locals 0

    .line 35
    new-instance p0, Lcom/transsion/camera/feature/slimbody/holder/PresetHolder;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/holder/PresetHolder;-><init>(Landroid/view/View;I)V

    return-object p0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 21
    instance-of v1, v0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    if-eqz v1, :cond_0

    .line 22
    check-cast v0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    .line 23
    iget p0, v0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->layoutId:I

    return p0

    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public updateSeletedItemById(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    .line 45
    iget v1, v1, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->presetMode:I

    if-ne p1, v1, :cond_1

    .line 46
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->updateSelectedItemByPosition(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
