.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;
.super Ljava/lang/Object;
.source "AbstractPreviewUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceStatusListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI$1;)V
    .locals 0

    .line 756
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    return-void
.end method


# virtual methods
.method public auxSurfaceShow(Z)V
    .locals 0

    return-void
.end method

.method public surfaceAvailable(Ljava/lang/Object;IIZ)V
    .locals 1

    if-eqz p4, :cond_0

    .line 760
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 763
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceAvailable(Ljava/lang/Object;IIZ)V

    :cond_1
    return-void
.end method

.method public surfaceChanged(Ljava/lang/Object;IIZ)V
    .locals 1

    if-eqz p4, :cond_0

    .line 770
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 773
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Ljava/lang/Object;IIZ)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Ljava/lang/Object;Z)V
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 780
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDestroyed(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public surfaceDrawn()V
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 792
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDrawn()V

    :cond_0
    return-void
.end method
