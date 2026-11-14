.class public Lcom/transsion/camera/app/ui/manager/OverlayUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractViewManager;
.source "OverlayUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mApertureUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl;

.field private mCommonSettingUIs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mModeSettingUIs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayRootLayout:Landroid/view/ViewGroup;

.field private mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

.field private mTopOffset:I

.field private mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V
    .locals 0

    .line 65
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 55
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    .line 66
    iput-object p7, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    .line 67
    iput-object p8, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mApertureUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl;

    .line 68
    iput-object p9, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-object p0
.end method

.method private findCommonSettingKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 422
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_1

    .line 427
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

.method private initCommonSettingUI(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    .line 442
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_2

    .line 446
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 449
    :cond_2
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mBatteryStatus:I

    iget v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mTemperatureStatus:I

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setBatteryStatus(II)V

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_3

    .line 452
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 455
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    if-eqz v0, :cond_4

    .line 456
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V

    .line 459
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_5

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 463
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v0, :cond_6

    .line 464
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 467
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    if-eqz v0, :cond_7

    .line 468
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setPhysicalKeyControl(Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;)V

    .line 471
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mApertureUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl;

    if-eqz v0, :cond_8

    .line 472
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setApertureUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl;)V

    .line 475
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    if-eqz v0, :cond_9

    .line 476
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setWideCameraControl(Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V

    .line 479
    :cond_9
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wide_camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 480
    new-instance v0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;Lcom/transsion/camera/app/ui/manager/OverlayUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    :cond_a
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "front_wide_camera"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 484
    new-instance v0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;Lcom/transsion/camera/app/ui/manager/OverlayUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 487
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mTopOffset:I

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setTopOffset(I)V

    .line 488
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V

    return-void
.end method

.method private removeCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 496
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 500
    :cond_1
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->hideEntryView()V

    .line 502
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 507
    :cond_2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private unInitOverlaySettingUIs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 367
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 368
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 370
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->removeCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    .line 371
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 515
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mOverlayRootLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_3

    .line 522
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    :cond_3
    if-nez v0, :cond_4

    .line 526
    sget-object p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEntryView null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 530
    :cond_4
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setupEntryView()V

    .line 532
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 534
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private updateOverlaySettingUIs(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 396
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 397
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 398
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->removeCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    if-eqz v1, :cond_0

    .line 400
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->findCommonSettingKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 407
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 408
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_2

    .line 409
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->findCommonSettingKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 410
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->initCommonSettingUI(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    .line 412
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 413
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 414
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 416
    :cond_3
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public notifyCameraOperateActionToUI(I)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 279
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 284
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public notifyCameraStateToUI(I)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 246
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updateCameraState(I)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 250
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 251
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updateCameraState(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 6

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 109
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 115
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 120
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 260
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 265
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p0, :cond_3

    .line 266
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 267
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .locals 1

    .line 291
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onBatteryStatusChanged(ZII)V

    .line 292
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 294
    invoke-interface {v0, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setBatteryStatus(II)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 299
    invoke-interface {p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setBatteryStatus(II)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 384
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 387
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 388
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 389
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 225
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 226
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 234
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 239
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mInflater:Landroid/view/LayoutInflater;

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0c00be

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09018b

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mOverlayRootLayout:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onLongPress(FF)Z
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 207
    invoke-interface {v2, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onLongPress(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 214
    invoke-interface {v2, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onLongPress(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 219
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onLongPress(FF)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 94
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 98
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 99
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 177
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 182
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_1

    .line 185
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 162
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 167
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_1

    .line 170
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 192
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 197
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_1

    .line 200
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 307
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 308
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 316
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 321
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method protected onSetupViews()V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(FF)Z
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 144
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    .line 145
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 146
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 147
    invoke-interface {v3, v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapUp(FF)Z

    goto :goto_0

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 151
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 152
    invoke-interface {v3, v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapUp(FF)Z

    goto :goto_1

    .line 155
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onSingleTapUp(FF)Z

    move-result p0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 129
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 134
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 137
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;)V"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateOverlaySettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateOverlaySettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 340
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    .line 341
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    return-void
.end method

.method public setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-void
.end method

.method public setTopOffset(I)V
    .locals 0

    .line 377
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mTopOffset:I

    return-void
.end method

.method public setZoomOffsetPadding(I)V
    .locals 2

    .line 358
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 359
    instance-of v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    if-eqz v1, :cond_0

    .line 360
    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setZoomOffsetPadding(I)V

    :cond_1
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->unInitOverlaySettingUIs(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->unInitOverlaySettingUIs(Ljava/util/List;)V

    return-void
.end method

.method public updateModeConfigToZoom(Lcom/transsion/camera/app/common/ModeConfig;)V
    .locals 2

    .line 349
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 350
    instance-of v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    if-eqz v1, :cond_0

    .line 351
    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateModeConfig(Lcom/transsion/camera/app/common/ModeConfig;)V

    :cond_1
    return-void
.end method
