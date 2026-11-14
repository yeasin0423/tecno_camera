.class public Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;
.super Ljava/lang/Object;
.source "MildBeautyParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsMildBeautySupport:Z

.field private mIsWideCameraOpened:Z

.field private mMildBeauty:Lcom/transsion/camera/feature/setting/mildbeauty/MildBeauty;

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

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/mildbeauty/MildBeauty;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mIsMildBeautySupport:Z

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mMildBeauty:Lcom/transsion/camera/feature/setting/mildbeauty/MildBeauty;

    .line 34
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mMildBeauty:Lcom/transsion/camera/feature/setting/mildbeauty/MildBeauty;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mIsMildBeautySupport:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mMildBeauty:Lcom/transsion/camera/feature/setting/mildbeauty/MildBeauty;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeauty;->isModeSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mIsWideCameraOpened:Z

    if-eqz p0, :cond_0

    const-string p0, "off"

    .line 63
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    .line 68
    :cond_1
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFaceBeautyValue(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mMildBeauty:Lcom/transsion/camera/feature/setting/mildbeauty/MildBeauty;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeauty;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 44
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFaceBeautyModes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    .line 45
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isWideCameraSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mIsWideCameraOpened:Z

    .line 47
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    const-string v0, "mild"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mIsMildBeautySupport:Z

    goto :goto_0

    :cond_0
    const-string v0, "off"

    .line 53
    :goto_0
    sget-object p1, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraCapabilities, defaultValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mSupportModes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mMildBeauty:Lcom/transsion/camera/feature/setting/mildbeauty/MildBeauty;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/feature/setting/mildbeauty/MildBeauty;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
