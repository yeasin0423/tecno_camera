.class public Lcom/transsion/camera/feature/setting/videomute/VideoMuteParametersConfigure;
.super Ljava/lang/Object;
.source "VideoMuteParametersConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private final mVideoMute:Lcom/transsion/camera/feature/setting/videomute/VideoMute;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/videomute/VideoMute;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videomute/VideoMuteParametersConfigure;->mVideoMute:Lcom/transsion/camera/feature/setting/videomute/VideoMute;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    .line 52
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
    .locals 3

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "on"

    .line 41
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videomute/VideoMuteParametersConfigure;->mVideoMute:Lcom/transsion/camera/feature/setting/videomute/VideoMute;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/videomute/VideoMute;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
