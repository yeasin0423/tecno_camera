.class public Lcom/transsion/camera/app/ui/MainScreenOriginPosition;
.super Ljava/lang/Object;
.source "MainScreenOriginPosition.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IImmutableFrameSize;


# static fields
.field private static volatile sMainScreenSize:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;


# instance fields
.field private final mBottomHeight:I

.field private final mCutoutHeight:I

.field private final mScreenSize:Landroid/util/Size;

.field private final mToolBarHeight:I

.field private final mToolBarOriginPaddingHeight:I

.field private final mTopBarAdditionalPullMaxHeight:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070352

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 28
    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 29
    new-instance v3, Landroid/util/Size;

    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mScreenSize:Landroid/util/Size;

    .line 30
    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v2, v3, v2

    const/4 v4, 0x0

    .line 32
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 33
    invoke-static {v2}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->additionalToolBarHeight(I)I

    move-result v5

    iput v5, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mToolBarOriginPaddingHeight:I

    add-int/2addr v0, v5

    .line 34
    iput v0, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mCutoutHeight:I

    add-int/2addr v1, v5

    .line 35
    iput v1, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mToolBarHeight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    .line 36
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 37
    iget v0, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mCutoutHeight:I

    sub-int/2addr v3, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mToolBarHeight:I

    sub-int/2addr v3, v0

    invoke-static {p1}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->preview4_3height(Landroid/util/DisplayMetrics;)I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mBottomHeight:I

    .line 38
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mToolBarHeight:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mTopBarAdditionalPullMaxHeight:I

    return-void
.end method

.method private static additionalToolBarHeight(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x3

    add-int/lit8 p0, p0, 0x5

    .line 50
    div-int/lit8 p0, p0, 0xa

    return p0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/transsion/camera/app/ui/MainScreenOriginPosition;
    .locals 2

    .line 54
    sget-object v0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->sMainScreenSize:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->sMainScreenSize:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->sMainScreenSize:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    .line 59
    :cond_0
    sget-object p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->sMainScreenSize:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 62
    :cond_1
    sget-object p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->sMainScreenSize:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    return-object p0
.end method

.method private static preview4_3height(Landroid/util/DisplayMetrics;)I
    .locals 1

    .line 42
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    .line 43
    div-int/lit8 p0, p0, 0x3

    return p0
.end method


# virtual methods
.method public getBottomHeight()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mBottomHeight:I

    return p0
.end method

.method public getBottomRegionHeight()I
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getBottomHeight()I

    move-result p0

    return p0
.end method

.method public getCutoutHeight()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mCutoutHeight:I

    return p0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mScreenSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mScreenSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getToolBarHeight()I
    .locals 0

    .line 82
    iget p0, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mToolBarHeight:I

    return p0
.end method

.method public getToolBarOriginPaddingHeight()I
    .locals 0

    .line 101
    iget p0, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mToolBarOriginPaddingHeight:I

    return p0
.end method

.method public getTopBarAdditionalPullMaxHeight()I
    .locals 0

    .line 94
    iget p0, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mTopBarAdditionalPullMaxHeight:I

    return p0
.end method

.method public getTopBarHeight()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mCutoutHeight:I

    iget p0, p0, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->mToolBarHeight:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getTopRegionHeight()I
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getTopBarHeight()I

    move-result p0

    return p0
.end method
