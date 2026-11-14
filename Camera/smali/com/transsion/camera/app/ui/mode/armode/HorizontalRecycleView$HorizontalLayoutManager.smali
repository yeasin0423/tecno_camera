.class final Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "HorizontalRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HorizontalLayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager$HorizontalSmoothScroller;,
        Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager$CallBack;
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager$CallBack;

.field private mItemMargin:I

.field private mItemWidth:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTransformer:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 761
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v0, 0x0

    .line 754
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->mCallBack:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager$CallBack;

    .line 762
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->mItemWidth:I

    .line 763
    iput p3, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->mItemMargin:I

    .line 764
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private applyItemTransformToChildren()V
    .locals 5

    .line 824
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->mTransformer:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 825
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 826
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 827
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->transformDistanceToScrollStride(Landroid/view/View;)F

    move-result v3

    .line 828
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->mTransformer:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer;

    invoke-interface {v4, v2, v3}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer;->transformItem(Landroid/view/View;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transformDistanceToScrollStride(Landroid/view/View;)F
    .locals 2

    .line 834
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 835
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 836
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->mItemWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->mItemMargin:I

    add-int/2addr v1, p0

    sub-int/2addr v0, p1

    .line 837
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    int-to-float p1, v1

    div-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 788
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result p0

    return p0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 780
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result p0

    return p0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 802
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->mItemWidth:I

    const/4 v1, -0x2

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 808
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 810
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->mCallBack:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager$CallBack;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager$CallBack;->verifyState(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 811
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->applyItemTransformToChildren()V

    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 816
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 818
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->applyItemTransformToChildren()V

    return p1
.end method

.method public setCallBack(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager$CallBack;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->mCallBack:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager$CallBack;

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 794
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only HORIZONTAL can be set here !!! | orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 797
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    return-void
.end method

.method public setTransformer(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer;)V
    .locals 0

    .line 772
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->mTransformer:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer;

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 842
    new-instance p2, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager$HorizontalSmoothScroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager$HorizontalSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 843
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 844
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
