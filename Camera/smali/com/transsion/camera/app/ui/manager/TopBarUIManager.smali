.class public Lcom/transsion/camera/app/ui/manager/TopBarUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractViewManager;
.source "TopBarUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$DualCamBWCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$BlurCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$TeleCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$WideCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;
    }
.end annotation


# instance fields
.field private mFragmentListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

.field private mIsVideoRecording:Z

.field private mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

.field private mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field private mSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

.field private mSwitchDualCamBWCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

.field private mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

.field private mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

.field private mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p4

    move-object v6, p5

    .line 51
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    const/4 p4, 0x0

    .line 44
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    .line 52
    new-instance p4, Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-direct {p4, p1, p2, p3}, Lcom/transsion/camera/app/ui/TopBarUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;Lcom/transsion/camera/app/ui/ScrollConsumer;)V

    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-virtual {p4, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mFragmentListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->onItemSelected()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchDualCamBWCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

    return-object p0
.end method

.method private findTopBarKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 299
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v0, :cond_1

    .line 304
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, p3, :cond_1

    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method

.method private initTopBarItemUI(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_settings_entry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 330
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    :cond_1
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wide_camera"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$WideCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    :cond_2
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_super_definition"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$WideCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    :cond_3
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_tele_camera"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$TeleCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$TeleCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    :cond_4
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_bw_portrait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$BlurCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$BlurCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    :cond_5
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_dual_cam_bw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 350
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$DualCamBWCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$DualCamBWCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_7

    .line 354
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 357
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_8

    .line 358
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 361
    :cond_8
    new-instance v0, Lcom/transsion/camera/app/ui/manager/-$$Lambda$TopBarUIManager$QMHIemAll91ptk31caQfM9GheAo;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/-$$Lambda$TopBarUIManager$QMHIemAll91ptk31caQfM9GheAo;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V

    return-void
.end method

.method public static synthetic lambda$QMHIemAll91ptk31caQfM9GheAo(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->onItemSelected()V

    return-void
.end method

.method private onItemSelected()V
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    if-eqz p0, :cond_0

    .line 320
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;->onItemSelected()V

    :cond_0
    return-void
.end method

.method private updateTopBarSettingUIs(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 275
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v1, :cond_0

    .line 277
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->findTopBarKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 284
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 285
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v0, :cond_3

    .line 286
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->findTopBarKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 287
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->initTopBarItemUI(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    .line 289
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 290
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 291
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    const/4 v1, 0x0

    .line 292
    iget v2, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mBatteryStatus:I

    iget v3, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mTemperatureStatus:I

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    move-result p0

    return p0
.end method

.method public dismissPopupWithoutAnimation()Z
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopupWithoutAnimation()Z

    move-result p0

    return p0
.end method

.method public getToolbarHeight()I
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getHeight()I

    move-result p0

    return p0
.end method

.method public hide()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mIsShown:Z

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateRegisterScrollState(Z)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 5

    const/16 v0, 0x2d

    const/16 v1, 0x17

    const/16 v2, 0xf

    if-eq p1, v2, :cond_3

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-eq p1, v3, :cond_2

    if-eq p1, v1, :cond_1

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_0

    const/16 v3, 0x4d

    if-eq p1, v3, :cond_1

    if-eq p1, v0, :cond_3

    const/16 v3, 0x2e

    if-eq p1, v3, :cond_2

    goto :goto_0

    .line 255
    :cond_0
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    goto :goto_0

    .line 252
    :cond_1
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->shrinkTopBar()V

    goto :goto_0

    .line 248
    :cond_2
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    .line 244
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    .line 259
    :goto_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    const/16 v3, 0xb

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_4

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/16 v0, 0x15

    if-ne p1, v0, :cond_5

    .line 270
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopup()Z

    :cond_5
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 120
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .locals 1

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onBatteryStatusChanged(ZII)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 110
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/TopBarUI;->onOrientationChanged(I)V

    return-void
.end method

.method protected onSetupViews()V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/TopBarUI;->setupViews()V

    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    .line 231
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->setEnable(Z)V

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 234
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    return-void
.end method

.method public setSettingFragmentListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mFragmentListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateTopBarSettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setSettingUIList(Ljava/util/List;)V

    return-void
.end method

.method public setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

    return-void
.end method

.method public setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchDualCamBWCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

    return-void
.end method

.method public setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

    return-void
.end method

.method public setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mIsShown:Z

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateRegisterScrollState(Z)V

    goto :goto_1

    .line 79
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    :goto_1
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->unInit()V

    .line 73
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->unInitTopBarSettingUIs()V

    return-void
.end method

.method public unInitTopBarSettingUIs()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 149
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public updateSettingUIs()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateSettingUIs(Ljava/util/List;)V

    return-void
.end method
