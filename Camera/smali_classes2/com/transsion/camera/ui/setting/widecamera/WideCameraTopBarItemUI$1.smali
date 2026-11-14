.class Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$1;
.super Ljava/lang/Object;
.source "WideCameraTopBarItemUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->access$100(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->access$200(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->access$300(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)V

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->access$400(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;->access$500(Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraTopBarItemUI$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
