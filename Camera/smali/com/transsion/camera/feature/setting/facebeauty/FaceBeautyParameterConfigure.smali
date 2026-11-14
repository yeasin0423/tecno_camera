.class public Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;
.super Ljava/lang/Object;
.source "FaceBeautyParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFaceBeauty:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mSupportModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mFaceBeauty:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;

    .line 28
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mFaceBeauty:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->algorithmMigrate()Z

    move-result v1

    .line 65
    sget-object v2, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configParameters], value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", IsModeSupport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mFaceBeauty:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;

    .line 66
    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->ismIsModeSupport()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", algorithmMigrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 68
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mFaceBeauty:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->ismIsModeSupport()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "ai"

    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFaceBeautyValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    const-string v1, "on"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 79
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    .line 81
    :cond_2
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyLevel(Ljava/lang/String;)V

    .line 83
    :cond_3
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFaceBeautyValue(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_4
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFaceBeautyValue(Ljava/lang/String;)V

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mFaceBeauty:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 39
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->algorithmMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeautyCapability;->getSupportedFaceBeautyLevels()Ljava/util/List;

    move-result-object p1

    .line 41
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeautyCapability;->getSupportedFaceBeautyModes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFaceBeautyLevels()Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFaceBeautyModes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    move-object p1, v0

    :goto_0
    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    const-string v2, "ai"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x0

    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mFaceBeauty:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
