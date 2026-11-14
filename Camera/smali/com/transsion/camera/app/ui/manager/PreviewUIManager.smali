.class public Lcom/transsion/camera/app/ui/manager/PreviewUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractViewManager;
.source "PreviewUIManager.java"


# instance fields
.field private mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p2

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 23
    new-instance p2, Lcom/transsion/camera/app/ui/PreviewUI;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/ui/PreviewUI;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    return-void
.end method


# virtual methods
.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->getPreviewSurfaceType()I

    move-result p0

    return p0
.end method

.method public hideCustomPreviewCover()V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->hideCustomPreviewCover()V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ICameraOperateActionListener;->cameraOperateAction(I)V

    .line 41
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondPreviewManagerEvent(I)I

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_0

    .line 43
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result v1

    invoke-static {v1, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->filterRespondByState(III)I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 47
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setEnable(Z)V

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setEnable(Z)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 52
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setEnable(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->onEnterAnimationComplete()V

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onSetupViews()V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->setupViews()V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->pause()V

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->onPause()V

    return-void
.end method

.method public registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->resume()V

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->onResume()V

    return-void
.end method

.method public setAuxPreviewLensSupport(ZZ)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IPreviewUI;->setAuxPreviewLensSupport(ZZ)V

    return-void
.end method

.method public setAuxPreviewModeSupport(Z)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->setAuxPreviewModeSupport(Z)V

    return-void
.end method

.method public setAuxPreviewSize(II)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IPreviewUI;->setAuxPreviewSize(II)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->setEnable(Z)V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setPreviewOffset(II)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IPreviewUI;->setPreviewOffset(II)V

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IPreviewUI;->setPreviewSize(II)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    return-void
.end method

.method public setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    return-void
.end method

.method public showCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->showCustomPreviewCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->unInit()V

    return-void
.end method

.method public unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method
