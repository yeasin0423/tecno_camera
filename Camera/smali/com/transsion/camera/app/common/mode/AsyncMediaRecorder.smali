.class Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;
.super Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;
.source "AsyncMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;,
        Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

.field private mCameraListener:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;

.field private mCameraOperation:Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;

.field private mContext:Landroid/content/Context;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderListener:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;

.field private mPolicy:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mSetParameterMethod:Ljava/lang/reflect/Method;

.field private mSetParameterMethodInit:Z

.field private mSurface:Landroid/view/Surface;

.field private final mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

.field private volatile mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

.field private mVideoStateCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IVideoStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/mode/IVideoContract$IVideoStateCallback;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;-><init>()V

    .line 69
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_UNKNOWN:Lcom/transsion/camera/app/common/mode/VideoState;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 71
    new-instance v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;-><init>(Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCameraListener:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;

    .line 72
    new-instance v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;-><init>(Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorderListener:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;

    .line 74
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSetParameterMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSetParameterMethodInit:Z

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 81
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mPolicy:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;

    .line 82
    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCameraOperation:Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;

    .line 83
    iput-object p5, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    .line 84
    iput-object p6, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoStateCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IVideoStateCallback;

    return-void
.end method

.method private abortStartRecording(I)V
    .locals 1

    const/4 v0, 0x1

    .line 294
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->abortStartRecording(IZ)V

    return-void
.end method

.method private abortStartRecording(IZ)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 299
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopped(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->stopMediaRecording(I)V

    return-void
.end method

.method private canStartMediaRecording()Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private configMediaRecorder(Z)Z
    .locals 3

    const/4 v0, 0x0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 130
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mPolicy:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-interface {v1, v2, p1}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;->createMediaInfo(Landroid/media/CamcorderProfile;Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 132
    sget-object p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "create media info failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 136
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->setOutputFile(Lcom/transsion/camera/app/common/mode/VideoFileInfo;)V

    .line 137
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->setProfile(Lcom/transsion/camera/app/common/mode/VideoFileInfo;)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->setSimpleOutputFile()V

    const/4 p1, 0x0

    .line 140
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->setProfile(Lcom/transsion/camera/app/common/mode/VideoFileInfo;)V

    .line 142
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 144
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configMediaRecorder exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private configRecorder(Z)Z
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->resetMediaRecorder()V

    .line 113
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->configMediaRecorder(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->prepareRecorder(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createTempRecordFile()Ljava/io/File;
    .locals 2

    .line 172
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createTempRecordFile"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 174
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 177
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, ".temp_record"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private handleMediaRecorderException()V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->resetVideoState()V

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V

    return-void
.end method

.method private handlePauseException(Ljava/lang/Exception;)V
    .locals 3

    .line 243
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handlePauseException] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->handleMediaRecorderException()V

    return-void
.end method

.method private handlePrepareException(Ljava/lang/Exception;)V
    .locals 3

    .line 229
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handlePrepareException] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 230
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->sendMediaSurface(Z)V

    .line 231
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->handleMediaRecorderException()V

    return-void
.end method

.method private handleResumeException(Ljava/lang/Exception;)V
    .locals 3

    .line 248
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleResumeException] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->handleMediaRecorderException()V

    return-void
.end method

.method private handleStopException(Ljava/lang/Exception;)V
    .locals 3

    .line 235
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleStopException] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 236
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 237
    sget-object p1, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    .line 238
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopped(IZ)V

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V

    return-void
.end method

.method private isSetParameterSupport()Z
    .locals 5

    .line 525
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSetParameterMethodInit:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 526
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "init SetParameter Method"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 527
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSetParameterMethodInit:Z

    .line 529
    const-class v0, Landroid/media/MediaRecorder;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "setParameter"

    .line 530
    invoke-static {v0, v4, v3}, Lcom/transsion/camera/utils/ReflectionUtils;->findDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSetParameterMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 535
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSetParameterMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private pauseMediaRecording()V
    .locals 1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPaused()V

    .line 307
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PAUSED:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 309
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->handlePauseException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private prepareRecorder(Z)Z
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    const/4 v0, 0x0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 216
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->sendMediaSurface(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    :catch_0
    move-exception p1

    .line 223
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->handlePrepareException(Ljava/lang/Exception;)V

    return v0

    :catch_1
    move-exception p1

    .line 220
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->handlePrepareException(Ljava/lang/Exception;)V

    return v0
.end method

.method private releaseRecorder()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 98
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    :cond_0
    return-void
.end method

.method private resetMediaRecorder()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 119
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorderListener:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorderListener:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    :goto_0
    return-void
.end method

.method private resetVideoState()V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    sget-object v1, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_UNKNOWN:Lcom/transsion/camera/app/common/mode/VideoState;

    if-eq v0, v1, :cond_0

    .line 338
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resetVideoState] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --> STATE_PREVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/mode/VideoState;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    :cond_0
    return-void
.end method

.method private resumeMediaRecording()V
    .locals 1

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderResumed()V

    .line 317
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 319
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->handleResumeException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private sendMediaSurface(Z)V
    .locals 8

    .line 258
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMediaSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v5, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v6, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move v7, p1

    invoke-interface/range {v2 .. v7}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPrepared(Landroid/view/Surface;IIIZ)V

    return-void
.end method

.method private setOutputFile(Lcom/transsion/camera/app/common/mode/VideoFileInfo;)V
    .locals 4

    .line 151
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    .line 156
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getMaxDuration()I

    move-result v0

    if-lez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getMaxDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 159
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getMaxFileSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getMaxFileSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    :cond_2
    return-void
.end method

.method private setParameterExtra(Ljava/lang/String;)V
    .locals 3

    .line 539
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->isSetParameterSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSetParameterMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private setProfile(Lcom/transsion/camera/app/common/mode/VideoFileInfo;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->isNeedAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    goto/16 :goto_2

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    if-eqz p1, :cond_1

    .line 186
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getCaptureFPS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getCaptureFPS()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :cond_1
    if-eqz p1, :cond_2

    .line 189
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getBitRateCoefficient()I

    move-result v0

    if-lez v0, :cond_2

    .line 190
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getBitRateCoefficient()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/2addr v0, v1

    .line 191
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :goto_0
    if-eqz p1, :cond_3

    .line 195
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getVideoFrameRate()I

    move-result v0

    if-lez v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getVideoFrameRate()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto :goto_1

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 200
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    if-eqz p1, :cond_4

    .line 202
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->isNeedModifyIFrame()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "video-param-i-frames-interval=0"

    .line 203
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->setParameterExtra(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private setSimpleOutputFile()V
    .locals 4

    .line 165
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->createTempRecordFile()Ljava/io/File;

    move-result-object v0

    .line 166
    sget-object v1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createTempRecordFile success,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    .line 168
    sget-object p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "setSimpleOutputFile success"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private startCameraRecording()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mPolicy:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;->checkPermitBeforeStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPreparing()V

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    const/4 v0, 0x1

    .line 268
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->configRecorder(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCameraOperation:Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCameraListener:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPrepareAbort()V

    goto :goto_0

    .line 275
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPrepareAbort()V

    :goto_0
    return-void
.end method

.method private startMediaRecording()V
    .locals 1

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStarted()V

    .line 287
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x4

    .line 289
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->abortStartRecording(I)V

    :goto_0
    return-void
.end method

.method private stopMediaRecording(I)V
    .locals 2

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 328
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopped(IZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 332
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->handleStopException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    if-eq v0, p1, :cond_0

    .line 345
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateVideoState] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 346
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    :cond_0
    return-void
.end method


# virtual methods
.method protected configRecorder(Landroid/os/Message;)V
    .locals 0

    .line 104
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/CamcorderProfile;

    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    const/4 p1, 0x0

    .line 107
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->configRecorder(Z)Z

    :cond_0
    return-void
.end method

.method protected operationPrepared(Landroid/os/Message;)V
    .locals 2

    .line 352
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 365
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operationPrepared called in  mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " do nothing"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->abortStartRecording(I)V

    goto :goto_0

    .line 358
    :cond_1
    sget-object p1, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoStateCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IVideoStateCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IVideoStateCallback;->onVideoRestartPreviewed()V

    goto :goto_0

    .line 355
    :cond_2
    sget-object p1, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    :goto_0
    return-void
.end method

.method protected pauseResume(Landroid/os/Message;)V
    .locals 2

    .line 412
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseResume mVideoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 413
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 421
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseResume in unSupported mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->resumeMediaRecording()V

    goto :goto_0

    .line 415
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->pauseMediaRecording()V

    :goto_0
    return-void
.end method

.method protected release(Landroid/os/Message;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->releaseRecorder()V

    return-void
.end method

.method protected shouldConsumerStopCommand()Z
    .locals 1

    .line 445
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected snapShot(Landroid/os/Message;)V
    .locals 1

    .line 472
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;

    if-nez p1, :cond_0

    return-void

    .line 476
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    .line 482
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;->onSnapShot(Z)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 479
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;->onSnapShot(Z)V

    :goto_0
    return-void
.end method

.method protected startMediaRecorder(Landroid/os/Message;)V
    .locals 3

    .line 395
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 404
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMediaRecorder in unSupported mVideoState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 405
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->abortStartRecording(I)V

    goto :goto_0

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->canStartMediaRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 398
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->startMediaRecording()V

    goto :goto_0

    .line 400
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->abortStartRecording(I)V

    :goto_0
    return-void
.end method

.method protected startStop(Landroid/os/Message;)V
    .locals 2

    .line 372
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startStop mVideoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 373
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 388
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startStop in unSupported mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 379
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->stopMediaRecording(I)V

    .line 383
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->removeStartStopMessages()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 384
    sget-object p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "remove StartStop messages"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->startCameraRecording()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected stop(Landroid/os/Message;)V
    .locals 3

    .line 428
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    .line 437
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop in unSupported mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :cond_0
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->stopMediaRecording(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 434
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    move v2, v1

    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->abortStartRecording(IZ)V

    :goto_0
    return-void
.end method

.method protected storageUnmounted(Landroid/os/Message;)V
    .locals 2

    .line 456
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 465
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "storageUnmounted do nothing in mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 459
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->stopMediaRecording(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 462
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->abortStartRecording(I)V

    :goto_0
    return-void
.end method
