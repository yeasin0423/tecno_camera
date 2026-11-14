.class public Lcom/transsion/camera/ui/setting/multifacebeauty/holder/PresetViewHolder;
.super Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FaceBeautyViewHolder;
.source "PresetViewHolder.java"


# instance fields
.field private mItemIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FaceBeautyViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090140

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/PresetViewHolder;->mItemIcon:Landroid/widget/ImageView;

    return-void
.end method

.method private selectBySetting(Ljava/lang/String;)V
    .locals 4

    .line 56
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "level2select"

    const-string v3, "aiv2"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f090140

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;III)V
    .locals 1

    .line 35
    instance-of p4, p1, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;

    if-eqz p4, :cond_2

    .line 36
    check-cast p1, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;

    .line 37
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 38
    iget-object p4, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/PresetViewHolder;->mItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-ne p2, p3, :cond_1

    .line 41
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/PresetViewHolder;->mItemIcon:Landroid/widget/ImageView;

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 43
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/PresetViewHolder;->mItemIcon:Landroid/widget/ImageView;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    const/4 p2, -0x1

    if-ne p3, p2, :cond_2

    .line 46
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/PresetViewHolder;->selectBySetting(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
