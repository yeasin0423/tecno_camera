.class public Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;
.super Ljava/lang/Object;
.source "FaceDetectionParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFaceDectMode:I

.field private mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

.field private mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

.field private mIsFaceDetectionStarted:Z

.field private mPreviewSize:Landroid/util/Size;

.field private mSensorRect:Landroid/graphics/Rect;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceDetectionPC"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDectMode:I

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    .line 48
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 3

    .line 80
    sget-object v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configCommand,mFaceDetectionCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsFaceDetectionStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mIsFaceDetectionStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    if-eqz v0, :cond_1

    .line 82
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mIsFaceDetectionStarted:Z

    if-eqz v1, :cond_0

    .line 83
    sget-object p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[configCommand] already started, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_0
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    .line 87
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->startFaceDetection()V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mIsFaceDetectionStarted:Z

    goto :goto_0

    .line 90
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mIsFaceDetectionStarted:Z

    if-nez v0, :cond_2

    .line 91
    sget-object p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[configCommand] already stopped, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    .line 95
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->stopFaceDetection()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mIsFaceDetectionStarted:Z

    .line 98
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gender_indentification"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 69
    iput v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDectMode:I

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iput v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDectMode:I

    .line 73
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters] mFaceDectMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDectMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    iget p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDectMode:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranFaceDetectMode(I)V

    return v1
.end method

.method getFaceDectionMode()I
    .locals 0

    .line 102
    iget p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDectMode:I

    return p0
.end method

.method getPreviewSize()Landroid/util/Size;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method getSensorRect()Landroid/graphics/Rect;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mSensorRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method resetFaceDetectionState()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mIsFaceDetectionStarted:Z

    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "on"

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "off"

    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "gender_indentification"

    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 63
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSensorRect()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mSensorRect:Landroid/graphics/Rect;

    return-void
.end method

.method setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    return-void
.end method

.method startFaceInfoDection()V
    .locals 1

    const/4 v0, 0x1

    .line 106
    iput v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDectMode:I

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method stopFaceInfoDection()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDectMode:I

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method
