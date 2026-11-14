.class Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;
.super Ljava/lang/Object;
.source "AbstractMultiFaceBeautyUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySettingChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$1;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 222
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 225
    invoke-static {}, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getKey():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;

    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_gender_attribute_value"

    .line 226
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mGenderValue:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;

    iput-object p2, v0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mGenderValue:Ljava/lang/String;

    .line 229
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;

    iget-object v1, v1, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mGenderValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setGenderValue(Ljava/lang/String;)V

    :cond_0
    const-string v0, "key_slim_body_contrast"

    .line 232
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "contrast_on"

    .line 233
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;

    iget-object v2, v1, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->access$402(Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;

    iget-object v1, v1, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "contrast_off"

    .line 236
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->access$400(Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 241
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$UIHandler;

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    const-string v0, "key_video_facebeauty"

    .line 246
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$UIHandler;

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    const-string v0, "key_slimbody_state"

    .line 251
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 252
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string p1, "key_slimbody_state_on"

    .line 253
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->hideLevel2Only(Z)V

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->hideContractView()V

    :cond_5
    return-void
.end method
