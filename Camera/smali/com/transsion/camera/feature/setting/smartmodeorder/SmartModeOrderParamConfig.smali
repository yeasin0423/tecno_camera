.class public Lcom/transsion/camera/feature/setting/smartmodeorder/SmartModeOrderParamConfig;
.super Ljava/lang/Object;
.source "SmartModeOrderParamConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private final mSmartModeOrder:Lcom/transsion/camera/feature/setting/smartmodeorder/SmartModeOrder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/smartmodeorder/SmartModeOrder;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smartmodeorder/SmartModeOrderParamConfig;->mSmartModeOrder:Lcom/transsion/camera/feature/setting/smartmodeorder/SmartModeOrder;

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

    .line 35
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smartmodeorder/SmartModeOrderParamConfig;->mSmartModeOrder:Lcom/transsion/camera/feature/setting/smartmodeorder/SmartModeOrder;

    if-eqz p1, :cond_0

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "on"

    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "off"

    .line 38
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smartmodeorder/SmartModeOrderParamConfig;->mSmartModeOrder:Lcom/transsion/camera/feature/setting/smartmodeorder/SmartModeOrder;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/smartmodeorder/SmartModeOrder;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
