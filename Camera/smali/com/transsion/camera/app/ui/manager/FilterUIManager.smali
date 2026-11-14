.class public Lcom/transsion/camera/app/ui/manager/FilterUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractViewManager;
.source "FilterUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IFilterControl;


# static fields
.field public static final filterModeEntries:[Ljava/lang/String;


# instance fields
.field private mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private mIFilterProcessor:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

.field private mTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

.field private mViewStub:Landroid/view/ViewStub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    const-string v1, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    .line 22
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->filterModeEntries:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewStub;Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p4

    move-object v4, p3

    move-object v6, p5

    .line 41
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mViewStub:Landroid/view/ViewStub;

    .line 43
    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 44
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x1

    new-array p3, p1, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p2, p3, p4

    const-string p5, "com.transsion.camera.feature.arcfilter.setting.ui.ArcFilterSettingUI"

    .line 45
    invoke-static {p5, p3}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    new-array p3, p1, [Ljava/lang/Object;

    aput-object p2, p3, p4

    const-string p5, "com.transsion.camera.feature.arcfilter.preview.ArcFilterPreview"

    .line 46
    invoke-static {p5, p3}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mIFilterProcessor:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, p4

    const-string p2, "com.transsion.camera.feature.arcfilter.setting.ui.ArcFilterTopItemUI"

    .line 47
    invoke-static {p2, p1}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-void
.end method


# virtual methods
.method public filterSelected(Ljava/lang/String;)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mIFilterProcessor:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz p0, :cond_0

    .line 147
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->filterSelected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getFilterTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object p0
.end method

.method public init(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/transsion/camera/app/common/interactive/FilterInteractive;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/transsion/camera/app/common/interactive/FilterInteractive;-><init>(Landroid/view/View;Landroid/view/View;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setTag(Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setFilterControl(Lcom/transsion/camera/app/common/IAppUIControl$IFilterControl;)V

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mViewStub:Landroid/view/ViewStub;

    invoke-interface {p1, p2, p0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewStub;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method public isValidFilter(Ljava/lang/String;)Z
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mIFilterProcessor:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz p0, :cond_0

    .line 139
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->isValidFilter(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz p0, :cond_0

    .line 61
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onBackPressed()Z

    move-result p0

    return p0

    .line 86
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 94
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

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    .line 116
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

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 102
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setEnable(Z)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->setEnable(Z)V

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz p0, :cond_0

    .line 54
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public setFilterProcessor(Lcom/transsion/camera/app/common/mode/IFilterProcessor;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mIFilterProcessor:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz p0, :cond_0

    .line 107
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    :cond_0
    return-void
.end method
