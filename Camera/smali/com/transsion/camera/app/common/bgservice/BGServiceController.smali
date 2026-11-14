.class public Lcom/transsion/camera/app/common/bgservice/BGServiceController;
.super Ljava/lang/Object;
.source "BGServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/bgservice/BGServiceController$BGHandler;,
        Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sInstance:Lcom/transsion/camera/app/common/bgservice/BGServiceController;


# instance fields
.field private mBGCaptureThread:Landroid/os/HandlerThread;

.field private mBgCaptureSurfaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/mode/CaptureSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mBgEventCallback:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

.field private mBgService:Lcom/transsion/camera/app/common/bgservice/IBGService;

.field private mHandler:Landroid/os/Handler;

.field private mImageSavedListener:Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BGServiceController"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->sInstance:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgService:Lcom/transsion/camera/app/common/bgservice/IBGService;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    .line 133
    new-instance v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;-><init>(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgEventCallback:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "com.transsion.camera.feature.bgservice.BGServiceProxy"

    .line 50
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/bgservice/IBGService;

    iput-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgService:Lcom/transsion/camera/app/common/bgservice/IBGService;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Lcom/transsion/camera/app/common/bgservice/IBGService;->hasBGService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgService:Lcom/transsion/camera/app/common/bgservice/IBGService;

    iget-object v1, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgEventCallback:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/bgservice/IBGService;->setBGServiceCallback(Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;)V

    .line 55
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BGCaptureThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBGCaptureThread:Landroid/os/HandlerThread;

    .line 56
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$BGHandler;

    iget-object v1, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBGCaptureThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController$BGHandler;-><init>(Lcom/transsion/camera/app/common/bgservice/BGServiceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/bgservice/BGServiceController;I)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getSurface(I)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    return-object p0
.end method

.method public static createInstance()V
    .locals 1

    .line 44
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->sInstance:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->sInstance:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;
    .locals 1

    .line 61
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->sInstance:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    return-object v0
.end method

.method private getSurface(I)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 153
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 154
    monitor-exit v0

    return-object v1

    .line 157
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .locals 10

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    monitor-enter v0

    .line 75
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 76
    iget-object v3, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 77
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 79
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getPreReleaseTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    sub-long v6, v1, v4

    const-wide/16 v8, 0x4e20

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 81
    sget-object v6, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeCaptureSurface: currentTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", preReleaseTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 85
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public doOnBGImageSaved(Landroid/net/Uri;[B)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mImageSavedListener:Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;

    if-eqz p0, :cond_0

    .line 101
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;->doOnBGImageSaved(Landroid/net/Uri;[B)V

    :cond_0
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public isBGSupport()Z
    .locals 2

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgService:Lcom/transsion/camera/app/common/bgservice/IBGService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/bgservice/IBGService;->hasBGService()Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    .line 70
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    const-string v1, "0"

    invoke-interface {p0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->isBGServiceSupport(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public removeCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBGImageSavedListener(Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mImageSavedListener:Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;

    return-void
.end method
