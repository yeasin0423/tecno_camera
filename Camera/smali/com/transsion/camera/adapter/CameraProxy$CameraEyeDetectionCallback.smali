.class public interface abstract Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;
.super Ljava/lang/Object;
.source "CameraProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraEyeDetectionCallback"
.end annotation


# virtual methods
.method public abstract onEyeDetectionCallback([I)V
.end method

.method public abstract onFaceDetectionCallback([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
.end method
