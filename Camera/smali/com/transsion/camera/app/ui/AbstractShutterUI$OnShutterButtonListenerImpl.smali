.class Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;
.super Ljava/lang/Object;
.source "AbstractShutterUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractShutterUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnShutterButtonListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;Lcom/transsion/camera/app/ui/AbstractShutterUI$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    return-void
.end method


# virtual methods
.method public onShutterClick()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterClick(I)V

    :cond_0
    return-void
.end method

.method public onShutterDown()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterDown()V

    :cond_0
    return-void
.end method

.method public onShutterLongClick()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterLongClick(I)V

    :cond_0
    return-void
.end method

.method public onShutterUp()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterUp()V

    :cond_0
    return-void
.end method
