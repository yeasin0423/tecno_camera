.class Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;
.super Ljava/lang/Object;
.source "WideCameraUIManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WideCameraListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$1;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "wide_macro_exchange"

    .line 265
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onExchangeWideAndMacro()V

    goto :goto_0

    :cond_0
    const-string v0, "tele_exchange"

    .line 267
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onSwitchOpticalZoomCamera()V

    goto :goto_0

    .line 270
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onSwitchWideCamera(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
