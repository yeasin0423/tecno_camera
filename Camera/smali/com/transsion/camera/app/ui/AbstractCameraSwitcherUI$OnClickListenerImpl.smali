.class Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;
.super Ljava/lang/Object;
.source "AbstractCameraSwitcherUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->access$100(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->access$100(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;->onCameraSwitch(Z)V

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->startAnimation()V

    return-void
.end method
