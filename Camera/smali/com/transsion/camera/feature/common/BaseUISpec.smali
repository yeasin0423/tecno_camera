.class public Lcom/transsion/camera/feature/common/BaseUISpec;
.super Ljava/lang/Object;
.source "BaseUISpec.java"


# instance fields
.field public mBgColor:I

.field public mBorder:Z

.field public mBorderColor:I

.field protected mContext:Landroid/content/Context;

.field public mPreview4_3Height:I

.field protected mResources:Landroid/content/res/Resources;

.field public mStartPoint:Landroid/graphics/Point;

.field public mSurfaceHeight:I

.field public mSurfaceWidth:I

.field public mThumbBgHeight:I

.field public mThumbBgWidth:I

.field public mThumbHeight:I

.field public mThumbWidth:I

.field public mTopBarHeight:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    .line 53
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopOffset()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    sub-int/2addr v0, v1

    .line 55
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePickerTabHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mPreview4_3Height:I

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$color;->bridge_bg_color:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mBgColor:I

    .line 59
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    return-void
.end method
