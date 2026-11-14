.class Lcom/transsion/camera/adapter/CameraAgent2Impl;
.super Lcom/transsion/camera/adapter/CameraAgent;
.source "CameraAgent2Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Camera2AgentImpl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraAgent;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    const-string v0, "camera"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 29
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;-><init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 41
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Object;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 18
    sget-object v0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/adapter/CameraAgent2Impl;Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    return-object p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method static synthetic access$400(I)I
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->convertCameraStateErrorCode(I)I

    move-result p0

    return p0
.end method

.method private static convertCameraStateErrorCode(I)I
    .locals 6

    .line 278
    sget-object v0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraDevice$StateCallback error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x9

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p0, v5, :cond_4

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v5

    :cond_5
    :goto_0
    return v0
.end method


# virtual methods
.method public getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 49
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 51
    :try_start_2
    sget-object v2, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getCameraDeviceInfo] error Msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 55
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method onCreateProxyCreator(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
    .locals 1

    .line 78
    new-instance v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;-><init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)V

    return-object v0
.end method

.method public reInitFirstForPermission()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->reloadCharacteristics(Landroid/hardware/camera2/CameraManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    sget-object v1, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "reInitFirst start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->initFirst(Z)V

    .line 69
    sget-object v1, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "reInitFirst end"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 72
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
