.class public Lcom/transsion/camera/feature/setting/zoom/Zoom;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "Zoom.java"


# instance fields
.field private hasForceApply:Z

.field private mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field private mCurrentMode:Ljava/lang/String;

.field private mForceApplyValue:Ljava/lang/String;

.field private mFovCropValue:Ljava/lang/String;

.field private mIsBaseCameraWhenOpened:Z

.field private mIsFrontWideCameraWhenOpened:Z

.field private mIsMacroSupportZoom:Z

.field private mIsMaxValueLimited:Z

.field private mIsModeChanged:Z

.field private mIsNeedStoreZoomInBack:Z

.field private mIsSATCameraWhenOpened:Z

.field private mIsTeleCameraWhenOpened:Z

.field private mIsVideoMode:Z

.field private mIsWideCameraWhenOpened:Z

.field private mIsWideSupportZoom:Z

.field private mMinimizeZoomStep:Z

.field private mParametersConfig:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSlimBodyMode:Z

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mTimeLapseVideoMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMaxValueLimited:Z

    .line 56
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    .line 58
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsBaseCameraWhenOpened:Z

    .line 60
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsFrontWideCameraWhenOpened:Z

    .line 63
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsNeedStoreZoomInBack:Z

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVideoMode:Z

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTimeLapseVideoMode:Z

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSlimBodyMode:Z

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsModeChanged:Z

    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentMode:Ljava/lang/String;

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->hasForceApply:Z

    .line 75
    new-instance v0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;-><init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 89
    new-instance v0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;-><init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    const-string v0, "0"

    .line 235
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/setting/zoom/Zoom;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsNeedStoreZoomInBack:Z

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/zoom/Zoom;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->setZoomByItemClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsTeleCamera()Z

    move-result p0

    return p0
.end method

