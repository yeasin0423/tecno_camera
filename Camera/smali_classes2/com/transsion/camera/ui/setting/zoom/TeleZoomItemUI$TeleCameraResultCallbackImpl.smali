.class Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI$TeleCameraResultCallbackImpl;
.super Ljava/lang/Object;
.source "TeleZoomItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TeleCameraResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI$TeleCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI$TeleCameraResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 2

    .line 53
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataCallback mHintControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI$TeleCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;->access$100(Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI$TeleCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;->access$200(Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI$TeleCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;->access$600(Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI$TeleCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;->access$500(Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI$TeleCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI$TeleCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;->access$400(Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;)V

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI$TeleCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;->access$302(Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
