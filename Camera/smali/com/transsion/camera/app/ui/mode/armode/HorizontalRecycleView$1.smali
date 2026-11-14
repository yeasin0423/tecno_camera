.class Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "HorizontalRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScrollState:I

.field private mScrolling:Z

.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 186
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->mScrolling:Z

    .line 187
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->mScrollState:I

    return-void
.end method

.method private findCenterPosition(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$400(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;)Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$500(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    .line 216
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "centerView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 219
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private getScrolledDistance(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$400(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;)Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v2, v0, :cond_0

    .line 226
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid first visible position"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$400(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;)Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 231
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "firstVisibleChildView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 234
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$700(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;)I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p1, p0

    .line 236
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p0, p1

    .line 238
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 191
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 192
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->mScrollState:I

    if-nez v0, :cond_0

    if-eq v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->mScrolling:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->mScrolling:Z

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$000(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;)V

    :cond_0
    if-nez p2, :cond_1

    .line 196
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->mScrolling:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->mScrolling:Z

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$100(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;)V

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$200(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 201
    :cond_1
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->mScrollState:I

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    if-eqz p2, :cond_0

    .line 207
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;->fromDelta(I)Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;

    move-result-object p2

    .line 208
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->getScrolledDistance(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    .line 209
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;->findCenterPosition(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    .line 207
    invoke-static {p3, p2, v0, p0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$300(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;II)V

    :cond_0
    return-void
.end method
