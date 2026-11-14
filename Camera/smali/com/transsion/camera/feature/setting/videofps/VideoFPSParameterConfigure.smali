.class public Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;
.super Ljava/lang/Object;
.source "VideoFPSParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

.field private mDefaultValue:Ljava/lang/String;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private final mVideoFPS:Lcom/transsion/camera/feature/setting/videofps/VideoFPS;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/videofps/VideoFPS;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mDefaultValue:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mVideoFPS:Lcom/transsion/camera/feature/setting/videofps/VideoFPS;

    .line 31
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSMVRModeSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mVideoFPS:Lcom/transsion/camera/feature/setting/videofps/VideoFPS;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videofps/VideoFPS;->isModeFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mVideoFPS:Lcom/transsion/camera/feature/setting/videofps/VideoFPS;

    .line 81
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mVideoFPS:Lcom/transsion/camera/feature/setting/videofps/VideoFPS;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mDefaultValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_0

    move v0, v1

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedSMVRRequestParams(I)[I

    move-result-object p0

    if-eqz p0, :cond_1

    .line 89
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSMVRRequestParams([I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 91
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSMVRRequestParams([I)V

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSMVRModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mVideoFPS:Lcom/transsion/camera/feature/setting/videofps/VideoFPS;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videofps/VideoFPS;->isModeFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mVideoFPS:Lcom/transsion/camera/feature/setting/videofps/VideoFPS;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videofps/VideoFPS;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 5

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    .line 44
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedHighSpeedFpsRanges()Ljava/util/List;

    move-result-object p1

    .line 45
    sget-object v0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraCapabilities ranges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 50
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 51
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 52
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 53
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 55
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 65
    :cond_3
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->support()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mVideoFPS:Lcom/transsion/camera/feature/setting/videofps/VideoFPS;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_4

    const-string v1, "240"

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const-string v1, "960"

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mDefaultValue:Ljava/lang/String;

    .line 74
    sget-object v1, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraCapabilities supportListValues: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", defaultValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videofps/VideoFPSParameterConfigure;->mVideoFPS:Lcom/transsion/camera/feature/setting/videofps/VideoFPS;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/videofps/VideoFPS;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method
