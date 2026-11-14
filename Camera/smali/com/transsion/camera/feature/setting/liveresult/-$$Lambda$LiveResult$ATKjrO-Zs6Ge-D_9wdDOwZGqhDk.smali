.class public final synthetic Lcom/transsion/camera/feature/setting/liveresult/-$$Lambda$LiveResult$ATKjrO-Zs6Ge-D_9wdDOwZGqhDk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/liveresult/-$$Lambda$LiveResult$ATKjrO-Zs6Ge-D_9wdDOwZGqhDk;->f$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    return-void
.end method


# virtual methods
.method public final onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/-$$Lambda$LiveResult$ATKjrO-Zs6Ge-D_9wdDOwZGqhDk;->f$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->lambda$new$0$LiveResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method
