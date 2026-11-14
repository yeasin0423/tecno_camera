.class public Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/FeatureAdapter;
.super Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;
.source "FeatureAdapter.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/FeatureAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

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

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected doClick(ILandroid/view/View;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->updateSelectPosition(I)V

    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;

    .line 41
    iget p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;->layoutId:I

    return p0
.end method

.method protected getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 35
    new-instance p0, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FeatureViewHolder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FeatureViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method protected inflateByViewType(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
