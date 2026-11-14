.class Lcom/transsion/camera/adapter/CameraAgent2Impl$1;
.super Ljava/lang/Object;
.source "CameraAgent2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/adapter/CameraAgent2Impl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 33
    :try_start_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "initDeviceInfo start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    new-instance v2, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$300(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/hardware/camera2/CameraManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;-><init>(Landroid/hardware/camera2/CameraManager;)V

    invoke-static {v1, v2}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$202(Lcom/transsion/camera/adapter/CameraAgent2Impl;Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    .line 35
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$200(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->initFirst(Z)V

    .line 36
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$200(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->initSecond()V

    .line 37
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "initDeviceInfo end"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
