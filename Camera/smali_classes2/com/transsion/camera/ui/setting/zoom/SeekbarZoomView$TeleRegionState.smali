.class Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleRegionState;
.super Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$PreviewState;
.source "SeekbarZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TeleRegionState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;II)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    .line 450
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$PreviewState;-><init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;II)V

    return-void
.end method


# virtual methods
.method currentStateProgress(I)Z
    .locals 1

    .line 468
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->mMin:I

    if-le p1, v0, :cond_0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->mMax:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method onEnter()V
    .locals 3

    .line 455
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$PreviewState;->onEnter()V

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08053e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 457
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->wideCameraIconShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object v0

    const v1, 0x7f08070b

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object v0

    const v1, 0x7f08070c

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    .line 462
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1600(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 463
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleRegionState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    return-void
.end method
