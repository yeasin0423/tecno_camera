.class public Lcom/transsion/camera/ui/setting/multifacebeauty/manager/ScrollLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "ScrollLinearLayoutManager.java"


# instance fields
.field private mCanHorizontalScroll:Z


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/manager/ScrollLinearLayoutManager;->mCanHorizontalScroll:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 31
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result p0

    return p0
.end method
