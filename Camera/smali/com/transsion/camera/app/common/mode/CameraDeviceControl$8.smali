.class Lcom/transsion/camera/app/common/mode/CameraDeviceControl$8;
.super Ljava/lang/Object;
.source "CameraDeviceControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->waitDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$waitDoneLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/Object;)V
    .locals 0

    .line 1737
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$8;->val$waitDoneLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1740
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$8;->val$waitDoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1741
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$8;->val$waitDoneLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1742
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
