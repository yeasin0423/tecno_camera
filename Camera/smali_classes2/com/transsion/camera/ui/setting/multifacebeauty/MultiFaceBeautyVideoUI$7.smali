.class Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$7;
.super Ljava/lang/Object;
.source "MultiFaceBeautyVideoUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private originValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$7;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 393
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$7;->originValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 397
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$7;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$7;->originValue:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 413
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$7;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$1100(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0

    .line 399
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$7;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_3

    .line 400
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$7;->originValue:Ljava/lang/String;

    .line 401
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$7;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "off"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 403
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$7;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$1100(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$7;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p1, :cond_4

    const/16 v0, 0x2a

    .line 404
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 406
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$7;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$1100(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :goto_0
    return p2
.end method
