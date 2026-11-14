.class Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;
.super Ljava/lang/Object;
.source "SdofPhotoMode.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;II)V
    .locals 4

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$500(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$600(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$900(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$700(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$1100(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$1000(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$802(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;I)I

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$800(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)I

    move-result v0

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$800(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$800(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)I

    move-result v1

    rsub-int v1, v1, 0x168

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$802(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;I)I

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$500(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$800(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)I

    move-result p0

    invoke-interface {v0, p1, p2, p3, p0}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->detect(Landroid/media/Image;III)Z

    :cond_2
    return-void
.end method
