.class Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$RecordingState;
.super Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;
.source "SeekbarZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;II)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$RecordingState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    .line 359
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;-><init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;II)V

    return-void
.end method


# virtual methods
.method currentCalculateState(I)Z
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$RecordingState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$900(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->mMin:I

    if-lt p1, v0, :cond_0

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
    .locals 4

    .line 364
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->onEnter()V

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$RecordingState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$800(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$RecordingState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1100(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/app/ui/widget/RotateTextView;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$RecordingState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->mMin:I

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1000(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$RecordingState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1200(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/app/ui/widget/RotateTextView;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$RecordingState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->mMin:I

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1000(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$RecordingState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$RecordingState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08053e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$RecordingState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object v0

    const v2, 0x7f080706

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$RecordingState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$RecordingState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    return-void
.end method
