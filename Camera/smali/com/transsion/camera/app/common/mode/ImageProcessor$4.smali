.class Lcom/transsion/camera/app/common/mode/ImageProcessor$4;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BIIIZ)V
    .locals 7

    .line 192
    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object p5, p5, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[CapturePerformance] mPostViewCallback notifyPictureTaken"

    invoke-static {p5, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget v6, v1, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mCaptureOrientation:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onPostViewData([BIIII)V

    return-void
.end method

.method public onPictureTakenFail()V
    .locals 0

    return-void
.end method
