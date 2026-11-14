.class public Lcom/transsion/camera/feature/setting/liveresult/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private final mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private final mPreviewSize:Landroid/util/Size;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/liveresult/Result;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 22
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/liveresult/Result;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method static buildFrom(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;)Lcom/transsion/camera/feature/setting/liveresult/Result;
    .locals 1

    .line 35
    new-instance v0, Lcom/transsion/camera/feature/setting/liveresult/Result;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/setting/liveresult/Result;-><init>(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;)V

    return-object v0
.end method


# virtual methods
.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/Result;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/Result;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method
