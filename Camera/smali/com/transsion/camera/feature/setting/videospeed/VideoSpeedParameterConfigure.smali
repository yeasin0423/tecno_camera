.class public Lcom/transsion/camera/feature/setting/videospeed/VideoSpeedParameterConfigure;
.super Ljava/lang/Object;
.source "VideoSpeedParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private final mVideoSpeed:Lcom/transsion/camera/feature/setting/videospeed/VideoSpeed;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/videospeed/VideoSpeed;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videospeed/VideoSpeedParameterConfigure;->mVideoSpeed:Lcom/transsion/camera/feature/setting/videospeed/VideoSpeed;

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

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "0.5"

    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "1"

    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "2"

    .line 30
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videospeed/VideoSpeedParameterConfigure;->mVideoSpeed:Lcom/transsion/camera/feature/setting/videospeed/VideoSpeed;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/videospeed/VideoSpeed;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
