.class public Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;
.super Ljava/lang/Object;
.source "VideoQualityParametersConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mHighFpsSupport:Z

.field private mPreviousQuality:Ljava/lang/String;

.field private mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviousQuality:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    .line 38
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private getSupportedListQuality(ILjava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    sget-object v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityHelper;->sVideoQualities:[I

    invoke-static {p1, v0, p2, v1}, Lcom/transsion/camera/utils/CameraUtil;->generateSupportedList(ILjava/util/ArrayList;Ljava/util/List;[I)V

    .line 103
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->updateSupportedList(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private isSameStoreScope()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private updateSupportedList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 108
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsSupport:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    .line 109
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const-string v0, "6_60"

    .line 111
    invoke-virtual {p1, p0, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviousQuality:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviousQuality:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsSupport:Z

    if-eqz v2, :cond_2

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v2, "6_60"

    .line 76
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v2, "1"

    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setHighFpsMode(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getHighFpsMode()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "0"

    .line 80
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setHighFpsMode(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 43
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->checkHighFpsSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsSupport:Z

    .line 45
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoCameraSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    const-string v1, "0"

    .line 47
    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->isHighFPSSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsSupport:Z

    .line 51
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->getSupportedListQuality(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->getSupportedListQuality(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 56
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x6

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 63
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->isSameStoreScope()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->onStoreScopeInit(Z)V

    :cond_3
    return-void
.end method
