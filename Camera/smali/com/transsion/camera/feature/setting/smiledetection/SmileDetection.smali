.class public Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SmileDetection.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;
    }
.end annotation


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mResult:I


# instance fields
.field private mAcc:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

.field private mContext:Landroid/content/Context;

.field private final mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

.field private mIgnoreFrame:I

.field private mIsModeSupport:Z

.field private mIsTakePictre:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mResumed:Z

.field mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

.field private mSmileCount:I

.field private mSmileDetectionParameterConfig:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;

.field private mSupportCapture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, -0x1

    .line 48
    sput v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mResult:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSupportCapture:Z

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsTakePictre:Z

    .line 57
    new-instance v0, Lcom/transsion/camera/feature/setting/smiledetection/-$$Lambda$SmileDetection$G6Jyorcdzuu3SWjOlnsEzZCUi28;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/smiledetection/-$$Lambda$SmileDetection$G6Jyorcdzuu3SWjOlnsEzZCUi28;-><init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    .line 201
    new-instance v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$1;-><init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 261
    new-instance v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;-><init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)I
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->getDir()I

    move-result p0

    return p0
.end method

.method static synthetic access$1102(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSmileCount:I

    return p1
.end method

.method static synthetic access$1104(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)I
    .locals 1

    .line 33
    iget v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSmileCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSmileCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIgnoreFrame:I

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSmileDetectionParameterConfig:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    return p0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 33
    sget v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mResult:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0

    .line 33
    sput p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mResult:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mAcc:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    return-object p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;)Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mAcc:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mResumed:Z

    return p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mResumed:Z

    return p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSupportCapture:Z

    return p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSupportCapture:Z

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsTakePictre:Z

    return p0
.end method

.method static synthetic access$902(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsTakePictre:Z

    return p1
.end method

.method private detectorImage(Landroid/media/Image;II)V
    .locals 2

    .line 78
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getNV21Buffer(Landroid/media/Image;)[B

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 81
    iput v1, v0, Landroid/os/Message;->what:I

    .line 82
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 84
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private getDir()I
    .locals 4

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mAcc:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 415
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->getDirection()I

    move-result v0

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    const-string v2, "1"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    rsub-int/lit8 p0, v0, 0x4

    .line 418
    rem-int/lit8 v0, p0, 0x4

    :cond_1
    const/4 p0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, p0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, p0

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v3

    :cond_5
    :goto_0
    return v1
.end method

.method private synthetic lambda$new$0(Landroid/media/Image;II)V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    sget v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mResult:I

    if-gtz v0, :cond_1

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 66
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSupportCapture:Z

    if-eqz v0, :cond_3

    .line 67
    iget v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIgnoreFrame:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->detectorImage(Landroid/media/Image;II)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 70
    iput v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIgnoreFrame:I

    goto :goto_0

    .line 73
    :cond_3
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSupportCapture = false mResult = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mResult:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_smile_detection"

    return-object p0
.end method

.method public getModeSupport()Z
    .locals 0

    .line 310
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    return p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSmileDetectionParameterConfig:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;-><init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSmileDetectionParameterConfig:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSmileDetectionParameterConfig:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 157
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 1

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 92
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "smiledetection"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance p3, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p3, p0, p2, v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;-><init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$1;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mContext:Landroid/content/Context;

    .line 96
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p2, "key_smile_state"

    .line 97
    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "default value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 144
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 145
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 146
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 149
    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 152
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[initializeValue], mDataStore:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$0$SmileDetection(Landroid/media/Image;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->lambda$new$0(Landroid/media/Image;II)V

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 191
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    .line 192
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 183
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    if-eqz p1, :cond_0

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    const/16 p1, 0x68

    const-wide/16 p2, 0x7d0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 287
    sget-object v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x529edaba

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "key_smile_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 290
    :cond_2
    check-cast p2, Ljava/lang/CharSequence;

    const-string p1, "smile_normal_state"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x6a

    if-eqz p1, :cond_3

    .line 291
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 292
    iput v0, p1, Landroid/os/Message;->what:I

    .line 293
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 294
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_3
    const-string p1, "smile_invalid_state"

    .line 296
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 297
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 298
    iput v0, p1, Landroid/os/Message;->what:I

    .line 299
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 300
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 224
    sget-object v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    const-string v0, "on"

    .line 232
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    const/16 v0, 0x64

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSmileDetectionParameterConfig:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;

    if-eqz p0, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;->sendSettingChangeRequest()V

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSmileDetectionParameterConfig:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;

    if-eqz p0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;->sendSettingChangeRequest()V

    :cond_1
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 175
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 176
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 0

    .line 248
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    return-void
.end method

.method public resume()V
    .locals 4

    .line 103
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    const/16 v1, 0x68

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    const/16 v0, 0x6a

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public turnOnSwitch(Z)V
    .locals 3

    .line 125
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->turnOnSwitch(Z)V

    .line 126
    sget-object v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " turnOnSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x67

    .line 128
    iput v1, v0, Landroid/os/Message;->what:I

    .line 129
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_0

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 112
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0x65

    .line 114
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    const-string v1, "key_smile_state"

    .line 118
    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 120
    :cond_1
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "uninit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
