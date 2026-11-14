.class public Lcom/transsion/camera/feature/setting/telecamera/TeleCameraParameterConfigure;
.super Ljava/lang/Object;
.source "TeleCameraParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private final mTeleCamera:Lcom/transsion/camera/feature/setting/telecamera/TeleCamera;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/telecamera/TeleCamera;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/telecamera/TeleCameraParameterConfigure;->mTeleCamera:Lcom/transsion/camera/feature/setting/telecamera/TeleCamera;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSecondLogicalCameraId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "on"

    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/telecamera/TeleCameraParameterConfigure;->mTeleCamera:Lcom/transsion/camera/feature/setting/telecamera/TeleCamera;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/telecamera/TeleCamera;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/telecamera/TeleCameraParameterConfigure;->mTeleCamera:Lcom/transsion/camera/feature/setting/telecamera/TeleCamera;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/telecamera/TeleCamera;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
