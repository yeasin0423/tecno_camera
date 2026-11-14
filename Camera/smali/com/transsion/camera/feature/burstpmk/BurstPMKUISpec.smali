.class Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;
.super Lcom/transsion/camera/feature/common/BaseUISpec;
.source "BurstPMKUISpec.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mArrowHeight:I

.field mArrowPadding:I

.field mArrowWidth:I

.field mBorder:Z

.field mBorderHeight:I

.field mHRatio:F

.field mLineColor:I

.field mNotifyPadding:I

.field mTextHeight:I

.field mVRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BaseUISpec;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->notify_text_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mTextHeight:I

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->notify_text_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mNotifyPadding:I

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->arrow_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mArrowPadding:I

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->arrow_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mArrowWidth:I

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->arrow_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mArrowHeight:I

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->display_burstpmk_preview_border:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mBorder:Z

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/common/utils/GlUtil;->dpToPx(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mBorderHeight:I

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$color;->line_color:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    .line 67
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$color;->horizontal_Line_Color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mLineColor:I

    return-void
.end method


# virtual methods
.method calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;)V
    .locals 8

    if-nez p1, :cond_0

    .line 72
    sget-object p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "calculateThumbnailSize previewSize is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 77
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    .line 78
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 79
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    int-to-double v6, p2

    div-double/2addr v2, v6

    int-to-double v6, v1

    mul-double/2addr v6, v4

    int-to-double v4, p1

    div-double/2addr v6, v4

    int-to-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v0, v4

    int-to-float v5, v1

    div-float/2addr v0, v5

    .line 84
    iput v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mVRatio:F

    int-to-float p2, p2

    mul-float/2addr p2, v4

    int-to-float v0, p1

    div-float/2addr p2, v0

    .line 85
    iput p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mHRatio:F

    .line 87
    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    .line 88
    iput v1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    .line 90
    div-int/lit8 p2, v1, 0x8

    iput p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    mul-int v0, p2, p1

    .line 91
    div-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 92
    iput p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 93
    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    int-to-float p2, p2

    const v0, 0x4049999a    # 3.15f

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 96
    iget v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mArrowWidth:I

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mArrowHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mArrowWidth:I

    .line 97
    iput p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mArrowHeight:I

    .line 99
    iget-object p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sub-int/2addr p1, p1

    shr-int/lit8 p1, p1, 0x1

    iput p1, p2, Landroid/graphics/Point;->x:I

    sub-double/2addr v2, v6

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpl-double p1, p1, v0

    if-lez p1, :cond_1

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    iget v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mPreview4_3Height:I

    iget v1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    sub-int/2addr v0, v1

    add-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 104
    iput v4, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mVRatio:F

    goto :goto_0

    .line 107
    :cond_1
    iget p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mVRatio:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    iget p0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mPreview4_3Height:I

    sub-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1

    add-int/2addr v1, p0

    int-to-float p0, v1

    div-float/2addr p0, p2

    float-to-int p0, p0

    iput p0, v0, Landroid/graphics/Point;->y:I

    :goto_0
    return-void
.end method
