.class Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;
.super Ljava/lang/Object;
.source "AbstractZoomUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviewStateScaleStart:Z

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomClick(Z)V
    .locals 6

    .line 638
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$100(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$200(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v1, :cond_a

    .line 639
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$400(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSizeChanging:Z

    if-nez v1, :cond_a

    .line 640
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$500(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$600(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 648
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    if-nez v0, :cond_2

    sget v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 649
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$702(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)I

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 651
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$800(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsSat()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    if-nez v0, :cond_4

    const/16 v1, 0xa

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    .line 653
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v2, p1, v1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->calculateZoomPosByClick(ZIZ)I

    move-result v0

    .line 654
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v2, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 655
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$900()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v3, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", nextZoomPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    move v5, v4

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    invoke-static {v0, v1, v2, v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1000(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Ljava/lang/String;II)V

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    if-eqz p1, :cond_6

    move v3, v4

    :cond_6
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1100(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 662
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    .line 664
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomUIType:I

    if-nez v1, :cond_8

    .line 665
    iget p0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getZoomRatio(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->showHint(Ljava/lang/String;)V

    goto :goto_3

    .line 667
    :cond_8
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isBoundaryPointToWideCam(Z)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 671
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x17

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 673
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomValueToUI()V

    .line 674
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 675
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 676
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 678
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x18

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_a
    :goto_3
    return-void
.end method

.method public onZoomScaleEnd(Z)V
    .locals 3

    .line 760
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->mPreviewStateScaleStart:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 763
    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1402(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Z)Z

    .line 764
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1302(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)I

    .line 766
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomUIType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 767
    invoke-virtual {p1, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setSeekBarEnable(Z)V

    .line 768
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 769
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x18

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onZoomScaleStart(Z)V
    .locals 6

    .line 684
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$100(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->mPreviewStateScaleStart:Z

    if-eqz v0, :cond_5

    .line 685
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$600(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$200(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v1, :cond_5

    .line 686
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$400(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1200(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 687
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$500(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    sget v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_0

    .line 695
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 697
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$702(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)I

    .line 698
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1302(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)I

    .line 700
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    :goto_1
    invoke-static {v0, v2, v3, v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1100(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 701
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p0, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1402(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Z)Z

    return-void

    .line 705
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomUIType:I

    if-ne v2, v4, :cond_5

    .line 706
    iput-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomUIHidedWhileScaling:Z

    .line 708
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isBoundaryPointToWideCam(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 712
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x17

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 713
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setSeekBarEnable(Z)V

    .line 714
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomValueToUI()V

    .line 715
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 716
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    :cond_5
    :goto_2
    return-void
.end method

.method public onZoomScaling(Z)V
    .locals 6

    .line 723
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->mPreviewStateScaleStart:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$200(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v1, :cond_7

    .line 724
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomUIHidedWhileScaling:Z

    if-nez v1, :cond_7

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$400(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1200(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 725
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$500(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    invoke-static {v0, v1, v2, v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1000(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Ljava/lang/String;II)V

    .line 729
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    if-eqz p1, :cond_2

    move v3, v4

    :cond_2
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1100(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 730
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p0, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1402(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Z)Z

    return-void

    .line 734
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$600(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1400(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 737
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1308(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->calculateZoomPosByLongPress(ZI)I

    move-result v0

    .line 738
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v2, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 739
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$900()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCurrentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v2, v2, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mStepCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1300(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    .line 742
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomUIType:I

    if-nez v1, :cond_5

    .line 743
    iget p0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getZoomRatio(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->showHint(Ljava/lang/String;)V

    goto :goto_1

    .line 745
    :cond_5
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isBoundaryPointToWideCam(Z)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 749
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setSeekBarEnable(Z)V

    .line 750
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x17

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 751
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomValueToUI()V

    .line 752
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 753
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    :cond_7
    :goto_1
    return-void
.end method
