.class public Lcom/transsion/camera/feature/mode/video/SlowMotionMode;
.super Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.source "SlowMotionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;
    }
.end annotation


# instance fields
.field private mFPS:I

.field private mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mHandler:Landroid/os/Handler;

.field private mIsRecordTimeLimited:Z

.field private mLimitedRecording:Z

.field private mLimitedRecordingFinished:Z

.field private mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

.field private mPauseResumeListener:Landroid/view/View$OnClickListener;

.field private mRecordReason:I

.field private mRecorderOrientation:I

.field private mShowHint:Z

.field private mSlowMotionQualityHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

.field private mSupportedFPSValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1e

    .line 82
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    .line 83
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSupportedFPSValues:Ljava/util/List;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mIsRecordTimeLimited:Z

    .line 87
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mRecordReason:I

    .line 91
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecordingFinished:Z

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    .line 95
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/HashMap;

    .line 410
    new-instance p2, Lcom/transsion/camera/feature/mode/video/-$$Lambda$SlowMotionMode$dVcJu7nciEFejGEWgYLOfx6GB7M;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/video/-$$Lambda$SlowMotionMode$dVcJu7nciEFejGEWgYLOfx6GB7M;-><init>(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    .line 132
    new-instance p2, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;-><init>(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;Lcom/transsion/camera/feature/mode/video/SlowMotionMode$1;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private configMediaChainAttribute()V
    .locals 5

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    if-nez v0, :cond_0

    return-void

    .line 532
    :cond_0
    iget v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    const/16 v2, 0x19

    const/4 v3, 0x4

    const/16 v4, 0xf0

    if-ne v4, v1, :cond_1

    .line 533
    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setFrameRate(I)V

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setInterpolateFPS(I)V

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setInterpolateRatio(I)V

    .line 536
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setSkipFramesOnce(I)V

    .line 537
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    const/16 v1, 0x4c

    const/16 v2, 0x88

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setKeepFrameRange(II)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    .line 540
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setFrameRate(I)V

    .line 541
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setInterpolateFPS(I)V

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setInterpolateRatio(I)V

    .line 543
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setSkipFramesOnce(I)V

    .line 544
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    const/16 v1, 0x55

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setKeepFrameRange(II)V

    .line 547
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setFrameInfo(II)V

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setCaptureRate(I)V

    return-void
.end method

.method private createSlowMotionUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .locals 2

    .line 416
    new-instance v0, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    .line 417
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 418
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->showRecordingTime(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 420
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setPauseResumeListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0
.end method

.method private getBitRateCoefficient()I
    .locals 1

    .line 438
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf0

    .line 439
    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 v0, 0x3c0

    if-ne v0, p0, :cond_1

    const/16 p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getRecordTimeLimited()Z
    .locals 4

    .line 499
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getVideoSizeByFPS(I)Ljava/lang/String;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRecordTimeLimited mFPS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", videoSize: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getSlowVideoFrameRate()I
    .locals 3

    .line 427
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    const/16 v1, 0xf0

    if-ne v1, v0, :cond_0

    const/16 p0, 0x78

    return p0

    :cond_0
    const/16 v2, 0x3c0

    if-ne v2, v0, :cond_1

    return v1

    .line 434
    :cond_1
    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    return p0
.end method

.method private getVideoQualityByVideosize(Ljava/lang/String;)I
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private getVideoSizeByFPS(I)Ljava/lang/String;
    .locals 4

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 636
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getVideoSizeByFPS, control is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 639
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSupportedHighSpeedSizesAndFPS()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 641
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getVideoSizeByFPS, getSupportedHighSpeedSizesAndFPS is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p0, "1280x720"

    return-object p0

    .line 644
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 645
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 646
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 647
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoSizeByFPS, find fps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", videosize:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 648
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 651
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoSizeByFPS, not find videosize by fps:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method private initFPS()V
    .locals 6

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_fps"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isHighSpeedVideoSupport()Z

    move-result v2

    .line 157
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initFPS fpsValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", highSpeedSupport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    .line 162
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    .line 164
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getRecordTimeLimited()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mIsRecordTimeLimited:Z

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->querySupportedPlatformValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSupportedFPSValues:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 167
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    goto :goto_1

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getShutterTypeSelftimerOff()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    .line 174
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mShowHint:Z

    if-eqz v0, :cond_2

    .line 175
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->showFPSHintInfo()V

    :cond_2
    return-void

    .line 168
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need to show fps hint"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .locals 6

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v0

    .line 400
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getCutoutHeight()I

    move-result v1

    .line 401
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    .line 402
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v3

    .line 403
    new-instance v4, Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {v4, p1, v3, v5}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    .line 404
    invoke-virtual {v4, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 405
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setNavigationBarHeight(I)V

    .line 406
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setCutoutHeight(I)V

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setBottomBarHeight(I)V

    return-void
.end method

.method private initVideoQualityHashMap()V
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 620
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1920x1080"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1280x720"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "640x480"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isRecordTimeLimited()Z
    .locals 0

    .line 495
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mIsRecordTimeLimited:Z

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 411
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[mPauseResumeListener] click"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->pauseResumeRecording()V

    return-void
.end method

.method private synthetic lambda$processFile$1(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;Ljava/lang/String;Lcom/transsion/camera/app/common/mode/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onProcessEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void

    .line 609
    :cond_0
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile(Ljava/lang/String;)Z

    .line 610
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object p2

    .line 611
    invoke-interface {p1, p4, p5}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->renameTempVideoFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 612
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    .line 613
    iget p4, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mRecordReason:I

    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->addVideoToDataBase(Lcom/transsion/camera/app/common/mode/VideoFileInfo;IJ)V

    return-void
.end method

.method private processFile(Lcom/transsion/camera/app/common/mode/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .locals 7

    .line 595
    invoke-interface {p7, p5}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getVideoTempFd(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 597
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {p4, p2, v0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setFilePath(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {v0, p2, p4}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :goto_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    iget p4, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mRecorderOrientation:I

    invoke-virtual {p2, p4}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setOrientation(I)V

    .line 602
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    new-instance p4, Lcom/transsion/camera/feature/mode/video/-$$Lambda$SlowMotionMode$aGQEqOX6fpQtJsXRO8l7UrmMdOI;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p7

    move-object v3, p3

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/video/-$$Lambda$SlowMotionMode$aGQEqOX6fpQtJsXRO8l7UrmMdOI;-><init>(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;Ljava/lang/String;Lcom/transsion/camera/app/common/mode/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setChainListener(Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;)V

    .line 615
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->process()V

    return-void
.end method

.method private showFPSHintInfo()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSupportedFPSValues:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 261
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    const/16 v2, 0x78

    if-ne v0, v2, :cond_1

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const v3, 0x7f0f00d9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0xf0

    if-ne v0, v2, :cond_2

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const v3, 0x7f0f00da

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const v3, 0x7f0f00db

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 257
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need to show fps hint"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private storingInterpolateVideoFile(I)V
    .locals 10

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "storingInterpolateVideoFile"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 553
    iget-object v9, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez v9, :cond_0

    .line 555
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "storageOperator is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void

    .line 560
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mRecordReason:I

    .line 561
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object p1

    .line 565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".decode_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 567
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 568
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 569
    invoke-interface {v9, v8, v5}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->renameTempVideoFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 571
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rename TempVideoFile failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempFile()V

    .line 573
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void

    .line 577
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".encode_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    .line 579
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 583
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->clone()Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    move-result-object v3

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->processFile(Lcom/transsion/camera/app/common/mode/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method


# virtual methods
.method protected getAnalyticsVideoDurationKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_slowmotion_duration"

    return-object p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    const-string p0, "key_video_fps"

    .line 246
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 1

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->getRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public getOutputDataType()I
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isHighSpeedVideoSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 366
    new-instance v3, Landroid/util/Size;

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    invoke-direct {v3, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 367
    iget-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRatio:D

    const/4 v4, 0x1

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/transsion/camera/utils/CameraUtil;->getPreviewSize(Ljava/util/List;DLandroid/util/Size;ZD)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 2

    .line 229
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    const/16 v1, 0x3c0

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0xb

    return p0

    :cond_0
    const/16 v0, 0xf0

    .line 232
    iget v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const/16 p0, 0x9

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 144
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mShowHint:Z

    .line 147
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->initVideoQualityHashMap()V

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->createSlowMotionUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    const-string p1, "key_video_fps"

    .line 149
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 151
    new-instance p1, Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    return-void
.end method

.method protected isVideoFileValid()Z
    .locals 4

    .line 325
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecordingFinished:Z

    return p0

    .line 328
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getRecordingTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$SlowMotionMode(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$processFile$1$SlowMotionMode(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;Ljava/lang/String;Lcom/transsion/camera/app/common/mode/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->lambda$processFile$1(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;Ljava/lang/String;Lcom/transsion/camera/app/common/mode/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .locals 2

    .line 311
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-nez v0, :cond_0

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[notifyToVideoUI] mSlowMotionUI is null when :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 317
    :cond_0
    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v1, p1, :cond_1

    .line 318
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->createSlowMotionUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 320
    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateUIState(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 217
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecording:Z

    .line 219
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 224
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onCreateQuality()Ljava/lang/String;
    .locals 12

    .line 334
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getSlowVideoFrameRate()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getVideoSizeByFPS(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getVideoQualityByVideosize(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x5

    if-eq v0, v1, :cond_1

    move v2, v0

    .line 344
    :cond_1
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    const-string v4, "_"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 346
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateQuality returnQuality:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " != qualityCur:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, p0

    .line 347
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)Z

    :cond_2
    if-eq v0, v1, :cond_3

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 353
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onCreateVideoHelper()Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .locals 0

    .line 137
    new-instance p0, Lcom/transsion/camera/feature/mode/video/VideoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoHelper;-><init>()V

    return-object p0
.end method

.method public onMediaRecorderPrepared(Landroid/view/Surface;IIIZ)V
    .locals 8

    .line 386
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result p4

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVideoSurface in onMediaRecorderPrepared. mode isValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p4, :cond_0

    return-void

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getSlowVideoFrameRate()I

    move-result v6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)Z

    move-result p1

    if-nez p1, :cond_1

    .line 393
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopPreview()V

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startPreview()V

    :cond_1
    return-void
.end method

.method public onMediaRecorderStarted()V
    .locals 4

    .line 475
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStarted()V

    .line 477
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mRecorderOrientation:I

    .line 479
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecording:Z

    const/4 v0, 0x0

    .line 481
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecordingFinished:Z

    .line 482
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 483
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3c0

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    if-ne v2, p0, :cond_0

    const-wide/16 v2, 0x898

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1068

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public onMediaRecorderStopped(IZ)V
    .locals 0

    .line 490
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStopped(IZ)V

    const/4 p1, 0x0

    .line 491
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecording:Z

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 251
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onOrientationChanged(I)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSettingChanged] key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_video_fps"

    .line 275
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 276
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isHighSpeedVideoSupport()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 277
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    .line 278
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlowMotionFps(I)V

    .line 279
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->showFPSHintInfo()V

    .line 280
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getRecordTimeLimited()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mIsRecordTimeLimited:Z

    .line 281
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getShutterTypeSelftimerOff()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p2, 0x6

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 283
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->prepareVideoData()I

    .line 285
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    if-eqz p1, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->configMediaChainAttribute()V

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->loadingAlgorithm()V

    :cond_0
    return-void
.end method

.method public onSettingReady()V
    .locals 1

    .line 294
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->initFPS()V

    .line 296
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingReady()V

    .line 298
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    if-eqz v0, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->configMediaChainAttribute()V

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->loadingAlgorithm()V

    :cond_0
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 1

    .line 208
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecording:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "ignore shutter click when time limited recording"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 212
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterClick(I)Z

    move-result p0

    return p0
.end method

.method protected onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setMaxFileSize(J)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    return-void
.end method

.method public pause()V
    .locals 2

    .line 194
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->pause()V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSupportedFPSValues:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1
    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mShowHint:Z

    .line 202
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecording:Z

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected sendNotification(Landroid/content/Context;)V
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->sendNotification(Landroid/content/Context;)V

    return-void
.end method

.method protected setMediaInfo(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V
    .locals 2

    .line 378
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->setMediaInfo(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setAudioFlag(Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getSlowVideoFrameRate()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setCaptureRate(D)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    .line 380
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getBitRateCoefficient()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setBitRateCoefficient(I)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    .line 381
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setModifyIFrameFlag(Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    return-void
.end method

.method protected showInfo(I)V
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showInfo(I)V

    return-void
.end method

.method protected showRemainingRecordingTime(Ljava/lang/String;)V
    .locals 1

    .line 455
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 458
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showRemainingRecordingTime(Ljava/lang/String;)V

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showRemainingTime(Ljava/lang/String;)V

    return-void
.end method

.method protected stopSlowMotionRecording()V
    .locals 1

    .line 469
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopSlowMotionRecording()V

    const/4 v0, 0x1

    .line 470
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecordingFinished:Z

    return-void
.end method

.method protected storingVideoFile(I)V
    .locals 3

    .line 510
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->checkMinDuration()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 511
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x3a

    .line 515
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    const/4 v0, 0x3

    const/16 v1, 0x65

    .line 516
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoSavingMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 517
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 519
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->addVideoToDataBase(Lcom/transsion/camera/app/common/mode/VideoFileInfo;IJ)V

    return-void

    .line 524
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->storingInterpolateVideoFile(I)V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 181
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->unInit()V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->unInitVideoUI()V

    :cond_0
    const-string v0, "key_video_fps"

    .line 185
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    if-eqz p0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->unInit()V

    :cond_1
    return-void
.end method

.method public updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
