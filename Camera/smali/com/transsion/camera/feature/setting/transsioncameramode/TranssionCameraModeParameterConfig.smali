.class public Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraModeParameterConfig;
.super Ljava/lang/Object;
.source "TranssionCameraModeParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private mMode:Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraMode;

.field private mTranssionCameraModeSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraModeParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraMode;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraModeParameterConfig;->mMode:Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraMode;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraModeParameterConfig;->mTranssionCameraModeSupport:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraModeParameterConfig;->mMode:Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraMode;->isModeSupport()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 49
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionCameraModeEnable(I)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionCameraModeEnable(I)V

    :goto_0
    return v0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 35
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isTranssionCameraModeSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraModeParameterConfig;->mTranssionCameraModeSupport:Z

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "1"

    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "0"

    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraModeParameterConfig;->mMode:Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraMode;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraMode;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