.method private currentIsBaseCamera()Z
    .locals 1

    .line 364
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private currentIsFrontCamera()Z
    .locals 1

    .line 383
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private currentIsFrontWideCamera()Z
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontWideCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private currentIsTeleCamera()Z
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private currentIsWideCamera()Z
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private currentSatCamera()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getFovCropValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "front_crop_fov_value"

    .line 445
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isMacroSupportZoom(Landroid/content/Context;)Z
    .locals 1

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "is_macro_support_zoom"

    .line 387
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSwitchToVideoCamera()Z
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVideoMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->videoCameraSupportSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_brightbess_value"

    .line 451
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "value_dark"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWideSupportZoom(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "zoom_style_type"

    .line 440
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private minimizeZoomStep(Landroid/content/Context;)Z
    .locals 1

    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "minimize_zoom_step"

    .line 392
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setZoomByItemClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 477
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "front_crop_fov"

    .line 481
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "on"

    .line 482
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFovCropValue:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "key_wide_camera_item_seleccted"

    .line 484
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "value_wide_camera_item_single_cam_seleccted"

    .line 485
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v0, "100"

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 489
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 490
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_3
    return-void
.end method

.method private videoCameraSupportSize()Z
    .locals 4

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x6

    .line 456
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_video_quality"

    .line 455
    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "6_60"

    .line 457
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 460
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p0

    .line 461
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    .line 462
    invoke-interface {v1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const-string v1, "_"

    .line 463
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :try_start_0
    const-string v1, "0"

    .line 465
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 466
    new-instance v1, Landroid/util/Size;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v1, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 467
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v2
.end method


# virtual methods
.method public forceApplyValue(Ljava/lang/String;)V
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->hasForceApply:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 239
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->hasForceApply:Z

    goto :goto_0

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public forceUpdateValue(Ljava/lang/String;)V
    .locals 4

    .line 227
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], StoreScope: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_0

    .line 231
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_camera_zoom"

    return-object p0
.end method

.method public getLimitValueForSlimBody()I
    .locals 3

    .line 427
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x3e8

    return p0

    .line 429
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    const/16 v1, 0xc8

    const/16 v2, 0x1f4

    if-ne v0, v2, :cond_1

    return v1

    .line 432
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result p0

    if-ne p0, v1, :cond_2

    return v2

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getLimitValueForVideo()I
    .locals 2

    .line 410
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x5dc

    return p0

    .line 412
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_1

    const/16 p0, 0x12c

    return p0

    .line 415
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result p0

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mParametersConfig:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;-><init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mParametersConfig:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    .line 163
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    .line 165
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mParametersConfig:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 150
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 2

    .line 254
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    const-string v1, "0"

    if-eqz v0, :cond_2

    .line 255
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMacroSupportZoom:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsNeedStoreZoomInBack:Z

    if-nez v0, :cond_0

    .line 256
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isSwitchToVideoCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 261
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 263
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsFrontWideCameraWhenOpened:Z

    if-eqz v0, :cond_3

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 265
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_4

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 268
    :cond_4
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

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
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getFovCropValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFovCropValue:Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isMacroSupportZoom(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMacroSupportZoom:Z

    .line 112
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isWideSupportZoom(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideSupportZoom:Z

    .line 113
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->minimizeZoomStep(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mMinimizeZoomStep:Z

    .line 114
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "front_crop_fov"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 116
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
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

    .line 128
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 131
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsModeChanged:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "front_crop_fov"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFovCropValue:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 138
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 140
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsNeedStoreZoomInBack:Z

    .line 141
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->hasForceApply:Z

    return-void
.end method

.method public isMaxValueLimited()Z
    .locals 0

    .line 397
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMaxValueLimited:Z

    return p0
.end method

.method public minimizeZoomStep()Z
    .locals 0

    .line 401
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mMinimizeZoomStep:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 319
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 320
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsFrontWideCameraWhenOpened:Z

    if-nez p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "100"

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 324
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideSupportZoom:Z

    if-eqz p1, :cond_1

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "100"

    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v4, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 329
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsWideCamera()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "100"

    const-string v3, "0"

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 333
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentSatCamera()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "100"

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 336
    :cond_3
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMaxValueLimited:Z

    .line 337
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    .line 338
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsFrontWideCameraWhenOpened:Z

    .line 339
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsNeedStoreZoomInBack:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 4

    .line 279
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 280
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "mode_entry_key"

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMaxValueLimited:Z

    .line 282
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsWideCamera()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    .line 283
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsFrontWideCamera()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsFrontWideCameraWhenOpened:Z

    .line 284
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    .line 285
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsTeleCamera()Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    .line 286
    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsBaseCameraWhenOpened:Z

    .line 287
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsBaseCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsBaseCameraWhenOpened:Z

    .line 288
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentSatCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 290
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVideoMode:Z

    const-string v0, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    .line 291
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTimeLapseVideoMode:Z

    const-string v0, "com.transsion.camera.feature.slimbody.mode.SlimBodyModeEntry"

    .line 292
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSlimBodyMode:Z

    const/4 v0, 0x0

    const-string v1, "0"

    if-eqz p2, :cond_0

    .line 294
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsBaseCameraWhenOpened:Z

    if-nez p2, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz p2, :cond_2

    .line 296
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 297
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {p2, p3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 298
    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onModeOpened tele or base camera switch teleZoomValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 300
    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 301
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-virtual {p3, v2, v1, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 302
    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, p2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 306
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 307
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p3, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 308
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    .line 311
    :cond_3
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentMode:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 312
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsModeChanged:Z

    .line 314
    :cond_4
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentMode:Ljava/lang/String;

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->forceUpdateValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
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

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "value_zoom_support_macro_active"

    .line 174
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "100"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "value_zoom_support_wide_active"

    const/4 v6, 0x1

    if-nez v1, :cond_4

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "wide_camera_zoom_override_value"

    .line 192
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_7

    .line 193
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v4, :cond_7

    .line 194
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 195
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    add-int/2addr p3, v6

    invoke-interface {v0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 199
    invoke-super {p0, p1, v2, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 201
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_7

    .line 202
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    goto :goto_2

    .line 206
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    if-eqz p2, :cond_7

    .line 207
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsFrontWideCameraWhenOpened:Z

    if-eqz p1, :cond_7

    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_7

    .line 208
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    goto :goto_2

    :cond_4
    :goto_0
    if-eqz p3, :cond_7

    .line 175
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 176
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v3

    .line 179
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 180
    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    add-int/2addr p3, v6

    invoke-interface {v3, v4, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    .line 181
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 182
    invoke-super {p0, p1, v1, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 183
    :cond_5
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 184
    invoke-super {p0, p1, v2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 187
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_7

    .line 188
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_7
    :goto_2
    return-void
.end method

.method public pause()V
    .locals 6

    .line 344
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 345
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    const/4 v1, 0x0

    const-string v2, "100"

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsFrontWideCameraWhenOpened:Z

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 349
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideSupportZoom:Z

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentSatCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, v2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 1

    .line 247
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    const-string v0, "0"

    .line 248
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->hasForceApply:Z

    return-void
.end method

.method public shouldLimitForSlimBody()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSlimBodyMode:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldLimitForVideo()Z
    .locals 1

    .line 405
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVideoMode:Z

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTimeLapseVideoMode:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public unInit()V
    .locals 3

    .line 121
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "front_crop_fov"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method
