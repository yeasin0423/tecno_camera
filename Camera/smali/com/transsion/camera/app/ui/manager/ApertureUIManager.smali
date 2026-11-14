.class public Lcom/transsion/camera/app/ui/manager/ApertureUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractViewManager;
.source "ApertureUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/ApertureUIManager$SingleHandContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

.field private mContentObserver:Lcom/transsion/camera/app/ui/manager/ApertureUIManager$SingleHandContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentCameraId:Ljava/lang/String;

.field private mIsContentObserverRegistered:Z

.field private mIsFirstSteadyComeAfterResume:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;I)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;-><init>()V

    const-string v0, "0"

    .line 30
    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mCurrentCameraId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mIsContentObserverRegistered:Z

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mIsFirstSteadyComeAfterResume:Z

    .line 49
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mContext:Landroid/content/Context;

    .line 50
    new-instance p2, Lcom/transsion/camera/app/ui/ApertureUI;

    invoke-direct {p2, p3}, Lcom/transsion/camera/app/ui/ApertureUI;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    .line 51
    new-instance p2, Lcom/transsion/camera/app/ui/manager/ApertureUIManager$SingleHandContentObserver;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager$SingleHandContentObserver;-><init>(Lcom/transsion/camera/app/ui/manager/ApertureUIManager;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mContentObserver:Lcom/transsion/camera/app/ui/manager/ApertureUIManager$SingleHandContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/manager/ApertureUIManager;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->updateApertureUIByState()V

    return-void
.end method

.method private getSingleHandState()I
    .locals 3

    .line 57
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "qs_onehand_state"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSingleHandState] SettingNotFoundException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerContentObserver()V
    .locals 4

    .line 146
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mIsContentObserverRegistered:Z

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "qs_onehand_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mContentObserver:Lcom/transsion/camera/app/ui/manager/ApertureUIManager$SingleHandContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 148
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mIsContentObserverRegistered:Z

    :cond_0
    return-void
.end method

.method private unRegisterContentObserver()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mContentObserver:Lcom/transsion/camera/app/ui/manager/ApertureUIManager$SingleHandContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mIsContentObserverRegistered:Z

    return-void
.end method

.method private updateApertureUIByState()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->getSingleHandState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    if-eqz p0, :cond_1

    .line 68
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IApertureUI;->hideView()V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/ui/IApertureUI;->startSwitchCameraAnim(Z)V

    .line 73
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[updateApertureUIByState], startSwitchCameraAnim frontCamera is true"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public notifyCameraOperateActionToUI(I)V
    .locals 4

    .line 159
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 160
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->getSingleHandState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    return-void

    .line 163
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[notifyCameraOperateActionToUI], action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/ui/IApertureUI;->showView(Z)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IApertureUI;->hideView()V

    goto :goto_0

    .line 172
    :cond_3
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mIsFirstSteadyComeAfterResume:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mIsFirstSteadyComeAfterResume:Z

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/ui/IApertureUI;->startSwitchCameraAnim(Z)V

    .line 175
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "first_steady, startSwitchCameraAnim frontCamera is true"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->registerContentObserver()V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IApertureUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onSetupViews()V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IApertureUI;->onSetupViews()V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mIsFirstSteadyComeAfterResume:Z

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IApertureUI;->hideView()V

    return-void
.end method

.method public resume()V
    .locals 3

    .line 92
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resume], mAbstractApertureUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentCameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mIsFirstSteadyComeAfterResume:Z

    return-void
.end method

.method public setCurrentCameraId(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mCurrentCameraId:Ljava/lang/String;

    return-void
.end method

.method public startSelfTimerAnim(Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->getSingleHandState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IApertureUI;->startSelfTimerAnim(Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;)V

    :cond_0
    return-void
.end method

.method public stopSelfTimerAnim()V
    .locals 2

    .line 136
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->getSingleHandState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IApertureUI;->stopSelfTimerAnim()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IApertureUI;->unInit()V

    .line 105
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->unRegisterContentObserver()V

    return-void
.end method

.method public updateApertureUI(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->getSingleHandState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 115
    sget-object p1, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[updateApertureUI], resetCurrentMode is true, hideView"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IApertureUI;->hideView()V

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IApertureUI;->startSwitchCameraAnim(Z)V

    .line 120
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateApertureUI], startSwitchCameraAnim frontCamera is false"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->mAbstractApertureUI:Lcom/transsion/camera/app/ui/IApertureUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/ui/IApertureUI;->startSwitchCameraAnim(Z)V

    .line 123
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateApertureUI], startSwitchCameraAnim frontCamera is true"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
