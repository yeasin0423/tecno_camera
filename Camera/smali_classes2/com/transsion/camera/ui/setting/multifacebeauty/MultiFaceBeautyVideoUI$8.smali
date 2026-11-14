.class Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;
.super Ljava/lang/Object;
.source "MultiFaceBeautyVideoUI.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 422
    iput p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->position:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 426
    iput p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->position:I

    .line 427
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$1200(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mResources:Landroid/content/res/Resources;

    const p3, 0x7f07021c

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 429
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {p3}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$1200(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Landroid/widget/TextView;

    move-result-object p3

    add-int/lit8 p2, p2, -0x32

    int-to-float p2, p2

    mul-float/2addr p2, p1

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 430
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$1300(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$1100(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->position:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$1300(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_0

    const/16 p1, 0x29

    .line 437
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 443
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$1300(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$1100(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$1300(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 444
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "custom"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 445
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_0

    const/16 p1, 0x2a

    .line 446
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    return-void
.end method
