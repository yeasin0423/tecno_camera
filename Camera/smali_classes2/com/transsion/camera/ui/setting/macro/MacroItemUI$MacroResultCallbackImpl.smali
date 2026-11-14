.class Lcom/transsion/camera/ui/setting/macro/MacroItemUI$MacroResultCallbackImpl;
.super Ljava/lang/Object;
.source "MacroItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/macro/MacroItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MacroResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/macro/MacroItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/macro/MacroItemUI;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/macro/MacroItemUI$MacroResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/macro/MacroItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/macro/MacroItemUI;Lcom/transsion/camera/ui/setting/macro/MacroItemUI$1;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/macro/MacroItemUI$MacroResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/macro/MacroItemUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/macro/MacroItemUI$MacroResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/macro/MacroItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/macro/MacroItemUI;->access$600(Lcom/transsion/camera/ui/setting/macro/MacroItemUI;)Lcom/transsion/camera/ui/setting/macro/MacroItemUI$UIHandler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/macro/MacroItemUI$MacroResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/macro/MacroItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/macro/MacroItemUI;->access$600(Lcom/transsion/camera/ui/setting/macro/MacroItemUI;)Lcom/transsion/camera/ui/setting/macro/MacroItemUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v1, p2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
