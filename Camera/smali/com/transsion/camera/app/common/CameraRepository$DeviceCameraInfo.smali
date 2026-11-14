.class final Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;
.super Ljava/lang/Object;
.source "CameraRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/CameraRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceCameraInfo"
.end annotation


# instance fields
.field private final mCameraId:Ljava/lang/String;

.field private final mMaxZoom:I

.field private final mMinZoom:I

.field private final mZoomRatio:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getMiniZoom(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mMinZoom:I

    .line 47
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getMaxZoom(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mMaxZoom:I

    .line 48
    iget-object p1, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    iput p2, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mZoomRatio:F

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->equals(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getEquivalentMinZoom()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getEquivalentMaxZoom()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getEquivalentZoom(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getDeviceZoom(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->equivalentZoomInRange(I)Z

    move-result p0

    return p0
.end method

.method private equals(Ljava/lang/String;)Z
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private equivalentZoomInRange(I)Z
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getEquivalentMaxZoom()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getEquivalentMinZoom()I

    move-result p0

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getDeviceZoom(I)I
    .locals 1

    int-to-float p1, p1

    .line 69
    iget v0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mZoomRatio:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getNearestValidValue(I)I

    move-result p1

    .line 70
    iget v0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mMinZoom:I

    iget p0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mMaxZoom:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getEquivalentMaxZoom()I
    .locals 2

    .line 60
    iget v0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mMaxZoom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mZoomRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getNearestValidValue(I)I

    move-result p0

    return p0
.end method

.method private getEquivalentMinZoom()I
    .locals 2

    .line 56
    iget v0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mMinZoom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mZoomRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getNearestValidValue(I)I

    move-result p0

    return p0
.end method

.method private getEquivalentZoom(I)I
    .locals 2

    .line 64
    iget v0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mMinZoom:I

    iget v1, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mMaxZoom:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 65
    iget v0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mZoomRatio:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getNearestValidValue(I)I

    move-result p0

    return p0
.end method

.method private getNearestValidValue(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x2

    .line 74
    div-int/lit8 p1, p1, 0x5

    mul-int/lit8 p1, p1, 0x5

    return p1
.end method
