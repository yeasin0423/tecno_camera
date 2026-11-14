.class public Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "FaceBeautyMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyImageProcessor;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlgorithmMigrate:Z

.field private mFaceBeautyClient:Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private getBeautyModeVersion()I
    .locals 1

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v0, "beauty_mode_version"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private initCameraInfo(Ljava/lang/String;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCameraInfo cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mFaceBeautyClient:Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;

    .line 69
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 68
    :goto_0
    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->setFaceFront(Z)V

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mFaceBeautyClient:Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->setSensorOrientation(I)V

    return-void
.end method

.method private initPreview()V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mFaceBeautyClient:Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->getPreview()Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    move-result-object p0

    .line 75
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->init()Z

    return-void
.end method

.method private setOrientation(I)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result p1

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mFaceBeautyClient:Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->setJpegOrientation(I)V

    return-void
.end method

.method private unInitPreview()V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mFaceBeautyClient:Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->getPreview()Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    move-result-object p0

    .line 89
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->unInit()Z

    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 3

    .line 211
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public configStream(Landroid/view/Surface;II)Landroid/view/Surface;
    .locals 3

    .line 201
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mAlgorithmMigrate:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configStream width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mFaceBeautyClient:Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->configStream(Landroid/view/Surface;II)Landroid/view/Surface;

    move-result-object p0

    return-object p0

    .line 206
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraMode;->configStream(Landroid/view/Surface;II)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->createImageProcessor()Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyImageProcessor;
    .locals 2

    .line 216
    new-instance v0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    .line 218
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->algorithmMigrate()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mAlgorithmMigrate:Z

    if-eqz v1, :cond_0

    .line 220
    new-instance v1, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mFaceBeautyClient:Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;

    .line 221
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->getCapture()Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyImageProcessor;->setFaceBeauty(Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;)V

    :cond_0
    return-object v0
.end method

.method public getDataFlowType()I
    .locals 3

    .line 186
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mAlgorithmMigrate:Z

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 190
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    .line 193
    :cond_1
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->algorithmSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, p0

    .line 196
    :goto_1
    invoke-static {v1, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .line 159
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mAlgorithmMigrate:Z

    const-string p1, "key_smile_detection"

    const-string v0, "key_tran_plugin"

    const-string v1, "key_face_beauty"

    if-eqz p0, :cond_0

    const-string p0, "key_algorithm_migrate"

    .line 160
    filled-new-array {v1, v0, p0, p1}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 164
    :cond_0
    filled-new-array {v1, v0, p1}, [Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 152
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->getBeautyModeVersion()I

    move-result p0

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyModeRestriction;->getRelation(I)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string v0, "on"

    const/4 v1, 0x1

    .line 153
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getTargetRatio()D

    move-result-wide v0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v2, v0, v2

    .line 132
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const v1, 0x7f0f00c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v6

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const v1, 0x7f0f00c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 137
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    .line 141
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v3

    :cond_3
    return-object v3
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 55
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 57
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mAlgorithmMigrate:Z

    if-eqz p1, :cond_0

    .line 58
    invoke-direct {p0, p5}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->initCameraInfo(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->initPreview()V

    const-string p1, "key_face_beauty"

    .line 60
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 116
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mAlgorithmMigrate:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 105
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mAlgorithmMigrate:Z

    if-eqz v0, :cond_0

    const-string v0, "key_face_beauty"

    .line 107
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mFaceBeautyClient:Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->setFaceBeautyValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSettingReady()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 95
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mAlgorithmMigrate:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_face_beauty"

    .line 97
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->setOrientation(I)V

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mFaceBeautyClient:Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->setFaceBeautyValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .line 178
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 179
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFaceBeautyEndTime()V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 172
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 173
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFaceBeautyStartTime()V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 81
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->mAlgorithmMigrate:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyMode;->unInitPreview()V

    const-string v0, "key_face_beauty"

    .line 83
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
