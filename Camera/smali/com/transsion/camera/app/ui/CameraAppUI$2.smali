.class Lcom/transsion/camera/app/ui/CameraAppUI$2;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/CameraAppUI;->init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scrollStarted(I)V
    .locals 3

    .line 899
    invoke-static {}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollStarted, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$802(Lcom/transsion/camera/app/ui/CameraAppUI;I)I

    .line 901
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$900(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/manager/HintUIManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 902
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$900(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/manager/HintUIManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->hide()V

    .line 904
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$1000(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 905
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$1000(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    .line 907
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$1100(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->restoreInteractiveView()V

    .line 908
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$1100(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 909
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$1200(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 910
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$1200(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;->hideModeUI()V

    .line 912
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    const/16 p1, 0x34

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public scrollStopped(I)V
    .locals 3

    .line 916
    invoke-static {}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollStopped, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cur index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$800(Lcom/transsion/camera/app/ui/CameraAppUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->notifyRawActionToAppUI(I)V

    .line 918
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$800(Lcom/transsion/camera/app/ui/CameraAppUI;)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 919
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$900(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/manager/HintUIManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 920
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$900(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/manager/HintUIManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->show()V

    .line 922
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$1000(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 923
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$1000(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->show()V

    .line 925
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$1100(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->show()V

    .line 926
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$1200(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 927
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$2;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$1200(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;->showModeUI()V

    :cond_2
    return-void
.end method
