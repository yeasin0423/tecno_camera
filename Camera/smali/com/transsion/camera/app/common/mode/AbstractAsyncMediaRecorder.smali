.class abstract Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;
.super Ljava/lang/Object;
.source "AbstractAsyncMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;
    }
.end annotation


# static fields
.field private static final COMMANDS:[Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mVideoHandle:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "configRecorder"

    const-string v3, "operationPrepared"

    const-string v4, "startStop"

    const-string v5, "pauseResume"

    const-string v6, "stop"

    const-string v7, "startMediaRecorder"

    const-string v8, "storageUnMounted"

    const-string v9, "snapShot"

    const-string v10, "releaseRecorder"

    .line 44
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->COMMANDS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 24
    sget-object v0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(I)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->getCommand(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCommand(I)Ljava/lang/String;
    .locals 3

    if-ltz p0, :cond_1

    const/16 v0, 0x8

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->COMMANDS:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 60
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessage wrong command\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private release()V
    .locals 1

    const/16 v0, 0x8

    .line 112
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(I)Z

    return-void
.end method

.method private removeMessages(I)V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->mVideoHandle:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private sendMessage(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private sendMessage(IIILjava/lang/Object;)Z
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->mVideoHandle:Landroid/os/Handler;

    if-nez p0, :cond_0

    .line 177
    sget-object p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendMessage mVideoHandle is null what: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 180
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method private sendMessage(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(IIILjava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public configRecorder(Landroid/media/CamcorderProfile;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(ILjava/lang/Object;)Z

    return-void
.end method

.method protected abstract configRecorder(Landroid/os/Message;)V
.end method

.method public init()V
    .locals 3

    .line 136
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "video_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 138
    new-instance v1, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;-><init>(Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;Landroid/os/Looper;Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$1;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->mVideoHandle:Landroid/os/Handler;

    return-void
.end method

.method public leave(ZZ)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->shouldConsumerStopCommand()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/4 v1, 0x2

    .line 92
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->removeMessages(I)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, v1, p2, v0, v2}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(IIILjava/lang/Object;)Z

    return p1
.end method

.method public operationPrepared()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(I)Z

    return-void
.end method

.method protected abstract operationPrepared(Landroid/os/Message;)V
.end method

.method public pauseResume()V
    .locals 1

    const/4 v0, 0x3

    .line 83
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(I)Z

    return-void
.end method

.method protected abstract pauseResume(Landroid/os/Message;)V
.end method

.method protected abstract release(Landroid/os/Message;)V
.end method

.method protected removeStartStopMessages()Z
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->mVideoHandle:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 151
    sget-object p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "removeStartStopMessages mVideoHandle is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v2, 0x2

    .line 154
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->mVideoHandle:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method protected abstract shouldConsumerStopCommand()Z
.end method

.method protected abstract snapShot(Landroid/os/Message;)V
.end method

.method startMediaRecorder()V
    .locals 1

    const/4 v0, 0x5

    .line 98
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(I)Z

    return-void
.end method

.method protected abstract startMediaRecorder(Landroid/os/Message;)V
.end method

.method public startStop()V
    .locals 1

    const/4 v0, 0x2

    .line 78
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(I)Z

    return-void
.end method

.method protected abstract startStop(Landroid/os/Message;)V
.end method

.method protected abstract stop(Landroid/os/Message;)V
.end method

.method public storageUnMount()V
    .locals 1

    const/4 v0, 0x6

    .line 103
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(I)Z

    return-void
.end method

.method protected abstract storageUnmounted(Landroid/os/Message;)V
.end method

.method public unInit()V
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->release()V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->mVideoHandle:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->mVideoHandle:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public videoSnapShot(Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;)Z
    .locals 1

    const/4 v0, 0x7

    .line 108
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
