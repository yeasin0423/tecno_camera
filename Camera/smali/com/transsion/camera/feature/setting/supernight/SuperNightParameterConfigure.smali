.class public Lcom/transsion/camera/feature/setting/supernight/SuperNightParameterConfigure;
.super Ljava/lang/Object;
.source "SuperNightParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private mSuperNight:Lcom/transsion/camera/feature/setting/supernight/SuperNight;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperNightParaConfig"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/supernight/SuperNight;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/supernight/SuperNightParameterConfigure;->mSuperNight:Lcom/transsion/camera/feature/setting/supernight/SuperNight;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/supernight/SuperNightParameterConfigure;->mSuperNight:Lcom/transsion/camera/feature/setting/supernight/SuperNight;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/supernight/SuperNight;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/supernight/SuperNightParameterConfigure;->mSuperNight:Lcom/transsion/camera/feature/setting/supernight/SuperNight;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperNightMode(Ljava/lang/String;)V

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/supernight/SuperNightParameterConfigure;->mSuperNight:Lcom/transsion/camera/feature/setting/supernight/SuperNight;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/supernight/SuperNight;->getAlgoType()Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperNightAlgoType(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
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
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedSuperNightMode()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "dsp_super_night"

    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/supernight/SuperNightParameterConfigure;->mSuperNight:Lcom/transsion/camera/feature/setting/supernight/SuperNight;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/supernight/SuperNight;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "meg_super_night"

    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/supernight/SuperNightParameterConfigure;->mSuperNight:Lcom/transsion/camera/feature/setting/supernight/SuperNight;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/supernight/SuperNight;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
