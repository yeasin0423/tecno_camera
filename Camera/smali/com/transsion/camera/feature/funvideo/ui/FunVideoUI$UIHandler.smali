.class Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;
.super Landroid/os/Handler;
.source "FunVideoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$1;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 354
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 377
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$900(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$900(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 360
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$200(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 361
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$200(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$300(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$100(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    .line 366
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$400(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$500(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;I)V

    .line 368
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$800(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$600(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$700(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->startDrawProgress(ID)V

    goto :goto_0

    .line 372
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$300(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$800(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->stopDrawProgress()V

    goto :goto_0

    .line 356
    :pswitch_3
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$100(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
