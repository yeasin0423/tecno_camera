.class public Lcom/transsion/camera/utils/analytics/AnalyticsUtils;
.super Ljava/lang/Object;
.source "AnalyticsUtils.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sFrontWideCameraId:Ljava/lang/String; = "5"

.field private static sInstance:Lcom/transsion/camera/utils/analytics/AnalyticsUtils; = null

.field private static sWideCameraId:Ljava/lang/String; = "3"


# instance fields
.field private mAllowRecordModeUsage:Z

.field private final mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

.field private mAntiVideoValue:Ljava/lang/String;

.field private mArcoreAudioId:I

.field private mAsdValue:Ljava/lang/String;

.field private mAsdenHanceValue:Ljava/lang/String;

.field private final mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

.field private mCameraId:Ljava/lang/String;

.field private mCameraIdFacebeautyCache:Ljava/lang/String;

.field private mCameraIdFilterCache:Ljava/lang/String;

.field private mCameraStartTime:J

.field private mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

.field private mCaptureTime:I

.field private final mContext:Landroid/content/Context;

.field private final mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

.field private mFaceBeautyStartTime:J

.field private mFaceBeautyValue:[I

.field private mFaceCount:I

.field private mFaceDetectTime:J

.field private mFaceInfoAge:I

.field private mFaceInfoDetected:Z

.field private mFaceInfoSex:I

.field private mFacing:I

.field private mFilterStartTime:J

.field private mFilterValue:Ljava/lang/String;

.field private mFlash:Ljava/lang/String;

.field private mFocusCount:I

.field private mGenderValue:Ljava/lang/String;

.field private mHdValue:Ljava/lang/String;

.field private mHdrValue:Ljava/lang/String;

.field private mIsFaceBeautyMode:Z

.field private mMaxFaceRatio:F

.field private mModeName:Ljava/lang/String;

.field private mModeReumeTime:J

.field private final mMultiFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

.field private mNightAlgo:I

.field private final mNormalFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;

.field private mPictureRatioValue:Ljava/lang/String;

.field private mSelfTimerValue:Ljava/lang/String;

.field private final mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

.field private mSlimbodyValue:[I

.field private mSlowMotionFps:I

.field private final mSmartCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSmileValue:Ljava/lang/String;

.field private mStartCaptureTime:J

.field private mSuperNightStable:Ljava/lang/String;

.field private mVideoBeautyValue:Ljava/lang/String;

.field private mVideoHDRValue:Ljava/lang/String;

.field private mVideoPortraitValue:Ljava/lang/String;

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AnalyticsUtils"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 106
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    const-string v1, ""

    .line 107
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdValue:Ljava/lang/String;

    const/4 v2, 0x0

    .line 109
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:I

    .line 110
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPictureRatioValue:Ljava/lang/String;

    const-string v3, "off"

    .line 111
    iput-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterValue:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdrValue:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelfTimerValue:Ljava/lang/String;

    const/4 v1, -0x1

    .line 114
    iput v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    .line 115
    iput v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    .line 116
    iput-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    const-string v4, "video_facebeauty_off"

    .line 117
    iput-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    .line 118
    iput-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    .line 119
    iput-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    .line 120
    iput-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmileValue:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 123
    iput-wide v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraStartTime:J

    .line 124
    iput-wide v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    .line 125
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterCache:Ljava/lang/String;

    .line 126
    iput-wide v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    .line 127
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFacebeautyCache:Ljava/lang/String;

    .line 133
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmartCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 134
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAllowRecordModeUsage:Z

    .line 136
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFacing:I

    .line 138
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    .line 139
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsFaceBeautyMode:Z

    .line 156
    iput v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlowMotionFps:I

    .line 159
    iput v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightAlgo:I

    const-string v1, "auto"

    .line 160
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    .line 161
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    .line 162
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    const/4 v1, 0x0

    .line 163
    iput v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    .line 165
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mArcoreAudioId:I

    .line 166
    iput-wide v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeReumeTime:J

    const/4 v1, 0x0

    .line 167
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    .line 168
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    .line 169
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    .line 170
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    .line 171
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGenderValue:Ljava/lang/String;

    .line 724
    iput-wide v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string v4, "com.transsion.camera.analytics.AnalyticsImpl"

    .line 178
    invoke-static {v4, v3}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    iput-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v2, "com.transsion.camera.athena.AnalyticsImpl"

    .line 179
    invoke-static {v2, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    .line 180
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mContext:Landroid/content/Context;

    .line 181
    new-instance p1, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;

    invoke-direct {p1, v1}, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNormalFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;

    .line 182
    new-instance v0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

    invoke-direct {v0, p1}, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMultiFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

    .line 183
    new-instance p1, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-direct {p1, v0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    .line 184
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    .line 185
    sget-object p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAnalyticsImpl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mAthenaAnalyticsImpl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private checkFaceValid()V
    .locals 6

    .line 742
    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 743
    :cond_0
    iput-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    const/4 v0, 0x0

    .line 744
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    const/4 v0, 0x0

    .line 745
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    :cond_1
    return-void
.end method

.method private duration(ILjava/lang/String;)V
    .locals 3

    .line 791
    invoke-static {p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 792
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 793
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "key_camera_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_time_duration"

    .line 794
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 795
    invoke-static {p2}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getModeId(Ljava/lang/String;)I

    move-result v1

    const-string v2, "key_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 796
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v2, "duration"

    if-eqz v1, :cond_0

    .line 797
    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 799
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v1, :cond_1

    .line 800
    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 803
    :cond_1
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_CAMERA_ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 804
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modeName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ---:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getModeId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 805
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "duration:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static getFrontWideCameraId()Ljava/lang/String;
    .locals 1

    .line 662
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sFrontWideCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;
    .locals 1

    .line 189
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sInstance:Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    return-object v0
.end method

.method public static getsWideCameraId()Ljava/lang/String;
    .locals 1

    .line 654
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sWideCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 174
    new-instance v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sInstance:Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    return-void
.end method

.method private resetCaptureParameters()V
    .locals 2

    .line 346
    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetFocus()V

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/CaptureExif;->resetCaptureExif()V

    :cond_0
    const/4 v0, 0x0

    .line 350
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    const-wide/16 v0, 0x0

    .line 351
    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    const/4 v0, 0x0

    .line 352
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    return-void
.end method

.method private resetFaceInfo()V
    .locals 1

    const/4 v0, -0x1

    .line 379
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    .line 380
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    const/4 v0, 0x0

    .line 381
    iput-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    return-void
.end method

.method private resetVideoParameters()V
    .locals 2

    .line 586
    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetFocus()V

    const/4 v0, 0x0

    .line 587
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    const-wide/16 v0, 0x0

    .line 588
    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    const/4 v0, 0x0

    .line 589
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    return-void
.end method

.method private setFilterTime()V
    .locals 14

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 484
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v3, "filter_time"

    const-string v4, "key_camera_id"

    const-string v5, ""

    const-wide/16 v6, 0x3e8

    const-string v8, "key_time_duration"

    if-eqz v2, :cond_0

    .line 485
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 486
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    sub-long/2addr v10, v12

    div-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v9, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterCache:Ljava/lang/String;

    invoke-virtual {v2, v4, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v9, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {v9, v3, v2}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 490
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v2, :cond_1

    .line 491
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 492
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    sub-long/2addr v10, v12

    div-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterCache:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 494
    iget-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {v4, v3, v2}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const-wide/16 v2, 0x0

    .line 496
    iput-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    .line 497
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static setFrontWideCameraId(Ljava/lang/String;)V
    .locals 0

    .line 658
    sput-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sFrontWideCameraId:Ljava/lang/String;

    return-void
.end method

.method public static setsWideCameraId(Ljava/lang/String;)V
    .locals 0

    .line 650
    sput-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sWideCameraId:Ljava/lang/String;

    return-void
.end method

.method private static simpleModeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "."

    .line 357
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateFaceInfo()V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->updateFaceInfo(Landroid/content/Context;)V

    .line 365
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    if-eq v0, v1, :cond_1

    .line 366
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 367
    iget v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "key_sex_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v3, "sex"

    invoke-interface {v2, v3, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 370
    :cond_1
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    if-eq v0, v1, :cond_2

    .line 371
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 372
    iget v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    const-string v2, "key_age_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 373
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v2, "age"

    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 375
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetFaceInfo()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateModeUsedCount()V
    .locals 4

    .line 441
    iget-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAllowRecordModeUsage:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmartCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmartCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.photo.IntentPhotoModeEntry"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.video.IntentVideoModeEntry"

    .line 444
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mContext:Landroid/content/Context;

    .line 451
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_preferences_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFacing:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 452
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, p0, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 446
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateModeUsedCount] ignore the third party app use camera count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public age(I)V
    .locals 0

    .line 414
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    const/4 p1, 0x1

    .line 415
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    return-void
.end method

.method public capture()V
    .locals 2

    .line 193
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->updateModeUsedCount()V

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStartCaptureTime:J

    return-void
.end method

.method public captureDone()V
    .locals 25

    move-object/from16 v0, p0

    .line 198
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStartCaptureTime:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureTime:I

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->checkFaceValid()V

    .line 201
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v3, "face_ratio"

    const-string v4, "face_num"

    const-string v5, "flash"

    const-string v6, "focus_num"

    const-string v7, "key_smile"

    const-string v8, "key_super_definition"

    const-string v9, "key_face_beauty"

    const-string v10, "key_self_timer"

    const-string v11, "key_hdr"

    const-string v12, "key_filter"

    const-string v13, "key_picture_ratio"

    const-string v14, "key_camera_zoom"

    const-string v15, "key_asd"

    move-object/from16 v16, v3

    const-string v3, "key_mode"

    move-object/from16 v17, v4

    const-string v4, "key_camera_id"

    const v18, 0x461c4000    # 10000.0f

    move-object/from16 v19, v5

    const/16 v20, 0x0

    const/16 v21, 0x1

    if-eqz v2, :cond_6

    .line 202
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 203
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdValue:Ljava/lang/String;

    invoke-virtual {v2, v15, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:I

    invoke-virtual {v2, v14, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPictureRatioValue:Ljava/lang/String;

    invoke-virtual {v2, v13, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterValue:Ljava/lang/String;

    invoke-virtual {v2, v12, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdrValue:Ljava/lang/String;

    invoke-virtual {v2, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelfTimerValue:Ljava/lang/String;

    invoke-virtual {v2, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    invoke-interface {v5}, Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;->getReportValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmileValue:Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    move-object/from16 v22, v6

    move-object/from16 v6, v19

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    move-object/from16 v6, v17

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    mul-float v5, v5, v18

    float-to-int v5, v5

    move-object/from16 v6, v16

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureTime:I

    const-string v6, "capture_duration"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    const-string v6, "asd_enhance"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGenderValue:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const-string v6, "key_gender"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    if-eqz v5, :cond_0

    .line 222
    invoke-virtual {v5}, Lcom/transsion/camera/utils/analytics/CaptureExif;->analyticsFlash()I

    move-result v5

    const-string v6, "exif_flash"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    iget v5, v5, Lcom/transsion/camera/utils/analytics/CaptureExif;->mISOSpeed:I

    const-string v6, "exif_iso"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    iget-wide v5, v5, Lcom/transsion/camera/utils/analytics/CaptureExif;->mExposureTime:D

    const-wide v23, 0x412e848000000000L    # 1000000.0

    mul-double v5, v5, v23

    double-to-int v5, v5

    const-string v6, "exif_ev"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    :cond_0
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightAlgo:I

    const-string v6, "night_algo"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightStable:Ljava/lang/String;

    invoke-static {v5}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getSuperNightStable(Ljava/lang/String;)I

    move-result v5

    const-string v6, "night_value"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    if-eqz v5, :cond_2

    .line 230
    array-length v6, v5

    move-object/from16 v23, v7

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 231
    aget v5, v5, v20

    const-string v6, "parameter_1"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 232
    :cond_1
    array-length v6, v5

    const/4 v7, 0x4

    if-lt v6, v7, :cond_3

    .line 233
    aget v6, v5, v20

    const-string v7, "parameter_4"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v6, 0x3

    .line 234
    aget v7, v5, v6

    const-string v6, "parameter_5"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v6, 0x2

    .line 235
    aget v7, v5, v6

    const-string v6, "parameter_6"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    aget v5, v5, v21

    const-string v6, "parameter_7"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move-object/from16 v23, v7

    .line 239
    :cond_3
    :goto_0
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    if-eqz v5, :cond_5

    .line 241
    array-length v6, v5

    const/4 v7, 0x3

    if-ge v6, v7, :cond_4

    .line 242
    aget v6, v5, v20

    const-string v7, "parameter_2"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    aget v5, v5, v21

    const-string v6, "parameter_3"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 244
    :cond_4
    array-length v6, v5

    const/4 v7, 0x7

    if-lt v6, v7, :cond_5

    .line 245
    aget v6, v5, v20

    const-string v7, "parameter_8"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    aget v6, v5, v21

    const-string v7, "parameter_9"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v6, 0x2

    .line 247
    aget v7, v5, v6

    const-string v6, "parameter_10"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v6, 0x3

    .line 248
    aget v7, v5, v6

    const-string v6, "parameter_11"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v6, 0x4

    .line 249
    aget v7, v5, v6

    const-string v6, "parameter_12"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v6, 0x5

    .line 250
    aget v6, v5, v6

    const-string v7, "parameter_13"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v6, 0x6

    .line 251
    aget v5, v5, v6

    const-string v6, "parameter_14"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    :cond_5
    :goto_1
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v6, "capture"

    invoke-interface {v5, v6, v2}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_6
    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 256
    :goto_2
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v2, :cond_c

    .line 257
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 258
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    invoke-static {v1}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getModeId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAsdId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:I

    invoke-virtual {v2, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPictureRatioValue:Ljava/lang/String;

    invoke-virtual {v2, v13, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFilterId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v12, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdrValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getHdrId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelfTimerValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getTimerId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    invoke-interface {v3}, Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;->getReportValueInt()I

    move-result v3

    invoke-virtual {v2, v9, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmileValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getSmileValue(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v4, v23

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    move-object/from16 v4, v22

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFlashValue(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v4, v19

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    move-object/from16 v4, v17

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    mul-float v3, v3, v18

    float-to-int v3, v3

    move-object/from16 v4, v16

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureTime:I

    const-string v4, "capture_duration"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAsdEnhanceValue(Ljava/lang/String;)I

    move-result v3

    const-string v4, "asd_enhance"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGenderValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-string v4, "key_gender"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    if-eqz v3, :cond_7

    .line 277
    invoke-virtual {v3}, Lcom/transsion/camera/utils/analytics/CaptureExif;->analyticsFlash()I

    move-result v3

    const-string v4, "exif_flash"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    iget v3, v3, Lcom/transsion/camera/utils/analytics/CaptureExif;->mISOSpeed:I

    const-string v4, "exif_iso"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    iget-wide v3, v3, Lcom/transsion/camera/utils/analytics/CaptureExif;->mExposureTime:D

    const-wide v5, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const-string v4, "exif_ev"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    :cond_7
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightAlgo:I

    const-string v4, "night_algo"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightStable:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getSuperNightStable(Ljava/lang/String;)I

    move-result v3

    const-string v4, "night_value"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    if-eqz v3, :cond_9

    .line 285
    array-length v4, v3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_8

    .line 286
    aget v3, v3, v20

    const-string v4, "parameter_1"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 287
    :cond_8
    array-length v4, v3

    const/4 v5, 0x4

    if-lt v4, v5, :cond_9

    .line 288
    aget v4, v3, v20

    const-string v5, "parameter_4"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x3

    .line 289
    aget v5, v3, v4

    const-string v4, "parameter_5"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x2

    .line 290
    aget v5, v3, v4

    const-string v4, "parameter_6"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    aget v3, v3, v21

    const-string v4, "parameter_7"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    :cond_9
    :goto_3
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    if-eqz v3, :cond_b

    .line 296
    array-length v4, v3

    const/4 v5, 0x3

    if-ge v4, v5, :cond_a

    .line 297
    aget v4, v3, v20

    const-string v5, "parameter_2"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    aget v3, v3, v21

    const-string v4, "parameter_3"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    .line 299
    :cond_a
    array-length v4, v3

    const/4 v5, 0x7

    if-lt v4, v5, :cond_b

    .line 300
    aget v4, v3, v20

    const-string v5, "parameter_8"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    aget v4, v3, v21

    const-string v5, "parameter_9"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x2

    .line 302
    aget v4, v3, v4

    const-string v5, "parameter_10"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x3

    .line 303
    aget v4, v3, v4

    const-string v5, "parameter_11"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x4

    .line 304
    aget v4, v3, v4

    const-string v5, "parameter_12"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x5

    .line 305
    aget v4, v3, v4

    const-string v5, "parameter_13"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x6

    .line 306
    aget v3, v3, v4

    const-string v4, "parameter_14"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    :cond_b
    :goto_4
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v4, "capture"

    invoke-interface {v3, v4, v2}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 312
    :cond_c
    sget-object v2, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mModeName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ---:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getModeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHdValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 314
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSmileValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmileValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmileValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getSmileValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 315
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFocusCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 316
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[capture] mFaceInfoSex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mFaceInfoAge:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  faceInfoDetected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 317
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFlash:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFlashValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 318
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAsdenHanceValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAsdEnhanceValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 319
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFaceCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 320
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxFaceRatio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    mul-float v3, v3, v18

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 321
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCaptureTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 322
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGenderValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGenderValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 323
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    if-eqz v1, :cond_d

    .line 324
    invoke-virtual {v1}, Lcom/transsion/camera/utils/analytics/CaptureExif;->printLog()V

    .line 326
    :cond_d
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNightAlgo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightAlgo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 327
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSuperNightStable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightStable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightStable:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getSuperNightStable(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 328
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    if-eqz v1, :cond_e

    move/from16 v2, v20

    .line 330
    :goto_5
    array-length v3, v1

    if-ge v2, v3, :cond_e

    .line 331
    sget-object v3, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFaceBeautyValue["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 334
    :cond_e
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    if-eqz v1, :cond_f

    move/from16 v2, v20

    .line 336
    :goto_6
    array-length v3, v1

    if-ge v2, v3, :cond_f

    .line 337
    sget-object v3, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlimbodyValue["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 341
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->updateFaceInfo()V

    .line 342
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetCaptureParameters()V

    return-void
.end method

.method public focus()V
    .locals 1

    .line 731
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    .line 732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public isFaceBeautyMode()Z
    .locals 0

    .line 385
    iget-boolean p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsFaceBeautyMode:Z

    return p0
.end method

.method public isFaceInfoDetected()Z
    .locals 0

    .line 389
    iget-boolean p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    return p0
.end method

.method public needFaceInfoDetection()Z
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 397
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->currentDayHasMaxDetectNumber(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 403
    :cond_2
    :goto_0
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[needFaceInfoDetection] needDetection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  faceInfoDetected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public quitCameraResetValue()V
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->clearValue()V

    .line 708
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMultiFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->clearValue()V

    return-void
.end method

.method public resetFocus()V
    .locals 1

    const/4 v0, 0x0

    .line 736
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    return-void
.end method

.method public setASDValue(Ljava/lang/String;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdValue:Ljava/lang/String;

    return-void
.end method

.method public setAllowRecordModeUsage(Z)V
    .locals 0

    .line 437
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAllowRecordModeUsage:Z

    return-void
.end method

.method public setAntiVideoValue(Ljava/lang/String;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    return-void
.end method

.method public setBodySlimDone()V
    .locals 0

    .line 679
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setBodySlim()V

    return-void
.end method

.method public setButtPlumpDone()V
    .locals 0

    .line 695
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setButtPlump()V

    return-void
.end method

.method public setCameraEndTime()V
    .locals 9

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 598
    iget-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 600
    iget-wide v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraStartTime:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x1f4

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 602
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    long-to-int v7, v0

    const-string v8, "key_time_duration"

    .line 603
    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 604
    iget-object v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v8, "camera_time"

    if-eqz v7, :cond_0

    .line 605
    invoke-interface {v7, v8, v6}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 607
    :cond_0
    iget-object v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v7, :cond_1

    .line 608
    invoke-interface {v7, v8, v6}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 610
    :cond_1
    sget-object v6, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setCameraEndTime] cameraTimeTemp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 612
    :cond_2
    iput-wide v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraStartTime:J

    .line 613
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "camera time "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 615
    :cond_3
    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 616
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFilterTime()V

    :cond_4
    return-void
.end method

.method public setCameraId(Ljava/lang/String;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method public setCameraStartTime()V
    .locals 2

    .line 593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraStartTime:J

    return-void
.end method

.method public setCaptureExif(Lcom/transsion/camera/utils/analytics/CaptureExif;)V
    .locals 0

    .line 827
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    return-void
.end method

.method public setClickIconId(I)V
    .locals 3

    .line 810
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_icon_click"

    .line 811
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 812
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 813
    invoke-static {v1}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getModeId(Ljava/lang/String;)I

    move-result v1

    const-string v2, "key_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 815
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v2, "click"

    if-eqz v1, :cond_1

    .line 816
    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 818
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz p0, :cond_2

    .line 819
    invoke-interface {p0, v2, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 822
    :cond_2
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClickIconId id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setFaceBeautyEndTime()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 627
    iput-boolean v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsFaceBeautyMode:Z

    .line 629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 630
    iget-wide v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 631
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 632
    iget-object v7, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v8, "facebeauty_time"

    const-string v9, "key_camera_id"

    const-string v10, ""

    const-wide/16 v11, 0x3e8

    const-string v13, "key_time_duration"

    if-eqz v7, :cond_0

    .line 633
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 634
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    sub-long v5, v1, v5

    div-long/2addr v5, v11

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v13, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFacebeautyCache:Ljava/lang/String;

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {v5, v8, v7}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 638
    :cond_0
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v5, :cond_1

    .line 639
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 640
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    sub-long/2addr v1, v14

    div-long/2addr v1, v11

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFacebeautyCache:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 642
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {v1, v8, v5}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const-wide/16 v1, 0x0

    .line 644
    iput-wide v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    .line 645
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "facebeauty time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setFaceBeautyStartTime()V
    .locals 2

    .line 621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    .line 622
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFacebeautyCache:Ljava/lang/String;

    const/4 v0, 0x1

    .line 623
    iput-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsFaceBeautyMode:Z

    return-void
.end method

.method public setFaceBeautyValue(Ljava/lang/String;)V
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNormalFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;->setFaceBeautyValue(Ljava/lang/String;)V

    .line 667
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setFaceBeautyValue(Ljava/lang/String;)V

    return-void
.end method

.method public setFacing(I)V
    .locals 1

    .line 423
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFacing:I

    if-eq v0, p1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmartCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 426
    :cond_0
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFacing:I

    return-void
.end method

.method public setFilterValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 469
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterValue:Ljava/lang/String;

    .line 470
    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "0"

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterCache:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterCache:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFilterTime()V

    .line 476
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    .line 478
    iput-object p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterCache:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setFlash(Ljava/lang/String;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    return-void
.end method

.method public setGenderValue(Ljava/lang/String;)V
    .locals 0

    .line 843
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGenderValue:Ljava/lang/String;

    return-void
.end method

.method public setHdValue(Ljava/lang/String;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    return-void
.end method

.method public setHdrValue(Ljava/lang/String;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdrValue:Ljava/lang/String;

    return-void
.end method

.method public setHeadShrinkDone()V
    .locals 0

    .line 683
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setHeadShrink()V

    return-void
.end method

.method public setLegLengthenDone()V
    .locals 0

    .line 703
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setLegLengthen()V

    return-void
.end method

.method public setLegSlimDone()V
    .locals 0

    .line 699
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setLegSlim()V

    return-void
.end method

.method public setModeName(Ljava/lang/String;)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmartCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 433
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    return-void
.end method

.method public setModePauseTime(Ljava/lang/String;)V
    .locals 7

    .line 779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 780
    iget-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeReumeTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x3e8

    .line 783
    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 784
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->duration(ILjava/lang/String;)V

    .line 786
    :cond_0
    iput-wide v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeReumeTime:J

    :cond_1
    return-void
.end method

.method public setModeResumeTime()V
    .locals 2

    .line 775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeReumeTime:J

    return-void
.end method

.method public setMultiBeautyValue([I)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    return-void
.end method

.method public setMultiFBCustomValueDone(Ljava/lang/String;)V
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMultiFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->setCustomValue(Ljava/lang/String;)V

    return-void
.end method

.method public setMultiFBEnable(Z)V
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMultiFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->setEnable(Z)V

    return-void
.end method

.method public setMultiFBMode(Ljava/lang/String;)V
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMultiFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->setMode(Ljava/lang/String;)V

    return-void
.end method

.method public setPictureRatioValue(Ljava/lang/String;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPictureRatioValue:Ljava/lang/String;

    return-void
.end method

.method public setSelfTimerValue(Ljava/lang/String;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelfTimerValue:Ljava/lang/String;

    return-void
.end method

.method public setShoulderSlimDone()V
    .locals 0

    .line 687
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setShoulderSlim()V

    return-void
.end method

.method public setSlimBodyEnable(Z)V
    .locals 0

    .line 671
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->setEnable(Z)V

    return-void
.end method

.method public setSlimBodyMode(I)V
    .locals 0

    .line 675
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setMode(I)V

    return-void
.end method

.method public setSlimbodyValue([I)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    return-void
.end method

.method public setSlowMotionFps(I)V
    .locals 0

    .line 767
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlowMotionFps:I

    return-void
.end method

.method public setVideoBeautyValue(Ljava/lang/String;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    return-void
.end method

.method public setVideoPortraitValue(Ljava/lang/String;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    return-void
.end method

.method public setWaistSlimDone()V
    .locals 0

    .line 691
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setWaistSlim()V

    return-void
.end method

.method public setZoomValue(Ljava/lang/String;)V
    .locals 0

    .line 461
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:I

    return-void
.end method

.method public sex(I)V
    .locals 0

    .line 409
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    const/4 p1, 0x1

    .line 410
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    return-void
.end method

.method public superNightAlgorithm(I)V
    .locals 0

    .line 763
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightAlgo:I

    return-void
.end method

.method public superNightStable(Ljava/lang/String;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightStable:Ljava/lang/String;

    return-void
.end method

.method public updateFaceCount(I)V
    .locals 2

    .line 750
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    .line 751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    return-void
.end method

.method public updateMaxFaceRatio(F)V
    .locals 0

    .line 755
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    return-void
.end method

.method public video(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    .line 533
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->updateModeUsedCount()V

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 535
    invoke-static/range {p2 .. p2}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoQuality(Ljava/lang/String;)I

    move-result v6

    .line 536
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->checkFaceValid()V

    .line 537
    iget-object v7, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v8, "video"

    const-string v10, "face_ratio"

    const-string v11, "face_num"

    const-string v12, "key_ar_voice_id"

    const-string v13, "focus_num"

    const-string v14, "key_slowmotion_fps"

    const-string v15, "key_video_quality"

    const-string v9, "key_video_hdr"

    move-wide/from16 v17, v4

    const-string v4, "key_video_portrait"

    const-string v5, "key_video_facebeauty"

    move-object/from16 v19, v8

    const-string v8, "key_anti_video"

    move-object/from16 v20, v10

    const-string v10, "key_camera_id"

    if-eqz v7, :cond_0

    .line 538
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v21, v11

    .line 539
    iget-object v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    invoke-virtual {v7, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    invoke-virtual {v7, v5, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    invoke-virtual {v7, v4, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    invoke-virtual {v7, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v11, v2

    .line 544
    div-int/lit16 v11, v11, 0x3e8

    invoke-virtual {v7, v1, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 545
    invoke-virtual {v7, v15, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 546
    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlowMotionFps:I

    invoke-virtual {v7, v14, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 547
    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    invoke-virtual {v7, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 548
    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mArcoreAudioId:I

    invoke-virtual {v7, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 549
    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    move-object/from16 v22, v12

    move-object/from16 v12, v21

    invoke-virtual {v7, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 550
    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    const v16, 0x461c4000    # 10000.0f

    mul-float v11, v11, v16

    float-to-int v11, v11

    move-object/from16 v12, v20

    invoke-virtual {v7, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 551
    iget-object v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    move-object/from16 v12, v19

    invoke-interface {v11, v12, v7}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v12, v19

    .line 554
    :goto_0
    iget-object v7, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v7, :cond_1

    .line 555
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 556
    iget-object v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 557
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    invoke-static {v10}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAntivideoValue(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 558
    iget-object v8, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    invoke-static {v8}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoBeautyValue(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    invoke-static {v5}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoPortraitValue(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 560
    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoVideoHdrValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    long-to-int v2, v2

    .line 561
    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 562
    invoke-virtual {v7, v15, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    iget v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlowMotionFps:I

    invoke-virtual {v7, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 564
    iget v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    invoke-virtual {v7, v13, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    iget v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mArcoreAudioId:I

    move-object/from16 v3, v22

    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 566
    iget v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    move-object/from16 v3, v21

    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 567
    iget v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v3, v20

    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 568
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {v2, v12, v7}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 571
    :cond_1
    sget-object v2, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyVideoDuration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 572
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAntiVideoValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ---:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAntivideoValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 573
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVideoBeautyValue:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoBeautyValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 574
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVideoPortraitValue:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoPortraitValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 575
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVideoHDRValue:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoVideoHdrValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 576
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quality:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoQuality(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 577
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSlowMotionFps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlowMotionFps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 578
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFocusCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 579
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mArcoreAudioId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mArcoreAudioId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 580
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v17

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 582
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetVideoParameters()V

    return-void
.end method
