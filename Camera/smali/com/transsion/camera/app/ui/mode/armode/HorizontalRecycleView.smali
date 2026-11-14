.class public final Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "HorizontalRecycleView.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$RecycleAdapter;,
        Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalSnapHelper;,
        Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;,
        Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$MyCallBack;,
        Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ScaleTransformer;,
        Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer;,
        Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$DefaultItemDecoration;,
        Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$BaseItemDecoration;,
        Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$SingleClick;,
        Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener;,
        Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IOnSelectChangeListener;,
        Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IDataContract;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDataContract:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IDataContract;

.field private mGestureDetectorCompat:Landroidx/core/view/GestureDetectorCompat;

.field private mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mItemWidth:I

.field private mLayoutManager:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;

.field private mOnSelectChangeListener:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IOnSelectChangeListener;

.field private final mScrollListenerInternal:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollStride:I

.field private mSelectedPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 272
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 280
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mSelectedPosition:I

    .line 184
    new-instance v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;-><init>(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mScrollListenerInternal:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mItemWidth:I

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v0

    if-eqz p2, :cond_2

    .line 287
    sget-object v1, Lcom/transsion/camera/feature/mode/armode/R$styleable;->HorizontalRecycleView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 288
    sget p3, Lcom/transsion/camera/feature/mode/armode/R$styleable;->HorizontalRecycleView_ItemWidth:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    if-lez p3, :cond_0

    .line 290
    iput p3, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mItemWidth:I

    .line 292
    :cond_0
    sget p3, Lcom/transsion/camera/feature/mode/armode/R$styleable;->HorizontalRecycleView_ItemMargin:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    if-ltz p3, :cond_1

    move v0, p3

    .line 296
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    :cond_2
    new-instance p2, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$DefaultItemDecoration;

    iget p3, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mItemWidth:I

    invoke-direct {p2, p3, v0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$DefaultItemDecoration;-><init>(II)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 300
    iget p2, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mItemWidth:I

    add-int p3, p2, v0

    iput p3, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mScrollStride:I

    .line 302
    new-instance p3, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;

    invoke-direct {p3, p0, p2, v0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;-><init>(Landroidx/recyclerview/widget/RecyclerView;II)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mLayoutManager:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;

    .line 303
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 304
    new-instance p2, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$MyCallBack;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$MyCallBack;-><init>(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;)V

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->setCallBack(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager$CallBack;)V

    .line 305
    new-instance p2, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ScaleTransformer;

    invoke-direct {p2}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ScaleTransformer;-><init>()V

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->setTransformer(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer;)V

    .line 307
    new-instance p2, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalSnapHelper;

    invoke-direct {p2, p3}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalSnapHelper;-><init>(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;)V

    .line 308
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 310
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mScrollListenerInternal:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 312
    invoke-virtual {p0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 313
    new-instance p2, Landroidx/core/view/GestureDetectorCompat;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$SingleClick;

    invoke-direct {v0, p0, p3}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$SingleClick;-><init>(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;)V

    invoke-direct {p2, p1, v0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mGestureDetectorCompat:Landroidx/core/view/GestureDetectorCompat;

    const/4 p1, 0x1

    .line 315
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setHorizontalFadingEdgeEnabled(Z)V

    .line 316
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/16 p2, 0x50

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFadingEdgeLength(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->notifyScrollStart()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->notifyScrollEnd()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->onScrollStateIdle(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->notifyScroll(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;)Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mLayoutManager:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->findCenterChildView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 45
    sget-object v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mScrollStride:I

    return p0
.end method

.method private findCenterChildView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 5

    .line 131
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 133
    sget-object p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "childCount is 0"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 136
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    .line 139
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v2, p0

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result p0

    div-int/lit8 v2, p0, 0x2

    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-ge p0, v0, :cond_3

    .line 147
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 148
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v4, v2, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    if-lt v4, v2, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object v1
.end method

.method private getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 159
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 161
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p0
.end method

.method private getScreenWidth()I
    .locals 1

    .line 441
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    .line 443
    sget-object p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "context is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "window"

    .line 446
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 447
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 448
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 449
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method private notifyScroll(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;II)V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 254
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 255
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener;

    .line 256
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mScrollStride:I

    invoke-interface {v2, p1, p2, v3, p3}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener;->onScroll(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyScrollEnd()V
    .locals 3

    .line 262
    sget-object v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyScrollEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 264
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 265
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener;

    .line 266
    invoke-interface {v2}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener;->onScrollEnd()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyScrollStart()V
    .locals 3

    .line 243
    sget-object v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyScrollStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 245
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 246
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener;

    .line 247
    invoke-interface {v2}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener;->onScrollStart()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onScrollStateIdle(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    if-nez p1, :cond_0

    .line 97
    sget-object p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "recyclerView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    sget-object p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "layoutManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->findCenterChildView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 108
    sget-object p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "centerChild is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 113
    sget-object v1, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScrollStateIdle position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mSelectedPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mSelectedPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    return-void

    .line 118
    :cond_3
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mSelectedPosition:I

    if-eq p1, v1, :cond_4

    .line 119
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mSelectedPosition:I

    .line 121
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->onSelectChangedImpl(I)V

    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 124
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-eq v1, v0, :cond_5

    .line 125
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private onSelectChangedImpl(I)V
    .locals 3

    .line 165
    sget-object v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectChangedImpl position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mOnSelectChangeListener:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IOnSelectChangeListener;

    if-nez v0, :cond_0

    .line 168
    sget-object p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mOnSelectChangeListener is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mDataContract:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IDataContract;

    if-nez v0, :cond_1

    .line 172
    sget-object p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDataContract is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_1
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IDataContract;->getData(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 177
    sget-object p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "data is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mOnSelectChangeListener:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IOnSelectChangeListener;

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IOnSelectChangeListener;->onSelectChanged(ILjava/lang/Object;)V

    return-void
.end method

.method private scrollToPositionImpl(I)V
    .locals 6

    .line 425
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    .line 427
    sget-object p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "layoutManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 431
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-gtz v1, :cond_1

    .line 433
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->getScreenWidth()I

    move-result v1

    .line 435
    :cond_1
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mItemWidth:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    .line 436
    sget-object v3, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollToPositionImpl width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mItemWidth: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mItemWidth:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method


# virtual methods
.method public addScrollListener(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener;)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mScrollListeners:Ljava/util/List;

    .line 460
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mScrollListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mGestureDetectorCompat:Landroidx/core/view/GestureDetectorCompat;

    if-eqz p0, :cond_0

    .line 322
    invoke-virtual {p0, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public removeScrollListener(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener;)V
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mScrollListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 465
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 417
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isLayoutFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 421
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->scrollToPositionImpl(I)V

    return-void
.end method

.method public final setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 377
    :cond_0
    instance-of v0, p1, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$RecycleAdapter;

    if-eqz v0, :cond_2

    .line 380
    instance-of v0, p1, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IDataContract;

    if-eqz v0, :cond_1

    .line 384
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 386
    check-cast p1, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IDataContract;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mDataContract:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IDataContract;

    return-void

    .line 381
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The adapter doesn\'t implements IDataContract !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 378
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only RecycleAdapter can be set here !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCallBack(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager$CallBack;)V
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mLayoutManager:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;

    if-nez p0, :cond_0

    .line 479
    sget-object p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mLayoutManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 482
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->setCallBack(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager$CallBack;)V

    return-void
.end method

.method public final setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 365
    :cond_0
    instance-of v0, p1, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;

    if-eqz v0, :cond_1

    .line 369
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void

    .line 366
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only HorizontalLayoutManager can be set here !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnSelectChangeListener(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IOnSelectChangeListener;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mOnSelectChangeListener:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IOnSelectChangeListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 3

    .line 396
    sget-object v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectedPosition position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "invalid position: "

    if-gez p1, :cond_0

    .line 399
    sget-object p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 402
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 406
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 407
    sget-object p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 411
    :cond_1
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mSelectedPosition:I

    .line 412
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->scrollToPosition(I)V

    return-void

    .line 404
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Adapter can\'t be null when this method is called !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTransformer(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer;)V
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->mLayoutManager:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;

    if-nez p0, :cond_0

    .line 471
    sget-object p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mLayoutManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 474
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$HorizontalLayoutManager;->setTransformer(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer;)V

    return-void
.end method
