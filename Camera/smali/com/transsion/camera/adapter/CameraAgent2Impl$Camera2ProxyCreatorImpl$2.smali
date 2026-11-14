.class Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraAgent2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v1, v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 225
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$700(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$700(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-ne v0, p1, :cond_1

    if-eqz v1, :cond_0

    .line 228
    invoke-interface {v1}, Lcom/transsion/camera/adapter/CameraAgent$CameraOpenCallback;->onCameraClosed()V

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$702(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$802(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl;

    :cond_1
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v1, v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 238
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$700(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$700(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-ne v0, p1, :cond_1

    if-eqz v1, :cond_0

    .line 241
    invoke-interface {v1}, Lcom/transsion/camera/adapter/CameraAgent$CameraOpenCallback;->onCameraDisconnected()V

    .line 243
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$702(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_1

    .line 245
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    :cond_1
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$1100(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/utils/StateWait;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$500(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$400(I)I

    move-result p2

    invoke-interface {v0, p2}, Lcom/transsion/camera/adapter/CameraAgent$CameraOpenCallback;->onCameraError(I)V

    .line 258
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$702(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$802(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl;

    if-eqz p1, :cond_1

    .line 261
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    :cond_1
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 8

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$700(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$702(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    new-instance v7, Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$900(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/adapter/CameraProxy$CameraError;

    move-result-object v4

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v5, v1, Lcom/transsion/camera/adapter/CameraAgent;->mRequestHandler:Landroid/os/Handler;

    iget-object v6, v1, Lcom/transsion/camera/adapter/CameraAgent;->mResponseHandler:Landroid/os/Handler;

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/adapter/CameraProxy2Impl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice;Lcom/transsion/camera/adapter/CameraProxy$CameraError;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-static {v0, v7}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$802(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl;

    .line 198
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onOpened] mCameraId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$200(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 202
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 204
    :try_start_2
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onOpened] error Msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$200(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 208
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onOpened] props:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$200(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v2, v2, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getPlatformCamera(Ljava/lang/String;)Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v2, v2, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v2}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$200(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v3, v3, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 212
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$800(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/adapter/CameraProxy2Impl;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->init(Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    goto :goto_1

    .line 214
    :cond_1
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[onOpened] CameraDeviceInfo is error."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$1002(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Z)Z

    .line 217
    :goto_1
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 219
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$2;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$1100(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/utils/StateWait;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method
