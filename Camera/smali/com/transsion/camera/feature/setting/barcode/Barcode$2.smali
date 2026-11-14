.class Lcom/transsion/camera/feature/setting/barcode/Barcode$2;
.super Ljava/lang/Object;
.source "Barcode.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;II)V
    .locals 6

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$600(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$700(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$800(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$900(Lcom/transsion/camera/feature/setting/barcode/Barcode;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1000(Lcom/transsion/camera/feature/setting/barcode/Barcode;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    .line 213
    rem-int/lit8 v0, p2, 0x40

    if-nez v0, :cond_2

    .line 214
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 216
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 217
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 219
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ImageUtils;->getBytesFromImageAsType(Landroid/media/Image;I)[B

    move-result-object v0

    .line 221
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1002(Lcom/transsion/camera/feature/setting/barcode/Barcode;J)J

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_1
    return-void
.end method
