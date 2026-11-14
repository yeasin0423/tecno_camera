.class public Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;
.super Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;
.source "FunArAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter<",
        "Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;",
        "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelect:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->mSelect:I

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getOnItemClickListener()Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getOnItemClickListener()Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getCurSelect()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->mSelect:I

    return p0
.end method

.method public synthetic lambda$onBindViewHolder$0$FunArAdapter(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;I)V
    .locals 3

    .line 53
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    if-eqz v0, :cond_5

    .line 55
    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getBundleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p1, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    sget v2, Lcom/transsion/camera/feature/funvideo/R$drawable;->ic_fun_ar_cancel:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getBundleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Vskit"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p1, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    sget v2, Lcom/transsion/camera/feature/funvideo/R$drawable;->ic_vskit:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 62
    iget-object v2, p1, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->hasMusic()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 66
    iget-object v0, p1, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->musicView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 68
    :cond_3
    iget-object v0, p1, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->musicView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    :goto_1
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->mSelect:I

    if-ne v0, p2, :cond_4

    .line 71
    iget-object v0, p1, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->selectView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 73
    :cond_4
    iget-object v0, p1, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->selectView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    :goto_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 77
    iget-object p1, p1, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->root:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunArAdapter$RdIxJ06VTx6pancve9aQXtxqqJI;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunArAdapter$RdIxJ06VTx6pancve9aQXtxqqJI;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;
    .locals 1

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/funvideo/R$layout;->funvideo_recycler_view_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 48
    new-instance p1, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method protected setSelect(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->mSelect:I

    return-void
.end method
