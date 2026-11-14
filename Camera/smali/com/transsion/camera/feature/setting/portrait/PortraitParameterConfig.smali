.class public Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;
.super Ljava/lang/Object;
.source "PortraitParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

.field private mPortrait:Lcom/transsion/camera/feature/setting/portrait/Portrait;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/portrait/Portrait;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig$1;-><init>(Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;->mPortrait:Lcom/transsion/camera/feature/setting/portrait/Portrait;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 14
    sget-object v0, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;)Lcom/transsion/camera/feature/setting/portrait/Portrait;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;->mPortrait:Lcom/transsion/camera/feature/setting/portrait/Portrait;

    return-object p0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;->mPortrait:Lcom/transsion/camera/feature/setting/portrait/Portrait;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/portrait/Portrait;->isFakeDualLensSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    const/16 v0, 0xa

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    :goto_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;->mPortrait:Lcom/transsion/camera/feature/setting/portrait/Portrait;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/portrait/Portrait;->isModeFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;->mPortrait:Lcom/transsion/camera/feature/setting/portrait/Portrait;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setPortraitMode(I)V

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
    .locals 1

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "0"

    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "1"

    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;->mPortrait:Lcom/transsion/camera/feature/setting/portrait/Portrait;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/portrait/Portrait;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
