.class Lcom/transsion/camera/app/ui/setting/PopupOption$5;
.super Ljava/lang/Object;
.source "PopupOption.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/setting/PopupOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$200(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    .line 323
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$300(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$1000(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    move-result-object p0

    const/16 p1, 0x64

    const-wide/16 v0, 0x3c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$200(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 329
    invoke-virtual {p0, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 332
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$300(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopup()V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
