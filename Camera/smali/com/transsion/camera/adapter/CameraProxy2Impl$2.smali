.class Lcom/transsion/camera/adapter/CameraProxy2Impl$2;
.super Ljava/lang/Object;
.source "CameraProxy2Impl.java"

# interfaces
.implements Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;->startRecordingRequest(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 0

    .line 1383
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->val$callback:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayDone()V
    .locals 2

    .line 1386
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "startRecordingRequest, onPlayDone"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1387
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->val$callback:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;->onStart()V

    return-void
.end method
