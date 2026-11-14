.class public Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractViewManager;
.source "CameraSwitcherUIManager.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    .line 35
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 86
    new-instance p1, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 36
    new-instance p1, Lcom/transsion/camera/app/ui/CameraSwitcherUI;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/CameraSwitcherUI;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;)Lcom/transsion/camera/app/ui/ICameraSwitcherUI;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    return-object p0
.end method


# virtual methods
.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    return-void
.end method

.method public onSetupViews()V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->setupViews()V

    return-void
.end method

.method public setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->setEnable(Z)V

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    if-eqz p0, :cond_0

    .line 71
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 1

    .line 76
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p1, :cond_0

    .line 79
    sget-object p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_google_lens_visible"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_google_lens_visible"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->unInit()V

    return-void
.end method
