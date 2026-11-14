.class public abstract Lcom/transsion/camera/app/ui/manager/AbstractViewManager;
.super Ljava/lang/Object;
.source "AbstractViewManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/battery/IBatteryListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field protected mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field protected mBatteryStatus:I

.field protected mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field protected mCameraRootView:Landroid/view/ViewGroup;

.field private mEnable:Z

.field protected mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field protected mIsShown:Z

.field protected mParentLayout:Landroid/view/ViewGroup;

.field protected mRootView:Landroid/view/View;

.field protected mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field protected mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field protected mTemperatureStatus:I

.field protected mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mIsShown:Z

    .line 41
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mBatteryStatus:I

    .line 42
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mTemperatureStatus:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mIsShown:Z

    .line 41
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mBatteryStatus:I

    .line 42
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mTemperatureStatus:I

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    .line 62
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    .line 63
    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    .line 64
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 65
    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 66
    iput-object p6, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 104
    sget-object p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hide mRootView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x4

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mIsShown:Z

    return-void
.end method

.method public final inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    return-void
.end method

.method public final inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    .line 75
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    .line 76
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    .line 77
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onSetupViews()V

    .line 78
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->show()V

    return-void
.end method

.method public isEnable()Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mEnable:Z

    return p0
.end method

.method public isShown()Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mIsShown:Z

    return p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 2

    const/16 v0, 0x3e8

    .line 131
    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondUIManagerEvent(II)I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_0

    .line 133
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result v1

    invoke-static {v1, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->filterRespondByState(III)I

    move-result v0

    :cond_0
    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    .line 136
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->setEnable(Z)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 138
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->setEnable(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyCameraStateToUI(I)V
    .locals 0

    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .locals 0

    .line 216
    iput p2, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mBatteryStatus:I

    .line 217
    iput p3, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mTemperatureStatus:I

    return-void
.end method

.method public onDoubleTap(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public onLongPress(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract onSetupViews()V
.end method

.method public onSingleTapConfirmed(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mEnable:Z

    return-void
.end method

.method public show()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 95
    sget-object p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "show mRootView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mIsShown:Z

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public abstract unInit()V
.end method
