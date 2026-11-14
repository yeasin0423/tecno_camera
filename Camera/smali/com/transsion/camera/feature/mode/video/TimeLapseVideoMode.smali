.class public Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;
.super Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.source "TimeLapseVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI$VideoProgressListener;
.implements Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$IMediaCodecErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

.field private final mPauseResumeListener:Landroid/view/View$OnClickListener;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

.field private final mVideoSnapShotListener:Landroid/view/View$OnClickListener;

.field private mVideoSurface:Landroid/view/Surface;

.field private mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    .line 338
    new-instance p2, Lcom/transsion/camera/feature/mode/video/-$$Lambda$TimeLapseVideoMode$mMFTShG-NbHYH9mlmQ3M1LJyFF0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/video/-$$Lambda$TimeLapseVideoMode$mMFTShG-NbHYH9mlmQ3M1LJyFF0;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    .line 340
    new-instance p2, Lcom/transsion/camera/feature/mode/video/-$$Lambda$TimeLapseVideoMode$dAkIoriNZj9Me8_jesCEWwq3OLY;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/video/-$$Lambda$TimeLapseVideoMode$dAkIoriNZj9Me8_jesCEWwq3OLY;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    .line 92
    new-instance p2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$1;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 76
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Ljava/lang/Object;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/view/Surface;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Ljava/io/File;
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->createTempRecordFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    return p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    return p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    return p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    return p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/util/Size;
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getCurrentVideoSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$3600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$3700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$3900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$4400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/graphics/Bitmap;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$5102(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void
.end method

.method static synthetic access$5500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Ljava/lang/String;
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoSavingMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6402(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;J)J
    .locals 0

    .line 76
    iput-wide p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    return-wide p1
.end method

.method static synthetic access$6500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$7000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    return-wide v0
.end method

.method private createTempRecordFile()Ljava/io/File;
    .locals 2

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 186
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 189
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, ".temp_record"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .locals 3

    .line 326
    new-instance v0, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    const-wide/16 v1, 0x0

    .line 329
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setRecordingTotalSize(J)V

    const/4 v1, 0x1

    .line 331
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    .line 332
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isVssSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedVss(Z)V

    .line 333
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setPauseResumeListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setVideoSnapShotListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private getCurrentVideoSize()Landroid/util/Size;
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_quality"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    .line 433
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 435
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    .line 436
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    .line 437
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p0, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 439
    :catch_0
    new-instance p0, Landroid/util/Size;

    const/16 v0, 0x438

    const/16 v1, 0x2d0

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private getEncodeVideoFrameRate()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method private getTimeLapseRate()D
    .locals 4

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_time_lapse"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 493
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->setTimeLapseRate(I)V

    .line 495
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimeLapseRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string p0, "0"

    .line 496
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 499
    :cond_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v0

    return-wide v2

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private initTimeLapseRecorder()V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    .line 428
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    return-void
.end method

.method private initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .locals 6

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v0

    .line 314
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getCutoutHeight()I

    move-result v1

    .line 315
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    .line 316
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v3

    .line 317
    new-instance v4, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {v4, p1, v3, v5, p0}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI$VideoProgressListener;)V

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    .line 318
    invoke-virtual {v4, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setNavigationBarHeight(I)V

    .line 320
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setCutoutHeight(I)V

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setBottomBarHeight(I)V

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->updateLayout()V

    return-void
.end method

.method private isRecordTimeLimited()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 338
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->pauseResumeRecord()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->takeSnapShot()V

    return-void
.end method

.method private lock3A(Z)V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 265
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->get3aRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

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

    .line 264
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 267
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_1

    const-string p1, "key_white_balance"

    .line 268
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private pauseResumeRecord()V
    .locals 4

    .line 364
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getTimeLapseRate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->pauseResumeRecording()V

    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v0, :cond_1

    .line 370
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    :cond_1
    return-void
.end method

.method private takeSnapShot()V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "videoSnapShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 354
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getTimeLapseRate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    .line 355
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSnapShot()V

    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v0, :cond_1

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSnapShotCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;->onSnapShot(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 194
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "key_anti_video"

    .line 195
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "key_tran_plugin_mode_can_support"

    .line 196
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 509
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string v0, "on"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 0

    const/16 p0, 0xe

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 126
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 127
    new-instance p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    const-string p1, "key_time_lapse"

    .line 129
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_lock_focus"

    .line 130
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_time_lapse_duration"

    .line 131
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_support_long_press_lock"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p2, "on"

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected isDurationInValid(J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isVideoFileValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$new$0$TimeLapseVideoMode(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$1$TimeLapseVideoMode(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .locals 2

    .line 249
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    if-nez v0, :cond_0

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[notifyToVideoUI] mVideoUI is null when :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 254
    :cond_0
    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v1, p1, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    const/16 v0, 0x52

    .line 256
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    goto :goto_0

    .line 257
    :cond_1
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq v0, p1, :cond_2

    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v0, p1, :cond_3

    :cond_2
    const/16 v0, 0x53

    .line 258
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 260
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateUIState(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 395
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->onShutterClick(I)Z

    return v1

    :cond_0
    return v2
.end method

.method public onMediaCodecException()V
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz p0, :cond_0

    .line 515
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$1000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    :cond_0
    return-void
.end method

.method public onMediaRecorderStopped(IZ)V
    .locals 0

    .line 411
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStopped(IZ)V

    .line 412
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->stopProgressView()V

    return-void
.end method

.method public onProgressEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->onShutterClick(I)Z

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 219
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_time_lapse"

    .line 220
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    if-eqz v0, :cond_0

    .line 221
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->setTimeLapseRate(I)V

    :cond_0
    const-string v0, "key_lock_focus"

    .line 223
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "on"

    .line 224
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 225
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->lock3A(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "off"

    .line 226
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->lock3A(Z)V

    :cond_2
    :goto_0
    const-string v0, "key_time_lapse_duration"

    .line 230
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    if-eqz p1, :cond_3

    .line 231
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const v0, 0xea60

    mul-int/2addr p2, v0

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->setTimeLapseDuration(J)V

    .line 233
    :cond_3
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    if-eqz p1, :cond_4

    .line 234
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->lock3A(Z)V

    :cond_4
    return-void
.end method

.method public onSettingReady()V
    .locals 2

    .line 240
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingReady()V

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_time_lapse_duration"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->setTimeLapseDuration(J)V

    :cond_0
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 6

    .line 445
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterClick mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->checkPermitBeforeStart()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 455
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getTimeLapseRate()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_2

    .line 456
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterClick(I)Z

    move-result p0

    return p0

    :cond_2
    const-wide/16 v2, 0x3e8

    .line 458
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 463
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->initTimeLapseRecorder()V

    .line 464
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz p1, :cond_5

    .line 465
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0xf

    .line 466
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 467
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    goto :goto_0

    .line 469
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    .line 470
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 471
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->stopProgressView()V

    :cond_5
    :goto_0
    return v1
.end method

.method public onShutterDown()V
    .locals 0

    .line 996
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onShutterDown()V

    .line 997
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->onShutterDown()V

    return-void
.end method

.method public onShutterUp()V
    .locals 0

    .line 990
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterUp()V

    .line 991
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->onShutterUp()V

    return-void
.end method

.method protected onSnapShotStart()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->playCaptureAnimation(Landroid/content/Context;)V

    return-void
.end method

.method protected onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setMaxFileSize(J)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    return-void
.end method

.method public pause()V
    .locals 7

    .line 286
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->pause()V

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_support_long_press_lock"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "off"

    .line 288
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->onPause()V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    .line 292
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getTimeLapseRate()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-gt v0, v3, :cond_0

    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 293
    invoke-virtual {p0, v1, v0, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 294
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->hideInfo()V

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->stopProgressView()V

    :cond_1
    const/4 v0, 0x0

    .line 302
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->lock3A(Z)V

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 304
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->getFaceDetectRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 303
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method protected prepareVideoData()I
    .locals 5

    .line 137
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onCreateQuality()Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    sget-object v2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "prepareVideoData mRecordingFlag : true"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    .line 142
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 144
    :try_start_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 146
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 150
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-nez v2, :cond_1

    .line 151
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "-1"

    :goto_1
    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 157
    monitor-exit v1

    return v2

    :cond_2
    const-string v3, "_"

    .line 160
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 161
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->qualityValid(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 162
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 164
    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRatio:D

    .line 165
    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    .line 166
    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    .line 168
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_video_quality"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "6_60"

    .line 169
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_3

    .line 170
    iget v2, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 171
    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 174
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v2, :cond_4

    .line 175
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {v2, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Landroid/media/CamcorderProfile;)V

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    const/4 p0, 0x1

    .line 178
    monitor-exit v1

    return p0

    .line 180
    :cond_5
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public resume()V
    .locals 3

    .line 274
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->resume()V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_support_long_press_lock"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "on"

    .line 276
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->hideInfo()V

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->resume()V

    :cond_0
    const/4 v0, 0x0

    .line 281
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->lock3A(Z)V

    return-void
.end method

.method protected sendNotification(Landroid/content/Context;)V
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->sendNotification(Landroid/content/Context;)V

    return-void
.end method

.method protected setMediaInfo(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V
    .locals 2

    .line 480
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->setMediaInfo(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V

    const/4 v0, 0x0

    .line 481
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setAudioFlag(Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getTimeLapseRate()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setCaptureRate(D)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    .line 482
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getEncodeVideoFrameRate()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setVideoFrameRate(I)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    .line 483
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->isRecordTimeLimited()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setModifyIFrameFlag(Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    return-void
.end method

.method protected showInfo(I)V
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showInfo(I)V

    return-void
.end method

.method public stopRecording(Z)Z
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopRecording(Z)Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .locals 2

    .line 202
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->unInit()V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->unInitVideoUI()V

    :cond_0
    const-string v0, "key_time_lapse"

    .line 207
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_time_lapse_duration"

    .line 208
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_lock_focus"

    .line 209
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v0, :cond_1

    .line 211
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    .line 213
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_support_long_press_lock"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "off"

    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
