.class Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;
.super Ljava/lang/Object;
.source "PanoramaImpl.java"

# interfaces
.implements Lcom/transsion/camera/featurelibs/panorama/IPanorama;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;
    }
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "jnipanorama"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mEventHandler:Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

.field private mNativeContext:J

.field private mPanoramaCallback:Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "jnipanorama"

    .line 43
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->nativeSetup(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mNativeContext:J

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 23
    sget-object v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;)Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mPanoramaCallback:Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;

    return-object p0
.end method

.method private initEventHandler()V
    .locals 3

    .line 70
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 71
    new-instance v2, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    invoke-direct {v2, p0, v0, v1}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;-><init>(Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;Landroid/os/Looper;Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$1;)V

    iput-object v2, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v2, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    invoke-direct {v2, p0, v0, v1}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;-><init>(Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;Landroid/os/Looper;Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$1;)V

    iput-object v2, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    goto :goto_0

    .line 75
    :cond_1
    iput-object v1, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    :goto_0
    return-void
.end method

.method private native nativeConfig(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)Z
.end method

.method private native nativeInit()Z
.end method

.method private native nativeProcess(I[B)Z
.end method

.method private native nativeReset()Z
.end method

.method private native nativeSetup(Ljava/lang/Object;)J
.end method

.method private native nativeUnInit()Z
.end method

.method private static postEventFromNative(Ljava/lang/ref/WeakReference;ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventFromNative resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;

    if-nez p0, :cond_0

    .line 127
    sget-object p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "postEventFromNative panorama is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method


# virtual methods
.method public config(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)Z
    .locals 2

    .line 61
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->nativeConfig(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)Z

    move-result p0

    .line 63
    sget-object p1, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config wide selfie "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public init()Z
    .locals 3

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->nativeInit()Z

    move-result p0

    .line 54
    sget-object v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init wide selfie "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public process(I[B)V
    .locals 2

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->nativeProcess(I[B)Z

    move-result p0

    .line 95
    sget-object p2, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public reset()Z
    .locals 3

    .line 100
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->nativeReset()Z

    move-result p0

    .line 102
    sget-object v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset wide selfie "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public setCallback(Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mPanoramaCallback:Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;

    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mPanoramaCallback:Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;

    .line 88
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->initEventHandler()V

    return-void
.end method

.method public unInit()Z
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->nativeUnInit()Z

    move-result p0

    .line 116
    sget-object v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unInit wide selfie "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method
