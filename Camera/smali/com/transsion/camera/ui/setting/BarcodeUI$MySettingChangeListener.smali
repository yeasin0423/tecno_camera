.class Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;
.super Ljava/lang/Object;
.source "BarcodeUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/BarcodeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySettingChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/BarcodeUI;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/BarcodeUI;Lcom/transsion/camera/ui/setting/BarcodeUI$1;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/ui/setting/BarcodeUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 231
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$400(Lcom/transsion/camera/ui/setting/BarcodeUI;)V

    .line 235
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$200(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$200(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x66

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$200(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$502(Lcom/transsion/camera/ui/setting/BarcodeUI;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
