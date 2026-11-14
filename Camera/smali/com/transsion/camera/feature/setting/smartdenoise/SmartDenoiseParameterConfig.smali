.class public Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;
.super Ljava/lang/Object;
.source "SmartDenoiseParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mSmartDenoise:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->mSmartDenoise:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->mSmartDenoise:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->mSmartDenoise:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 41
    sget-object v0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters, SmartDenoise value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "on"

    .line 42
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

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

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "on"

    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    .line 32
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->mSmartDenoise:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
