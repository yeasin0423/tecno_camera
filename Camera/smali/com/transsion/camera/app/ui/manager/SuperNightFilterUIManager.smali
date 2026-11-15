.class public Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractViewManager;
.source "SuperNightFilterUIManager.java"


# instance fields
.field private mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

.field private mTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

.field private mViewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p4

    move-object v4, p3

    move-object v6, p5

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mViewStub:Landroid/view/ViewStub;

    .line 30
    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 31
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 32
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-void
.end method


# virtual methods
.method public getFilterTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object p0
.end method

.method public init(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/transsion/camera/app/common/interactive/FilterInteractive;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/transsion/camera/app/common/interactive/FilterInteractive;-><init>(Landroid/view/View;Landroid/view/View;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mViewStub:Landroid/view/ViewStub;

    invoke-interface {p1, p2, p0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewStub;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz p0, :cond_0

    .line 51
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onBackPressed()Z

    move-result p0

    return p0

    .line 72
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    .line 97
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method protected onSetupViews()V
    .locals 0

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setEnable(Z)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->setEnable(Z)V

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz p0, :cond_0

    .line 44
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz p0, :cond_0

    .line 102
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    :cond_0
    return-void
.end method
