.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SlimBodyRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 128
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_1

    .line 130
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$600(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)I

    move-result v0

    if-ge p2, v0, :cond_0

    if-lez p2, :cond_0

    neg-int p0, p2

    const/4 p2, 0x0

    .line 133
    invoke-virtual {p1, p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$600(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)I

    move-result p1

    if-lt p2, p1, :cond_1

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->featureRvScrollIn()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 142
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
