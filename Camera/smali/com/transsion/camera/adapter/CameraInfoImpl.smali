.class Lcom/transsion/camera/adapter/CameraInfoImpl;
.super Ljava/lang/Object;
.source "CameraInfoImpl.java"

# interfaces
.implements Lcom/transsion/camera/adapter/ICameraInfo;


# instance fields
.field private mCameraInfo:Landroid/hardware/Camera$CameraInfo;


# direct methods
.method constructor <init>(Landroid/hardware/Camera$CameraInfo;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraInfoImpl;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    return-void
.end method


# virtual methods
.method public getFacing()I
    .locals 1

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraInfoImpl;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getSensorOrientation()I
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraInfoImpl;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return p0
.end method
