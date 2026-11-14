.class public Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "STBlurMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;,
        Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mAlgoProcessed:Z

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mBackFakeDualLensSupport:Z

.field private volatile mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

.field private mFrameData:[B

.field private mFrontFakeDualLensSupport:Z

.field private mHasFace:Z

.field private volatile mHumanEffectFaceChecked:Z

.field private mHumanEffectIndex:Ljava/lang/String;

.field private mHumanEffectInited:Z

.field private volatile mModeInit:Z

.field private mRotation:I

.field private volatile mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

.field private mSTBlurClientHandler:Landroid/os/Handler;

.field private mSTBlurClientOn:Z

.field private mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private volatile mSTBlurClientValid:Z

.field private final mSupportFlash:Z

.field private mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 92
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHasFace:Z

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    .line 84
    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mRotation:I

    const-string p1, "0"

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    .line 312
    new-instance p1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    .line 93
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->readFakeDualLensSupport(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/stblurmode/R$bool;->stblur_support_flash:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSupportFlash:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mRotation:I

    return p0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mRotation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->destroyFacelighting()V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->createFacelighting()V

    return-void
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAlgoProcessed:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAlgoProcessed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientValid:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleInitSTBlur()V

    return-void
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleResumeSTBlur()V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handlePauseSTBlur()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrameData:[B

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleUnInitSTBlur()V

    return-void
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;[B)[B
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrameData:[B

    return-object p1
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleInitRender()V

    return-void
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleChangeConfig(Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mModeInit:Z

    return p0
.end method

.method static synthetic access$400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 61
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectInited:Z

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectFaceChecked:Z

    return p0
.end method

.method private changeSTBlurConfig(ZZ)V
    .locals 1

    .line 219
    new-instance v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;-><init>()V

    .line 220
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;->hasFace(Z)Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;->stBlurOn(Z)Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;->build()Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;

    move-result-object p1

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 222
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private createFacelighting()V
    .locals 3

    .line 620
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectInited:Z

    if-nez v0, :cond_2

    .line 621
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->getFacelightingClient()Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    .line 622
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->init(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectInited:Z

    .line 625
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectInited:Z

    if-eqz v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v2, "0"

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->setConfig(ZLjava/lang/String;)Z

    :cond_2
    return-void
.end method

.method private destroyFacelighting()V
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->isFacelightingInit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 633
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectInited:Z

    .line 634
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->release()V

    :cond_0
    return-void
.end method

.method private handleChangeConfig(Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;)V
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->changeConfigs(Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;)V

    .line 667
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    if-eqz p0, :cond_1

    .line 668
    check-cast p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;->isSTBlurOn()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->updateSTBlurValue(Z)V

    :cond_1
    return-void
.end method

.method private handleInitRender()V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    if-eqz v0, :cond_0

    .line 659
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->initRender()V

    :cond_0
    return-void
.end method

.method private handleInitSTBlur()V
    .locals 3

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 604
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "handleInitSTBlur mContext is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 608
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 609
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isFrontCamera(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;->frontCamera(Z)Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;->build()Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;

    move-result-object v0

    .line 610
    new-instance v1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    .line 611
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->configSTBlur(Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;)V

    .line 612
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->initSTBlur()V

    const/4 v0, 0x1

    .line 613
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientValid:Z

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->getSTBlurCapture()Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->setSTBlurCapture(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;)V

    .line 616
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->initSTBlurCapture()V

    return-void
.end method

.method private handlePauseSTBlur()V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    if-eqz v0, :cond_0

    .line 646
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->unInitSTBlur()V

    :cond_0
    return-void
.end method

.method private handleResumeSTBlur()V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    if-eqz v0, :cond_0

    .line 640
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->initSTBlur()V

    :cond_0
    return-void
.end method

.method private handleUnInitSTBlur()V
    .locals 1

    const/4 v0, 0x0

    .line 651
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientValid:Z

    .line 652
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    if-eqz v0, :cond_0

    .line 653
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->unInitSTBlur()V

    :cond_0
    return-void
.end method

.method private initSTBlurThread()V
    .locals 3

    .line 118
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "stblur_work_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 120
    new-instance v1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    return-void
.end method

.method private isFakeDualLens()Z
    .locals 2

    .line 537
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mBackFakeDualLensSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrontFakeDualLensSupport:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v0, "1"

    .line 539
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFrontCamera(Ljava/lang/String;)Z
    .locals 0

    .line 124
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    .line 125
    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private readFakeDualLensSupport(Landroid/content/Context;)V
    .locals 2

    .line 519
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/mode/stblurmode/R$integer;->stblur_fake_dual_lens_type:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrontFakeDualLensSupport:Z

    .line 529
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mBackFakeDualLensSupport:Z

    goto :goto_0

    .line 525
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mBackFakeDualLensSupport:Z

    goto :goto_0

    .line 522
    :cond_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrontFakeDualLensSupport:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 3

    .line 545
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->createImageProcessor()Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;
    .locals 1

    .line 550
    new-instance v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public getDataFlowType()I
    .locals 1

    .line 300
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->algorithmMigrate()Z

    move-result p0

    const/4 v0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    .line 301
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0

    .line 304
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    .line 305
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    .line 308
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_st_blur"

    .line 244
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_tran_plugin"

    .line 245
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_smile_detection"

    .line 246
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isFakeDualLens()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "key_is_stblur_fake"

    .line 248
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->algorithmMigrate()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "key_algorithm_migrate"

    .line 251
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p0, "mild_beauty_type"

    .line 253
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-ne p0, p1, :cond_3

    :cond_2
    const-string p0, "key_mild_beauty"

    .line 255
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_3
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->isFacelightingSupport()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "key_human_effect_index"

    .line 258
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 262
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 286
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSupportFlash:Z

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->getRestriction(Z)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string v0, "on"

    const/4 v1, 0x1

    .line 287
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 289
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->isFacelightingSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_camera_zoom"

    const-string v1, "100"

    .line 290
    invoke-virtual {p0, v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_volume_key"

    const-string v1, "Shutter"

    .line 291
    invoke-virtual {p0, v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
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

    .line 167
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getTargetRatio()D

    move-result-wide v1

    .line 168
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    const/4 v4, 0x1

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    move-object v0, p1

    .line 170
    invoke-static/range {v0 .. v6}, Lcom/transsion/camera/utils/CameraUtil;->getPreviewSizeMatch64(Ljava/util/List;DLandroid/util/Size;ZD)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 101
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 102
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 103
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->initSTBlurThread()V

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p1, :cond_0

    .line 107
    new-instance p3, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;)V

    invoke-interface {p1, p3}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    :cond_0
    const-string p1, "key_has_valid_face"

    .line 109
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_st_blur"

    .line 110
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_human_effect_index"

    .line 111
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p3, "key_human_effect_face_checked"

    .line 112
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 113
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mModeInit:Z

    .line 114
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    return-void
.end method

.method public isSupportBackFakeDualLens()Z
    .locals 0

    .line 272
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mBackFakeDualLensSupport:Z

    return p0
.end method

.method public isSupportFrontFakeDualLens()Z
    .locals 0

    .line 267
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrontFakeDualLensSupport:Z

    return p0
.end method

.method public needFakePostView()Z
    .locals 1

    .line 277
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->isFacelightingSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 281
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needFakePostView()Z

    move-result p0

    return p0
.end method

.method public onFirstSteadyFrame()V
    .locals 2

    .line 236
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onFirstSteadyFrame()V

    .line 237
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onFirstSteadyFrame"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "key_human_effect_face_checked"

    .line 213
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectFaceChecked:Z

    :cond_0
    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 176
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_has_valid_face"

    .line 179
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "face_valid"

    .line 181
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHasFace:Z

    goto :goto_0

    .line 184
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHasFace:Z

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v3, "key_st_blur"

    .line 187
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "1"

    .line 189
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    goto :goto_2

    .line 192
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    if-eqz v2, :cond_4

    .line 197
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHasFace:Z

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->changeSTBlurConfig(ZZ)V

    :cond_4
    const-string v0, "key_human_effect_index"

    .line 200
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->updateConfig(Ljava/lang/String;)V

    .line 203
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    :cond_5
    return-void

    .line 208
    :cond_6
    sget-object p1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasFace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHasFace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mSTBlurClientOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mHumanEffectIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; value: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSettingReady()V
    .locals 1

    .line 227
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modePause()V

    .line 142
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeResume()V

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()V
    .locals 3

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mModeInit:Z

    .line 149
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v1, :cond_0

    .line 150
    invoke-interface {v1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    .line 152
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 153
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 154
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    const-string v1, "key_has_valid_face"

    .line 155
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v1, "key_st_blur"

    .line 156
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v1, "key_human_effect_index"

    .line 157
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v1, "key_human_effect_face_checked"

    .line 158
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 160
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    .line 162
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectFaceChecked:Z

    return-void
.end method
