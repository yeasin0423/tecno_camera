.class abstract Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;
.super Ljava/lang/Object;
.source "SeekbarZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ProgressCalculateState"
.end annotation


# instance fields
.field final mMax:I

.field final mMin:I

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;II)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->mMin:I

    .line 303
    iput p3, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->mMax:I

    return-void
.end method


# virtual methods
.method abstract currentCalculateState(I)Z
.end method

.method final enter()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$600(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$602(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    .line 312
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProgressCalculateState enter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->onEnter()V

    :cond_1
    return-void
.end method

.method final getProgress(F)I
    .locals 1

    .line 318
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->mMin:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->mMax:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method onEnter()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->mMin:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMin(I)V

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    return-void
.end method

.method wideCameraIconShow()Z
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$700(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 327
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$700(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
