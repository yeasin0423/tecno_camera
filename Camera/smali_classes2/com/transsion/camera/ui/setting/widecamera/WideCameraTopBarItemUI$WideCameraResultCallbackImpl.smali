.class Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$WideCameraResultCallbackImpl;
.super Ljava/lang/Object;
.source "WideCameraTopBarItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WideCameraResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$1;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$WideCameraResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 2

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->access$600(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataCallback mHintControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->access$700(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->access$800(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->access$1200(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->access$1000(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->access$1000(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->access$900(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->access$1000(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 104
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->access$1000(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->access$1100(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->access$1000(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1
    :goto_0
    return-void
.end method
