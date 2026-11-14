.class Lcom/transsion/camera/feature/mode/armode/ARMode$2;
.super Ljava/lang/Object;
.source "ARMode.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/armode/ARMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/armode/ARMode;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$2;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;II)V
    .locals 6

    .line 481
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$2;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-boolean p3, p2, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsModeInit:Z

    if-nez p3, :cond_0

    .line 482
    invoke-static {}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "PreviewCallBack mYUVCallback mIsModeInit is false, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_0
    iget-boolean p2, p2, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsInited:Z

    if-eqz p2, :cond_1

    .line 486
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p2

    const/4 p3, 0x0

    aget-object p2, p2, p3

    .line 487
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 488
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 490
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 491
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 492
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 494
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v3, 0x2

    aget-object p1, p1, v3

    .line 495
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 496
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int v4, v0, v2

    add-int v5, v4, v3

    .line 498
    new-array v5, v5, [B

    .line 499
    invoke-virtual {p2, v5, p3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 500
    invoke-virtual {v1, v5, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 501
    invoke-virtual {p1, v5, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 502
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$2;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p0, v5}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$402(Lcom/transsion/camera/feature/mode/armode/ARMode;[B)[B

    :cond_1
    :goto_0
    return-void
.end method
