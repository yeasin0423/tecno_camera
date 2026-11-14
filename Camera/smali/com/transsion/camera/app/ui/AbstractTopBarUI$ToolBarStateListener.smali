.class Lcom/transsion/camera/app/ui/AbstractTopBarUI$ToolBarStateListener;
.super Ljava/lang/Object;
.source "AbstractTopBarUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/ToolbarScroll$IToolBarStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractTopBarUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolBarStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$ToolBarStateListener;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$ToolBarStateListener;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    return-void
.end method


# virtual methods
.method public onToolbarShrink()V
    .locals 1

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$ToolBarStateListener;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->access$100(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 v0, 0x47

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onToolbarSpreadBack()V
    .locals 1

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$ToolBarStateListener;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->access$100(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 v0, 0x45

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onToolbarSpreadStart()V
    .locals 1

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$ToolBarStateListener;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->access$100(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 v0, 0x46

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onToolbarStartPulling()V
    .locals 1

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$ToolBarStateListener;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->access$100(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 v0, 0x44

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method
