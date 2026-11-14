.class public Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;
.super Ljava/lang/Object;
.source "HdrParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/transsion/camera/feature/setting/hdr/IHdr$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDspSupport:Z

.field private final mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

.field private mHdrParameterValues:Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mTranssionHdr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/hdr/Hdr;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mTranssionHdr:Z

    .line 27
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mDspSupport:Z

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    .line 31
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    .line 32
    new-instance p1, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;-><init>(Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure$1;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrParameterValues:Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getCurrentModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v2, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mTranssionHdr:Z

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    goto :goto_0

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPhotoHDRMode(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrParameterValues:Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;->setOriginalHdrValue(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 101
    :cond_5
    :goto_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setHdrValue(Ljava/lang/String;)V

    return v3
.end method

.method public isShot2shotNeed()Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mDspSupport:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onHdrValueChanged()V
    .locals 3

    .line 132
    sget-object v0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHdrValueChanged, value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStateChanged(Z)V
    .locals 1

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getCurrentModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const-string v2, "auto"

    const-string v3, "off"

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    .line 40
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedVideoHDRModes()Ljava/util/List;

    move-result-object v0

    :cond_0
    move-object v2, v3

    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPhotoHDRModes()Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedTranssionHDR()Ljava/util/List;

    move-result-object v1

    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 46
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v1, "on"

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mTranssionHdr:Z

    .line 51
    :cond_2
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedAsdModes()Ljava/util/List;

    move-result-object v1

    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 53
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v4, :cond_3

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->resetRestriction(Ljava/lang/String;)V

    .line 70
    :cond_3
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isDspSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mDspSupport:Z

    return-void
.end method
