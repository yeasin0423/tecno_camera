.class Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;
.super Ljava/lang/Object;
.source "ModePanelUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModePanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePanelUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ModePanelUI;Lcom/transsion/camera/app/ui/ModePanelUI$1;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V

    return-void
.end method


# virtual methods
.method public onSwitchMode(Ljava/lang/String;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$100(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$100(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
