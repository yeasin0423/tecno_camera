.class public Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;
.super Ljava/lang/Object;
.source "VideoPortraitParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mVideoPortrait:Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;

.field mVideoPortraitSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;->mVideoPortrait:Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;

    .line 34
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 8

    .line 51
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;->mVideoPortraitSupport:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 52
    sget-object p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Video Portrait  is not support!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;->mVideoPortrait:Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_7

    .line 58
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoPortraitMode()I

    move-result v2

    const-string v3, "off"

    const-string v4, "on"

    if-nez v2, :cond_1

    move-object v5, v3

    goto :goto_0

    :cond_1
    move-object v5, v4

    .line 65
    :goto_0
    invoke-static {v5, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 67
    sget-object v5, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[configParameters] video portrait value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , oldValue :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v5, 0xddf

    const/4 v6, 0x0

    if-eq v2, v5, :cond_3

    const v4, 0x1ad6f

    if-eq v2, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v6

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v0

    :cond_4
    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v0, :cond_5

    goto :goto_2

    .line 73
    :cond_5
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoPortraitMode(I)V

    goto :goto_2

    .line 70
    :cond_6
    invoke-virtual {p1, v6}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoPortraitMode(I)V

    :goto_2
    move v1, v0

    .line 78
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoPortraitValue(Ljava/lang/String;)V

    return v1
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;->mVideoPortrait:Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 39
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoPortraitSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;->mVideoPortraitSupport:Z

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 41
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;->mVideoPortraitSupport:Z

    if-eqz v1, :cond_0

    const-string v1, "on"

    .line 43
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;->mVideoPortrait:Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 46
    sget-object p1, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVideoPortraitSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;->mVideoPortraitSupport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
