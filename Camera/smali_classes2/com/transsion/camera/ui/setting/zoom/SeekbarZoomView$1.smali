.class Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$1;
.super Ljava/lang/Object;
.source "SeekbarZoomView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$100(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ZoomViewChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    if-ltz p2, :cond_2

    .line 128
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    if-le p2, p1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$200(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$300(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result v0

    sub-int/2addr p1, v0

    if-nez p1, :cond_1

    return-void

    .line 136
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$100(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ZoomViewChangedListener;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ZoomViewChangedListener;->onZoomViewChanging(IZ)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 143
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[onStartTrackingTouch]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 148
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[onStopTrackingTouch]"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$100(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ZoomViewChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$100(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ZoomViewChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ZoomViewChangedListener;->onZoomViewChangedEnd()V

    :cond_0
    return-void
.end method
