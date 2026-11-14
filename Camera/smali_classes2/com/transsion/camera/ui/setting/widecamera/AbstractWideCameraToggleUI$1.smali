.class Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$1;
.super Ljava/lang/Object;
.source "AbstractWideCameraToggleUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->initEntryView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->setEnable(Z)V

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->checkWideCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->access$000(Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->access$000(Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p1

    const-string v0, "off"

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->access$000(Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->access$000(Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 92
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->access$100(Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$1;->this$0:Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->access$000(Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
