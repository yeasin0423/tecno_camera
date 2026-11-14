.class public Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$BaseItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "HorizontalRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseItemDecoration"
.end annotation


# instance fields
.field protected mItemMargin:I

.field protected mItemWidth:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 490
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 491
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$BaseItemDecoration;->mItemWidth:I

    .line 492
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$BaseItemDecoration;->mItemMargin:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 497
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 499
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_0

    .line 501
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "getItemOffsets adapter is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 505
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$BaseItemDecoration;->mItemWidth:I

    .line 506
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v0, :cond_1

    sub-int/2addr v1, v0

    .line 508
    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    .line 510
    :goto_0
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    .line 511
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_2

    .line 513
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$BaseItemDecoration;->mItemMargin:I

    invoke-virtual {p1, v1, v2, p0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_3

    .line 515
    invoke-virtual {p1, v2, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 517
    :cond_3
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$BaseItemDecoration;->mItemMargin:I

    invoke-virtual {p1, v2, v2, p0, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method
