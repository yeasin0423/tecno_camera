.class public Lcom/transsion/camera/app/ui/manager/ShutterUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractViewManager;
.source "ShutterUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mInFragment:Z

.field private mInOrderEditorFragment:Z

.field private mInSwitchingDevice:Z

.field private mShutterHook:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

.field private final mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

.field private mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ShutterUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 40
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    .line 32
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInOrderEditorFragment:Z

    .line 33
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    .line 35
    new-instance p1, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    .line 41
    new-instance p1, Lcom/transsion/camera/app/ui/ShutterUI;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/ShutterUI;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    .line 42
    new-instance p1, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;Lcom/transsion/camera/app/ui/manager/ShutterUIManager$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    return-object p0
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 27
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterHook:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    return-object p0
.end method


# virtual methods
.method public getShutterTypeSelftimerOff()I
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->getShutterTypeSelftimerOff()I

    move-result p0

    return p0
.end method

.method public getShutterTypeSelftimerOn()I
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    if-eq p1, v0, :cond_6

    const/16 v2, 0x11

    if-eq p1, v2, :cond_5

    const/16 v2, 0x12

    const/16 v3, 0x1b

    if-eq p1, v2, :cond_3

    const/16 v2, 0x14

    if-eq p1, v2, :cond_3

    if-eq p1, v3, :cond_2

    const/16 v2, 0x4d

    if-eq p1, v2, :cond_5

    const/16 v2, 0x4e

    if-eq p1, v2, :cond_3

    const/16 v2, 0x55

    if-eq p1, v2, :cond_1

    const/16 v2, 0x56

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInOrderEditorFragment:Z

    goto :goto_0

    .line 260
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInOrderEditorFragment:Z

    goto :goto_0

    .line 266
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    .line 267
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    .line 268
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInOrderEditorFragment:Z

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_4

    .line 246
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    .line 248
    :cond_4
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    goto :goto_0

    .line 240
    :cond_5
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    goto :goto_0

    .line 256
    :cond_6
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    goto :goto_0

    .line 252
    :cond_7
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    .line 272
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz v2, :cond_e

    const/16 v2, 0x1e

    if-ne p1, v2, :cond_8

    .line 274
    sget-object p1, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "shot2shot end action need enable shutter button"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    return-void

    :cond_8
    const/16 v2, 0x3e9

    .line 278
    invoke-static {v2, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondUIManagerEvent(II)I

    move-result v2

    .line 279
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v3, :cond_9

    .line 280
    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result v3

    invoke-static {v3, p1, v2}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->filterRespondByState(III)I

    move-result v2

    :cond_9
    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    const/16 v3, 0x34

    if-ne p1, v3, :cond_a

    move v2, v0

    goto :goto_1

    :cond_a
    const/16 v3, 0x35

    if-ne p1, v3, :cond_b

    .line 286
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    if-nez p1, :cond_b

    move v2, v1

    :cond_b
    :goto_1
    if-ne v2, v0, :cond_c

    .line 292
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    goto :goto_2

    :cond_c
    if-nez v2, :cond_d

    .line 293
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInOrderEditorFragment:Z

    if-nez p1, :cond_d

    .line 294
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    goto :goto_2

    .line 296
    :cond_d
    sget-object p1, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_e
    :goto_2
    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IShutterUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    return-void
.end method

.method protected onSetupViews()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IShutterUI;->setupViews()V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/ui/IShutterUI;->setOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->pause()V

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_0

    .line 62
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->onPause()V

    :cond_0
    return-void
.end method

.method public registerOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V
    .locals 0

    if-nez p1, :cond_0

    .line 88
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "registerOnShutterListener error [why null]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->getPriorityKey(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resume()V
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->resume()V

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_0

    .line 54
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->onResume()V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    .line 303
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->setEnable(Z)V

    .line 304
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAction setEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_0

    .line 306
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public setShutterHook(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterHook:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    return-void
.end method

.method public setShutterTypeSelftimerOff(I)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IShutterUI;->setShutterTypeSelftimerOff(I)V

    return-void
.end method

.method public setShutterTypeSelftimerOn(I)V
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IShutterUI;->setShutterTypeSelftimerOn(I)V

    return-void
.end method

.method public transitionToIdle()V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->transitionToIdle()V

    return-void
.end method

.method public transitionToProcessing()V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->transitionToProcessing()V

    return-void
.end method

.method public transitionToRegular()V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->transitionToRegular()V

    return-void
.end method

.method public transitionToSmall()V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->transitionToSmall()V

    return-void
.end method

.method public transitionToSmile()V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->transitionToSmile()V

    return-void
.end method

.method public triggerShutterClick(I)V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->onShutterClick(I)V

    return-void
.end method

.method public triggerShutterLongClick(I)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->onShutterLongClick(I)V

    return-void
.end method

.method public triggerShutterUp()V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->onShutterUp()V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->unInit()V

    return-void
.end method

.method public unRegisterOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V
    .locals 1

    if-nez p1, :cond_0

    .line 96
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "unRegisterOnShutterListener error [why null]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->findKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public updateShutterType(IZ)V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IShutterUI;->updateShutterType(IZ)V

    return-void
.end method
