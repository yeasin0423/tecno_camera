.class abstract Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$PreviewState;
.super Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;
.source "SeekbarZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PreviewState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;II)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$PreviewState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    .line 340
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;-><init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;II)V

    return-void
.end method


# virtual methods
.method final currentCalculateState(I)Z
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$PreviewState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$900(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$PreviewState;->currentStateProgress(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method abstract currentStateProgress(I)Z
.end method

.method onEnter()V
    .locals 1

    .line 345
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->onEnter()V

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$PreviewState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$800(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Landroid/view/ViewGroup;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
