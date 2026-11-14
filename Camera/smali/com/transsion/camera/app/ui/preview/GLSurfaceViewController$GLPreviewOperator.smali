.class Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;
.super Lcom/transsion/camera/app/common/preview/PreviewOperator;
.source "GLSurfaceViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLPreviewOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewOperator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)V

    return-void
.end method


# virtual methods
.method public getBitmap(III)Landroid/graphics/Bitmap;
    .locals 2

    .line 51
    div-int/lit8 v0, p1, 0x10

    .line 52
    div-int/lit8 v1, p2, 0x10

    if-lez p3, :cond_0

    .line 54
    div-int v0, p1, p3

    .line 55
    div-int v1, p2, p3

    .line 57
    :cond_0
    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$000(I)I

    move-result p1

    .line 58
    invoke-static {v1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$000(I)I

    move-result p2

    .line 59
    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public loadGLResource(ZI)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->loadGLResource(ZI)V

    :cond_0
    return-void
.end method

.method public loadGLResources(Z[I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->loadGLResources(Z[I)V

    :cond_0
    return-void
.end method

.method public modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    :cond_0
    return-void
.end method

.method public modePause()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modePause()V

    :cond_0
    return-void
.end method

.method public modeReload()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeReload()V

    :cond_0
    return-void
.end method

.method public modeResume()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeResume()V

    :cond_0
    return-void
.end method

.method public modeUninit()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeUninit()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onResume()V

    :cond_0
    return-void
.end method

.method public startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public stopRenderRequest()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->stopRenderRequest()V

    :cond_0
    return-void
.end method
