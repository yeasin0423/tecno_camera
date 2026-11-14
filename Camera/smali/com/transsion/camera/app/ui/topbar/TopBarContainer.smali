.class public Lcom/transsion/camera/app/ui/topbar/TopBarContainer;
.super Landroid/widget/FrameLayout;
.source "TopBarContainer.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mOrientation:I

.field private mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

.field private mViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mOrientation:I

    .line 45
    new-instance p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Ljava/util/Map;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mViewMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mViewMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->getAvailableWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mOrientation:I

    return p0
.end method

.method private getAvailableWidth()I
    .locals 2

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 50
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 52
    iget-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mViewMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 53
    new-instance p1, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;-><init>(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mOrientation:I

    return-void
.end method

.method public updateTopBar(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->getAvailableWidth()I

    move-result v0

    .line 74
    sget-object v1, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTopBar update width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-gtz v0, :cond_0

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mViewMap:Ljava/util/Map;

    goto :goto_0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->setContainerWidth(I)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mOrientation:I

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->update(Ljava/util/Map;I)V

    :goto_0
    return-void
.end method
