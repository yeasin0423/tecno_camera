.class Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MultiFBLevel2VideoRootLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 121
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_1

    .line 123
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->access$000(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)I

    move-result v0

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    if-lez p2, :cond_0

    neg-int p0, p2

    .line 126
    invoke-virtual {p1, p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->access$000(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)I

    move-result p1

    if-lt p2, p1, :cond_1

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->access$100(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    move-result-object p0

    const-string p1, "custom_SELECT"

    invoke-interface {p0, p1, v1, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;->onFBItemOnClick(Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 135
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
