.class public abstract Lcom/transsion/camera/app/common/mode/CameraMode;
.super Ljava/lang/Object;
.source "CameraMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/ICameraMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/transsion/camera/app/common/mode/IImageProcessor<",
        "TD;>;D:",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/mode/ICameraMode<",
        "TT;TD;>;"
    }
.end annotation


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentCameraId:Ljava/lang/String;

.field protected mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

.field protected mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

.field protected volatile mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private mIsValid:Z

.field private mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

.field protected mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private final mName:Ljava/lang/String;

.field private mOrientation:I

.field protected mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected volatile mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mOrientation:I

    .line 42
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/common/mode/CameraMode;Lcom/transsion/camera/app/common/mode/CameraMode$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "0"

    .line 43
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 57
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mName:Ljava/lang/String;

    .line 59
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    return-void
.end method


# virtual methods
.method public configStream(Landroid/view/Surface;II)Landroid/view/Surface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .locals 0

    return-void
.end method

.method public getDataFlowType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    .line 159
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mOrientation:I

    return p0
.end method

.method public getPostViewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getScreenSize()Landroid/util/Size;
    .locals 5

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 196
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "override_mode_screen_size"

    const-string v4, "string"

    .line 195
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "override mode screen size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 202
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mode init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsValid:Z

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 93
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 94
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 95
    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 96
    iput-object p5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 97
    iput-object p6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    .line 98
    iput p7, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mOrientation:I

    const p4, 0x7fffffff

    .line 99
    invoke-interface {p3, p0, p4}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    .line 100
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object p2

    new-instance p5, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

    invoke-direct {p5, p1}, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p2, p5}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;)V

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V

    .line 102
    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/AppUICache;->cache(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public isForceRecreateSession()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedDeviceCaptureSound()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportAuxPreview()Z
    .locals 0

    .line 451
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportAuxPreview()Z

    move-result p0

    return p0
.end method

.method public isSupportBWCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportBackFakeDualLens()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDualCamBW(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFrontFakeDualLens()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFrontWideCamera()Z
    .locals 0

    .line 322
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportFrontWideCamera()Z

    move-result p0

    return p0
.end method

.method public isSupportLogicalCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportMacroCamera()Z
    .locals 0

    .line 312
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportMacroCamera()Z

    move-result p0

    return p0
.end method

.method public isSupportPeriscopeCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSAT(ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSecondLogicalCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportVideoCamera()Z
    .locals 0

    .line 317
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportVideoCamera()Z

    move-result p0

    return p0
.end method

.method public isSupportWideCamera()Z
    .locals 0

    .line 307
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportWideCamera()Z

    move-result p0

    return p0
.end method

.method public isValid()Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsValid:Z

    return p0
.end method

.method public needFakePostView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needRebuildMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public notifyPictureTaken([BZ)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .locals 0

    return-void
.end method

.method public onCameraStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onConfigAfterStopPreview()V
    .locals 0

    return-void
.end method

.method public onConfigBeforeStartPreview()V
    .locals 0

    return-void
.end method

.method public onContinuousShotFailed()V
    .locals 0

    return-void
.end method

.method public onContinuousShotProgress([B)V
    .locals 0

    return-void
.end method

.method public onFirstSteadyFrame()V
    .locals 0

    return-void
.end method

.method public onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 0

    return-void
.end method

.method public onModeCaptureFailed()V
    .locals 0

    return-void
.end method

.method public onModeCaptureStarted()V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mOrientation:I

    return-void
.end method

.method public onPostViewData([B)V
    .locals 0

    return-void
.end method

.method public onPostViewData([BIIII)V
    .locals 0

    return-void
.end method

.method public onSettingChangeDone()V
    .locals 0

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onSettingChanged] key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",value = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onSettingReady()V
    .locals 0

    return-void
.end method

.method public onShutterClick(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterDown()V
    .locals 0

    return-void
.end method

.method public onShutterLongClick()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterStart()V
    .locals 0

    return-void
.end method

.method public onShutterUp()V
    .locals 0

    return-void
.end method

.method public onSingleTapUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->pause()V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->onModePaused()V

    .line 139
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModePauseTime(Ljava/lang/String;)V

    return-void
.end method

.method protected registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->resume()V

    .line 130
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetFocus()V

    .line 131
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeResumeTime()V

    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    return-void
.end method

.method public setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method

.method public setModeChangeFlag(Z)V
    .locals 0

    return-void
.end method

.method public setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mode unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsValid:Z

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->unInit()V

    .line 118
    invoke-static {}, Lcom/transsion/camera/app/common/mode/AppUICache;->clearCache()V

    return-void
.end method

.method protected unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public updateCurrentCameraId(Ljava/lang/String;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-void
.end method

.method public updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updatePreviewSize(Landroid/util/Size;)V
    .locals 0

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 363
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method

.method public updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateYuvPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
