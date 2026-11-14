.class Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;
.super Ljava/lang/Object;
.source "GLSurfaceViewController.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceTextureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$1;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 186
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_0

    .line 187
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 188
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 189
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p0

    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, p0, v0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceAvailable(Ljava/lang/Object;IIZ)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDestroyed(Ljava/lang/Object;Z)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureDrawn()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDrawn()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 198
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_0

    .line 199
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 200
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 201
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p0

    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, p0, v0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Ljava/lang/Object;IIZ)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
