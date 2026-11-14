.class Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;
.super Ljava/lang/Object;
.source "GLSurfaceViewController.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySurfaceTextureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$1;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 151
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$200(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_0

    .line 152
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$200(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 153
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 154
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$200(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p0

    const/4 v0, 0x1

    invoke-interface {p2, p1, p3, p0, v0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceAvailable(Ljava/lang/Object;IIZ)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDestroyed(Ljava/lang/Object;Z)V

    :cond_0
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 161
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$200(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_0

    .line 162
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$200(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 163
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 164
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p0

    const/4 v0, 0x1

    invoke-interface {p2, p1, p3, p0, v0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Ljava/lang/Object;IIZ)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
