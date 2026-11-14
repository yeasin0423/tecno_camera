.class Lcom/transsion/camera/app/common/mode/ImageProcessor$2;
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


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z[B)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$isBGImage:Z

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$jpeg:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 3

    .line 141
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$isBGImage:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$jpeg:[B

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->doOnBGImageSaved(Landroid/net/Uri;[B)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$isBGImage:Z

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->access$002(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z)Z

    .line 146
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->access$100(Lcom/transsion/camera/app/common/mode/ImageProcessor;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    new-instance v0, Lcom/transsion/camera/app/common/mode/NullPictureCallback;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/NullPictureCallback;-><init>()V

    iput-object v0, p1, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p0, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->access$102(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z)Z

    :cond_1
    return-void
.end method
