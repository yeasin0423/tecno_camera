.class final Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;
.super Ljava/lang/Object;
.source "CameraProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CaptureCallbackGroup"
.end annotation


# instance fields
.field final mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field mNeedCaptureSound:Z

.field final mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy;Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 251
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mNeedCaptureSound:Z

    .line 259
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    .line 262
    iput-object p5, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy;Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Z)V
    .locals 0

    .line 268
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;-><init>(Lcom/transsion/camera/adapter/CameraProxy;Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    .line 269
    iput-boolean p6, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mNeedCaptureSound:Z

    return-void
.end method
