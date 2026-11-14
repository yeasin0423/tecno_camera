.class Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabSelectedListenerImpl;
.super Ljava/lang/Object;
.source "AbstractModePickerUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTabSelectedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Lcom/transsion/camera/app/ui/AbstractModePickerUI$1;)V
    .locals 0

    .line 490
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabSelectedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    return-void
.end method


# virtual methods
.method public onTabSelected(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$1700(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1800(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;I)V

    .line 494
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$1900(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$1900(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;->isEditorFragmentShow()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 497
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$2000(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 500
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$2100(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    return-void
.end method
