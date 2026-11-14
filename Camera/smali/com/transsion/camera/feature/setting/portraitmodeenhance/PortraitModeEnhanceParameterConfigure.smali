.class public Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;
.super Ljava/lang/Object;
.source "PortraitModeEnhanceParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

.field private mPortraitModeEnhanceSupport:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    .line 41
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 71
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhanceSupport:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->isCloseBySuperDefinition()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v0, "off"

    .line 79
    :cond_1
    sget-object p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters] portraitmode enhance value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPortraitModeEnhanceMode(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 72
    :cond_2
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "portraitmode enhance is not support!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    .line 46
    sget-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendSettingChangeRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 52
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isPortraitModeEnhanceSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhanceSupport:Z

    .line 53
    sget-object p1, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraCapabilities,mPortraitModeEnhanceSupport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhanceSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 55
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhanceSupport:Z

    if-eqz v1, :cond_1

    const-string v1, "on"

    .line 57
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->isPortraitModeEnhanceSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
