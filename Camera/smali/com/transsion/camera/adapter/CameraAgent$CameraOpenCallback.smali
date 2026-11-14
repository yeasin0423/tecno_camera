.class public interface abstract Lcom/transsion/camera/adapter/CameraAgent$CameraOpenCallback;
.super Ljava/lang/Object;
.source "CameraAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraOpenCallback"
.end annotation


# virtual methods
.method public abstract onCameraClosed()V
.end method

.method public abstract onCameraDisconnected()V
.end method

.method public abstract onCameraError(I)V
.end method

.method public abstract onCameraOpened(Lcom/transsion/camera/adapter/CameraProxy;)V
.end method
