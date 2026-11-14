.class Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;
.super Ljava/lang/Object;
.source "SeekbarZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TeleProgressCalculator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$1;)V
    .locals 0

    .line 472
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;-><init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)V

    return-void
.end method

.method private pointInMainPoint(F)Z
    .locals 0

    .line 522
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1300(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private pointInMainRegion(F)Z
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1300(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private pointInTelePoint(F)Z
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1600(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private pointInTeleRegion(F)Z
    .locals 0

    .line 510
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1600(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public calculateProgress(IIFI)I
    .locals 0

    int-to-float p1, p4

    .line 491
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p3, 0x0

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    sub-float/2addr p1, p2

    .line 493
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->pointInMainPoint(F)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 494
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1700(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->enter()V

    goto :goto_0

    .line 495
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->pointInMainRegion(F)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 496
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1300(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p3}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1300(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    div-float p3, p1, p2

    .line 497
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1800(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->enter()V

    goto :goto_0

    .line 498
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->pointInTelePoint(F)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 499
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1900(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->enter()V

    goto :goto_0

    .line 500
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->pointInTeleRegion(F)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 501
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1600(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1600(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I

    move-result p2

    sub-int/2addr p4, p2

    int-to-float p2, p4

    div-float p3, p1, p2

    .line 502
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$2000(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->enter()V

    .line 506
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$600(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->getProgress(F)I

    move-result p0

    return p0

    .line 504
    :cond_3
    new-instance p0, Ljava/security/InvalidParameterException;

    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    throw p0
.end method

.method public updateProgressCalculateState(I)V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1700(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->currentCalculateState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1700(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->enter()V

    goto :goto_0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1800(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->currentCalculateState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1800(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->enter()V

    goto :goto_0

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1900(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->currentCalculateState(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$1900(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->enter()V

    goto :goto_0

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$2000(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->currentCalculateState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$2000(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->enter()V

    goto :goto_0

    .line 483
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$2100(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->currentCalculateState(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 484
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->this$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$2100(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;->enter()V

    goto :goto_0

    .line 486
    :cond_4
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "updateProgressCalculateState InvalidParameter"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
