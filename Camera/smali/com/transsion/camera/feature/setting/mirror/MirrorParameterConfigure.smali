.class public Lcom/transsion/camera/feature/setting/mirror/MirrorParameterConfigure;
.super Ljava/lang/Object;
.source "MirrorParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private final mMirror:Lcom/transsion/camera/feature/setting/mirror/Mirror;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/mirror/Mirror;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/mirror/MirrorParameterConfigure;->mMirror:Lcom/transsion/camera/feature/setting/mirror/Mirror;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/mirror/MirrorParameterConfigure;->mMirror:Lcom/transsion/camera/feature/setting/mirror/Mirror;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 56
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 57
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->enableMirror(Z)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->enableMirror(Z)V

    :goto_0
    return v0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 4

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 42
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/mirror/MirrorParameterConfigure;->mMirror:Lcom/transsion/camera/feature/setting/mirror/Mirror;

    .line 44
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v1

    const-string v2, "on"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 45
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/mirror/MirrorParameterConfigure;->mMirror:Lcom/transsion/camera/feature/setting/mirror/Mirror;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/mirror/Mirror;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
