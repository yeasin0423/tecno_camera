.class public Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "FunVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;
.implements Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;
.implements Lcom/transsion/camera/feature/funvideo/mode/VskitCall$ResultCallback;
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;
.implements Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;
.implements Lcom/vskit/arsdk/portal/ARCallback;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$RecorderHandle;,
        Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;,
        Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;",
        "Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;",
        "Lcom/transsion/camera/feature/funvideo/mode/VskitCall$ResultCallback;",
        "Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;",
        "Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;",
        "Lcom/vskit/arsdk/portal/ARCallback;",
        "Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;"
    }
.end annotation


# instance fields
.field private mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

.field mARManager:Lcom/vskit/arsdk/portal/ARIManager;

.field private mBottomOffset:I

.field private mCameraNV21Byte:[B

.field private mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

.field mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDuration:J

.field private mError:I

.field private mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

.field private mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

.field private mFirstFrameReally:Z

.field private mFunARCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/faceunity/entity/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

.field private final mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsFunARBarInit:Z

.field private mIsInited:Z

.field private mIsModeInit:Z

.field private mIsStorageUnmounted:Z

.field private mItem:Lcom/faceunity/entity/Effect;

.field private final mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

.field private mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

.field private mMediaSpeedType:I

.field private mMusicPlayer:Landroid/media/MediaPlayer;

.field private mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

.field private mNeedHideAR:Z

.field private mPauseMode:Z

.field private mPlayerPrepared:Z

.field private mPreviewHeight:I

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mPreviewWidth:I

.field private volatile mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

.field private mRecorderHandle:Landroid/os/Handler;

.field private volatile mRecordingFlag:Z

.field private mResultCode:I

.field private volatile mSavingVideoFlag:Z

.field private mSensorOrientation:I

.field private mStartRecordTime:J

.field private mTopOffset:I

.field private mVideoDuration:I

.field private mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

.field private mVideoNameFormat:Ljava/text/SimpleDateFormat;

.field private mVskitCall:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

.field mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

.field private mYuvHeight:I

.field private mYuvWight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 239
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    .line 157
    sget-object p1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    const/4 p1, 0x0

    .line 160
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewWidth:I

    .line 161
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewHeight:I

    const-string v0, "15"

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoDuration:I

    .line 163
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSpeedType:I

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    .line 165
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    .line 166
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSavingVideoFlag:Z

    .line 167
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mTopOffset:I

    .line 168
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mBottomOffset:I

    .line 172
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPauseMode:Z

    .line 180
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsStorageUnmounted:Z

    const-wide/16 v0, 0x0

    .line 181
    iput-wide v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mStartRecordTime:J

    .line 182
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mError:I

    .line 183
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mResultCode:I

    .line 186
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsModeInit:Z

    .line 189
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 192
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    .line 193
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsFunARBarInit:Z

    .line 194
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mNeedHideAR:Z

    .line 195
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPlayerPrepared:Z

    .line 196
    invoke-static {}, Lcom/vskit/arsdk/portal/LSARCreator;->getARInstance()Lcom/vskit/arsdk/portal/ARIManager;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    const/4 v2, -0x1

    .line 198
    iput v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYuvWight:I

    .line 199
    iput v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYuvHeight:I

    .line 200
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFirstFrameReally:Z

    .line 203
    iput-wide v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mDuration:J

    .line 204
    new-instance p1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$1;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    .line 755
    new-instance p1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    .line 795
    new-instance p1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsModeInit:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSavingVideoFlag:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPauseMode:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mResultCode:I

    return p0
.end method

.method static synthetic access$1802(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I
    .locals 0

    .line 116
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mResultCode:I

    return p1
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYuvWight:I

    return p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I
    .locals 0

    .line 116
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYuvWight:I

    return p1
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mStartRecordTime:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;J)J
    .locals 0

    .line 116
    iput-wide p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mStartRecordTime:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/os/Handler;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mError:I

    return p0
.end method

.method static synthetic access$2802(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I
    .locals 0

    .line 116
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mError:I

    return p1
.end method

.method static synthetic access$2900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYuvHeight:I

    return p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I
    .locals 0

    .line 116
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYuvHeight:I

    return p1
.end method

.method static synthetic access$3102(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;)Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSpeedType:I

    return p0
.end method

.method static synthetic access$3600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getMinRecordingTime(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsStorageUnmounted:Z

    return p0
.end method

.method static synthetic access$3702(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsStorageUnmounted:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    return p0
.end method

.method static synthetic access$3802(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;[B)[B
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mCameraNV21Byte:[B

    return-object p1
.end method

.method static synthetic access$4100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->showInfoAuto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/feature/funvideo/mode/VskitCall;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVskitCall:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    return-object p0
.end method

.method static synthetic access$4802(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Lcom/transsion/camera/feature/funvideo/mode/VskitCall;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVskitCall:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/faceunity/entity/Effect;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    return-object p0
.end method

.method static synthetic access$5002(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/faceunity/entity/Effect;)Lcom/faceunity/entity/Effect;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Ljava/lang/String;FLjava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->goToReviewActivity(Ljava/lang/String;FLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->saveVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunARCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->hideInfoAuto()V

    return-void
.end method

.method static synthetic access$5800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    return p0
.end method

.method static synthetic access$5900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->initSticker()V

    return-void
.end method

.method static synthetic access$6502(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFirstFrameReally:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsFunARBarInit:Z

    return p0
.end method

.method static synthetic access$6702(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsFunARBarInit:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->initGridViewUI()V

    return-void
.end method

.method static synthetic access$7102(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;)Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->processStartAndStopRecorder()V

    return-void
.end method

.method static synthetic access$7500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->processLeaveRecorder()V

    return-void
.end method

.method static synthetic access$7600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->processFinishRecorder()V

    return-void
.end method

.method static synthetic access$7700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    return-object p0
.end method

.method private checkResult(II)Z
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-ne p1, v1, :cond_5

    const/16 p1, 0x2e

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq p2, v5, :cond_2

    if-eq p2, v4, :cond_2

    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p2, v3, :cond_5

    .line 1290
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mError:I

    .line 1291
    iget-boolean p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p2, :cond_1

    .line 1292
    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enableVideoAutoFlash(Z)V

    .line 1294
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    .line 1295
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile()V

    .line 1296
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsStorageUnmounted:Z

    .line 1297
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2, v5, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1298
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1299
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setARRootVisibility(I)V

    goto :goto_1

    .line 1273
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v6

    .line 1274
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1276
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "checkResult,file does not exist."

    invoke-static {p2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1277
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2, v5, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1278
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return v0

    .line 1282
    :cond_3
    iput p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mResultCode:I

    .line 1283
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setARRootVisibility(I)V

    .line 1284
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0x65

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/funvideo/R$string;->saving_dialog_string:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, p2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1285
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVskitCall:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    invoke-virtual {p1, v6, p0}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->start(Ljava/lang/String;Lcom/transsion/camera/feature/funvideo/mode/VskitCall$ResultCallback;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1286
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->saveVideo(Ljava/lang/String;)V

    :cond_4
    return v5

    :cond_5
    :goto_1
    return v0
.end method

.method private createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 935
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 936
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "createNotificationChannel"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 937
    new-instance p0, Landroid/app/NotificationChannel;

    invoke-direct {p0, p2, p3, p4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x0

    .line 938
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 939
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 940
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 941
    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private doActionWithStorageUnmounted()V
    .locals 3

    .line 717
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage UNMOUNTED doActionWithStorageUnmounted, mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 718
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 722
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsStorageUnmounted:Z

    .line 724
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 725
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 727
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private getMinRecordingTime(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/16 p0, 0x1770

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    const/16 p0, 0x2328

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    const/16 p0, 0x5dc

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    if-ne p1, p0, :cond_3

    const/16 p0, 0x3e8

    goto :goto_0

    :cond_3
    const/16 p0, 0xbb8

    :goto_0
    add-int/lit16 p0, p0, 0xc8

    return p0
.end method

.method private getMusicPlaySpeed(I)F
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p0, 0x40400000    # 3.0f

    return p0

    :cond_1
    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_2
    const p0, 0x3eaaa64c    # 0.3333f

    return p0

    :cond_3
    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method private getSpeedType(Ljava/lang/String;)I
    .locals 5

    .line 958
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "speed_setting_entries_slow_2x"

    const-string v4, "string"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 959
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "speed_setting_entries_fast_2x"

    invoke-virtual {v2, v3, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 964
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    .line 966
    :cond_0
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private goToReviewActivity(Ljava/lang/String;FLjava/lang/String;)V
    .locals 5

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    if-nez v0, :cond_0

    return-void

    .line 698
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v2, "com.transsion.camera.app.ReviewCameraActivity"

    invoke-static {v2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "review_fragment"

    const-string v2, "fun_video"

    .line 699
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 701
    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewWidth:I

    const-string v3, "key_preview_width"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 702
    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewHeight:I

    const-string v3, "key_preview_height"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 703
    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mTopOffset:I

    const-string v3, "key_preview_top_offset"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 704
    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mBottomOffset:I

    const-string v3, "key_preview_bottom_offset"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 705
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v2

    .line 706
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getCutoutHeight()I

    move-result v3

    const-string v4, "key_preview_cutout_height"

    .line 707
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "key_preview_navigationbar_height"

    .line 708
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_speed"

    .line 709
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p2, "key_video_path"

    .line 710
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_music_path"

    .line 711
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 713
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    const/16 p1, 0x64

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;->onGotoActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method private hideInfoAuto()V
    .locals 1

    .line 1048
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private declared-synchronized initFunVideoModeUI(Landroid/view/LayoutInflater;I)V
    .locals 4

    monitor-enter p0

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initFunVideoModeUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopBarHeight()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mTopOffset:I

    .line 677
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePickRootHeight()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mBottomOffset:I

    .line 679
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    .line 680
    invoke-virtual {v1, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->initFunVideoUI(I)V

    .line 681
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getCutoutHeight()I

    move-result p2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setLayoutParam(III)V

    .line 682
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setVideoRecordingCallback(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;)V

    .line 683
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "initFunVideoModeUI end"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized initGridViewUI()V
    .locals 2

    monitor-enter p0

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initGridViewUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->initGridViewUI()V

    .line 689
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setOnArChangeListener(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;)V

    .line 690
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->updateCurrentIndex()V

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initGridViewUI end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initSticker()V
    .locals 3

    .line 1052
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init sticker GL resources start mIsInited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunARCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 1055
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->getInstance()Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->getmFunVideoARCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunARCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1057
    :cond_0
    :goto_0
    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result v0

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPauseMode:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 1060
    :cond_1
    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result v0

    if-lez v0, :cond_2

    .line 1061
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/4 v1, 0x1

    const/16 v2, 0x68

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    .line 1063
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    if-eqz v0, :cond_3

    .line 1066
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/4 v1, 0x0

    const/16 v2, 0x67

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    .line 1069
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1070
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1071
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "init sticker GL resources end."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$loadMusic$1(Landroid/media/MediaPlayer;)V
    .locals 6

    const/4 v0, 0x1

    .line 1024
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPlayerPrepared:Z

    .line 1025
    monitor-enter p0

    .line 1026
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPauseMode:Z

    if-eqz v0, :cond_0

    .line 1027
    monitor-exit p0

    return-void

    .line 1029
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 1030
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSpeedType:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getMusicPlaySpeed(I)F

    move-result v0

    .line 1031
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    float-to-double v2, v0

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 1032
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic lambda$onSettingChanged$0()V
    .locals 0

    .line 595
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->resetToDefault()V

    return-void
.end method

.method private declared-synchronized loadMusic(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    const-string v0, ""

    .line 1002
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1011
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPauseMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1012
    monitor-exit p0

    return-void

    .line 1014
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMusic, assetPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1016
    :try_start_2
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPlayerPrepared:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1017
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1019
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1020
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1021
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1022
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1023
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/transsion/camera/feature/funvideo/mode/-$$Lambda$FunVideoMode$jVkH14ZHWARQ28NpOvGdugYp_6Y;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/funvideo/mode/-$$Lambda$FunVideoMode$jVkH14ZHWARQ28NpOvGdugYp_6Y;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1035
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1037
    :goto_0
    monitor-exit p0

    return-void

    .line 1003
    :cond_3
    :goto_1
    :try_start_4
    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPlayerPrepared:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1004
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "loadMusic, resetMusic"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1005
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1006
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 1007
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1009
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private processFinishRecorder()V
    .locals 1

    const/4 v0, 0x0

    .line 1376
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    .line 1377
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    return-void
.end method

.method private processLeaveRecorder()V
    .locals 3

    .line 1362
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLeaveRecorder mRecordState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1363
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$4;->$SwitchMap$com$transsion$camera$feature$funvideo$mode$FunVideoMode$FunVideoRecordState:[I

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processStartAndStopRecorder in unSupported mRecordState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1365
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->stopRecording()V

    :goto_0
    return-void
.end method

.method private processStartAndStopRecorder()V
    .locals 3

    .line 1344
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processStartAndStopRecorder mRecordState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1345
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$4;->$SwitchMap$com$transsion$camera$feature$funvideo$mode$FunVideoMode$FunVideoRecordState:[I

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processStartAndStopRecorder in unSupported mRecordState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1351
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->stopRecording()V

    goto :goto_0

    .line 1347
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->startRecording()V

    :goto_0
    return-void
.end method

.method private refreshShutterUI()V
    .locals 2

    .line 896
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getShutterTypeSelftimerOn()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOn(I)V

    .line 897
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getShutterTypeSelftimerOff()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    .line 898
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getShutterTypeSelftimerOff()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    return-void
.end method

.method private saveVideo(Ljava/lang/String;)V
    .locals 8

    .line 731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 732
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoNameFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 733
    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->createFileData(Ljava/lang/String;)V

    .line 734
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 735
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 736
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    .line 737
    iget-object v6, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTitle()Ljava/lang/String;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v6, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_display_name"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "datetaken"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v6, 0x3e8

    .line 740
    div-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "date_modified"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 741
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mime_type"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resolution"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_size"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v5, :cond_0

    .line 747
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 748
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mDuration:J

    const/4 v0, 0x1

    .line 751
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSavingVideoFlag:Z

    .line 752
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    invoke-interface {v0, v4, p1, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void
.end method

.method private showInfoAuto(Ljava/lang/String;)V
    .locals 1

    .line 1040
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsModeInit:Z

    if-eqz v0, :cond_0

    .line 1041
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->hideInfoAuto()V

    .line 1042
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1043
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private startRecording()V
    .locals 10

    .line 1381
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording start, mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1382
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->hideInfoAuto()V

    .line 1383
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 1384
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1386
    new-instance v0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".mp4"

    const-string v4, "video/mp4"

    invoke-direct {v0, v1, v3, v4}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    .line 1387
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->createTempVideoFile(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1389
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    .line 1390
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    return-void

    .line 1394
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "\'VID\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoNameFormat:Ljava/text/SimpleDateFormat;

    .line 1395
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    .line 1397
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 1398
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enableVideoAutoFlash(Z)V

    .line 1402
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1403
    new-instance v0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    goto :goto_0

    .line 1404
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1405
    new-instance v0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    .line 1408
    :cond_3
    :goto_0
    new-instance v4, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    iget-object v5, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v6, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    iget v7, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewHeight:I

    iget v8, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewWidth:I

    const/16 v9, 0xde1

    invoke-direct/range {v4 .. v9}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;III)V

    .line 1410
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    if-eqz v0, :cond_4

    const-string v0, ""

    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    invoke-virtual {v4}, Lcom/faceunity/entity/Effect;->getMusicPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    invoke-virtual {v0}, Lcom/faceunity/entity/Effect;->getMusicPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1411
    :cond_4
    new-instance v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v5, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    invoke-direct {v0, v4, v5}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;)V

    .line 1413
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sOrientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 1415
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->setOrientationHint(I)V

    goto :goto_1

    .line 1417
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->setOrientationHint(I)V

    .line 1419
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->prepare()V

    .line 1420
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1422
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1424
    :goto_2
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->STATE_STARTED:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    .line 1425
    iput-boolean v3, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    .line 1427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mStartRecordTime:J

    .line 1428
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoDuration:I

    iget v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSpeedType:I

    invoke-virtual {v0, v2, v4}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->onShowRecordingUI(II)V

    .line 1429
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {v0, v3}, Lcom/vskit/arsdk/portal/ARIManager;->setReset(I)V

    .line 1430
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPlayerPrepared:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1431
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1432
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1433
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1435
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startRecording end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private stopRecording()V
    .locals 3

    .line 1439
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording start, mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1440
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->STATE_STOPING:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    .line 1441
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_0

    .line 1442
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->stopRecording()V

    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1445
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enableVideoAutoFlash(Z)V

    .line 1447
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "stopRecording end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
            "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
            ">;"
        }
    .end annotation

    .line 952
    new-instance p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/NullImageProcessor;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getDataFlowType()I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x4

    .line 615
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    const-string p0, "key_face_beauty"

    const-string p1, "key_tran_plugin"

    const-string v0, "key_video_fun_definition"

    const-string v1, "key_video_interpolation"

    .line 636
    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 1

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 380
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->getPreviewRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public getOutputDataType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 630
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x500

    const/16 v0, 0x2d0

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 1

    .line 665
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoDuration:I

    const-string v0, "15"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    :goto_0
    return p0
.end method

.method protected getShutterTypeSelftimerOn()I
    .locals 1

    .line 670
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoDuration:I

    const-string v0, "15"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    :goto_0
    return p0
.end method

.method public hideModeUI()V
    .locals 3

    .line 1182
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 1183
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->hideArGrid(ZZ)V

    .line 1185
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mNeedHideAR:Z

    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 12

    move-object v1, p0

    move-object v0, p1

    move-object v4, p2

    move-object v9, p3

    monitor-enter p0

    .line 246
    :try_start_0
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 247
    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V

    const/4 v10, 0x0

    .line 248
    invoke-static {v10}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 249
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/ar/ARControl;->initResource(Landroid/content/Context;)V

    .line 250
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 252
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "funvideo_record"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 254
    new-instance v3, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$RecorderHandle;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v5}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$RecorderHandle;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Landroid/os/Looper;Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$1;)V

    iput-object v3, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    .line 256
    iget-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {v2, p1}, Lcom/vskit/arsdk/portal/ARIManager;->init(Landroid/content/Context;)V

    .line 257
    iget-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {v2, p0}, Lcom/vskit/arsdk/portal/ARIManager;->setCallback(Lcom/vskit/arsdk/portal/ARCallback;)V

    .line 258
    invoke-interface {p3, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 259
    new-instance v2, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->getInstance()Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Landroid/os/Looper;)V

    iput-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    .line 260
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    const-string v2, "key_video_fun_duration"

    .line 261
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 263
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoDuration:I

    :cond_0
    const-string v2, "key_video_fun_speed"

    .line 265
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getSpeedType(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSpeedType:I

    .line 266
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    iget-object v3, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 267
    invoke-interface {v2, v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result v2

    rsub-int v2, v2, 0x168

    iput v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    .line 268
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->getInstance()Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->getmFunVideoARCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunARCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 269
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 270
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->refreshShutterUI()V

    .line 272
    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->initFunVideoModeUI(Landroid/view/LayoutInflater;I)V

    .line 274
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const-string v2, "com.transsion.camera.feature.arcfilter.preview.FunVideoFilterPreview"

    const/4 v11, 0x1

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v0, v3, v10

    .line 275
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    iput-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz v2, :cond_1

    .line 277
    iget-object v3, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/common/IAppUI;->setFilterProcessor(Lcom/transsion/camera/app/common/mode/IFilterProcessor;)V

    .line 278
    iget-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    invoke-interface {v2, p0}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->setPrevieDataCallback(Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;)V

    .line 279
    iget-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V

    .line 280
    iput-boolean v11, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsModeInit:Z

    :cond_1
    const-string v0, "key_video_fun_duration"

    .line 283
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_video_fun_speed"

    .line 284
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_filter"

    .line 285
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 287
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;-><init>()V

    iput-object v0, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 288
    iput v10, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewWidth:I

    .line 289
    iput v10, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewHeight:I

    .line 290
    iput-boolean v10, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPauseMode:Z

    .line 291
    invoke-interface {p3, v11}, Lcom/transsion/camera/app/common/IAppUI;->setVolumeIntercept(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$loadMusic$1$FunVideoMode(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->lambda$loadMusic$1(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public synthetic lambda$onSettingChanged$0$FunVideoMode()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->lambda$onSettingChanged$0()V

    return-void
.end method

.method public loadGLResourceCallback(I)V
    .locals 3

    const/16 v0, 0x68

    if-ne v0, p1, :cond_0

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "loadGLResourceCallback, EGL_RES_TAG_INIT_VSKIT end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/vskit/arsdk/portal/ARIManager;->onSurfaceCreated(Z)V

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {v0, v1}, Lcom/vskit/arsdk/portal/ARIManager;->setInputTextureType(I)V

    .line 522
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    if-eqz v0, :cond_0

    .line 524
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/16 v0, 0x64

    if-ne v0, p1, :cond_1

    .line 530
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_1

    .line 531
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->setEglContext(Landroid/opengl/EGLContext;)V

    :cond_1
    const/16 v0, 0x65

    if-ne v0, p1, :cond_2

    .line 536
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    if-eqz v0, :cond_4

    .line 537
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-virtual {v0}, Lcom/faceunity/entity/Effect;->getMaxFace()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/vskit/arsdk/portal/ARIManager;->setMaxFaces(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x67

    if-ne v0, p1, :cond_4

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    rsub-int v2, v2, 0x168

    invoke-interface {v0, v1, v2}, Lcom/vskit/arsdk/portal/ARIManager;->onCameraChange(II)V

    .line 541
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 542
    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v0

    if-nez v0, :cond_3

    .line 543
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    sub-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x5a

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    goto :goto_0

    .line 545
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x5a

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    :cond_4
    :goto_0
    const/16 v0, 0x69

    if-ne v0, p1, :cond_6

    .line 550
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 551
    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p1

    if-nez p1, :cond_5

    .line 552
    iget p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    sub-int/2addr p1, p0

    rem-int/lit16 p1, p1, 0x168

    div-int/lit8 p1, p1, 0x5a

    invoke-static {p1}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    goto :goto_1

    .line 554
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p1

    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    add-int/2addr p1, p0

    rem-int/lit16 p1, p1, 0x168

    div-int/lit8 p1, p1, 0x5a

    invoke-static {p1}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public loadGLResourcesCallback([I)V
    .locals 0

    return-void
.end method

.method public modeInitCallback(Landroid/content/Context;)V
    .locals 1

    .line 478
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public modeUninitCallback()V
    .locals 3

    .line 484
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Lcom/vskit/arsdk/portal/ARIManager;->onSurfaceDestroyed(Z)V

    .line 486
    iput-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunARCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {v0}, Lcom/vskit/arsdk/portal/ARIManager;->onUninit()V

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 492
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->setPrevieDataCallback(Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;)V

    :cond_2
    const-string v0, ""

    .line 495
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->loadMusic(Ljava/lang/String;)V

    return-void
.end method

.method public needRebuildMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/16 v0, 0xb

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x31

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1086
    :cond_0
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->getArShowFlag()Z

    move-result p1

    if-ne p1, v1, :cond_3

    .line 1087
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->hideArGrid(ZZ)V

    goto :goto_0

    .line 1099
    :cond_1
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mNeedHideAR:Z

    if-eqz v0, :cond_3

    .line 1100
    iput-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mNeedHideAR:Z

    .line 1101
    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setARRootVisibility(I)V

    goto :goto_0

    .line 1092
    :cond_2
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz p1, :cond_3

    .line 1093
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mNeedHideAR:Z

    const/16 p0, 0x8

    .line 1094
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setARRootVisibility(I)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onARItemChange(Lcom/faceunity/entity/Effect;)V
    .locals 3

    .line 1109
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onARItemChange, effect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cancel"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->getMusicTemplateRestriction()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 1112
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onARItemChange, post Cancel Restriction end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1114
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->hideInfoAuto()V

    .line 1115
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1116
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1117
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    .line 995
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 998
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->checkResult(II)Z

    move-result p0

    return p0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 412
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onBackPressed stopFunVideoRecording"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x1

    return p0

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->onSingleTapUp()Z

    move-result p0

    return p0
.end method

.method public onBundleItemEffect(I)V
    .locals 8

    .line 1156
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 1157
    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v0

    const-string v1, "isFlipExpr"

    const-string v2, "is3DFlipH"

    const-string v3, "isFlipTrack"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_0

    .line 1158
    invoke-static {p1, v2, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1159
    invoke-static {p1, v3, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1160
    invoke-static {p1, v1, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    .line 1162
    invoke-static {p1, v3, v6, v7}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1163
    invoke-static {p1, v2, v6, v7}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1164
    invoke-static {p1, v1, v6, v7}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    :goto_0
    const-string v0, "{\"thing\":\"<global>\",\"param\":\"follow\"}"

    .line 1166
    invoke-static {p1, v0, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "isAndroid"

    .line 1167
    invoke-static {p1, v0, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1168
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    int-to-double v0, p0

    const-string p0, "rotationAngle"

    invoke-static {p1, p0, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public onBundleLoadComplete(ILjava/lang/String;)V
    .locals 0

    .line 1133
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    if-eqz p1, :cond_2

    .line 1134
    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getMusicPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->loadMusic(Ljava/lang/String;)V

    .line 1135
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1137
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1139
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->showInfoAuto(Ljava/lang/String;)V

    goto :goto_0

    .line 1141
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->hideInfoAuto()V

    goto :goto_0

    .line 1144
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->hideInfoAuto()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBundleLoadStart()V
    .locals 1

    const-string v0, ""

    .line 1151
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->loadMusic(Ljava/lang/String;)V

    return-void
.end method

.method public onCameraStateChanged(I)V
    .locals 2

    .line 333
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onCameraStateChanged(I)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraStateChanged, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/SurfaceTexture;III)I
    .locals 8

    .line 432
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mCameraNV21Byte:[B

    const/4 v0, -0x1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsModeInit:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFirstFrameReally:Z

    if-nez p1, :cond_0

    goto :goto_1

    .line 435
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPlayerPrepared:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 436
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2}, Lcom/vskit/arsdk/portal/ARIManager;->onMusicFilterTime(J)V

    .line 439
    :cond_1
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 440
    invoke-interface {p1, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p1

    if-nez p1, :cond_2

    .line 441
    iget p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    sub-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x168

    div-int/lit8 p1, p1, 0x5a

    invoke-static {p1}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p1

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    add-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x168

    div-int/lit8 p1, p1, 0x5a

    invoke-static {p1}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    .line 447
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mCameraNV21Byte:[B

    iget v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYuvWight:I

    iget v5, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYuvHeight:I

    move v3, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/vskit/arsdk/portal/ARIManager;->onDrawFrameForOrientation([BIIIII)I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "FunVideo onDraw return -1."

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public onFirstSteadyFrame()V
    .locals 4

    .line 1076
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onFirstSteadyFrame()V

    .line 1077
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1078
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onFpsChange(DD)V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 565
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->onOrientationChanged(I)V

    .line 569
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/4 p1, 0x0

    const/16 v0, 0x69

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    return-void
.end method

.method public onProgressEnd()V
    .locals 3

    .line 892
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method public onRecording(I[F)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 457
    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    if-eqz p1, :cond_0

    .line 458
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onRecording texId is -1, stop it."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 459
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->stopRecording()V

    :cond_0
    return-void

    .line 464
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    if-eqz v0, :cond_4

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mStartRecordTime:J

    sub-long/2addr v0, v2

    .line 466
    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSpeedType:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getMusicPlaySpeed(I)F

    move-result v2

    long-to-float v0, v0

    const v1, 0x46723000    # 15500.0f

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_2
    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 468
    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->onVideoRecordingEnd()V

    .line 470
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    if-eqz p0, :cond_4

    .line 471
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->frameAvailableSoon(I[F)Z

    :cond_4
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 0

    .line 990
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->saveVideo(Ljava/lang/String;)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "key_picture_size"

    .line 574
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1280x720"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    :cond_0
    const-string v0, "key_video_fun_duration"

    .line 578
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoDuration:I

    .line 580
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->refreshShutterUI()V

    .line 581
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged duration key, value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", VideoDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    const-string v0, "key_video_fun_speed"

    .line 584
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 585
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getSpeedType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSpeedType:I

    .line 586
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    if-eqz v0, :cond_2

    .line 587
    invoke-virtual {v0}, Lcom/faceunity/entity/Effect;->getMusicPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->loadMusic(Ljava/lang/String;)V

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged speed key, VideoSpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", MediaSpeedType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSpeedType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    const-string v0, "key_filter"

    .line 592
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 593
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSettingChanged filter key, value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p1, "-1"

    .line 594
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 595
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance p2, Lcom/transsion/camera/feature/funvideo/mode/-$$Lambda$FunVideoMode$lwyVpQx8WAWgnY5VEMjNCBVlSuA;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/funvideo/mode/-$$Lambda$FunVideoMode$lwyVpQx8WAWgnY5VEMjNCBVlSuA;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public onSettingReady()V
    .locals 2

    .line 602
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 603
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->refreshShutterUI()V

    .line 604
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->showArToggle()V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_1

    .line 608
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    .line 610
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/4 v0, 0x0

    const/16 v1, 0x67

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    return-void
.end method

.method public onShutterClick(I)Z
    .locals 5

    .line 390
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[CapturePerformance] onShutterClick"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 391
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFirstFrameReally:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSavingVideoFlag:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    .line 398
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onShutterClick space in not enough, can not record video."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLowStorageHint()V

    const/4 p0, 0x0

    return p0

    .line 403
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x2d

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 405
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v0

    .line 392
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] onShutterClick return, mFirstFrameReally:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFirstFrameReally:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSavingVideoFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSavingVideoFlag:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public onShutterDown()V
    .locals 0

    .line 1452
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterDown()V

    .line 1453
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->onShutterDown()V

    return-void
.end method

.method public onShutterLongClick()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterUp()V
    .locals 0

    .line 1458
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterUp()V

    .line 1459
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->onShutterUp()V

    return-void
.end method

.method public onSingleTapUp()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->getArShowFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->hideArGrid(ZZ)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onSystemError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTrackingStatusChanged(I)V
    .locals 0

    return-void
.end method

.method public onVideoRecordingEnd()V
    .locals 2

    .line 882
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onVideoRecordingEnd stopFunVideoRecording"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 883
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 887
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public pause()V
    .locals 3

    .line 358
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPauseMode:Z

    const/4 v1, 0x0

    .line 360
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFirstFrameReally:Z

    .line 361
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSavingVideoFlag:Z

    .line 362
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->pauseFunVideoUI()V

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 367
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->hideInfoAuto()V

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 369
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->getFaceDetectRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 368
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public resume()V
    .locals 3

    .line 341
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPauseMode:Z

    .line 343
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->resumeFunVideoUI()V

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mNeedHideAR:Z

    if-eqz v2, :cond_1

    .line 347
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mNeedHideAR:Z

    .line 348
    invoke-virtual {v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->showModeUI()V

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x64

    .line 351
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->getsFunVideoMsgTag()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->checkResult(II)Z

    .line 352
    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    :cond_2
    return-void
.end method

.method public sendNotification(Landroid/content/Context;)V
    .locals 8

    .line 902
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendNotification"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 903
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 904
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/funvideo/R$string;->video_save_notification:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "notification_id"

    const/4 v3, 0x3

    .line 905
    invoke-direct {p0, v0, v2, v1, v3}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 907
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lcom/transsion/camera/feature/funvideo/R$drawable;->btn_shutter_video_notification_saved:I

    .line 908
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 909
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/funvideo/R$string;->camera_label:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 910
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/funvideo/R$string;->camera_video_saved_notification:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 912
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.APP_GALLERY"

    .line 913
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 914
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 915
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 916
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v6, "use_google_photos_default"

    const-string v7, "bool"

    invoke-virtual {v5, v6, v7, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 917
    invoke-static {v3, p0}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result p0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    const-string p0, "com.google.android.apps.photos"

    .line 919
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne p0, v4, :cond_1

    const-string p0, "com.google.android.apps.photosgo"

    .line 921
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p0, "com.gallery20"

    .line 923
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    :goto_0
    invoke-static {p1}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p0

    .line 927
    invoke-virtual {p0, v2}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    const/high16 p1, 0xc000000

    const/4 v2, 0x0

    .line 928
    invoke-virtual {p0, v2, p1}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p0

    .line 929
    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 930
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 931
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showModeUI()V
    .locals 0

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 500
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 502
    iget p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewHeight:I

    invoke-static {p1, p0}, Lcom/faceunity/wrapper/faceunity;->fuSetOutputResolution(II)V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 507
    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    if-eqz p1, :cond_1

    .line 508
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p1, v0}, Lcom/vskit/arsdk/portal/ARIManager;->onSurfaceDestroyed(Z)V

    .line 509
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    .line 511
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunARCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 512
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {p1}, Lcom/vskit/arsdk/portal/ARIManager;->onUninit()V

    const-string p1, ""

    .line 513
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->loadMusic(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized unInit()V
    .locals 4

    monitor-enter p0

    .line 296
    :try_start_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsModeInit:Z

    .line 298
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/vskit/arsdk/portal/ARIManager;->setCallback(Lcom/vskit/arsdk/portal/ARCallback;)V

    .line 299
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->unInitFunVideoUI()V

    .line 301
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setARRootVisibility(I)V

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->unInit()V

    .line 306
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPlayerPrepared:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 310
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPlayerPrepared:Z

    const-string v1, "key_video_fun_duration"

    .line 311
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v1, "key_video_fun_speed"

    .line 312
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v1, "key_filter"

    .line 313
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUI;->setVolumeIntercept(Z)V

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    const/4 v3, -0x1

    invoke-interface {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 326
    iput-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    .line 328
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateCurrentCameraId(Ljava/lang/String;)V
    .locals 2

    .line 642
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    .line 643
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 644
    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result v0

    rsub-int v0, v0, 0x168

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    .line 645
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz p0, :cond_0

    .line 646
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->updateFilterSupportIds(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updatePreviewSize(Landroid/util/Size;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 622
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreviewSize width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewWidth:I

    .line 624
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewHeight:I

    :cond_0
    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 0

    .line 652
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->doActionWithStorageUnmounted()V

    :cond_0
    return-void
.end method
