.class public Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;
.super Ljava/lang/Object;
.source "AutoWaterMarkParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAutoWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

.field private mAutoWaterMarkSupport:Z

.field private mUseBitmapWaterMark:Z

.field private mVideoWaterMarkSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 76
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMarkSupport:Z

    if-nez v0, :cond_0

    .line 77
    sget-object p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "auto watermark is not support!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters] auto watermark value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setAutoWatermarkMode(Ljava/lang/String;)V

    .line 88
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mUseBitmapWaterMark:Z

    if-eqz v0, :cond_2

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->getWaterMarkParam()Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 92
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setAutoWaterMarkParameterList(Ljava/util/List;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 4

    .line 50
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMarkSupport:Z

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isAutoWaterMarkSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMarkSupport:Z

    .line 55
    :goto_0
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoWaterMarkSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mVideoWaterMarkSupport:Z

    .line 56
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->useBitmapWaterMark()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mUseBitmapWaterMark:Z

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->useBitmapWaterMark(Z)V

    .line 58
    sget-object p1, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraCapabilities,mAutoWaterMarkSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMarkSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mVideoWaterMarkSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mVideoWaterMarkSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useBitmapWaterMark: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mUseBitmapWaterMark:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 61
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v1

    sget-object v2, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const-string v3, "on"

    if-ne v1, v2, :cond_1

    .line 63
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mVideoWaterMarkSupport:Z

    if-eqz v1, :cond_2

    .line 64
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMarkSupport:Z

    if-eqz v1, :cond_2

    .line 68
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
