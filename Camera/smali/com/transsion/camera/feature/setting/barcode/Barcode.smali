.class public Lcom/transsion/camera/feature/setting/barcode/Barcode;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "Barcode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;
    }
.end annotation


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private arrayList0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private arrayList1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private arrayList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private barcode:Lnet/sourceforge/zbar/Image;

.field private mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

.field private mCameraID:Ljava/lang/String;

.field private mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

.field private mImageScanner:Lnet/sourceforge/zbar/ImageScanner;

.field private mIsBarcodeDefaultOpen:Z

.field private mIsBarcodeScanWating:Z

.field private mIsModeSupport:Z

.field private mLastScannedTime:J

.field private mLastTime:J

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private final mQRCodeThread:Landroid/os/HandlerThread;

.field private mQRHandler:Landroid/os/Handler;

.field public mQRLocation:[I

.field private mResult:[Ljava/lang/String;

.field mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

.field private mStatusChangeListener:Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 46
    new-instance v0, Lnet/sourceforge/zbar/Image;

    const-string v1, "Y800"

    invoke-direct {v0, v1}, Lnet/sourceforge/zbar/Image;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->barcode:Lnet/sourceforge/zbar/Image;

    .line 47
    new-instance v0, Lnet/sourceforge/zbar/ImageScanner;

    invoke-direct {v0}, Lnet/sourceforge/zbar/ImageScanner;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mImageScanner:Lnet/sourceforge/zbar/ImageScanner;

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "QRCodeThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRCodeThread:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsModeSupport:Z

    .line 100
    new-instance v0, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;Lcom/transsion/camera/feature/setting/barcode/Barcode$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;

    .line 169
    new-instance v0, Lcom/transsion/camera/feature/setting/barcode/Barcode$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode$1;-><init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 200
    new-instance v0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;-><init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/setting/barcode/Barcode;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/feature/setting/barcode/Barcode;J)J
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/ImageScanner;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mImageScanner:Lnet/sourceforge/zbar/ImageScanner;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/Image;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->barcode:Lnet/sourceforge/zbar/Image;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/setting/barcode/Barcode;I)I
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->cropWidth64(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/setting/barcode/Barcode;[BII)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->updateYUV([BII)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/setting/barcode/Barcode;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mLastScannedTime:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/transsion/camera/feature/setting/barcode/Barcode;J)J
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mLastScannedTime:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/setting/barcode/Barcode;)[Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mResult:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/feature/setting/barcode/Barcode;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mResult:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->arrayList0:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->arrayList1:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->arrayList2:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/HandlerThread;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRCodeThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    return-object p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/setting/barcode/Barcode;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsModeSupport:Z

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mCameraID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsBarcodeScanWating:Z

    return p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/feature/setting/barcode/Barcode;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsBarcodeScanWating:Z

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/setting/barcode/Barcode;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->initChildHandler()V

    return-void
.end method

.method private cropWidth64(I)I
    .locals 0

    .line 229
    :goto_0
    rem-int/lit8 p0, p1, 0x40

    if-nez p0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method private initChildHandler()V
    .locals 2

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->arrayList0:Ljava/util/ArrayList;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->arrayList1:Ljava/util/ArrayList;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->arrayList2:Ljava/util/ArrayList;

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRCodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 261
    new-instance v0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRCodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;-><init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRHandler:Landroid/os/Handler;

    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateYUV([BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 240
    array-length v0, p1

    new-array v8, v0, [B

    .line 241
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->cropWidth64(I)I

    move-result v5

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->cropWidth64(I)I

    move-result p0

    mul-int/2addr p0, p3

    div-int v6, p0, p2

    const/4 v7, 0x1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v8

    invoke-static/range {v1 .. v7}, Lcom/libyuv/util/YuvUtil;->yuvScaleI420([BII[BIII)V

    mul-int/lit8 p0, v0, 0x3

    .line 243
    div-int/lit8 p0, p0, 0x2

    new-array p0, p0, [B

    const/4 p1, 0x0

    :goto_0
    mul-int/lit8 p2, v0, 0x2

    .line 244
    div-int/lit8 p2, p2, 0x3

    if-ge p1, p2, :cond_0

    .line 245
    aget-byte p2, v8, p1

    aput-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_setting_barcode"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    .line 196
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 121
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 188
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "barcode_default_open"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsBarcodeDefaultOpen:Z

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p1, "key_picture_size"

    .line 96
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->registerKeyToMonitor(Ljava/lang/String;)V

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

    .line 66
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mCameraID:Ljava/lang/String;

    .line 67
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 73
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsBarcodeDefaultOpen:Z

    if-eqz p2, :cond_0

    const-string p2, "on"

    goto :goto_0

    :cond_0
    const-string p2, "off"

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_setting_barcode"

    invoke-virtual {v0, v2, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    move-object v0, p2

    .line 87
    :cond_2
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    .line 372
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 351
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 352
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Setting onModeClosed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 341
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsModeSupport:Z

    const-string p2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 343
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 344
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsModeSupport:Z

    :cond_0
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 139
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onValueChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 145
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "on"

    .line 148
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextUtils.equals(\"on\",value): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->sendSettingChangeRequest()V

    goto :goto_0

    :cond_1
    const-string v0, "off"

    .line 153
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextUtils.equals(\"off\",value): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->sendSettingChangeRequest()V

    :cond_2
    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 357
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRCodeThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 365
    :cond_1
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2

    const-string v0, "key_picture_size"

    .line 367
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
