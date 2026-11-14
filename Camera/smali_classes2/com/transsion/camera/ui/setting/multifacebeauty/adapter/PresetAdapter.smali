.class public Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/PresetAdapter;
.super Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;
.source "PresetAdapter.java"


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected doClick(ILandroid/view/View;)V
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;

    .line 55
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f090140

    .line 56
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "custom_SELECT"

    goto :goto_0

    :cond_0
    const-string p1, "custom_UNSELECT"

    .line 57
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;->setKey(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;

    .line 43
    iget p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;->layoutId:I

    return p0
.end method

.method protected getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 37
    new-instance p0, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/PresetViewHolder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/PresetViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method protected inflateByViewType(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
