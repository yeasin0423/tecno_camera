.class public Lcom/transsion/camera/app/ui/manager/HintUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractViewManager;
.source "HintUIManager.java"


# instance fields
.field private mCurrentOrientation:I

.field private mHasShowLowPowerHint:Z

.field private mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

.field private mIsTransparent:Z

.field private mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mIsTransparent:Z

    .line 26
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 27
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHasShowLowPowerHint:Z

    .line 28
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mCurrentOrientation:I

    .line 32
    new-instance v0, Lcom/transsion/camera/app/ui/HintUI;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/HintUI;-><init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    .line 33
    invoke-interface {v0, p2}, Lcom/transsion/camera/app/ui/IHintUI;->setModePickerControl(Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V

    return-void
.end method


# virtual methods
.method public endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    return-object p0
.end method

.method public hideAllHint()V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->hideAllHint()V

    return-void
.end method

.method public hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public hideSavingDialog()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/ui/IHintUI;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 4

    .line 64
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondHintEvent(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 65
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mIsTransparent:Z

    if-nez v3, :cond_1

    const/16 v0, 0x44

    if-ne p1, v0, :cond_0

    .line 66
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mCurrentOrientation:I

    if-eqz v0, :cond_0

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHintUI;->fadeOutHint()V

    .line 70
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mIsTransparent:Z

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 71
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mIsTransparent:Z

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHintUI;->fadeInHint()V

    .line 73
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mIsTransparent:Z

    :cond_2
    :goto_0
    const/16 v0, 0x9

    const/16 v3, 0x14

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_3

    if-ne p1, v3, :cond_4

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz v0, :cond_4

    .line 80
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHintUI;->resetEndHint()V

    :cond_4
    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    if-eqz p1, :cond_5

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_5

    if-eq p1, v3, :cond_5

    const/16 v0, 0x26

    if-ne p1, v0, :cond_6

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz v0, :cond_6

    .line 90
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHintUI;->resetSuperNightGuide()V

    :cond_6
    const/16 v0, 0x4c

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_7

    goto :goto_1

    .line 95
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/ui/IHintUI;->setEnableHintUI(Z)V

    goto :goto_1

    .line 98
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/ui/IHintUI;->setEnableHintUI(Z)V

    :goto_1
    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IHintUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    .line 106
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mCurrentOrientation:I

    return-void
.end method

.method protected onSetupViews()V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->setupViews()V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHasShowLowPowerHint:Z

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHasShowLowPowerHint:Z

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->resume()V

    return-void
.end method

.method public showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHasShowLowPowerHint:Z

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHasShowLowPowerHint:Z

    :cond_0
    return-void
.end method

.method public showSavingDialog(Ljava/lang/String;I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setProgressType(I)V

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/IHintUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->unInit()V

    return-void
.end method
