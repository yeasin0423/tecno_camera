.class public Lcom/transsion/camera/app/ui/widget/GridRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "GridRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;
    }
.end annotation


# instance fields
.field private mOrientation:I

.field private mSpanCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mOrientation:I

    const/4 v1, 0x2

    .line 31
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mSpanCount:I

    if-eqz p2, :cond_0

    .line 46
    sget-object v1, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->GridRecyclerView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 47
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->GridRecyclerView_orientation:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mOrientation:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mOrientation:I

    .line 48
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->GridRecyclerView_spanCount:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mSpanCount:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mSpanCount:I

    .line 49
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    :cond_0
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget p3, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mSpanCount:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mOrientation:I

    invoke-direct {p2, p1, p3, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
