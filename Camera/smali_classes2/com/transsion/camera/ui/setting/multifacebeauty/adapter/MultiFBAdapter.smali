.class public abstract Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MultiFBAdapter.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mClickable:Z

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastSelectedPostion:I

.field protected mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

.field protected mOldSelectedPostion:I

.field protected mSelectedPostion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 2
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

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mSelectedPostion:I

    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mOldSelectedPostion:I

    .line 36
    iput v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mLastSelectedPostion:I

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mClickable:Z

    .line 41
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {v0, p2}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mItems:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string p2, "oldSelected"

    const-string v1, "1"

    invoke-virtual {v0, p2, v1, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mSelectedPostion:I

    .line 44
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mOldSelectedPostion:I

    return-void
.end method


# virtual methods
.method protected abstract doClick(ILandroid/view/View;)V
.end method

.method public getItemCount()I
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method protected abstract getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method protected abstract inflateByViewType(Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;

    .line 79
    move-object v1, p1

    check-cast v1, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FaceBeautyViewHolder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mSelectedPostion:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mOldSelectedPostion:I

    invoke-virtual {v1, v0, p2, v2, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/holder/FaceBeautyViewHolder;->bindHolder(Ljava/lang/Object;III)V

    .line 81
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f090140

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->inflateByViewType(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 56
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter$1;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setItemClickable(Z)V
    .locals 3

    .line 109
    sget-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setItemClickable ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mClickable:Z

    return-void
.end method

.method public setListener(Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    return-void
.end method

.method public updateSelectPosition(I)V
    .locals 3

    .line 94
    sget-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pp:position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mSelectedPostion:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mLastSelectedPostion:I

    .line 96
    iput p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mSelectedPostion:I

    if-lez p1, :cond_0

    .line 98
    iput p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mOldSelectedPostion:I

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
