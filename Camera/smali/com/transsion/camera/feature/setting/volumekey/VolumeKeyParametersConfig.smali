.class public Lcom/transsion/camera/feature/setting/volumekey/VolumeKeyParametersConfig;
.super Ljava/lang/Object;
.source "VolumeKeyParametersConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private mVolumeKey:Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKeyParametersConfig;->mVolumeKey:Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKeyParametersConfig;->mVolumeKey:Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;

    if-eqz v0, :cond_2

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Shutter"

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedZoomRatios()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 31
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "Zoom"

    .line 33
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKeyParametersConfig;->mVolumeKey:Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
