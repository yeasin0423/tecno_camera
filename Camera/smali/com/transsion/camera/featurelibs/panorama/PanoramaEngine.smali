.class public Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;
.super Ljava/lang/Object;
.source "PanoramaEngine.java"

# interfaces
.implements Lcom/transsion/camera/featurelibs/panorama/IPanorama;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;
    }
.end annotation


# static fields
.field private static final ENGINE_THREAD_NAME:Ljava/lang/String; = "PanoramaEngine"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mEngineHandler:Landroid/os/Handler;

.field private mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    .line 36
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PanoramaEngine"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 38
    new-instance v1, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/featurelibs/panorama/IPanorama;Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$1;)V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 24
    sget-object v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public config(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method public init()Z
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return v0
.end method

.method public process(I[B)V
    .locals 2

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reset()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method public setCallback(Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;)V
    .locals 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    const/4 p0, 0x1

    return p0
.end method
