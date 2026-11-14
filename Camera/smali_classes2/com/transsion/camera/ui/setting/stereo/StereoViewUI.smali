.class public Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "StereoViewUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$StereoWarningCallbackImpl;,
        Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$UIHandler;
    }
.end annotation


# static fields
.field private static final MSG_SHOW_GUIDE:I = 0x64

.field private static final SETTING_KEY:Ljava/lang/String; = "key_stereo"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mResources:Landroid/content/res/Resources;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$UIHandler;

.field private mWarningType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "StereoViewUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 29
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 34
    iput v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mWarningType:I

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mResources:Landroid/content/res/Resources;

    .line 62
    new-instance p1, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$UIHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mUIHandler:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$UIHandler;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 24
    sget-object v0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->showGuideView(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mWarningType:I

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mWarningType:I

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$UIHandler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mUIHandler:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$UIHandler;

    return-object p0
.end method

.method private showGuideView(I)V
    .locals 5

    .line 66
    sget-object v0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showGuideView,type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBlackWhitePortraitCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "key_tele_camera"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 70
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v4, "key_dual_cam_bw"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    .line 86
    sget-object p1, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "Warning message don\'t need to show"

    invoke-static {p1, v4}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const v3, 0x7f0f00b2

    goto :goto_2

    :cond_1
    const v3, 0x7f0f00b1

    goto :goto_2

    :cond_2
    if-nez v0, :cond_4

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const p1, 0x7f0f00b0

    goto :goto_1

    :cond_4
    :goto_0
    const p1, 0x7f0f006d

    :goto_1
    move v3, p1

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p1, :cond_9

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_9

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_4

    :cond_6
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    if-eqz v2, :cond_7

    goto :goto_3

    .line 101
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_9

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_4

    .line 97
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_9

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_stereo"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 176
    iput p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mWarningType:I

    .line 177
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->showGuideView(I)V

    :goto_0
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 1

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 138
    sget-object p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_0
    new-instance p1, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$StereoWarningCallbackImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$StereoWarningCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$1;)V

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mUIHandler:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_1

    .line 167
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 169
    :cond_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
