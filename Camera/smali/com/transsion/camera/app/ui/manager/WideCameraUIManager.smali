.class public Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractViewManager;
.source "WideCameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

.field private mFrontSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

.field private mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field private mSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

.field private mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Landroid/content/Context;I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 42
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    if-eqz p5, :cond_0

    .line 44
    new-instance p1, Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/FullZoomUI;-><init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Lcom/transsion/camera/app/ui/WideCameraUI;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/WideCameraUI;-><init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    .line 48
    :goto_0
    new-instance p1, Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;-><init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    .line 49
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-object p0
.end method

.method private initSettingUIList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;)V"
        }
    .end annotation

    .line 220
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 221
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_macro"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wide_camera"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "front_wide_camera"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_camera_zoom"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "front_crop_fov"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    :cond_1
    new-instance v1, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$1;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_3

    .line 229
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 232
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v1, :cond_4

    .line 233
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 236
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v1, :cond_0

    .line 237
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 238
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 239
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 240
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private unInitSettingUIs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 211
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 212
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 213
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    .line 215
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .line 76
    sget-object v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide mWideCameraUI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 78
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->hide()V

    :cond_0
    return-void
.end method

.method public hideWideCamera()V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 118
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->hideWideCamera()V

    :cond_0
    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 0

    .line 178
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 180
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->notifyCameraOperateActionToUI(I)V

    :cond_0
    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->hideWideCamera()V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->hideWideCamera()V

    return-object p1
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 164
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method protected onSetupViews()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    .line 149
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->pause()V

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 151
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->pause()V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 170
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->setEnable(Z)V

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 172
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public setFrontSettingUIList(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setFrontSettingUIList] settingUIList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->unInitSettingUIs(Ljava/util/List;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->initSettingUIList(Ljava/util/List;)V

    .line 249
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontSettingUIList:Ljava/util/List;

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setOffsetPadding(I)V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 256
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setOffsetPadding(I)V

    :cond_0
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 1

    .line 193
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_1

    .line 198
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_1
    return-void
.end method

.method public setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->unInitSettingUIs(Ljava/util/List;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->initSettingUIList(Ljava/util/List;)V

    .line 205
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSettingUIList:Ljava/util/List;

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-void
.end method

.method public show()V
    .locals 3

    .line 68
    sget-object v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show mWideCameraUI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 70
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->show(Z)V

    :cond_0
    return-void
.end method

.method public showWideCamera()V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 112
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->showWideCamera()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->unInitSettingUIs(Ljava/util/List;)V

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->unInit()V

    return-void
.end method

.method public updateWideCameraAlpha(FZ)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 143
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->updateWideCameraAlpha(FZ)V

    :cond_0
    return-void
.end method

.method public updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWideCameraUI preCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nextCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 91
    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->updateWideCameraAlpha(FZ)V

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->hideWideCamera()V

    .line 95
    :cond_2
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 96
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    goto :goto_0

    .line 98
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    :goto_0
    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hideWideCamera()V

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 106
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
