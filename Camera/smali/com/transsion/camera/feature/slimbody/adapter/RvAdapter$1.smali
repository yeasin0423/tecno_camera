.class Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;
.super Ljava/lang/Object;
.source "RvAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/slimbody/holder/RvHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

.field final synthetic val$holder:Lcom/transsion/camera/feature/slimbody/holder/RvHolder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;Lcom/transsion/camera/feature/slimbody/holder/RvHolder;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->val$holder:Lcom/transsion/camera/feature/slimbody/holder/RvHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    iget-object v0, v0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->val$holder:Lcom/transsion/camera/feature/slimbody/holder/RvHolder;

    .line 72
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sget v1, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_fake_item:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->val$holder:Lcom/transsion/camera/feature/slimbody/holder/RvHolder;

    .line 73
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sget v1, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_feature_back:I

    if-eq v0, v1, :cond_3

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->val$holder:Lcom/transsion/camera/feature/slimbody/holder/RvHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    iget v2, v1, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mSelectedPostion:I

    if-ne v2, v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    iget-object p0, v1, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

    iget-object v1, v1, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1, v0}, Lcom/transsion/camera/feature/slimbody/listener/RvListener;->onClickSelectedItem(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_1

    .line 79
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->updateSelectedItemByPosition(I)V

    .line 80
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    iget-object v2, v1, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

    iget-object v1, v1, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    iget p0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mOldSelectedPostion:I

    invoke-interface {v2, p1, v1, v0, p0}, Lcom/transsion/camera/feature/slimbody/listener/RvListener;->onItemSelected(Landroid/view/View;Ljava/lang/Object;II)V

    :cond_3
    :goto_1
    return-void
.end method
