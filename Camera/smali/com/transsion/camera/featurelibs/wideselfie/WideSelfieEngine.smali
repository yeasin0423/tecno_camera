.class public Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;
.super Ljava/lang/Object;
.source "WideSelfieEngine.java"

# interfaces
.implements Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;,
        Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;
    }
.end annotation


# static fields
.field private static final ENGINE_THREAD_NAME:Ljava/lang/String; = "WideSelfieEngine"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mEngineHandler:Landroid/os/Handler;

.field private mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    .line 37
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WideSelfieEngine"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance v1, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$1;)V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 25
    sget-object v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public config(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)Z
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method public init()Z
    .locals 1

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return v0
.end method

.method public process(I[B[Landroid/graphics/Rect;)V
    .locals 2

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;-><init>([B[Landroid/graphics/Rect;Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$1;)V

    const/4 p2, 0x4

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reset()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method public setCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V
    .locals 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    const/4 p0, 0x1

    return p0
.end method
