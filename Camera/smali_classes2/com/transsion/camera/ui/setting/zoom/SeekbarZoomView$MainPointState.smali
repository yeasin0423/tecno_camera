.class Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainPointState;
.super Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$PreviewState;
.source "SeekbarZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainPointState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;II)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainPointState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    .line 382
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$PreviewState;-><init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;II)V

    return-void
.end method


# virtual methods
.method currentStateProgress(I)Z
    .locals 0

    .line 398
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->mMin:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method onEnter()V
    .locals 2

    .line 387
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$PreviewState;->onEnter()V

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainPointState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 389
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->wideCameraIconShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainPointState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object p0

    const v0, 0x7f080707

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    goto :goto_0

    .line 392
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainPointState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object p0

    const v0, 0x7f080708

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
