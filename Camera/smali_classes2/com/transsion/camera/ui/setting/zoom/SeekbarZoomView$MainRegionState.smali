.class Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainRegionState;
.super Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$PreviewState;
.source "SeekbarZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainRegionState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;II)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    .line 404
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$PreviewState;-><init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;II)V

    return-void
.end method


# virtual methods
.method currentStateProgress(I)Z
    .locals 1

    .line 422
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->mMin:I

    if-le p1, v0, :cond_0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->mMax:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method onEnter()V
    .locals 4

    .line 409
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$PreviewState;->onEnter()V

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08053e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 411
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->wideCameraIconShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object v0

    const v1, 0x7f08070b

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object v0

    const v1, 0x7f08070c

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    .line 416
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1300(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1400(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    return-void
.end method
