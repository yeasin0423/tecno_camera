.class Lcom/transsion/camera/feature/mode/armode/ARMode$6;
.super Ljava/lang/Object;
.source "ARMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


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

    .line 1561
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$6;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 6

    .line 1565
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$6;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$600(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$6;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$9200(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    .line 1568
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$6;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$9300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    .line 1569
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1572
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$6;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$9400(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1573
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$6;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$9500(Lcom/transsion/camera/feature/mode/armode/ARMode;)V

    :cond_0
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 2

    .line 1579
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$6;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$9600(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "relativeRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
