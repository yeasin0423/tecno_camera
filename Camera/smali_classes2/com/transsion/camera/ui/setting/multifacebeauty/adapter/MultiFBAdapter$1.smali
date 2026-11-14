.class Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter$1;
.super Ljava/lang/Object;
.source "MultiFBAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;

    iget-boolean v0, v0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mClickable:Z

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_2

    .line 63
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;

    iget-object v1, v1, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;

    iget-object v1, v1, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;

    .line 67
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;

    invoke-virtual {v2, v0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->doClick(ILandroid/view/View;)V

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mOldSelectedPostion:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->mLastSelectedPostion:I

    invoke-interface {p1, v0, v1, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;->onFBItemOnClick(Ljava/lang/String;II)V

    :cond_2
    :goto_0
    return-void
.end method
