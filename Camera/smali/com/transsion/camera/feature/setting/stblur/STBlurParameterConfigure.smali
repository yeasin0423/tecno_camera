.class public Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;
.super Ljava/lang/Object;
.source "STBlurParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

.field private mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/stblur/STBlur;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure$1;-><init>(Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    .line 27
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;)Lcom/transsion/camera/feature/setting/stblur/STBlur;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    return-object p0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->isFakeDualLensSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    const/16 v0, 0xa

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    :goto_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->getSTBlurModeSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->algorithmMigrate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSTBlurMode(I)V

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->getBWConvertValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->enableBWConvert(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v0, "key_st_blur"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 33
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->algorithmMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapability;->getSupportSTBlurModes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportSTBlurModes()Ljava/util/List;

    move-result-object p1

    :goto_0
    const-string v0, "1"

    .line 39
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "0"

    .line 44
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
