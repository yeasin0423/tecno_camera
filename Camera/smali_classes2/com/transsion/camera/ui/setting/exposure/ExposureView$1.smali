.class Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;
.super Ljava/lang/Object;
.source "ExposureView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/ExposureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 188
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {p3}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$000(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p3

    if-nez p3, :cond_2

    if-ltz p2, :cond_2

    .line 189
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p3

    if-le p2, p3, :cond_0

    goto/16 :goto_0

    .line 192
    :cond_0
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$100()I

    move-result p3

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$200()I

    move-result v0

    sub-int/2addr p3, v0

    if-nez p3, :cond_1

    return-void

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$200()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/2addr v0, p3

    add-int/2addr p2, v0

    int-to-float p2, p2

    .line 197
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    div-int/2addr v0, p3

    int-to-float p3, v0

    div-float/2addr p2, p3

    .line 198
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {p3}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$300(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)F

    move-result p3

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_2

    .line 199
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onProgressChanged] mLastProgress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$300(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",sMaxEv = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sMinEv = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$200()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",max = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$302(Lcom/transsion/camera/ui/setting/exposure/ExposureView;F)F

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$000(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$300(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)F

    move-result p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;->onExposureViewChanged(F)V

    .line 204
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$500(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    .line 205
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$600(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->isProcessDrawableTranslate()Z

    move-result p1

    if-nez p1, :cond_2

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$700(Lcom/transsion/camera/ui/setting/exposure/ExposureView;Z)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 218
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopTrackingTouch mEvChangeStartNotified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$500(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$500(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$700(Lcom/transsion/camera/ui/setting/exposure/ExposureView;Z)V

    :cond_0
    return-void
.end method
