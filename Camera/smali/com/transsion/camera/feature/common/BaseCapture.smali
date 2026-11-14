.class public abstract Lcom/transsion/camera/feature/common/BaseCapture;
.super Ljava/lang/Object;
.source "BaseCapture.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAvailabilityListener:Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;

.field protected mCameraId:Ljava/lang/String;

.field private volatile mCapturing:Z

.field private final mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

.field private final mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

.field protected mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private final mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

.field private final mModeHelper:Lcom/transsion/camera/feature/common/CommonModeHelper;

.field private volatile mProcessing:Z

.field private final mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field protected mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

.field private mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private mStreamStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

.field private mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/common/BaseCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/transsion/camera/feature/common/BaseCapture$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/common/BaseCapture$1;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mAvailabilityListener:Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;

    .line 84
    new-instance v0, Lcom/transsion/camera/feature/common/BaseCapture$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/common/BaseCapture$2;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

    .line 301
    new-instance v0, Lcom/transsion/camera/feature/common/BaseCapture$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/common/BaseCapture$4;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 96
    iput-object p3, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 97
    new-instance p1, Lcom/transsion/camera/feature/common/CommonModeHelper;

    invoke-direct {p1}, Lcom/transsion/camera/feature/common/CommonModeHelper;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mModeHelper:Lcom/transsion/camera/feature/common/CommonModeHelper;

    .line 98
    new-instance p1, Lcom/transsion/camera/feature/common/DataStream;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/common/DataStream;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStreamStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

    return-object p0
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 44
    sget-object v0, Lcom/transsion/camera/feature/common/BaseCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/CommonModeHelper;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mModeHelper:Lcom/transsion/camera/feature/common/CommonModeHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/common/BaseCapture;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureEnd()V

    return-void
.end method

.method private lock3A(Z)V
    .locals 3

    .line 137
    sget-object v0, Lcom/transsion/camera/feature/common/BaseCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock3A "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 139
    invoke-static {}, Lcom/transsion/camera/feature/common/Restriction3A;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 138
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_1

    const-string p1, "key_white_balance"

    .line 142
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private triggerCaptureEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mProcessing:Z

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    if-eqz p0, :cond_0

    .line 210
    invoke-interface {p0}, Lcom/transsion/camera/feature/common/ICapture$IStatusListener;->onCaptureEnd()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final createDataStream()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/common/IDataStream;->setDataListener(Lcom/transsion/camera/feature/common/IDataStream$IDataListener;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mAvailabilityListener:Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/common/IDataStream;->setStreamListener(Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;)V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

    invoke-interface {p0}, Lcom/transsion/camera/feature/common/IDataStream;->createStream()V

    return-void
.end method

.method public final destroyDataStream()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/common/IDataStream;->setDataListener(Lcom/transsion/camera/feature/common/IDataStream$IDataListener;)V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/common/IDataStream;->setStreamListener(Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;)V

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

    invoke-interface {p0}, Lcom/transsion/camera/feature/common/IDataStream;->destroyStream()V

    return-void
.end method

.method protected doCapture()V
    .locals 2

    .line 159
    sget-object v0, Lcom/transsion/camera/feature/common/BaseCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCapturing:Z

    .line 161
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/common/BaseCapture;->lock3A(Z)V

    .line 162
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/common/BaseCapture;->updateStreamState(Z)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Lcom/transsion/camera/feature/common/ICapture$IStatusListener;->onCaptureStart()V

    .line 166
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string v0, "camera_click.ogg"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->shutterSoundPlay(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->capture()V

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method protected abstract onDataAvailable([BIII)V
.end method

.method protected abstract onStreamAvailable(III)V
.end method

.method protected savePicture([BIII)V
    .locals 8

    .line 216
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/transsion/camera/feature/common/BaseCapture$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/common/BaseCapture$3;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;[BIII)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStatusListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    return-void
.end method

.method public setStreamStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStreamStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

    return-void
.end method

.method public setThumbnailOperator(Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    return-void
.end method

.method public final shutterClick()V
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCapturing:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

    goto :goto_0

    .line 150
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mProcessing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mProcessing:Z

    .line 152
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->doCapture()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopCapture()Z
    .locals 3

    .line 172
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCapturing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 173
    sget-object p0, Lcom/transsion/camera/feature/common/BaseCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "stopCapture in invalid state"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 176
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/common/BaseCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "stopCapture"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    iput-boolean v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCapturing:Z

    .line 178
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/common/BaseCapture;->lock3A(Z)V

    .line 179
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/common/BaseCapture;->updateStreamState(Z)V

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    if-eqz p0, :cond_1

    .line 181
    invoke-interface {p0}, Lcom/transsion/camera/feature/common/ICapture$IStatusListener;->onCaptureStop()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method protected triggerCaptureFailed()V
    .locals 1

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mProcessing:Z

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    if-eqz p0, :cond_0

    .line 203
    invoke-interface {p0}, Lcom/transsion/camera/feature/common/ICapture$IStatusListener;->onCaptureFailed()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method

.method public updateOrientation(I)V
    .locals 2

    .line 196
    sget-object p0, Lcom/transsion/camera/feature/common/BaseCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOrientation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method

.method protected final updateStreamState(Z)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/common/IDataStream;->updateState(Z)V

    return-void
.end method
