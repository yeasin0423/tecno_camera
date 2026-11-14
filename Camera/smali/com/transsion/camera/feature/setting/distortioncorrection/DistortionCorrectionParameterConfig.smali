.class public Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;
.super Ljava/lang/Object;
.source "DistortionCorrectionParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDistortionCorrection:Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;

.field private mSATSupport:Z

.field private mStreamId:I

.field private mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->mStreamId:I

    .line 72
    new-instance v0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig$1;-><init>(Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->mDistortionCorrection:Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->mStreamId:I

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->mStreamId:I

    return p1
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 19
    sget-object v0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->mSATSupport:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    :cond_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 6

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->mDistortionCorrection:Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;->isModeSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->mDistortionCorrection:Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    .line 58
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 59
    sget-object v3, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSATSupport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->mSATSupport:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mStreamId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->mStreamId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", switchOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->mSATSupport:Z

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "off"

    .line 62
    :goto_0
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setDistortionCorrectionPreviewEnable(Ljava/lang/String;)V

    .line 64
    :cond_1
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setDistortionCorrectionMode(I)V

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setDistortionCorrectionMode(I)V

    :goto_1
    return v1
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 4

    .line 37
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedDistortionCorrection()Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->mSATSupport:Z

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "on"

    const-string v3, "off"

    if-lez v1, :cond_1

    .line 41
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isWideCameraSupport()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->mSATSupport:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->mDistortionCorrection:Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;

    .line 42
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;->isModeSupport()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v2, v3

    .line 51
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrectionParameterConfig;->mDistortionCorrection:Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
