.class public Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;
.super Ljava/lang/Object;
.source "SmileDetectionParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mSmileDetection:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;->mSmileDetection:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    .line 27
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;->mSmileDetection:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->getModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;->mSmileDetection:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;->mSmileDetection:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;->mSmileDetection:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    :goto_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;->mSmileDetection:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "on"

    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    .line 39
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;->mSmileDetection:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
