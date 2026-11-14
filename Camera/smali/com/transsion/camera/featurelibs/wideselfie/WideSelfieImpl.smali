.class Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;
.super Ljava/lang/Object;
.source "WideSelfieImpl.java"

# interfaces
.implements Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;,
        Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;
    }
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "jniwideselfie"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mEventHandler:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

.field private mNativeContext:J

.field private mWideSelfieCallback:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "jniwideselfie"

    .line 47
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->nativeSetup(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mNativeContext:J

    return-void
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 27
    sget-object v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;)Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mWideSelfieCallback:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    return-object p0
.end method

.method private initEventHandler()V
    .locals 3

    .line 74
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 75
    new-instance v2, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

    invoke-direct {v2, p0, v0, v1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;-><init>(Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;Landroid/os/Looper;Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$1;)V

    iput-object v2, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    new-instance v2, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

    invoke-direct {v2, p0, v0, v1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;-><init>(Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;Landroid/os/Looper;Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$1;)V

    iput-object v2, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

    goto :goto_0

    .line 79
    :cond_1
    iput-object v1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

    :goto_0
    return-void
.end method

.method private native nativeConfig(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)Z
.end method

.method private native nativeInit()Z
.end method

.method private native nativeProcess(I[B[Landroid/graphics/Rect;)Z
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
            "Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventFromNative resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;

    if-nez p0, :cond_0

    .line 131
    sget-object p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "postEventFromNative wideSelfie is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method


# virtual methods
.method public config(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)Z
    .locals 2

    .line 65
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->nativeConfig(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)Z

    move-result p0

    .line 67
    sget-object p1, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 56
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->nativeInit()Z

    move-result p0

    .line 58
    sget-object v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

.method public process(I[B[Landroid/graphics/Rect;)V
    .locals 1

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->nativeProcess(I[B[Landroid/graphics/Rect;)Z

    move-result p0

    .line 99
    sget-object p2, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "process command: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public reset()Z
    .locals 3

    .line 104
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->nativeReset()Z

    move-result p0

    .line 106
    sget-object v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

.method public setCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 86
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mWideSelfieCallback:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    return-void

    .line 90
    :cond_0
    new-instance v1, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;

    invoke-direct {v1, p1, v0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;-><init>(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$1;)V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mWideSelfieCallback:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    .line 92
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->initEventHandler()V

    return-void
.end method

.method public unInit()Z
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->nativeUnInit()Z

    move-result p0

    .line 120
    sget-object v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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
