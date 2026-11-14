.class public Lcom/transsion/camera/app/common/thermal/ThermalThrottle;
.super Lcom/transsion/camera/thermal/PlatformThermal;
.source "ThermalThrottle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIThermalThrottleChangeListener:Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;

.field private mThermalStatus:I

.field private mThermalThrottleType:I

.field private mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/thermal/PlatformThermal;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalStatus:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "thermal_throttle_support"

    .line 42
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ThermalThrottle-thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    .line 46
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 47
    new-instance v1, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    iget-object v2, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;-><init>(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    const-wide/16 v2, 0x1388

    .line 48
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const-string v0, "thermal_throttle_tran_type"

    .line 51
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalThrottleType:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalStatus:I

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalThrottleType:I

    return p0
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 19
    sget-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mIThermalThrottleChangeListener:Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 76
    sget-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[destroy]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_1

    .line 82
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    return-void
.end method

.method public getTemper(Ljava/lang/String;)I
    .locals 7

    const-string v0, "Camera Thermal status :"

    const/4 v1, 0x0

    .line 127
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 128
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 129
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 133
    :cond_0
    sget-object v4, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "avc: denied: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 135
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalStatus:I

    if-eq p0, v1, :cond_3

    .line 148
    sget-object p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 145
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    iget p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalStatus:I

    if-eq p0, v1, :cond_3

    .line 148
    sget-object p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 137
    :try_start_2
    sget-object v2, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTemper err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    if-eqz p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_2

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    :cond_2
    iget p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalStatus:I

    if-eq p0, v1, :cond_3

    .line 148
    sget-object p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    .line 147
    :goto_2
    iget p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalStatus:I

    if-eq p0, v1, :cond_4

    .line 148
    sget-object p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    :cond_4
    throw p1
.end method

.method public pause()V
    .locals 2

    .line 67
    sget-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[pause]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalStatus:I

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .line 59
    sget-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[resume]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public setThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mIThermalThrottleChangeListener:Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;

    return-void
.end method
