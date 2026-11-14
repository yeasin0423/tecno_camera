.class public Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "FaceDetection.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private isFaceDetecting:Z

.field private mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

.field private mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

.field private mFaceDetectionResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mFaceRectResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mFaceValidResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mFirebaseGenderSupport:Z

.field private mHandle:Landroid/os/Handler;

.field private mHasValidFace:I

.field private mIsCapturing:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsCapturing:Z

    .line 61
    iput v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHasValidFace:I

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isFaceDetecting:Z

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFirebaseGenderSupport:Z

    .line 66
    new-instance v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;-><init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    .line 185
    new-instance v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;-><init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 293
    new-instance v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;-><init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHandle:Landroid/os/Handler;

    .line 313
    new-instance v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;-><init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Landroid/graphics/Rect;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->findMaxFaceRect([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->checkTranssionFaceInfo([I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 43
    sget-object v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->requestFaceDetection()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHasValidFace:I

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHasValidFace:I

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceValidResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceRectResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsCapturing:Z

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsCapturing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;F)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->showFaceIfNeed([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;F)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFirebaseGenderSupport:Z

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isFaceDetecting:Z

    return p0
.end method

.method static synthetic access$902(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isFaceDetecting:Z

    return p1
.end method

.method private checkTranssionFaceInfo([I)V
    .locals 8

    if-eqz p1, :cond_1

    .line 169
    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    move v2, v0

    .line 170
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    const/4 v3, 0x4

    .line 171
    aget v3, p1, v3

    .line 172
    aget v4, p1, v1

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 174
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sex(I)V

    .line 175
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->age(I)V

    .line 176
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isFaceDetecting:Z

    .line 177
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHandle:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHandle:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 180
    :cond_0
    sget-object v5, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkTranssionFaceInfo] sex:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  age:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findMaxFace([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Lcom/transsion/camera/utils/SettingInfo$CameraFace;
    .locals 6

    const/4 p0, 0x0

    .line 355
    aget-object v0, p1, p0

    .line 356
    array-length v1, p1

    :goto_0
    if-ge p0, v1, :cond_1

    aget-object v2, p1, p0

    .line 357
    invoke-virtual {v0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    .line 358
    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private findMaxFaceRect([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Landroid/graphics/Rect;
    .locals 6

    const/4 p0, 0x0

    .line 345
    aget-object v0, p1, p0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 346
    array-length v1, p1

    :goto_0
    if-ge p0, v1, :cond_1

    aget-object v2, p1, p0

    .line 347
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 348
    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private requestFaceDetection()V
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    if-eqz p0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method private showFaceIfNeed([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;F)V
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 151
    array-length v3, p1

    if-lez v3, :cond_2

    if-eqz v0, :cond_3

    .line 153
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->findMaxFace([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 155
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 154
    invoke-static {p0, v3, v4}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p0

    .line 156
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    mul-int/2addr v4, v0

    int-to-float v0, v4

    div-float/2addr v3, v0

    cmpl-float p3, v3, p3

    if-gtz p3, :cond_1

    .line 157
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lt p3, v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    if-le p3, p0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-interface {p2, p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_1

    .line 158
    :cond_1
    :goto_0
    invoke-interface {p2, v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_1

    .line 164
    :cond_2
    invoke-interface {p2, v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_face_detection"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    .line 247
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 233
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getSupport()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 213
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 214
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p3, "key_has_valid_face"

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceValidResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 215
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p3, "key_face_detection"

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 216
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p3, "key_face_rect"

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceRectResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "firebase_gender_support"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFirebaseGenderSupport:Z

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   defaultValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 225
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 226
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 279
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 280
    iput p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHasValidFace:I

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 252
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 260
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const-string p1, "off"

    .line 261
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    .line 263
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->resetFaceDetectionState()V

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->stopFaceInfoDection()V

    .line 265
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 267
    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 1

    const-string v0, "on"

    .line 285
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method
