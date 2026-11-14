.class public abstract Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$RecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HorizontalRecycleView.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IDataContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RecycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;",
        "Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IDataContract<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1023
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 1024
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$RecycleAdapter;->mDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getData(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1043
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1047
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1044
    :cond_1
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 1035
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$RecycleAdapter;->mDataList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1038
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 1028
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$RecycleAdapter;->mDataList:Ljava/util/List;

    .line 1030
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
