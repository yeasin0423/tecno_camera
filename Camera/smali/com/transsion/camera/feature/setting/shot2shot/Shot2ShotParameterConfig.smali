.class public Lcom/transsion/camera/feature/setting/shot2shot/Shot2ShotParameterConfig;
.super Ljava/lang/Object;
.source "Shot2ShotParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private mShot2Shot:Lcom/transsion/camera/feature/setting/shot2shot/Shot2Shot;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/shot2shot/Shot2Shot;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/shot2shot/Shot2ShotParameterConfig;->mShot2Shot:Lcom/transsion/camera/feature/setting/shot2shot/Shot2Shot;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/shot2shot/Shot2ShotParameterConfig;->mShot2Shot:Lcom/transsion/camera/feature/setting/shot2shot/Shot2Shot;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setShot2ShotMode(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 28
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedShot2Shot()Ljava/util/List;

    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 33
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/shot2shot/Shot2ShotParameterConfig;->mShot2Shot:Lcom/transsion/camera/feature/setting/shot2shot/Shot2Shot;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/shot2shot/Shot2Shot;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
