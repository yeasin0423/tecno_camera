.class Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;
.super Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
.source "CameraAgent2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraAgent2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Camera2ProxyCreatorImpl"
.end annotation


# instance fields
.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

.field private mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

.field private mDeviceInfoError:Z

.field private final mProxyError:Lcom/transsion/camera/adapter/CameraProxy$CameraError;

.field private final mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mStateWait:Lcom/transsion/camera/utils/StateWait;

.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)V
    .locals 2

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;-><init>(Lcom/transsion/camera/adapter/CameraAgent;Ljava/lang/String;)V

    .line 85
    new-instance p1, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {p1}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mDeviceInfoError:Z

    .line 181
    new-instance p1, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;-><init>(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mProxyError:Lcom/transsion/camera/adapter/CameraProxy$CameraError;

    .line 190
    new-instance p1, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;-><init>(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 91
    new-instance p1, Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraAPI2_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method static synthetic access$1002(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mDeviceInfoError:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/utils/StateWait;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/adapter/CameraProxy2Impl;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    return-object p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    return-object p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/adapter/CameraProxy$CameraError;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mProxyError:Lcom/transsion/camera/adapter/CameraProxy$CameraError;

    return-object p0
.end method

.method private doCloseCurrent()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->doCloseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method doCloseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .locals 6

    .line 152
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eq v1, p1, :cond_0

    .line 155
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "doCloseCamera only the user can close"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    monitor-exit v0

    return-void

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->release()V

    .line 162
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[doCloseCamera] device close start."

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_2

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 168
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iput-object v1, p1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 171
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doCloseCamera] device close end, process time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eqz p1, :cond_3

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraAgent$CameraOpenCallback;->onCameraClosed()V

    .line 176
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 178
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method doOpenCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 101
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->isPriority(Lcom/transsion/camera/adapter/CameraAgent$Customer;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x6

    .line 103
    invoke-interface {p1, p0}, Lcom/transsion/camera/adapter/CameraAgent$CameraOpenCallback;->onCameraError(I)V

    .line 104
    monitor-exit v0

    return-void

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->doCloseCurrent()V

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/16 v1, 0x9

    if-nez p1, :cond_1

    .line 110
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v2, "mCameraProxy == null"

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$300(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/hardware/camera2/CameraManager;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v4, v4, Lcom/transsion/camera/adapter/CameraAgent;->mResponseHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/StateWait;->waitState()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
    :try_start_2
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[openCamera] error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$400(I)I

    move-result v2

    invoke-interface {p1, v2}, Lcom/transsion/camera/adapter/CameraAgent$CameraOpenCallback;->onCameraError(I)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 118
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[openCamera] error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mDeviceInfoError:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mDeviceInfoError:Z

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    if-eqz p1, :cond_2

    .line 129
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    iput-object v2, p1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-interface {p0, v1}, Lcom/transsion/camera/adapter/CameraAgent$CameraOpenCallback;->onCameraError(I)V

    .line 132
    :cond_2
    monitor-exit v0

    return-void

    .line 135
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    if-eqz p1, :cond_4

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-interface {p1, v1}, Lcom/transsion/camera/adapter/CameraAgent$CameraOpenCallback;->onCameraOpened(Lcom/transsion/camera/adapter/CameraProxy;)V

    .line 137
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, " mCurrentUser. update"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    iput-object p0, p1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 140
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
