.class public Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FeatureViewHolder;
.super Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FaceBeautyViewHolder;
.source "FeatureViewHolder.java"


# instance fields
.field private mItemIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FaceBeautyViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090140

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FeatureViewHolder;->mItemIcon:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;III)V
    .locals 3

    .line 31
    instance-of v0, p1, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;

    if-eqz v0, :cond_7

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "aa"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "youqin.. postion.="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " selectedPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 33
    check-cast p1, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;

    .line 34
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FeatureViewHolder;->mItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p1, 0x0

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    if-eq p3, v0, :cond_2

    :cond_1
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FeatureViewHolder;->mItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_3
    if-ne p2, p3, :cond_4

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FeatureViewHolder;->mItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FeatureViewHolder;->mItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    if-nez p3, :cond_5

    if-ne p2, p4, :cond_5

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FeatureViewHolder;->mItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    :cond_5
    if-ne p2, p3, :cond_6

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FeatureViewHolder;->mItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 55
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FeatureViewHolder;->mItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_7
    :goto_1
    return-void
.end method
