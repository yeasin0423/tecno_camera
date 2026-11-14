.class Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;
.super Landroid/os/Handler;
.source "CameraAppUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mAppUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/ui/CameraAppUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 1

    .line 1896
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1897
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;->mAppUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1902
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;->mAppUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/CameraAppUI;

    if-nez p0, :cond_0

    .line 1904
    invoke-static {}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage cameraAppUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1907
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIHandler handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1908
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1921
    :pswitch_1
    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$2500(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    goto :goto_0

    .line 1949
    :pswitch_2
    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$3400(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    goto :goto_0

    .line 1946
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$3300(Lcom/transsion/camera/app/ui/CameraAppUI;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1943
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$3200(Lcom/transsion/camera/app/ui/CameraAppUI;IZ)V

    goto :goto_0

    .line 1928
    :pswitch_5
    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$2800(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    goto :goto_0

    .line 1931
    :pswitch_6
    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$2900(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    goto :goto_0

    .line 1940
    :pswitch_7
    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$3100(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    goto :goto_0

    .line 1937
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$300(Lcom/transsion/camera/app/ui/CameraAppUI;I)V

    goto :goto_0

    .line 1934
    :pswitch_9
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$3000(Lcom/transsion/camera/app/ui/CameraAppUI;I)V

    goto :goto_0

    .line 1924
    :pswitch_a
    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$2400(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    const/4 p1, 0x0

    .line 1925
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$2700(Lcom/transsion/camera/app/ui/CameraAppUI;Z)V

    goto :goto_0

    .line 1918
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$2600(Lcom/transsion/camera/app/ui/CameraAppUI;IILjava/lang/String;)V

    goto :goto_0

    .line 1910
    :pswitch_c
    invoke-static {}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[PreviewPerformance] setup_ui_managers start."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1911
    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$2300(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    .line 1912
    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$2400(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    .line 1913
    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$2500(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    .line 1914
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->doUpdateCurrentModeUI()V

    .line 1915
    invoke-static {}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[PreviewPerformance] setup_ui_managers end."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
