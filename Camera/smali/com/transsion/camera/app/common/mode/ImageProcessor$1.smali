.class Lcom/transsion/camera/app/common/mode/ImageProcessor$1;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

.field final synthetic val$isBGImage:Z

.field final synthetic val$jpeg:[B

.field final synthetic val$processMediaItem:Lcom/transsion/camera/app/common/provider/ProcessMediaItem;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z[BLcom/transsion/camera/app/common/provider/ProcessMediaItem;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$isBGImage:Z

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$jpeg:[B

    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$processMediaItem:Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 3

    .line 129
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$isBGImage:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$jpeg:[B

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->doOnBGImageSaved(Landroid/net/Uri;[B)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$isBGImage:Z

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    .line 133
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$processMediaItem:Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doProcessedMedia(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)V

    return-void
.end method
