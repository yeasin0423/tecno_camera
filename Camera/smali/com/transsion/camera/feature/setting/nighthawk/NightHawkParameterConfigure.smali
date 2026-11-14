.class public Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;
.super Ljava/lang/Object;
.source "NightHawkParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mCameraNighthawkCallBack:Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;

.field private mIsVideoType:Z

.field private final mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    .line 27
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mCameraNighthawkCallBack:Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraNightHawkCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    .line 51
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mIsVideoType:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 53
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setNightHawkMode(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 55
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setNightHawkMode(I)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setNightHawkMode(I)V

    :goto_0
    return v1
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 37
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isNightHawkModeSupport()Z

    move-result p1

    .line 38
    sget-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraCapabilities supported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "on"

    .line 44
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setIsVideoType(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mIsVideoType:Z

    return-void
.end method

.method public setNighthawkCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mCameraNighthawkCallBack:Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;

    return-void
.end method
