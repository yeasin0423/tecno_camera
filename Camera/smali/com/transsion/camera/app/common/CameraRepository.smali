.class public Lcom/transsion/camera/app/common/CameraRepository;
.super Ljava/lang/Object;
.source "CameraRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/transsion/camera/app/common/CameraRepository;


# instance fields
.field private final mAllCamera:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBack2XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBack5XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBackBlackWhitePortraitCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBackFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBackVideoCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mCameraCount:I

.field private final mFrontFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    .line 84
    new-instance v0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    const-string v1, "0"

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 85
    new-instance v0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    const-string v1, "1"

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 86
    new-instance v0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getVideoCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackVideoCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 87
    new-instance v0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 88
    new-instance v0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getOpticalZoomCameraId()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 89
    new-instance v0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPeriscopeCameraId()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack5XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack5XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    :goto_0
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSatCameraLogicId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 93
    new-instance v0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLogicalCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 94
    new-instance v0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSecondLogicalCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 95
    new-instance v0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBlackWhitePortraitCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlackWhitePortraitCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 96
    new-instance v0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBackFakeDualCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 97
    new-instance v0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 98
    new-instance v0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontFakeDualCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 99
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mCameraCount:I

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackVideoCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackVideoCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackVideoCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlackWhitePortraitCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlackWhitePortraitCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlackWhitePortraitCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method private equivalentZoomInLongFocusCamera(I)Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$600(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 310
    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$300(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 311
    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$300(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getInstance()Lcom/transsion/camera/app/common/CameraRepository;
    .locals 1

    .line 139
    sget-object v0, Lcom/transsion/camera/app/common/CameraRepository;->sInstance:Lcom/transsion/camera/app/common/CameraRepository;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/transsion/camera/app/common/CameraRepository;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/CameraRepository;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/CameraRepository;->sInstance:Lcom/transsion/camera/app/common/CameraRepository;

    .line 142
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/CameraRepository;->sInstance:Lcom/transsion/camera/app/common/CameraRepository;

    return-object v0
.end method


# virtual methods
.method public getBack2XBlurCamera()Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackBlackWhitePortraitCamera()Ljava/lang/String;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlackWhitePortraitCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackBlurCamera()Ljava/lang/String;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackCameraWithZoom(I)Ljava/lang/String;
    .locals 1

    .line 297
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->equivalentZoomInLongFocusCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$600(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$600(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackDefaultCamera()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackDefaultCamera(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackDefaultCamera(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackFakeDualCamera()Ljava/lang/String;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackLongFocusCamera()Ljava/lang/String;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackLongFocusCameraDeviceZoom(I)I
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$500(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I

    move-result p0

    return p0
.end method

.method public getBackLongFocusCameraMiniZoom()I
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$200(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I

    move-result p0

    return p0
.end method

.method public getBackLongFocusCameraZoom(I)I
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$400(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I

    move-result p0

    return p0
.end method

.method public getBackMainCameraMiniZoom()I
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$200(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I

    move-result p0

    return p0
.end method

.method public getBackSATCamera()Ljava/lang/String;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackVideoCamera()Ljava/lang/String;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackVideoCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackWideCamera()Ljava/lang/String;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCameraCount()I
    .locals 0

    .line 146
    iget p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mCameraCount:I

    return p0
.end method

.method public getDeviceZoom(Ljava/lang/String;I)I
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_0

    .line 287
    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$500(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public getEquivalentZoom(Ljava/lang/String;I)I
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_0

    .line 279
    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$400(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public getFrontDefaultCamera()Ljava/lang/String;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrontFakeDualCamera()Ljava/lang/String;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrontWideCamera()Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainBackCamera()Ljava/lang/String;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainFrontCamera()Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWideCamera(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 192
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isBackLongFocusCamera(Ljava/lang/String;)Z
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBackMainCamera(Ljava/lang/String;)Z
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBackSATCamera(Ljava/lang/String;)Z
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBackWideCamera(Ljava/lang/String;)Z
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFrontMainCamera(Ljava/lang/String;)Z
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFrontWideCamera(Ljava/lang/String;)Z
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public nonDefaultCameraInASDMode(Ljava/lang/String;)Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 316
    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 317
    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
