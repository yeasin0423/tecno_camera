.class Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;
.super Lcom/transsion/camera/feature/common/BaseUISpec;
.source "WideSelfieUISpec.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mArrowHeight:I

.field mArrowHeightLand:I

.field mArrowTopMargin:I

.field mArrowWidth:I

.field mArrowWidthLand:I

.field mBgBorder:Z

.field mBgBorderColor:I

.field private final mThumbHeightConfig:I

.field private final mThumbHeightConfigLand:I

.field private final mTopInterval:I

.field mTopIntervalLand:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BaseUISpec;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 44
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_notify_arrow_marginTop:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowTopMargin:I

    .line 45
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_notify_arrow_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowWidth:I

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_notify_arrow_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowHeight:I

    .line 47
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_notify_arrow_land_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowWidthLand:I

    .line 48
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_notify_arrow_land_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowHeightLand:I

    .line 51
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_progressBarThumbHeight:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mThumbHeightConfig:I

    .line 52
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_progressBarThumbHeight_land:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mThumbHeightConfigLand:I

    .line 53
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_top_interval:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mTopInterval:I

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_top_interval_land:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mTopIntervalLand:I

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$color;->line_color:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$color;->wideselfie_bg_border_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mBgBorderColor:I

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->display_wideselfie_preview_border:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorder:Z

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->display_wideselfie_bg_border:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mBgBorder:Z

    return-void
.end method


# virtual methods
.method calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;I)V
    .locals 6

    if-nez p1, :cond_0

    .line 65
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "calculateThumbnailSize previewSize is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 70
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 72
    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    .line 73
    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    .line 75
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v3, v0

    div-float/2addr v1, v3

    .line 76
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v2

    int-to-float v2, p1

    div-float/2addr p2, v2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p3, v2, :cond_1

    if-eqz p3, :cond_1

    const/16 v2, 0xb4

    if-eq p3, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 81
    iget v4, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mThumbHeightConfig:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    goto :goto_1

    .line 83
    :cond_2
    iget v4, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mThumbHeightConfigLand:I

    int-to-float v4, v4

    div-float/2addr v4, p2

    float-to-int v4, v4

    iput v4, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 86
    :goto_1
    iget v4, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    rem-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_3

    sub-int/2addr v4, v3

    .line 87
    iput v4, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    :cond_3
    if-nez v2, :cond_4

    .line 91
    iget p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    mul-int p3, p1, p2

    div-int/2addr p3, v0

    iput p3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    mul-int/lit8 p3, p3, 0x2

    .line 93
    iput p3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 94
    iput p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 96
    iget-object p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sub-int/2addr p1, p3

    shr-int/2addr p1, v3

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 97
    iget p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mTopInterval:I

    iput p0, p2, Landroid/graphics/Point;->y:I

    goto :goto_3

    .line 99
    :cond_4
    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    iput v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    mul-int/2addr v0, v2

    .line 100
    div-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 102
    iput v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    mul-int/lit8 v0, v0, 0x2

    .line 103
    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    const/16 v0, 0x5a

    if-ne p3, v0, :cond_5

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget p3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mTopIntervalLand:I

    int-to-float p3, p3

    div-float/2addr p3, p2

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_5
    const/16 v0, 0x10e

    if-ne p3, v0, :cond_6

    .line 108
    iget-object p3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mTopIntervalLand:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    float-to-int v0, v0

    sub-int/2addr p1, v0

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 112
    :cond_6
    :goto_2
    iget p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 113
    iget-object p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget p3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    iget p0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mPreview4_3Height:I

    sub-int/2addr p0, p1

    shr-int/2addr p0, v3

    add-int/2addr p3, p0

    int-to-float p0, p3

    div-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Point;->y:I

    :goto_3
    return-void
.end method
