.class Lcom/transsion/camera/adapter/CameraAgentImpl;
.super Lcom/transsion/camera/adapter/CameraAgent;
.source "CameraAgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/CameraAgentImpl$CameraProxyCreatorImpl;
    }
.end annotation


# instance fields
.field private final mCameraDeviceInfo:Lcom/transsion/camera/adapter/ICameraDeviceInfo;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraAgent;-><init>()V

    .line 10
    new-instance v0, Lcom/transsion/camera/adapter/CameraDeviceInfoImpl;

    invoke-direct {v0}, Lcom/transsion/camera/adapter/CameraDeviceInfoImpl;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgentImpl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    return-void
.end method


# virtual methods
.method public getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgentImpl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    return-object p0
.end method

.method onCreateProxyCreator(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
    .locals 1

    .line 15
    new-instance v0, Lcom/transsion/camera/adapter/CameraAgentImpl$CameraProxyCreatorImpl;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraAgentImpl$CameraProxyCreatorImpl;-><init>(Lcom/transsion/camera/adapter/CameraAgentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public reInitFirstForPermission()V
    .locals 0

    return-void
.end method
