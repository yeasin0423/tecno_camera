.class public Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;
.super Ljava/lang/Object;
.source "ModeHorizontalScroll2.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/scroll/IScrollOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mMainScreenOriginPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

.field private mModeIcon:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

.field private mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

.field private mStartPull:Z

.field private mStartY:F

.field private final mTriggerScrollDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeHorizontalScroll2"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartY:F

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    .line 28
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mMainScreenOriginPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    .line 29
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getScreenWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mTriggerScrollDistance:I

    return-void
.end method

.method private canScrollToNext()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->canScrollToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeIcon:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->canScrollToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 90
    sget-object v0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "can not ScrollToNext mModeScroll or  mModeIcon in scrolling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method private canScrollToPrevious()Z
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->canScrollToPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeIcon:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->canScrollToPrevious()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 98
    sget-object v0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "can not ScrollToPrevious mModeScroll or  mModeIcon in scrolling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method private canScrolling()Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->canScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeIcon:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->canScrolling()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 82
    sget-object v0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "can not Scrolling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return p0
.end method


# virtual methods
.method public down(FF)V
    .locals 0

    .line 42
    iput p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartY:F

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    return-void
.end method

.method public pulling(FF)Z
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mMainScreenOriginPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getTopBarHeight()I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mMainScreenOriginPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mMainScreenOriginPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getBottomHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 50
    iget v2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartY:F

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    const/4 v4, 0x0

    if-gez v2, :cond_0

    .line 51
    sget-object p1, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return pulling mStartY = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartY:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " previewTopY ="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v4

    .line 55
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->canScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    sget-object p1, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "return pulling mStartPull = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " canScrolling = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->canScrolling()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v4

    .line 60
    :cond_1
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartY:F

    cmpg-float v2, v3, v0

    const/4 v3, 0x1

    if-gtz v2, :cond_4

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    float-to-int p1, p1

    .line 61
    iget p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mTriggerScrollDistance:I

    div-int/2addr p1, p2

    if-lez p1, :cond_2

    .line 62
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->canScrollToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    if-nez p2, :cond_2

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->scrollToNext()V

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeIcon:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->scrollToNext()V

    .line 65
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->canScrollToPrevious()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    if-nez p1, :cond_3

    .line 67
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->scrollToPrevious()V

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeIcon:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->scrollToPrevious()V

    .line 69
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    :cond_3
    :goto_0
    return v4

    .line 73
    :cond_4
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->scrolling(FF)V

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeIcon:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->scrolling(FF)V

    return v4
.end method

.method public setModeIconLayout(Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeIcon:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    return-void
.end method

.method public setModeScroll(Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    return-void
.end method

.method public stopPulling()Z
    .locals 2

    .line 105
    sget-object v0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopPulling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->stopScroll()V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeIcon:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->stopScroll()V

    :cond_0
    return v1
.end method
