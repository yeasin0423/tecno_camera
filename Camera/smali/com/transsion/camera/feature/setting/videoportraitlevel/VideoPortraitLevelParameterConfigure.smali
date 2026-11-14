.class public Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;
.super Ljava/lang/Object;
.source "VideoPortraitLevelParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsVideoPortraitLevelSupport:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private final mVideoPortraitLevel:Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoPortraitLevelParameterConfigure"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->mIsVideoPortraitLevelSupport:Z

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->mVideoPortraitLevel:Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;

    .line 42
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->mVideoPortraitLevel:Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsVideoPortraitLevelSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->mIsVideoPortraitLevelSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->mIsVideoPortraitLevelSupport:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->mVideoPortraitLevel:Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;->ismIsModeSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-eqz v0, :cond_1

    .line 80
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int p0, v0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoPortraitLevel(I)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->mVideoPortraitLevel:Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 5

    .line 52
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedVideoPortraitLevel()Ljava/util/List;

    move-result-object p1

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->mVideoPortraitLevel:Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->FRONT_VP_LEVEL_GROUP:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->mVideoPortraitLevel:Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;->getVideoPortraitSupportMaxSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 58
    :cond_0
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->BACK_VP_LEVEL_GROUP:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->mVideoPortraitLevel:Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;->getVideoPortraitSupportMaxSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 60
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    .line 61
    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    :cond_1
    sget-object v2, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setCameraCapabilities] setcom value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " finalsupportsize "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->mIsVideoPortraitLevelSupport:Z

    if-nez p1, :cond_2

    return-void

    .line 68
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevelParameterConfigure;->mVideoPortraitLevel:Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;

    const-string p1, "25"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
